/*
 * PIC18F66K80 UART2 Bootloader - Stage 1
 * MPLAB X + XC8 v2.46
 *
 * Stage 1 validates UART2 communications and can launch the application.
 * Flash erase/program operations are not implemented yet.
 *
 * Hardware:
 *   Fosc = 64 MHz (16 MHz crystal + PLL x4)
 *   UART2 RX = RE6, TX = RE7
 *   115200 baud, 8-N-1, no flow control
 */

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
/*
#pragma config FOSC = HS1, PLLCFG = ON
#pragma config IESO = OFF, FCMEN = OFF
#pragma config PWRTEN = ON, BORV = 3, BOREN = ON
#pragma config WDTEN = ON, WDTPS = 128
#pragma config MCLRE = ON, MSSPMSK = MSK7, T0CKMX = PORTB, T3CKMX = PORTB, CANMX = PORTB
#pragma config STVREN = ON, DEBUG = OFF, XINST = OFF
*/
#pragma config FOSC = HS1 ,PLLCFG = ON
#pragma config IESO = OFF, FCMEN = OFF
#pragma config PWRTEN = ON, BORV = 3, BOREN = ON
#pragma config WDTEN = ON, WDTPS = 128
#pragma config MCLRE = ON, MSSPMSK = MSK7, T0CKMX = PORTB, T3CKMX = PORTB, CANMX = PORTB
#pragma config STVREN = ON, DEBUG = OFF, XINST = OFF, BBSIZ = BB1K
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTC = OFF, WRTB = ON, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF
#pragma warning disable 1510


/*
 * Application interrupt redirect:
 * The application is linked at 0x0800, so its high-priority/default
 * interrupt entry is at 0x0808. Keep this in XC8's standard intcode psect
 * so the linker places the GOTO at the hardware vector address 0x0008.
 *
 * This bootloader keeps IPEN=0, matching the application. No low-priority
 * redirect is needed for the current firmware.
 */
asm("PSECT intcode");
asm("GOTO 0x0808");

#define _XTAL_FREQ       64000000UL
#define UART2_BAUD       115200UL
#define RX_LINE_MAX      24u

#define APP_START       0x0800u
#define APP_END         0xFFFFu
#define FLASH_ROW_SIZE  64u

#define MAX_APP_SIZE  0xF800U

static uint32_t upload_size;
static uint32_t upload_expected_crc;
static uint32_t upload_received;
static uint16_t upload_sequence;
static bool upload_active = false;

static void uart2_init(void)
{
    /* Preserve the pin direction setup used on the target board. */
    TRISE = 0b01000111;

    BAUDCON2bits.BRG16 = 0;
    RCSTA2 = 0b10010000;       /* SPEN=1, CREN=1, 8-bit asynchronous RX */
    TXSTA2 = 0b00100100;       /* TXEN=1, BRGH=1, asynchronous */
    SPBRG2 = 34;               /* 114285.7 baud at Fosc=64 MHz (~ -0.79%) */
    SPBRGH2 = 0;

    if (RCSTA2bits.OERR) {
        RCSTA2bits.CREN = 0;
        RCSTA2bits.CREN = 1;
    }
    while (PIR3bits.RC2IF) {
        volatile uint8_t dummy = RCREG2;
        (void)dummy;
    }
}

static void uart2_putc(char c)
{
    while (!PIR3bits.TX2IF) {
        CLRWDT();
    }
    TXREG2 = c;
}

static void uart2_puts(const char *s)
{
    while (*s != '\0') {
        uart2_putc(*s++);
    }
}

static void uart2_newline(void)
{
    uart2_putc('\r');
    uart2_putc('\n');
}

static bool uart2_try_getc(uint8_t *out)
{
    if (RCSTA2bits.OERR) {
        RCSTA2bits.CREN = 0;
        RCSTA2bits.CREN = 1;
    }

    if (!PIR3bits.RC2IF) {
        return false;
    }

    *out = RCREG2;
    return true;
}


