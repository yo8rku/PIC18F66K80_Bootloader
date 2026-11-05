/*
 * PIC18F6722 UART2 Bootloader - Dual Image
 * MPLAB X + XC8 v2.46
 *
 * UART2 bootloader with application launch and dual Flash/EEPROM update.
 * The application marker is written only after both images are verified.
 *
 * Hardware:
 *   Fosc = 40 MHz (10 MHz crystal + PLL x4)
 *   UART2 RX = RG2, TX = RG1
 *   115200 baud, 8-N-1, no flow control
 */

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#pragma config OSC = HSPLL, FCMEN = OFF, IESO = OFF
#pragma config PWRT = ON, BOREN = ON, BORV = 3
#pragma config WDT = ON, WDTPS = 128
#pragma config CCP2MX = PORTE, LPT1OSC = OFF, MCLRE = ON
#pragma config STVREN = ON, LVP = OFF, BBSIZ = BB8K
#pragma config XINST = OFF, DEBUG = OFF
//#pragma config CP0 = ON, CP1 = ON, CP2 = ON, CP3 = ON
//#pragma config CP4 = ON, CP5 = ON, CP6 = ON, CP7 = ON
//#pragma config CPB = ON, CPD = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CP4 = OFF, CP5 = OFF, CP6 = OFF, CP7 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRT4 = OFF, WRT5 = OFF, WRT6 = OFF, WRT7 = OFF
#pragma config WRTC = OFF, WRTB = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTR4 = OFF, EBTR5 = OFF, EBTR6 = OFF, EBTR7 = OFF
#pragma config EBTRB = OFF
#pragma warning disable 1510


/*
 * Application interrupt redirect:
 * The application is linked at 0x02000, so its high-priority/default
 * interrupt entry is at 0x2008. Keep this in XC8's standard intcode psect
 * so the linker places the GOTO at the hardware vector address 0x0008.
 *
 * This bootloader keeps IPEN=0, matching the application. No low-priority
 * redirect is needed for the current firmware.
 */
asm("PSECT intcode");
asm("GOTO 0x2008");

#define _XTAL_FREQ       40000000UL
#define UART2_BAUD       115200UL
#define RX_LINE_MAX      36u

#define APP_START       0x02000UL
#define APP_END         0x1FFFFUL
#define APP_MARKER_ADDR 0x1FFC0UL
#define FLASH_ROW_SIZE  64u
#define EEPROM_SIZE     1024u

#define MAX_APP_SIZE    0xFFFFu /* Upload protocol and marker store a 16-bit size. */

#define UPLOAD_PHASE_FLASH   0u
#define UPLOAD_PHASE_EEPROM  1u

#define SOF             0x02u
#define ACK             0x06u
#define NAK             0x15u
#define EOT             0x04u
#define BLOCK_SIZE      48u

#define FRAME_NONE      0u
#define FRAME_VALID     1u
#define FRAME_INVALID  2u
#define FRAME_BAD_LENGTH 5u
#define FRAME_TIMEOUT  3u
#define FRAME_EOT       4u

#define UART_TIMEOUT_COUNT  60000u

static uint16_t upload_size;
static uint32_t upload_expected_crc;
static uint16_t upload_received;
static uint16_t upload_sequence;
static bool upload_active;

static uint16_t flash_upload_size;
static uint16_t eeprom_upload_size;
static uint32_t eeprom_upload_expected_crc;
static uint32_t flash_final_crc;
static uint8_t upload_phase;
static uint8_t uart2_rx_byte;

static uint8_t frame_payload[BLOCK_SIZE];
static uint8_t flash_row_buffer[FLASH_ROW_SIZE];
static uint8_t flash_row_fill;
static uint32_t flash_row_address;

/* Dedicated counter used by the small Flash-row buffer clear routine. */
static volatile uint8_t asm_clear_count;

