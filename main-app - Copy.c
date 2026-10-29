//*********************************************************************************
//#define _VERSION 20 // PIC18F6722
//#define _VERSION 21 // PIC18F6722   -- add yaesu band decoder
//#define _VERSION 22 // PIC18F6722   -- add wifi reset > ADC free running
//#define _VERSION 23 // PIC18F6722   -- add PWM FAN > C99
//#define _VERSION 24 // PIC18F6722   -- add multipower option
#define _VERSION 30 // PIC18F66K80
//*********************************************************************************
#include <xc.h>
#include <string.h>
#include <math.h>
//
#pragma config FOSC = HS1 ,PLLCFG = ON
#pragma config IESO = OFF, FCMEN = OFF
#pragma config PWRTEN = ON, BORV = 3, BOREN = ON
#pragma config WDTEN = ON, WDTPS = 128
#pragma config MCLRE = ON, MSSPMSK = MSK7, T0CKMX = PORTB, T3CKMX = PORTB, CANMX = PORTB
#pragma config STVREN = ON, DEBUG = OFF, XINST = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTC = OFF, WRTB = ON, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF
#pragma warning disable 1510

#define _XTAL_FREQ 64000000 //16MHz*4(PLL)
//
//forward 1150                      0   /   70  
//reflected 130                     2   /   72
//curr 37.0                         4   /   74
//volt 54.0                         6   /   76
//temp 65.0                         8   /   78
//fan temp 45.0                     10  /   7A
//lpf error power 200               12  /   7C
//lpf error curr 10.0               14  /   7E
//lpf reaction 50                   16  /   80
//ptt hold time 0                   17  /   81
//temp hyst 10                      18  /   82
//fan hyst 5                        19  /   83
//rel delay 5                       20  /   84
//bias delay 10                     21  /   85
//t sensor calibration 10 [0]       22  /   86
//fan ptt - off                     23  /   87
//beep - on                         24  /   88
//logo - on                         25  /   89
//band 1.8                          26  /   -
//auto band - on                    27  /   -
//bypass - off                      28  /   -
//antenna - 0 [1]                   29  /   -
//ant 1.8 - 1                       30  /   8E
//ant 3.5 - 1                       31  /   8F
//ant 7.0 - 1                       32  /   90
//ant 10-14 - 1                     33  /   91
//ant 18-21 - 1                     34  /   92
//ant 24-28 - 1                     35  /   93
//ant 50-54 - 1                     36  /   94
//decoder selector - 0 [RF]         37  /   95
//icom 160m low - 7000              38  /   96
//icom 160m high - 8000             40  /   98
//icom 80m low - 6000               42  /   9A
//icom 80m high - 7000              44  /   9C
//icom 40m low - 5000               46  /   9E
//icom 40m high - 6000              48  /   A0
//icom 20m low - 4000               50  /   A2
//icom 20m high - 5000              52  /   A4
//icom 17-15m low - 3000            54  /   A6
//icom 17-15m high - 4000           56  /   A8
//icom 12-10m low - 2000            58  /   AA
//icom 12-10m high - 3000           60  /   AC
//icom 6m low - 1000                62  /   AE
//icom 6m high - 2000               64  /   B0
//drive in - 20                     66  /   B2
//attenuator - 6dB                  67  /   B3
//remote - 0 [COM/USB]              68  /   B4
//power version - 1 [600/1000/1500] 69  /   B5
//voltage PS - 5000 (50.00V)        70  /   B6
//current PS - 3000 (30.00A)        72  /   B8
//type PS - 0 [H / F / E]           74  /   BA
//
__EEPROM_DATA(0x7E,0x04,0x82,0x00,0x72,0x01,0x1C,0x02);//0...7
__EEPROM_DATA(0x41,0x00,0x2D,0x00,0xC8,0x00,0x64,0x00);//8...15
__EEPROM_DATA(0x32,0x00,0x0A,0x05,0x05,0x0A,0x0A,0x00);//16...23
__EEPROM_DATA(0x01,0x00,0x01,0x01,0x00,0x00,0x01,0x01);//24...31
__EEPROM_DATA(0x01,0x01,0x01,0x01,0x01,0x00,0x58,0x1B);//32...39
__EEPROM_DATA(0x40,0x1F,0x70,0x17,0x58,0x1B,0x88,0x13);//40...47
__EEPROM_DATA(0x70,0x17,0xA0,0x0F,0x88,0x13,0xB8,0x0B);//48...55
__EEPROM_DATA(0xA0,0x0F,0xD0,0x07,0xB8,0x0B,0xE8,0x03);//56...63
__EEPROM_DATA(0xD0,0x07,0x14,0x06,0x00,0x01,0xF4,0x01);//64...71
__EEPROM_DATA(0x2C,0x01,0x00,0xFF,0xFF,0xFF,0xFF,0xFF);//72...79
//
#include "macros.h"
//*********************************************************************************
volatile __near UINT  frwd, refl, volt, curr, temp, temp_2, freq, drive;
volatile __near UINT  temp_old = 0, fpeak = 0, rpeak = 0, cpeak = 0, dpeak = 0, bstate, bstate_old = 0;
volatile __near UINT  max_pwr, max_ref, max_volt, max_curr, max_temp, max_drive;
volatile __near UINT  elpf = 0, lpferrP, lpferrC, lpferrR;
volatile __near UINT  adc_val[8] = {0};
volatile __near UCHAR adc_current_ch = 0, err = 0, err_old = 0xFF;
volatile __near UCHAR buffRX_1[_MAX_USART_RX1], buffRX_2[_MAX_USART_RX2], rxb1, rxb2, txb, rx_end1, rx_end2, tx_len;
volatile UINT icom, icomV, volt_view, max_tFAN, voltPS, currPS;
volatile UINT fpeak_old = 0, rpeak_old = 0, cpeak_old = 0, dpeak_old = 0, tempM = 0, tempM_2 = 0, voltM = 0, volt_old = 0, temp_2_old = 0;
volatile UINT frtout = 0, cvtout = 0, tdtout = 0, bpt = 0, beepPer = 0, p_coeff = 0, pwr_coeff = 0;
volatile UINT antb1, antb2, antb3, antb4, antb5, antb6, antb7;
volatile UINT ieg1l, ieg1h, ieg2l, ieg2h, ieg3l, ieg3h, ieg4l, ieg4h, ieg5l, ieg5h, ieg6l, ieg6h, ieg7l, ieg7h;
volatile UCHAR buffTX[_MAX_USART_TX];
volatile UCHAR ptt = 0, bypass = 0, lcd = 0, reldel, biasdel, fanptt, maxf = 0, fan = 0, med = 0, ant = 0, att = 0, bp = 0;
volatile UCHAR band, band_old = 0, aband, bdsel = 0, wifi = 0, fan_butt = 0, remsel = 0;
volatile UCHAR hystT, hystF, beeper, logo, sensor, ptt_hold, ptt_htimer = 0, typePS = 0;
volatile uint16_t heartbeat_counter = 0;
volatile ULONG tmp;
//*********************************************************************************
#include "eep.h"
#include "usart.h"
#include "digital.h"
#include "can.h"
#include "adc.h"
#include "nextion.h"
//*********************************************************************************
void main(void)
{
	di();
	STKPTR = 0x00;
    //comparator off
	CM1CON = 0x07;
    CM2CON = 0x07;
    //ECCP1 off
	CCP1CON = 0x00;
    //CCP2/3/4/5 off
	CCP2CON = 0x00;
	CCP3CON = 0x00;
	CCP4CON = 0x00;
	CCP5CON = 0x00;
    //ADC
	ADCON0 = 0b00000000;
	ADCON1 = 0b00110000; //Internal Vref 4.1V
	ADCON2 = 0b10110110; //FOSC/64 => TAD = 1uS, Taq = 16TAD
    ANCON0 = 0b11111111; //AN0 - AN7
    ANCON1 = 0b00000000;
    //reset PORTS
	PORTA = 0x00; PORTB = 0x00; PORTC = 0x00; PORTD = 0x00; PORTE = 0x00; PORTF = 0x00; PORTG = 0x00;
	LATA = 0x00; LATB = 0x00; LATC = 0x00; LATD = 0x00; LATE = 0x00; LATF = 0x00; LATG = 0x00;
    //I/O
	TRISA = 0b00111111;
	TRISB = 0b11111000;
	TRISC = 0b00100000;
	TRISD = 0b00000000;
	TRISE = 0b01000111;
	TRISF = 0b00000011;
	TRISG = 0b00010001;
    //pull-up resistors off
	INTCON2bits.RBPU = 1;
    PADCFG1bits.RDPU = 0;
    PADCFG1bits.REPU = 0;
    PADCFG1bits.RFPU = 0;
    PADCFG1bits.RGPU = 0;
    //TIMER0 (16-bit) pentru Transmitt(void) si waitAckFromLCD(void)
	T0CON = 0b10000000;
	//TIMER1 (16-bit) pentru SlowControl(void)
	T1CON = 0b00110011; //~32 ms la 64MHz ///16bit, prescaler 1:8, Fosc/4
    //TIMER2 (8-bit))
    //folosit pentru UART
	//TIMER3 (16-bit) external clock >>> masurare frecventa
	T3CON = 0b10000111; //16bit, no syncro extern clock, prescaler 1:1, ext. clock T3CKI
    //Timer4 (8-bit) pentru PWM FAN
	T4CON = 0b00000000; //initial OFF
	//Config. PWM
    PR4 = 150; //Period register 4 pentru Timer 4
    //CCP4 in mod PWM (pentru ca se foloseste RC7 ca iesire PWM)
    CCP4CON = 0b00001100;
    CCPTMRS = 0b00001000; //CCP4 Timer select TMR4
    // Duty initial = 0
    CCPR4L = 0x00; // 0xFF cand se inverseaza logica, pentru cazul cand iesirea pwm trece printr-un inversor sau 0 in mod  normal. Orice modificare aici trebuie facuta si in void SetFanSpeed() din digital.h
    CCP4CONbits.DC4B = 0x00; // 0x03 cand se inverseaza logica, pentru cazul cand iesirea pwm trece printr-un inversor sau 0 in mod normal. Orice modificare aici trebuie facuta si in void SetFanSpeed() din digital.h
    //Timer4 ON (pentru PWM)
	T4CON = 0b00000101; 
	//USART1
	RCSTA1 = 0b10010000;//SP enable
	TXSTA1 = 0b00100100;//TXEN = 1 / BRGH = 1
	SPBRG1 = 34;//115200 baud
    //BAUDCON1bits.BRG16 = 1; // Activeaz? num?rarea pe 16 bi?i pentru Baud Rate
    //SPBRGH1 = 0;            // Partea High din cei 16 bi?i
    //SPBRG1 = 138;           // Partea Low (Eroare de doar +0.16%)
	//USART2
	RCSTA2 = 0b10010000;
	TXSTA2 = 0b00100100;//TXEN = 1 / BRGH = 1
	SPBRG2 = 34;//115200 baud
    //CAN
    CAN_Init();
	//WDT on
	WDTCON = 0x1;
    //Clear all flags interrupts
    PIR1 = 0;
    PIR2 = 0;
    PIR3 = 0;
    PIR4 = 0;
    PIR5 = 0;
	// --- Activare intreruperi ADC ---
    PIR1bits.ADIF = 0;    // stergem flag-ul initial
    PIE1bits.ADIE = 1;    // Activam intreruperea de ADC
	//Interrupts USART on
	PIE1bits.RC1IE = 1;
	PIE3bits.RC2IE = 1;
    //GLOBAL Interrupts on
	INTCONbits.PEIE = 1;
	INTCONbits.GIE = 1;
    // --- DECLANSAREA PRIMEI CONVERSII ADC ---
    adc_current_ch = 0;
    ADCON0 = (UCHAR)(0b00000001 | (adc_current_ch << 2)); // AN0 selectat, ADC pornit
    ADCON0bits.GODONE = 1;                                  // Start primului pas
    //
	_RST_WIFI = 1;
    // 
	EEsetupRead();
	EEmbandRead();
    // 
    if (remsel)
    {
        _EN_ESP = 1;
    }
	//logo page -----------------------------
    LOOP_WAIT:
    if (logo)
    {
        //if (!LCDpageSelect(_PAGE_LOGO)) {_FULL_RESET;}
        if (!LCDpageSelect(_PAGE_LOGO)) {goto LOOP_WAIT;}
        DelayS(4);
    }
    else DelayS(1);
    //send cfg value from EEPROM 
    cfgSend();
    //send ATT value from EEPROM
    //CreateBuffTX("matt", att); SendUSART();
    //main page
    if (!LCDpageSelect(_PAGE_MAIN)) {goto LOOP_WAIT;}
    //version send
    LCDversionSend();
	//
	SetBand();
    Beep();
    //---------------------------------------
	while(1)
	{
		ADCmeasure();
		ProtectCheck();
        //
        SlowControl();
		//
        if (typePS == 0) CAN_ProcessRX();
        else if (typePS == 1) Flatpack_ProcessRX1();
        //
		SendStatusToLCD();
		ReadStatusFromLCD();
		ReadStatusFromREM();
	}
}
//*********************************************************************************