/* Set PIC18F66K80 program memory table pointer */
static void flash_set_pointer(uint16_t address)
{
    TBLPTRU = 0;
    TBLPTRH = (uint8_t)(address >> 8);
    TBLPTRL = (uint8_t)address;
}

/* Check that address is a valid application Flash row */
static bool flash_valid_row(uint16_t address)
{
    if (address < APP_START)
        return false;

    if (address > (APP_END - (FLASH_ROW_SIZE - 1u)))
        return false;

    if ((address & (FLASH_ROW_SIZE - 1u)) != 0u)
        return false;

    return true;
}

/* Erase one 64-byte Flash row */
static bool flash_erase_row(uint16_t address)
{
    uint8_t gie_state;

    if (!flash_valid_row(address))
        return false;

    flash_set_pointer(address);

    EECON1bits.EEPGD = 1;
    EECON1bits.CFGS = 0;
    EECON1bits.WREN = 1;
    EECON1bits.FREE = 1;

    gie_state = INTCONbits.GIE;
    INTCONbits.GIE = 0;

    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;

    INTCONbits.GIE = gie_state;

    while (EECON1bits.WR)
        CLRWDT();

    EECON1bits.WREN = 0;
    EECON1bits.FREE = 0;

    return true;
}

/* Read and verify one 64-byte Flash row */
static bool flash_verify_row(uint16_t address,
                             const uint8_t *buffer)
{
    uint8_t i;

    if (!flash_valid_row(address))
        return false;

    EECON1bits.EEPGD = 1;
    EECON1bits.CFGS = 0;

    flash_set_pointer(address);

    for (i = 0; i < FLASH_ROW_SIZE; i++)
    {
        asm("TBLRD*+");

        if (TABLAT != buffer[i])
            return false;
    }

    return true;
}

/* Write one 64-byte Flash row.
   The row must have been erased first. */
static bool flash_write_row(uint16_t address,
                            const uint8_t *buffer)
{
    uint8_t i;
    uint8_t gie_state;

    if (!flash_valid_row(address))
        return false;

    EECON1bits.EEPGD = 1;
    EECON1bits.CFGS = 0;

    flash_set_pointer(address);

    /* Load all 64 Flash holding registers */
    for (i = 0; i < FLASH_ROW_SIZE; i++)
    {
        TABLAT = buffer[i];
        asm("TBLWT*+");
    }

    /* Restore pointer to the beginning of this row */
    flash_set_pointer(address);

    EECON1bits.WREN = 1;
    EECON1bits.FREE = 0;

    gie_state = INTCONbits.GIE;
    INTCONbits.GIE = 0;

    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;

    INTCONbits.GIE = gie_state;

    while (EECON1bits.WR)
        CLRWDT();

    EECON1bits.WREN = 0;

    /* Verify the actual Flash contents */
    return flash_verify_row(address, buffer);
}

/* Complete erase + write + verification operation */
static bool flash_program_row(uint16_t address,
                              const uint8_t *buffer)
{
    if (!flash_erase_row(address))
        return false;

    return flash_write_row(address, buffer);
}
//////

/* CRC16-CCITT-FALSE
 * Init:   0xFFFF
 * Poly:   0x1021
 * RefIn:  false
 * RefOut: false
 * XorOut: 0x0000
 */
static uint16_t crc16_update(uint16_t crc, uint8_t data)
{
    uint8_t i;

    crc ^= (uint16_t)data << 8;

    for (i = 0; i < 8u; i++)
    {
        if (crc & 0x8000u)
            crc = (uint16_t)((crc << 1) ^ 0x1021u);
        else
            crc <<= 1;
    }

    return crc;
}

/* CRC32 compatible with Python zlib.crc32()
 * Init:   0xFFFFFFFF
 * Poly:   0xEDB88320 (reflected)
 * XorOut: 0xFFFFFFFF
 */