/* Fill a selected range of the Flash staging row with erased value 0xFF. */
static void flash_fill_buffer(uint8_t offset, uint8_t count)
{
    uint8_t i;

    if (count == 0u)
        return;

    for (i = 0u; i < count; i++)
    {
        flash_row_buffer[offset + i] = 0xFFu;
    }
}

static uint32_t upload_crc32;
static bool upload_have_frame;

/* Parser scratch is static to avoid four temporary values in the C stack. */
static uint16_t parsed_flash_size;
static uint16_t parsed_eeprom_size;
static uint32_t parsed_flash_crc;
static uint32_t parsed_eeprom_crc;

// Function prototypes
static uint32_t crc32_update(uint32_t crc, uint8_t data);
static bool flash_program_row(uint32_t address, const uint8_t *buffer);
static uint8_t eeprom_read_byte(uint16_t address);
static bool eeprom_write_verify_byte(uint16_t address, uint8_t value);
static bool eeprom_clear_unused(uint16_t used_size);

static void uart2_init(void)
{
    /* PIC18F6722 UART2 pins: RG2 = RX2 input, RG1 = TX2 output. */
    TRISGbits.TRISG2 = 1;
    TRISGbits.TRISG1 = 0;

    /* 40 MHz, asynchronous high-speed, 16-bit baud generator.
     * SPBRG2 = 86 gives 114942 baud (about -0.22% error).
     */
    BAUDCON2bits.BRG16 = 1;
    RCSTA2 = 0b10010000;       /* SPEN=1, CREN=1, 8-bit asynchronous RX */
    TXSTA2 = 0b00100100;       /* TXEN=1, BRGH=1, asynchronous */
    SPBRG2 = 86;
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
        ;
    }
    TXREG2 = c;
}

static void uart2_puts(const char *s)
{
    TBLPTRU = 0;
    TBLPTRH = 0;
    while (*s != '\0') {
        uart2_putc(*s++);
    }
}

/* Send a 32-bit value as exactly 8 uppercase hexadecimal digits. */
static void uart2_puthex32(uint32_t value)
{
    uint8_t shift;
    uint8_t nibble;
    char c;

    for (shift = 28u; ; shift -= 4u)
    {
        nibble = (uint8_t)((value >> shift) & 0x0Fu);

        if (nibble < 10u)
            c = (char)('0' + nibble);
        else
            c = (char)('A' + nibble - 10u);

        uart2_putc(c);

        if (shift == 0u)
            break;
    }
}


/* Compact protocol error: !X followed by CR/LF.
 * Keep CR/LF here to avoid a separate newline helper/call. */
static void uart2_error(char code)
{
    uart2_putc('!');
    uart2_putc(code);
    //uart2_putc('\r');
    //uart2_putc('\n');
    uart2_putc(0x0D);
    uart2_putc(0x0A);
}

static bool uart2_try_getc(void)
{
    if (RCSTA2bits.OERR) {
        RCSTA2bits.CREN = 0;
        RCSTA2bits.CREN = 1;
    }

    if (PIR3bits.RC2IF) {
        uart2_rx_byte = RCREG2;
        return true;
    }

    return false;
}

static bool uart2_getc_timeout(void)
{
    uint16_t timeout = UART_TIMEOUT_COUNT;

    while (timeout != 0u)
    {
        if (uart2_try_getc())
            return true;

        CLRWDT();
        timeout--;
    }

    return false;
}

/* Set the PIC18F6722 program-memory table pointer (17-bit Flash address). */
static void flash_set_pointer(uint32_t address)
{
    TBLPTRU = (uint8_t)(address >> 16);
    TBLPTRH = (uint8_t)(address >> 8);
    TBLPTRL = (uint8_t)address;
}

/* Validate a 64-byte Flash row, including the final marker row. */
static bool flash_valid_row(uint32_t address)
{
    return (address >= APP_START) &&
           (address <= (APP_END - (FLASH_ROW_SIZE - 1u))) &&
           ((address & (FLASH_ROW_SIZE - 1u)) == 0u);
}

