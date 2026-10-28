/*
 * PIC18F66K80 UART2 Bootloader - Stage 1
 * MPLAB X + XC8 v2.46
 *
 * Stage 1 ONLY validates UART2 communications. It does NOT erase/program
 * Flash and deliberately does NOT jump to an application yet.
 *
 * Hardware:
 *   Fosc = 64 MHz (16 MHz crystal + PLL x4)
 *   UART2 RX = RE6, TX = RE7
 *   115200 baud, 8-N-1, no flow control
 */

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#pragma config FOSC = HS1, PLLCFG = ON
#pragma config IESO = OFF, FCMEN = OFF
#pragma config PWRTEN = ON, BORV = 3, BOREN = ON
#pragma config WDTEN = ON, WDTPS = 128
#pragma config MCLRE = ON, MSSPMSK = MSK7, T0CKMX = PORTB, T3CKMX = PORTB, CANMX = PORTB
#pragma config STVREN = ON, DEBUG = OFF, XINST = OFF

/*
 * IMPORTANT:
 * Boot-block size and protection config bits are intentionally NOT set here.
 * Confirm the exact BBSIZ/WRTB/CPB pragma values in the installed PIC18F66K80
 * device pack/datasheet before programming a real device. Do not copy the
 * application's protection bits blindly.
 */

#define _XTAL_FREQ       64000000UL
#define UART2_BAUD       115200UL
#define RX_LINE_MAX      24u

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

static void process_command(const char *cmd)
{
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
        uart2_puts("RUN DISABLED IN STAGE1; NO APPLICATION JUMP");
        uart2_newline();
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