static uint32_t crc32_update(uint32_t crc, uint8_t data)
{
    uint8_t i;

    crc ^= data;

    for (i = 0; i < 8u; i++)
    {
        if (crc & 1u)
            crc = (crc >> 1) ^ 0xEDB88320UL;
        else
            crc >>= 1;
    }

    return crc;
}
/*
static bool parse_upload_command(const char *cmd)
{
    uint16_t size = 0;
    uint16_t crc = 0;
    uint8_t digits = 0;
    uint8_t i;
    char c;

    // Verificam prefixul UPLOAD 
    if (cmd[0] != 'U' || cmd[1] != 'P' ||
        cmd[2] != 'L' || cmd[3] != 'O' ||
        cmd[4] != 'A' || cmd[5] != 'D')
    {
        return false;
    }

    // Comanda trebuie sa fie UPLOAD urmata de spatiu 
    if (cmd[6] != ' ')
    {
        return false;
    }

    cmd += 7;

    // Citim dimensiunea in zecimal
    while (*cmd >= '0' && *cmd <= '9')
    {
        if (digits >= 5u)
        {
            uart2_puts("ERR BAD UPLOAD SIZE");
            uart2_newline();
            return true;
        }

        size = size * 10UL + (uint32_t)(*cmd - '0');
        digits++;
        cmd++;
    }

    if (digits == 0u || *cmd != ' ')
    {
        uart2_puts("ERR BAD UPLOAD SIZE");
        uart2_newline();
        return true;
    }

    if (size == 0u || size > MAX_APP_SIZE)
    {
        uart2_puts("ERR IMAGE SIZE");
        uart2_newline();
        return true;
    }

    cmd++;

    // Citim CRC32 hexadecimal: exact 8 caractere 
    for (i = 0; i < 8u; i++)
    {
        c = cmd[i];

        if (c >= '0' && c <= '9')
            crc = (crc << 4) | (uint32_t)(c - '0');
        else if (c >= 'A' && c <= 'F')
            crc = (crc << 4) | (uint32_t)(c - 'A' + 10);
        else if (c >= 'a' && c <= 'f')
            crc = (crc << 4) | (uint32_t)(c - 'a' + 10);
        else
        {
            uart2_puts("ERR BAD UPLOAD CRC");
            uart2_newline();
            return true;
        }
    }

    // Nu acceptam caractere suplimentare 
    if (cmd[8] != '\0')
    {
        uart2_puts("ERR BAD UPLOAD FORMAT");
        uart2_newline();
        return true;
    }

    // Nu permitem pornirea unui al doilea transfer 
    if (upload_active)
    {
        uart2_puts("ERR UPLOAD BUSY");
        uart2_newline();
        return true;
    }

    // Initializam transferul 
    upload_size = size;
    upload_expected_crc = crc;
    upload_received = 0;
    upload_sequence = 0;

    upload_active = true;

    uart2_puts("READY");
    uart2_newline();

    return true;
}
*/
static bool parse_upload_command(const char *cmd)
{
    uint16_t size = 0;
    uint32_t crc = 0;
    uint8_t digits = 0;
    uint8_t i;
    uint8_t nibble;
    char c;

    /* Check command */
    if (cmd[0] != 'U' || cmd[1] != 'P' ||
        cmd[2] != 'L' || cmd[3] != 'O' ||
        cmd[4] != 'A' || cmd[5] != 'D' ||
        cmd[6] != ' ')
        return false;

    cmd += 7;

    /* Parse image size */
    while (*cmd >= '0' && *cmd <= '9')
    {
        nibble = (uint8_t)(*cmd - '0');

        if (digits >= 5u ||
            size > (uint16_t)((MAX_APP_SIZE - nibble) / 10u))
        {
            uart2_puts("ERR IMAGE SIZE");
            uart2_newline();
            return true;
        }

        size = (uint16_t)(size * 10u + nibble);

        digits++;
        cmd++;
    }

    if (digits == 0u || *cmd != ' ' || size == 0u)
    {
        uart2_puts("ERR IMAGE SIZE");
        uart2_newline();
        return true;
    }

    cmd++;

    /* Parse CRC32 - exactly 8 hexadecimal digits */
    for (i = 0; i < 8u; i++)
    {
        c = cmd[i];

        if (c >= '0' && c <= '9')
            nibble = (uint8_t)(c - '0');
        else if (c >= 'A' && c <= 'F')
            nibble = (uint8_t)(c - 'A' + 10);
        else if (c >= 'a' && c <= 'f')
            nibble = (uint8_t)(c - 'a' + 10);
        else
        {
            uart2_puts("ERR BAD UPLOAD CRC");
            uart2_newline();
            return true;
        }

        crc = (crc << 4) | (uint32_t)nibble;
    }

    if (cmd[8] != '\0')
    {
        uart2_puts("ERR BAD UPLOAD FORMAT");
        uart2_newline();
        return true;
    }

    if (upload_active)
    {
        uart2_puts("ERR UPLOAD BUSY");
        uart2_newline();
        return true;
    }

    upload_size = size;
    upload_expected_crc = crc;
    upload_received = 0;
    upload_sequence = 0;
    upload_active = true;

    uart2_puts("READY");
    uart2_newline();

    return true;
}
/////////////
/*
 * Launch the application linked at 0x0800.
 *
 * This is a software hand-off, not a hardware reset. Stop UART2 cleanly,
 * keep interrupts disabled, clear the hardware return stack, then branch to
 * the application's reset vector. The application startup code is expected
 * to initialize its own C runtime and peripherals.
 */