static bool flash_erase_row(uint32_t address)
{
    uint8_t gie_state;
    uint8_t status;

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

    status = EECON1;

    EECON1bits.WREN = 0;

    if (status & 0x08)
        return false;

    if (status & 0x10)
        return false;

    flash_set_pointer(address);

    {
        uint8_t i;

        for (i = 0; i < FLASH_ROW_SIZE - 1u; i++)
        {
            asm("TBLRD*+");

            if (TABLAT != 0xFFu)
                return false;
        }

        asm("TBLRD*");

        if (TABLAT != 0xFFu)
            return false;
    }

    return true;
}



/* Read and verify one 64-byte Flash row */
static bool flash_verify_row(uint32_t address, const uint8_t *buffer)
{
    uint8_t i;

    EECON1bits.EEPGD = 1;
    EECON1bits.CFGS = 0;

    flash_set_pointer(address);

    // Verificam primii 63 de octeti.
    for (i = 0; i < FLASH_ROW_SIZE - 1u; i++)
    {
        asm("TBLRD*+");

        if (TABLAT != buffer[i])
            return false;
    }

    // Ultimul octet fara incrementarea TBLPTR.
    asm("TBLRD*");

    if (TABLAT != buffer[FLASH_ROW_SIZE - 1u])
        return false;

    return true;
}


/* Check application validity marker */
static bool application_marker_valid(void)
{
    uint8_t marker[8];
    uint8_t i;
    uint16_t size;

    EECON1bits.EEPGD = 1;
    EECON1bits.CFGS = 0;
    flash_set_pointer(APP_MARKER_ADDR);

    for (i = 0; i < 8u; i++)
    {
        asm("TBLRD*+");
        marker[i] = TABLAT;
    }

    if (marker[0] != 'A' ||
        marker[1] != 'P' ||
        marker[2] != 'P' ||
        marker[3] != '1')
        return false;

    if (marker[6] != 0u || marker[7] != 0u)
        return false;

    size = (uint16_t)marker[4] |
           ((uint16_t)marker[5] << 8);

    /* Marker stores image size as uint16_t; zero means invalid. */
    return (size != 0u);
}


/* Write application validity marker */
static bool application_marker_write(uint16_t size, uint32_t crc)
{
    uint8_t i;

    if (size == 0u)
        return false;

    for (i = 0; i < FLASH_ROW_SIZE; i++)
        flash_row_buffer[i] = 0xFF;

    flash_row_buffer[0] = 'A';
    flash_row_buffer[1] = 'P';
    flash_row_buffer[2] = 'P';
    flash_row_buffer[3] = '1';

    flash_row_buffer[4] = (uint8_t)size;
    flash_row_buffer[5] = (uint8_t)(size >> 8);
    flash_row_buffer[6] = 0;
    flash_row_buffer[7] = 0;

    flash_row_buffer[8]  = (uint8_t)crc;
    flash_row_buffer[9]  = (uint8_t)(crc >> 8);
    flash_row_buffer[10] = (uint8_t)(crc >> 16);
    flash_row_buffer[11] = (uint8_t)(crc >> 24);

    if (!flash_program_row(APP_MARKER_ADDR, flash_row_buffer))
        return false;

    return application_marker_valid();
}


/* Write one 64-byte Flash row.
   The row must have been erased first. */