static void jump_to_application(void)
{
    /* Finish transmitting the RUN response before releasing UART2. */
    while (!TXSTA2bits.TRMT) {
        CLRWDT();
    }

    RCSTA2 = 0;
    TXSTA2 = 0;
    BAUDCON2 = 0;

    INTCONbits.GIE = 0;
    INTCONbits.PEIE = 0;
    STKPTR = 0;

    asm("GOTO 0x0800");

    /* Not reached. */
}

static void process_command(const char *cmd)
{
    if (parse_upload_command(cmd))
    return; 
    
    if (cmd[0] == 'I' && cmd[1] == 'N' && cmd[2] == 'F' &&
        cmd[3] == 'O' && cmd[4] == '\0') {
        uart2_puts("PIC18F66K80 BOOTLOADER STAGE1");
        uart2_newline();
        uart2_puts("XC8 2.46; FOSC=64000000; UART2=115200 8N1");
        uart2_newline();
    } else if (cmd[0] == 'B' && cmd[1] == 'O' && cmd[2] == 'O' &&
               cmd[3] == 'T' && cmd[4] == '\0') {
        uart2_puts("BOOT MODE READY; FLASH UPDATE NOT IMPLEMENTED");
        uart2_newline();
    } else if (cmd[0] == 'R' && cmd[1] == 'U' && cmd[2] == 'N' &&
               cmd[3] == '\0') {
        uart2_puts("RUN: STARTING APPLICATION");
        uart2_newline();
        jump_to_application();
    } else {
        uart2_puts("ERR UNKNOWN COMMAND");
        uart2_newline();
    }
}

void main(void)
{
    char line[RX_LINE_MAX];
    uint8_t count = 0;
    uint8_t ch;

    /* No interrupts in Stage 1. */
    INTCONbits.GIE = 0;
    INTCONbits.PEIE = 0;

    uart2_init();

    uart2_newline();
    uart2_puts("PIC18F66K80 BOOTLOADER STAGE1 READY");
    uart2_newline();
    uart2_puts("Commands: INFO, BOOT, RUN");
    uart2_newline();

    for (;;) {
        CLRWDT();

        if (uart2_try_getc(&ch)) {
            if (ch == '\r' || ch == '\n') {
                if (count != 0u) {
                    line[count] = '\0';
                    process_command(line);
                    count = 0;
                }
            } else if (ch >= 32u && ch <= 126u) {
                if (count < (RX_LINE_MAX - 1u)) {
                    line[count++] = (char)ch;
                } else {
                    count = 0;
                    uart2_puts("ERR LINE TOO LONG");
                    uart2_newline();
                }
            }
        }
    }
}