static bool flash_write_row(uint32_t address,
                            const uint8_t *buffer)
{
    uint8_t i;
    uint8_t gie_state;

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
static bool flash_program_row(uint32_t address,
                              const uint8_t *buffer)
{
    if (!flash_erase_row(address))
        return false;

    return flash_write_row(address, buffer);
}

/* Program the current row and prepare the next one */
static bool flash_flush_row(void)
{
    if (flash_row_fill == 0u)
        return true;

    flash_fill_buffer(flash_row_fill,
                      (uint8_t)(FLASH_ROW_SIZE - flash_row_fill));

    if (!flash_program_row(flash_row_address, flash_row_buffer))
        return false;

    /* Prepare next row */
    flash_row_fill = 0u;
    flash_row_address += FLASH_ROW_SIZE;

    //flash_fill_buffer(0u, FLASH_ROW_SIZE);

    return true;
}

/* Read one byte from the 1-Kbyte data EEPROM. */
static uint8_t eeprom_read_byte(uint16_t address)
{
    /* Select data EEPROM (not program/configuration memory). */
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS  = 0;

    EEADRH = (uint8_t)(address >> 8);
    EEADR = (uint8_t) address;
    EECON1bits.RD = 1;
    asm("NOP");
    return EEDATA;
}

/*
 * Write one EEPROM byte only when its value changes, then read it back.
 * The unlock sequence is protected from interrupts as required by Microchip.
 */
static bool eeprom_write_verify_byte(uint16_t address, uint8_t value)
{
    uint8_t gie_state;

    if (address >= EEPROM_SIZE)
        return false;

    if (eeprom_read_byte(address) == value)
        return true;

    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS  = 0;
    EECON1bits.FREE = 0;

    EEADRH = (uint8_t)(address >> 8);
    EEADR = (uint8_t)address;
    EEDATA = value;

    /* Clear a previous write-error indication before this new write. */
    EECON1bits.WRERR = 0;
    EECON1bits.WREN = 1;

    gie_state = INTCONbits.GIE;
    INTCONbits.GIE = 0;

    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;

    INTCONbits.GIE = gie_state;

    while (EECON1bits.WR)
        CLRWDT();

    /* The EEPROM write-complete flag is cleared in software. */
    PIR2bits.EEIF = 0;
    EECON1bits.WREN = 0;

    if (EECON1bits.WRERR)
        return false;

    return (eeprom_read_byte(address) == value);
}

/* Set all EEPROM locations beyond the supplied image to erased value 0xFF. */
static bool eeprom_clear_unused(uint16_t used_size)
{
    uint16_t address;

    if (used_size > EEPROM_SIZE)
        return false;

    for (address = used_size; address < EEPROM_SIZE; address++)
    {
        CLRWDT();

        if (!eeprom_write_verify_byte(address, 0xFFu))
            return false;
    }

    return true;
}

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

static uint8_t receive_upload_frame(
    uint16_t *sequence,
    uint8_t *length)
{
    uint8_t ch;
    uint8_t i;
    uint16_t received_crc;
    uint16_t calculated_crc;

    uint8_t seq_hi;
    uint8_t seq_lo;
    uint8_t len_hi;
    uint8_t len_lo;

    /* Wait for SOF, without blocking the main loop */
    if (!uart2_try_getc())
        return FRAME_NONE;

    ch = uart2_rx_byte;
    if (ch == EOT)
        return FRAME_EOT;

    if (ch != SOF)
        return FRAME_NONE;

    /* Sequence */
    if (!uart2_getc_timeout())
        return FRAME_TIMEOUT;
    seq_hi = uart2_rx_byte;
    if (!uart2_getc_timeout())
        return FRAME_TIMEOUT;
    seq_lo = uart2_rx_byte;

    /* Payload length */
    if (!uart2_getc_timeout())
        return FRAME_TIMEOUT;
    len_hi = uart2_rx_byte;
    if (!uart2_getc_timeout())
        return FRAME_TIMEOUT;
    len_lo = uart2_rx_byte;

    *sequence = ((uint16_t)seq_hi << 8) | seq_lo;

    /* Valid payload lengths fit in the low byte (1..BLOCK_SIZE). */
    if (len_hi != 0u || len_lo == 0u || len_lo > BLOCK_SIZE)
        return FRAME_BAD_LENGTH;

    *length = len_lo;

    calculated_crc = 0xFFFFu;

    calculated_crc = crc16_update(calculated_crc, seq_hi);
    calculated_crc = crc16_update(calculated_crc, seq_lo);
    calculated_crc = crc16_update(calculated_crc, len_hi);
    calculated_crc = crc16_update(calculated_crc, len_lo);

    /* Payload */
    for (i = 0; i < *length; i++)
    {
        if (!uart2_getc_timeout())
            return FRAME_TIMEOUT;
        frame_payload[i] = uart2_rx_byte;

        calculated_crc =
            crc16_update(calculated_crc, frame_payload[i]);
    }

    /* Received CRC16 */
    if (!uart2_getc_timeout())
        return FRAME_TIMEOUT;
    seq_hi = uart2_rx_byte;
    if (!uart2_getc_timeout())
        return FRAME_TIMEOUT;
    seq_lo = uart2_rx_byte;

    received_crc = ((uint16_t)seq_hi << 8) | seq_lo;

    if (received_crc != calculated_crc)
        return FRAME_INVALID;

    return FRAME_VALID;
}

/* Store one CRC-validated frame. Select the destination once per frame,
 * not once for every payload byte.
 */
static bool upload_store_payload(uint8_t length)
{
    uint8_t i;
    uint8_t data;

    if (upload_phase == UPLOAD_PHASE_FLASH)
    {
        for (i = 0; i < length; i++)
        {
            data = frame_payload[i];
            upload_crc32 = crc32_update(upload_crc32, data);
            flash_row_buffer[flash_row_fill++] = data;

            if (flash_row_fill >= FLASH_ROW_SIZE)
            {
                if (!flash_program_row(flash_row_address,
                                       flash_row_buffer))
                    return false;

                flash_row_fill = 0u;
                flash_row_address += FLASH_ROW_SIZE;

                flash_fill_buffer(0u, FLASH_ROW_SIZE);
            }
        }
    }
    else
    {
        for (i = 0; i < length; i++)
        {
            data = frame_payload[i];
            upload_crc32 = crc32_update(upload_crc32, data);

            if (!eeprom_write_verify_byte(
                    (uint16_t)(upload_received + i), data))
                return false;
        }
    }

    return true;
}

static void receive_upload_data(void)
{
    uint16_t sequence;
    uint8_t length;
    uint8_t result;
    uint8_t error;

    while (upload_active)
    {
        CLRWDT();
        result = receive_upload_frame(&sequence, &length);

        if (result == FRAME_VALID)
        {
            if (sequence == upload_sequence)
            {
                /* Reject a frame that would exceed the current image. */
                if ((upload_received > upload_size) ||
                    (length > (upload_size - upload_received)))
                {
                    error = 'S';
                    goto upload_abort;
                }

                if (!upload_store_payload(length))
                {
                    error = upload_phase == UPLOAD_PHASE_FLASH ? 'F' : 'E';
                    goto upload_abort;
                }

                upload_received += length;
                upload_sequence++;
                upload_have_frame = true;
            }
            else if (!upload_have_frame ||
                     sequence != (uint16_t)(upload_sequence - 1u))
            {
                result = FRAME_INVALID;
            }

            if (result == FRAME_VALID)
            {
                /* ACK both new and immediately repeated frames. */
                uart2_putc(ACK);
                uart2_putc((uint8_t)(sequence >> 8));
                uart2_putc((uint8_t)sequence);
                continue;
            }
        }

        if (result == FRAME_INVALID)
        {
            uart2_putc(NAK);
            uart2_putc((uint8_t)(upload_sequence >> 8));
            uart2_putc((uint8_t)upload_sequence);
            continue;
        }

        if (result == FRAME_BAD_LENGTH)
        {
            error = 'D';
            goto upload_abort;
        }

        if (result == FRAME_TIMEOUT)
        {
            error = 'T';
            goto upload_abort;
        }

        if (result == FRAME_EOT)
        {
            if (upload_received != upload_size)
            {
                error = 'X';
                goto upload_abort;
            }

            if ((upload_crc32 ^ 0xFFFFFFFFUL) != upload_expected_crc)
            {
                error = 'C';
                goto upload_abort;
            }

            if (upload_phase == UPLOAD_PHASE_FLASH)
            {
                // Flush and verify the final partial Flash row. /
                if (!flash_flush_row())
                {
                    error = 'F';
                    goto upload_abort;
                }

                // Expected CRC is now proven equal to the calculated CRC./
                flash_final_crc = upload_expected_crc;

                // Switch to EEPROM phase; sequence numbering restarts at zero. 
                upload_phase = UPLOAD_PHASE_EEPROM;
                upload_size = eeprom_upload_size;
                upload_expected_crc = eeprom_upload_expected_crc;
                upload_received = 0;
                upload_sequence = 0;
                upload_crc32 = 0xFFFFFFFFUL;
                upload_have_frame = false;

                //uart2_puts("E\r\n");
                uart2_putc('E');
                uart2_putc(0x0D);
                uart2_putc(0x0A);
            }
            else
            {
                /* Clear unused EEPROM only after the supplied image passed CRC. */
                if (!eeprom_clear_unused(eeprom_upload_size))
                {
                    error = 'E';
                    goto upload_abort;
                }

                /* Publish the marker only after both images pass verification. */
                if (!application_marker_write(flash_upload_size, flash_final_crc))
                {
                    error = 'M';
                    goto upload_abort;
                }

                upload_active = false;
                uart2_putc('O');
                uart2_putc(' ');
                uart2_puthex32(flash_final_crc);
                uart2_putc(' ');
                uart2_puthex32(upload_expected_crc);
                uart2_putc(0x0D);
                uart2_putc(0x0A);
            }
        }

        continue;

upload_abort:
        uart2_error(error);
        upload_active = false;
    }
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

static bool parse_decimal_u16(const char **cursor, uint16_t *value)
{
    uint16_t accumulator = 0;
    uint8_t digits = 0;
    uint8_t digit;

    while (**cursor >= '0' && **cursor <= '9')
    {
        digit = (uint8_t)(**cursor - '0');

        if (accumulator > 6553u ||
            (accumulator == 6553u && digit > 5u))
            return false;

        accumulator = (uint16_t)((accumulator << 3) +
                                 (accumulator << 1) +
                                 digit);
        (*cursor)++;
        digits++;
    }

    if (digits == 0u)
        return false;

    *value = (uint16_t)accumulator;
    return true;
}

static bool parse_crc32_hex(const char **cursor, uint32_t *value)
{
    uint8_t i;
    uint8_t nibble;
    char c;
    uint32_t crc = 0;

    for (i = 0; i < 8u; i++)
    {
        c = *(*cursor)++;

        if (c >= '0' && c <= '9')
            nibble = (uint8_t)(c - '0');
        else if (c >= 'A' && c <= 'F')
            nibble = (uint8_t)(c - 'A' + 10u);
        else if (c >= 'a' && c <= 'f')
            nibble = (uint8_t)(c - 'a' + 10u);
        else
            return false;

        crc = (crc << 4) | nibble;
    }

    *value = crc;
    return true;
}

/*
 * Dual-image command:
 * UPLOAD <flash_size> <flash_crc32> <eeprom_size> <eeprom_crc32>
 */
static bool parse_upload_command(const char *cmd)
{
    const char *p = cmd;
    char error;

    /* Match the command prefix with one advancing pointer. */
    if (*p++ != 'U' || *p++ != 'P' ||
        *p++ != 'L' || *p++ != 'O' ||
        *p++ != 'A' || *p++ != 'D' ||
        *p++ != ' ')
        return false;

    if (!parse_decimal_u16(&p, &parsed_flash_size) || *p++ != ' ')
    {
        error = 'S';
        goto upload_command_error;
    }

    if (!parse_crc32_hex(&p, &parsed_flash_crc) || *p++ != ' ')
    {
        error = 'C';
        goto upload_command_error;
    }

    if (!parse_decimal_u16(&p, &parsed_eeprom_size) || *p++ != ' ')
    {
        error = 'S';
        goto upload_command_error;
    }

    if (!parse_crc32_hex(&p, &parsed_eeprom_crc))
    {
        error = 'C';
        goto upload_command_error;
    }

    if (*p != '\0')
    {
        error = 'P';
        goto upload_command_error;
    }

    if (parsed_flash_size == 0u ||
        parsed_eeprom_size == 0u || parsed_eeprom_size > EEPROM_SIZE)
    {
        error = 'S';
        goto upload_command_error;
    }

    if (upload_active)
    {
        error = 'B';
        goto upload_command_error;
    }

    /* Invalidate the old application before modifying either image. */
    if (!flash_erase_row(APP_MARKER_ADDR))
    {
        error = 'M';
        goto upload_command_error;
    }

    flash_upload_size = parsed_flash_size;
    eeprom_upload_size = parsed_eeprom_size;
    eeprom_upload_expected_crc = parsed_eeprom_crc;

    upload_size = parsed_flash_size;
    upload_expected_crc = parsed_flash_crc;
    upload_received = 0;
    upload_sequence = 0;
    upload_crc32 = 0xFFFFFFFFUL;
    upload_have_frame = false;
    upload_phase = UPLOAD_PHASE_FLASH;

    flash_row_address = APP_START;
    flash_row_fill = 0;

    flash_fill_buffer(0u, FLASH_ROW_SIZE);

    upload_active = true;
    uart2_putc('R');
    uart2_putc(0x0D);
    uart2_putc(0x0A);
    return true;

upload_command_error:
    uart2_error(error);
    return true;
}


/////////////
/*
 * Restart the MCU after the RUN response has left UART2.
 * On the next boot, main() validates the application and BOOT pin,
 * then either launches the application or remains in the bootloader.
 */
static void reset_to_bootloader(void)
{
    while (!TXSTA2bits.TRMT) {
        CLRWDT();
    }

    asm("RESET");

    for (;;) {
        ;
    }
}

static void process_command(const char *cmd)
{
    if (parse_upload_command(cmd))
        return;

    if (cmd[0] == 'I' && cmd[1] == '\0') {
        uart2_puts("LDMOS CONTROLER UPLOADER\r\n");
    } else if (cmd[0] == 'R' && cmd[1] == '\0') {
        if (!PORTBbits.RB6)
        {
            /* BOOT jumper is asserted: remain in the bootloader. */
            uart2_error('B');
        }
        else if (application_marker_valid())
        {
            uart2_puts("RUN\r\n");
            reset_to_bootloader();
        }
        else
        {
            uart2_error('A');
        }

    } else {
        uart2_error('U');
    }
}

void main(void)
{
    char line[RX_LINE_MAX];
    uint8_t count = 0;
    uint8_t ch;

    INTCONbits.GIE = 0;
    INTCONbits.PEIE = 0;

    /* RB6/PGC is the active-low BOOT request input.
     * Use an external 10-kohm pull-up to VDD and a jumper/switch to GND.
     * DEBUG is disabled in configuration bits, so RB6 is available as GPIO.
     */
    TRISBbits.TRISB6 = 1;

    /* Normal startup: launch a valid application unless BOOT is requested. */
    if (PORTBbits.RB6 && application_marker_valid())
    {
        asm("GOTO 0x2000");
    }

    /* Initialize non-zero state here to avoid a ROM data-init table. */
    upload_crc32 = 0xFFFFFFFFUL;
    flash_row_address = APP_START;

    uart2_init();

    for (;;) {
        CLRWDT();
        if (uart2_try_getc()) {
            ch = uart2_rx_byte;
            if (ch == '\r' || ch == '\n') {
                if (count != 0u) {
                    line[count] = '\0';
                    process_command(line);
                    if (upload_active)
                    {
                        receive_upload_data();
                    }
                    count = 0;
                }
            } else if (ch >= 32u && ch <= 126u) {
                if (count < (RX_LINE_MAX - 1u)) {
                    line[count++] = (char)ch;
                } else {
                    count = 0;
                    uart2_error('L');
                }
            }
        }
    }
}
