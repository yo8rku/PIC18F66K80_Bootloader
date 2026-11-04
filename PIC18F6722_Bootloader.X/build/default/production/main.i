# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2
# 14 "main.c"
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 23 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 2 3

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 1 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned __int24 uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 2 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\builtins.h" 2 3



#pragma intrinsic(__nop)
extern void __nop(void);

#pragma intrinsic(__nopf000)
extern void __nopf000(void);
#pragma intrinsic(__nopffff)
extern void __nopffff(void);
#pragma intrinsic(__nop0000)
extern void __nop0000(void);



#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 2 3
# 33 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 3
# 1 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 1 3
# 5 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18.h" 2 3
# 1 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18_chip_select.h" 1 3
# 460 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18_chip_select.h" 3
# 1 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 1 3
# 36 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP2CON2 __attribute__((address(0xF62)));

__asm("SSP2CON2 equ 0F62h");


typedef union {
    struct {
        unsigned int SEN :1;
        unsigned int RSEN :1;
        unsigned int PEN :1;
        unsigned int RCEN :1;
        unsigned int ACKEN :1;
        unsigned int ACKDT :1;
        unsigned int ACKSTAT :1;
        unsigned int GCEN :1;
    };
    struct {
        unsigned int SEN2 :1;
        unsigned int RSEN2 :1;
        unsigned int PEN2 :1;
        unsigned int RCEN2 :1;
        unsigned int ACKEN2 :1;
        unsigned int ACKDT2 :1;
        unsigned int ACKSTAT2 :1;
        unsigned int GCEN2 :1;
    };
    struct {
        unsigned int :1;
        unsigned int ADMSK12 :1;
        unsigned int ADMSK22 :1;
        unsigned int ADMSK32 :1;
        unsigned int ADMSK42 :1;
        unsigned int ADMSK52 :1;
    };
} SSP2CON2bits_t;
extern volatile SSP2CON2bits_t SSP2CON2bits __attribute__((address(0xF62)));
# 181 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP2CON1 __attribute__((address(0xF63)));

__asm("SSP2CON1 equ 0F63h");


typedef union {
    struct {
        unsigned int SSPM :4;
        unsigned int CKP :1;
        unsigned int SSPEN :1;
        unsigned int SSPOV :1;
        unsigned int WCOL :1;
    };
    struct {
        unsigned int SSPM0 :1;
        unsigned int SSPM1 :1;
        unsigned int SSPM2 :1;
        unsigned int SSPM3 :1;
    };
    struct {
        unsigned int SSPM02 :1;
        unsigned int SSPM12 :1;
        unsigned int SSPM22 :1;
        unsigned int SSPM32 :1;
        unsigned int CKP2 :1;
        unsigned int SSPEN2 :1;
        unsigned int SSPOV2 :1;
        unsigned int WCOL2 :1;
    };
} SSP2CON1bits_t;
extern volatile SSP2CON1bits_t SSP2CON1bits __attribute__((address(0xF63)));
# 301 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP2STAT __attribute__((address(0xF64)));

__asm("SSP2STAT equ 0F64h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int R_NOT_W :1;
    };
    struct {
        unsigned int :5;
        unsigned int D_NOT_A :1;
    };
    struct {
        unsigned int BF :1;
        unsigned int UA :1;
        unsigned int R_nW :1;
        unsigned int S :1;
        unsigned int P :1;
        unsigned int D_nA :1;
        unsigned int CKE :1;
        unsigned int SMP :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W :1;
        unsigned int :2;
        unsigned int D_A :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ :1;
        unsigned int I2C_START :1;
        unsigned int I2C_STOP :1;
        unsigned int I2C_DAT :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW :1;
        unsigned int :2;
        unsigned int nA :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_WRITE :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE :1;
        unsigned int :2;
        unsigned int nADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE :1;
        unsigned int :2;
        unsigned int DATA_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int R :1;
        unsigned int :2;
        unsigned int D :1;
    };
    struct {
        unsigned int BF2 :1;
        unsigned int UA2 :1;
        unsigned int RW2 :1;
        unsigned int START2 :1;
        unsigned int STOP2 :1;
        unsigned int DA2 :1;
        unsigned int CKE2 :1;
        unsigned int SMP2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ2 :1;
        unsigned int I2C_START2 :1;
        unsigned int I2C_STOP2 :1;
        unsigned int DATA_ADDRESS2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE2 :1;
        unsigned int S2 :1;
        unsigned int P2 :1;
        unsigned int D_A2 :1;
    };
    struct {
        unsigned int :5;
        unsigned int D_NOT_A2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W2 :1;
        unsigned int :2;
        unsigned int D_nA2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_NOT_W2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_nW2 :1;
        unsigned int :2;
        unsigned int I2C_DAT2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_W2 :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_A2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW2 :1;
        unsigned int :2;
        unsigned int nA2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_WRITE2 :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_ADDRESS2 :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE2 :1;
        unsigned int :2;
        unsigned int nADDRESS2 :1;
    };
} SSP2STATbits_t;
extern volatile SSP2STATbits_t SSP2STATbits __attribute__((address(0xF64)));
# 728 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP2ADD __attribute__((address(0xF65)));

__asm("SSP2ADD equ 0F65h");


typedef union {
    struct {
        unsigned int MSK02 :1;
        unsigned int MSK12 :1;
        unsigned int MSK22 :1;
        unsigned int MSK32 :1;
        unsigned int MSK42 :1;
        unsigned int MSK52 :1;
        unsigned int MSK62 :1;
        unsigned int MSK72 :1;
    };
} SSP2ADDbits_t;
extern volatile SSP2ADDbits_t SSP2ADDbits __attribute__((address(0xF65)));
# 790 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP2BUF __attribute__((address(0xF66)));

__asm("SSP2BUF equ 0F66h");




extern volatile unsigned char ECCP2DEL __attribute__((address(0xF67)));

__asm("ECCP2DEL equ 0F67h");


typedef union {
    struct {
        unsigned int P2DC :7;
        unsigned int P2RSEN :1;
    };
    struct {
        unsigned int P2DC0 :1;
        unsigned int P2DC1 :1;
        unsigned int P2DC2 :1;
        unsigned int P2DC3 :1;
        unsigned int P2DC4 :1;
        unsigned int P2DC5 :1;
        unsigned int P2DC6 :1;
    };
    struct {
        unsigned int PDC0 :1;
        unsigned int PDC1 :1;
        unsigned int PDC2 :1;
        unsigned int PDC3 :1;
        unsigned int PDC4 :1;
        unsigned int PDC5 :1;
        unsigned int PDC6 :1;
        unsigned int PRSEN :1;
    };
} ECCP2DELbits_t;
extern volatile ECCP2DELbits_t ECCP2DELbits __attribute__((address(0xF67)));
# 917 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char ECCP2AS __attribute__((address(0xF68)));

__asm("ECCP2AS equ 0F68h");


typedef union {
    struct {
        unsigned int PSS2BD :2;
        unsigned int PSS2AC :2;
        unsigned int ECCP2AS :3;
        unsigned int ECCP2ASE :1;
    };
    struct {
        unsigned int PSS2BD0 :1;
        unsigned int PSS2BD1 :1;
        unsigned int PSS2AC0 :1;
        unsigned int PSS2AC1 :1;
        unsigned int ECCP2AS0 :1;
        unsigned int ECCP2AS1 :1;
        unsigned int ECCP2AS2 :1;
    };
    struct {
        unsigned int PSSBD0 :1;
        unsigned int PSSBD1 :1;
        unsigned int PSSAC0 :1;
        unsigned int PSSAC1 :1;
        unsigned int ECCPAS0 :1;
        unsigned int ECCPAS1 :1;
        unsigned int ECCPAS2 :1;
        unsigned int ECCPASE :1;
    };
} ECCP2ASbits_t;
extern volatile ECCP2ASbits_t ECCP2ASbits __attribute__((address(0xF68)));
# 1049 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char ECCP3DEL __attribute__((address(0xF69)));

__asm("ECCP3DEL equ 0F69h");


typedef union {
    struct {
        unsigned int P3DC :7;
        unsigned int P3RSEN :1;
    };
    struct {
        unsigned int P3DC0 :1;
        unsigned int P3DC1 :1;
        unsigned int P3DC2 :1;
        unsigned int P3DC3 :1;
        unsigned int P3DC4 :1;
        unsigned int P3DC5 :1;
        unsigned int P3DC6 :1;
    };
    struct {
        unsigned int PDC0 :1;
        unsigned int PDC1 :1;
        unsigned int PDC2 :1;
        unsigned int PDC3 :1;
        unsigned int PDC4 :1;
        unsigned int PDC5 :1;
        unsigned int PDC6 :1;
        unsigned int PRSEN :1;
    };
} ECCP3DELbits_t;
extern volatile ECCP3DELbits_t ECCP3DELbits __attribute__((address(0xF69)));
# 1169 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char ECCP3AS __attribute__((address(0xF6A)));

__asm("ECCP3AS equ 0F6Ah");


typedef union {
    struct {
        unsigned int PSS3BD :2;
        unsigned int PSS3AC :2;
        unsigned int ECCP3AS :3;
        unsigned int ECCP3ASE :1;
    };
    struct {
        unsigned int PSS3BD0 :1;
        unsigned int PSS3BD1 :1;
        unsigned int PSS3AC0 :1;
        unsigned int PSS3AC1 :1;
        unsigned int ECCP3AS0 :1;
        unsigned int ECCP3AS1 :1;
        unsigned int ECCP3AS2 :1;
    };
    struct {
        unsigned int PSSBD0 :1;
        unsigned int PSSBD1 :1;
        unsigned int PSSAC0 :1;
        unsigned int PSSAC1 :1;
        unsigned int ECCPAS0 :1;
        unsigned int ECCPAS1 :1;
        unsigned int ECCPAS2 :1;
        unsigned int ECCPASE :1;
    };
} ECCP3ASbits_t;
extern volatile ECCP3ASbits_t ECCP3ASbits __attribute__((address(0xF6A)));
# 1301 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char RCSTA2 __attribute__((address(0xF6B)));

__asm("RCSTA2 equ 0F6Bh");


typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
    struct {
        unsigned int RCD8 :1;
        unsigned int :5;
        unsigned int RC9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_RC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nRC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC8_9 :1;
    };
    struct {
        unsigned int RX9D2 :1;
        unsigned int OERR2 :1;
        unsigned int FERR2 :1;
        unsigned int ADDEN2 :1;
        unsigned int CREN2 :1;
        unsigned int SREN2 :1;
        unsigned int RX92 :1;
        unsigned int SPEN2 :1;
    };
    struct {
        unsigned int RCD82 :1;
        unsigned int :5;
        unsigned int RC8_92 :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC92 :1;
    };
} RCSTA2bits_t;
extern volatile RCSTA2bits_t RCSTA2bits __attribute__((address(0xF6B)));
# 1479 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TXSTA2 __attribute__((address(0xF6C)));

__asm("TXSTA2 equ 0F6Ch");


typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int SENDB :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
    struct {
        unsigned int TXD8 :1;
        unsigned int :5;
        unsigned int TX8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_TX8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nTX8 :1;
    };
    struct {
        unsigned int TX9D2 :1;
        unsigned int TRMT2 :1;
        unsigned int BRGH2 :1;
        unsigned int SENDB2 :1;
        unsigned int SYNC2 :1;
        unsigned int TXEN2 :1;
        unsigned int TX92 :1;
        unsigned int CSRC2 :1;
    };
    struct {
        unsigned int TXD82 :1;
        unsigned int :5;
        unsigned int TX8_92 :1;
    };
} TXSTA2bits_t;
extern volatile TXSTA2bits_t TXSTA2bits __attribute__((address(0xF6C)));
# 1639 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TXREG2 __attribute__((address(0xF6D)));

__asm("TXREG2 equ 0F6Dh");




extern volatile unsigned char RCREG2 __attribute__((address(0xF6E)));

__asm("RCREG2 equ 0F6Eh");




extern volatile unsigned char SPBRG2 __attribute__((address(0xF6F)));

__asm("SPBRG2 equ 0F6Fh");




extern volatile unsigned char CCP5CON __attribute__((address(0xF70)));

__asm("CCP5CON equ 0F70h");


typedef union {
    struct {
        unsigned int CCP5M :4;
        unsigned int DC5B :2;
    };
    struct {
        unsigned int CCP5M0 :1;
        unsigned int CCP5M1 :1;
        unsigned int CCP5M2 :1;
        unsigned int CCP5M3 :1;
        unsigned int DCCP5Y :1;
        unsigned int DCCP5X :1;
    };
    struct {
        unsigned int :4;
        unsigned int DC5B0 :1;
        unsigned int DC5B1 :1;
    };
} CCP5CONbits_t;
extern volatile CCP5CONbits_t CCP5CONbits __attribute__((address(0xF70)));
# 1739 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short CCPR5 __attribute__((address(0xF71)));

__asm("CCPR5 equ 0F71h");




extern volatile unsigned char CCPR5L __attribute__((address(0xF71)));

__asm("CCPR5L equ 0F71h");




extern volatile unsigned char CCPR5H __attribute__((address(0xF72)));

__asm("CCPR5H equ 0F72h");




extern volatile unsigned char CCP4CON __attribute__((address(0xF73)));

__asm("CCP4CON equ 0F73h");


typedef union {
    struct {
        unsigned int CCP4M :4;
        unsigned int DC4B :2;
    };
    struct {
        unsigned int CCP4M0 :1;
        unsigned int CCP4M1 :1;
        unsigned int CCP4M2 :1;
        unsigned int CCP4M3 :1;
        unsigned int DCCP4Y :1;
        unsigned int DCCP4X :1;
    };
    struct {
        unsigned int :4;
        unsigned int DC4B0 :1;
        unsigned int DC4B1 :1;
    };
} CCP4CONbits_t;
extern volatile CCP4CONbits_t CCP4CONbits __attribute__((address(0xF73)));
# 1839 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short CCPR4 __attribute__((address(0xF74)));

__asm("CCPR4 equ 0F74h");




extern volatile unsigned char CCPR4L __attribute__((address(0xF74)));

__asm("CCPR4L equ 0F74h");




extern volatile unsigned char CCPR4H __attribute__((address(0xF75)));

__asm("CCPR4H equ 0F75h");




extern volatile unsigned char T4CON __attribute__((address(0xF76)));

__asm("T4CON equ 0F76h");


typedef union {
    struct {
        unsigned int T4CKPS :2;
        unsigned int TMR4ON :1;
        unsigned int TOUTPS :4;
    };
    struct {
        unsigned int T4CKPS0 :1;
        unsigned int T4CKPS1 :1;
        unsigned int :1;
        unsigned int T4OUTPS0 :1;
        unsigned int T4OUTPS1 :1;
        unsigned int T4OUTPS2 :1;
        unsigned int T4OUTPS3 :1;
    };
} T4CONbits_t;
extern volatile T4CONbits_t T4CONbits __attribute__((address(0xF76)));
# 1931 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PR4 __attribute__((address(0xF77)));

__asm("PR4 equ 0F77h");




extern volatile unsigned char TMR4 __attribute__((address(0xF78)));

__asm("TMR4 equ 0F78h");




extern volatile unsigned char ECCP1DEL __attribute__((address(0xF79)));

__asm("ECCP1DEL equ 0F79h");


typedef union {
    struct {
        unsigned int P1DC :7;
        unsigned int P1RSEN :1;
    };
    struct {
        unsigned int P1DC0 :1;
        unsigned int P1DC1 :1;
        unsigned int P1DC2 :1;
        unsigned int P1DC3 :1;
        unsigned int P1DC4 :1;
        unsigned int P1DC5 :1;
        unsigned int P1DC6 :1;
    };
    struct {
        unsigned int PDC0 :1;
        unsigned int PDC1 :1;
        unsigned int PDC2 :1;
        unsigned int PDC3 :1;
        unsigned int PDC4 :1;
        unsigned int PDC5 :1;
        unsigned int PDC6 :1;
        unsigned int PRSEN :1;
    };
} ECCP1DELbits_t;
extern volatile ECCP1DELbits_t ECCP1DELbits __attribute__((address(0xF79)));
# 2065 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char BAUDCON2 __attribute__((address(0xF7C)));

__asm("BAUDCON2 equ 0F7Ch");


typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
    struct {
        unsigned int :6;
        unsigned int RCMT :1;
    };
    struct {
        unsigned int ABDEN2 :1;
        unsigned int WUE2 :1;
        unsigned int :1;
        unsigned int BRG162 :1;
        unsigned int SCKP2 :1;
        unsigned int :1;
        unsigned int RCIDL2 :1;
        unsigned int ABDOVF2 :1;
    };
    struct {
        unsigned int :4;
        unsigned int TXCKP2 :1;
        unsigned int :1;
        unsigned int RCMT2 :1;
    };
} BAUDCON2bits_t;
extern volatile BAUDCON2bits_t BAUDCON2bits __attribute__((address(0xF7C)));
# 2182 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SPBRGH2 __attribute__((address(0xF7D)));

__asm("SPBRGH2 equ 0F7Dh");




extern volatile unsigned char BAUDCON1 __attribute__((address(0xF7E)));

__asm("BAUDCON1 equ 0F7Eh");


extern volatile unsigned char BAUDCON __attribute__((address(0xF7E)));

__asm("BAUDCON equ 0F7Eh");

extern volatile unsigned char BAUDCTL __attribute__((address(0xF7E)));

__asm("BAUDCTL equ 0F7Eh");


typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
    struct {
        unsigned int :6;
        unsigned int RCMT :1;
    };
    struct {
        unsigned int ABDEN1 :1;
        unsigned int WUE1 :1;
        unsigned int :1;
        unsigned int BRG161 :1;
        unsigned int SCKP1 :1;
        unsigned int :1;
        unsigned int RCIDL1 :1;
        unsigned int ABDOVF1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CKTXP :1;
        unsigned int :1;
        unsigned int RCMT1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int TXCKP :1;
    };
    struct {
        unsigned int :4;
        unsigned int TXCKP1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int W4E :1;
    };
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0xF7E)));
# 2340 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
    struct {
        unsigned int :6;
        unsigned int RCMT :1;
    };
    struct {
        unsigned int ABDEN1 :1;
        unsigned int WUE1 :1;
        unsigned int :1;
        unsigned int BRG161 :1;
        unsigned int SCKP1 :1;
        unsigned int :1;
        unsigned int RCIDL1 :1;
        unsigned int ABDOVF1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CKTXP :1;
        unsigned int :1;
        unsigned int RCMT1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int TXCKP :1;
    };
    struct {
        unsigned int :4;
        unsigned int TXCKP1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int W4E :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0xF7E)));
# 2476 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int SCKP :1;
        unsigned int :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
    struct {
        unsigned int :6;
        unsigned int RCMT :1;
    };
    struct {
        unsigned int ABDEN1 :1;
        unsigned int WUE1 :1;
        unsigned int :1;
        unsigned int BRG161 :1;
        unsigned int SCKP1 :1;
        unsigned int :1;
        unsigned int RCIDL1 :1;
        unsigned int ABDOVF1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CKTXP :1;
        unsigned int :1;
        unsigned int RCMT1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int TXCKP :1;
    };
    struct {
        unsigned int :4;
        unsigned int TXCKP1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int W4E :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0xF7E)));
# 2615 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SPBRGH1 __attribute__((address(0xF7F)));

__asm("SPBRGH1 equ 0F7Fh");


extern volatile unsigned char SPBRGH __attribute__((address(0xF7F)));

__asm("SPBRGH equ 0F7Fh");




extern volatile unsigned char PORTA __attribute__((address(0xF80)));

__asm("PORTA equ 0F80h");


typedef union {
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
        unsigned int RA7 :1;
    };
    struct {
        unsigned int :2;
        unsigned int VREFM :1;
        unsigned int VREFP :1;
        unsigned int T0CKI :1;
        unsigned int LVDIN :1;
    };
    struct {
        unsigned int AN0 :1;
        unsigned int AN1 :1;
        unsigned int AN2 :1;
        unsigned int AN3 :1;
        unsigned int :1;
        unsigned int AN4 :1;
    };
    struct {
        unsigned int :5;
        unsigned int HLVDIN :1;
    };
    struct {
        unsigned int ULPWUIN :1;
        unsigned int :6;
        unsigned int RJPU :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0xF80)));
# 2773 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PORTB __attribute__((address(0xF81)));

__asm("PORTB equ 0F81h");


typedef union {
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
    struct {
        unsigned int INT0 :1;
        unsigned int INT1 :1;
        unsigned int INT2 :1;
        unsigned int INT3 :1;
        unsigned int KBI0 :1;
        unsigned int KBI1 :1;
        unsigned int KBI2 :1;
        unsigned int KBI3 :1;
    };
    struct {
        unsigned int FLT0 :1;
    };
    struct {
        unsigned int :3;
        unsigned int CCP2_PA2 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0xF81)));
# 2902 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PORTC __attribute__((address(0xF82)));

__asm("PORTC equ 0F82h");


typedef union {
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
    struct {
        unsigned int T1OSO :1;
        unsigned int T1OSI :1;
        unsigned int ECCP1 :1;
        unsigned int SCK :1;
        unsigned int SDI :1;
        unsigned int SDO :1;
        unsigned int TX :1;
        unsigned int RX :1;
    };
    struct {
        unsigned int T13CKI :1;
        unsigned int ECCP2 :1;
        unsigned int :1;
        unsigned int SCL :1;
        unsigned int SDA :1;
        unsigned int :1;
        unsigned int CK :1;
        unsigned int DT :1;
    };
    struct {
        unsigned int :1;
        unsigned int CCP2 :1;
        unsigned int CCP1 :1;
        unsigned int SCL1 :1;
        unsigned int SDA1 :1;
        unsigned int :1;
        unsigned int CK1 :1;
        unsigned int DT1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int P2A :1;
        unsigned int P1A :1;
        unsigned int SCK1 :1;
        unsigned int SDI1 :1;
        unsigned int SDO1 :1;
        unsigned int TX1 :1;
        unsigned int RX1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int PA2 :1;
        unsigned int PA1 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0xF82)));
# 3154 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PORTD __attribute__((address(0xF83)));

__asm("PORTD equ 0F83h");


typedef union {
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
    struct {
        unsigned int PSP0 :1;
        unsigned int PSP1 :1;
        unsigned int PSP2 :1;
        unsigned int PSP3 :1;
        unsigned int PSP4 :1;
        unsigned int PSP5 :1;
        unsigned int PSP6 :1;
        unsigned int PSP7 :1;
    };
    struct {
        unsigned int :5;
        unsigned int SDA2 :1;
        unsigned int SCL2 :1;
        unsigned int SS2 :1;
    };
    struct {
        unsigned int :7;
        unsigned int NOT_SS2 :1;
    };
    struct {
        unsigned int :4;
        unsigned int SDO2 :1;
        unsigned int SDI2 :1;
        unsigned int SCK2 :1;
        unsigned int nSS2 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0xF83)));
# 3323 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PORTE __attribute__((address(0xF84)));

__asm("PORTE equ 0F84h");


typedef union {
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
        unsigned int RE3 :1;
        unsigned int RE4 :1;
        unsigned int RE5 :1;
        unsigned int RE6 :1;
        unsigned int RE7 :1;
    };
    struct {
        unsigned int RD :1;
        unsigned int WR :1;
        unsigned int CS :1;
        unsigned int :4;
        unsigned int ECCP2 :1;
    };
    struct {
        unsigned int NOT_RD :1;
    };
    struct {
        unsigned int :1;
        unsigned int NOT_WR :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_CS :1;
    };
    struct {
        unsigned int nRD :1;
        unsigned int nWR :1;
        unsigned int nCS :1;
        unsigned int :4;
        unsigned int CCP2 :1;
    };
    struct {
        unsigned int P2D :1;
        unsigned int P2C :1;
        unsigned int P2B :1;
        unsigned int P3C :1;
        unsigned int P3B :1;
        unsigned int P1C :1;
        unsigned int P1B :1;
        unsigned int P2A :1;
    };
    struct {
        unsigned int PD2 :1;
        unsigned int PC2 :1;
        unsigned int CCP10 :1;
        unsigned int CCP9E :1;
        unsigned int CCP8E :1;
        unsigned int CCP7E :1;
        unsigned int CCP6E :1;
        unsigned int CCP2E :1;
    };
    struct {
        unsigned int RDE :1;
        unsigned int WRE :1;
        unsigned int PB2 :1;
        unsigned int PC3E :1;
        unsigned int PB3E :1;
        unsigned int PC1E :1;
        unsigned int PB1E :1;
        unsigned int PA2E :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0xF84)));
# 3615 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PORTF __attribute__((address(0xF85)));

__asm("PORTF equ 0F85h");


typedef union {
    struct {
        unsigned int RF0 :1;
        unsigned int RF1 :1;
        unsigned int RF2 :1;
        unsigned int RF3 :1;
        unsigned int RF4 :1;
        unsigned int RF5 :1;
        unsigned int RF6 :1;
        unsigned int RF7 :1;
    };
    struct {
        unsigned int AN5 :1;
        unsigned int AN6 :1;
        unsigned int AN7 :1;
        unsigned int AN8 :1;
        unsigned int AN9 :1;
        unsigned int AN10 :1;
        unsigned int AN11 :1;
        unsigned int SS1 :1;
    };
    struct {
        unsigned int :7;
        unsigned int NOT_SS1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int C2OUT :1;
        unsigned int C1OUT :1;
        unsigned int :2;
        unsigned int CVREF :1;
        unsigned int :1;
        unsigned int nSS1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int C2OUTF :1;
        unsigned int C1OUTF :1;
    };
} PORTFbits_t;
extern volatile PORTFbits_t PORTFbits __attribute__((address(0xF85)));
# 3780 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PORTG __attribute__((address(0xF86)));

__asm("PORTG equ 0F86h");


typedef union {
    struct {
        unsigned int RG0 :1;
        unsigned int RG1 :1;
        unsigned int RG2 :1;
        unsigned int RG3 :1;
        unsigned int RG4 :1;
        unsigned int RG5 :1;
    };
    struct {
        unsigned int ECCP3 :1;
        unsigned int TX2 :1;
        unsigned int RX2 :1;
        unsigned int CCP4 :1;
        unsigned int CCP5 :1;
        unsigned int MCLR :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_MCLR :1;
    };
    struct {
        unsigned int P3A :1;
        unsigned int CK2 :1;
        unsigned int DT2 :1;
        unsigned int P3D :1;
        unsigned int P1D :1;
        unsigned int nMCLR :1;
    };
    struct {
        unsigned int CCP3 :1;
    };
    struct {
        unsigned int :1;
        unsigned int C3OUTG :1;
        unsigned int :3;
        unsigned int RJPU :1;
    };
} PORTGbits_t;
extern volatile PORTGbits_t PORTGbits __attribute__((address(0xF86)));
# 3939 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char LATA __attribute__((address(0xF89)));

__asm("LATA equ 0F89h");


typedef union {
    struct {
        unsigned int LATA0 :1;
        unsigned int LATA1 :1;
        unsigned int LATA2 :1;
        unsigned int LATA3 :1;
        unsigned int LATA4 :1;
        unsigned int LATA5 :1;
        unsigned int LATA6 :1;
        unsigned int LATA7 :1;
    };
    struct {
        unsigned int LA0 :1;
        unsigned int LA1 :1;
        unsigned int LA2 :1;
        unsigned int LA3 :1;
        unsigned int LA4 :1;
        unsigned int LA5 :1;
        unsigned int LA6 :1;
        unsigned int LA7 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0xF89)));
# 4051 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char LATB __attribute__((address(0xF8A)));

__asm("LATB equ 0F8Ah");


typedef union {
    struct {
        unsigned int LATB0 :1;
        unsigned int LATB1 :1;
        unsigned int LATB2 :1;
        unsigned int LATB3 :1;
        unsigned int LATB4 :1;
        unsigned int LATB5 :1;
        unsigned int LATB6 :1;
        unsigned int LATB7 :1;
    };
    struct {
        unsigned int LB0 :1;
        unsigned int LB1 :1;
        unsigned int LB2 :1;
        unsigned int LB3 :1;
        unsigned int LB4 :1;
        unsigned int LB5 :1;
        unsigned int LB6 :1;
        unsigned int LB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0xF8A)));
# 4163 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char LATC __attribute__((address(0xF8B)));

__asm("LATC equ 0F8Bh");


typedef union {
    struct {
        unsigned int LATC0 :1;
        unsigned int LATC1 :1;
        unsigned int LATC2 :1;
        unsigned int LATC3 :1;
        unsigned int LATC4 :1;
        unsigned int LATC5 :1;
        unsigned int LATC6 :1;
        unsigned int LATC7 :1;
    };
    struct {
        unsigned int LC0 :1;
        unsigned int LC1 :1;
        unsigned int LC2 :1;
        unsigned int LC3 :1;
        unsigned int LC4 :1;
        unsigned int LC5 :1;
        unsigned int LC6 :1;
        unsigned int LC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0xF8B)));
# 4275 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char LATD __attribute__((address(0xF8C)));

__asm("LATD equ 0F8Ch");


typedef union {
    struct {
        unsigned int LATD0 :1;
        unsigned int LATD1 :1;
        unsigned int LATD2 :1;
        unsigned int LATD3 :1;
        unsigned int LATD4 :1;
        unsigned int LATD5 :1;
        unsigned int LATD6 :1;
        unsigned int LATD7 :1;
    };
    struct {
        unsigned int LD0 :1;
        unsigned int LD1 :1;
        unsigned int LD2 :1;
        unsigned int LD3 :1;
        unsigned int LD4 :1;
        unsigned int LD5 :1;
        unsigned int LD6 :1;
        unsigned int LD7 :1;
    };
} LATDbits_t;
extern volatile LATDbits_t LATDbits __attribute__((address(0xF8C)));
# 4387 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char LATE __attribute__((address(0xF8D)));

__asm("LATE equ 0F8Dh");


typedef union {
    struct {
        unsigned int LATE0 :1;
        unsigned int LATE1 :1;
        unsigned int LATE2 :1;
        unsigned int LATE3 :1;
        unsigned int LATE4 :1;
        unsigned int LATE5 :1;
        unsigned int LATE6 :1;
        unsigned int LATE7 :1;
    };
    struct {
        unsigned int LE0 :1;
        unsigned int LE1 :1;
        unsigned int LE2 :1;
        unsigned int LE3 :1;
        unsigned int LE4 :1;
        unsigned int LE5 :1;
        unsigned int LE6 :1;
        unsigned int LE7 :1;
    };
} LATEbits_t;
extern volatile LATEbits_t LATEbits __attribute__((address(0xF8D)));
# 4499 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char LATF __attribute__((address(0xF8E)));

__asm("LATF equ 0F8Eh");


typedef union {
    struct {
        unsigned int LATF0 :1;
        unsigned int LATF1 :1;
        unsigned int LATF2 :1;
        unsigned int LATF3 :1;
        unsigned int LATF4 :1;
        unsigned int LATF5 :1;
        unsigned int LATF6 :1;
        unsigned int LATF7 :1;
    };
    struct {
        unsigned int LF0 :1;
        unsigned int LF1 :1;
        unsigned int LF2 :1;
        unsigned int LF3 :1;
        unsigned int LF4 :1;
        unsigned int LF5 :1;
        unsigned int LF6 :1;
        unsigned int LF7 :1;
    };
} LATFbits_t;
extern volatile LATFbits_t LATFbits __attribute__((address(0xF8E)));
# 4611 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char LATG __attribute__((address(0xF8F)));

__asm("LATG equ 0F8Fh");


typedef union {
    struct {
        unsigned int LATG0 :1;
        unsigned int LATG1 :1;
        unsigned int LATG2 :1;
        unsigned int LATG3 :1;
        unsigned int LATG4 :1;
        unsigned int LATG5 :1;
    };
    struct {
        unsigned int LG0 :1;
        unsigned int LG1 :1;
        unsigned int LG2 :1;
        unsigned int LG3 :1;
        unsigned int LG4 :1;
    };
} LATGbits_t;
extern volatile LATGbits_t LATGbits __attribute__((address(0xF8F)));
# 4693 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TRISA __attribute__((address(0xF92)));

__asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __attribute__((address(0xF92)));

__asm("DDRA equ 0F92h");


typedef union {
    struct {
        unsigned int TRISA0 :1;
        unsigned int TRISA1 :1;
        unsigned int TRISA2 :1;
        unsigned int TRISA3 :1;
        unsigned int TRISA4 :1;
        unsigned int TRISA5 :1;
        unsigned int TRISA6 :1;
        unsigned int TRISA7 :1;
    };
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
        unsigned int RA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0xF92)));
# 4808 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int TRISA0 :1;
        unsigned int TRISA1 :1;
        unsigned int TRISA2 :1;
        unsigned int TRISA3 :1;
        unsigned int TRISA4 :1;
        unsigned int TRISA5 :1;
        unsigned int TRISA6 :1;
        unsigned int TRISA7 :1;
    };
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
        unsigned int RA7 :1;
    };
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __attribute__((address(0xF92)));
# 4915 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TRISB __attribute__((address(0xF93)));

__asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __attribute__((address(0xF93)));

__asm("DDRB equ 0F93h");


typedef union {
    struct {
        unsigned int TRISB0 :1;
        unsigned int TRISB1 :1;
        unsigned int TRISB2 :1;
        unsigned int TRISB3 :1;
        unsigned int TRISB4 :1;
        unsigned int TRISB5 :1;
        unsigned int TRISB6 :1;
        unsigned int TRISB7 :1;
    };
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0xF93)));
# 5030 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int TRISB0 :1;
        unsigned int TRISB1 :1;
        unsigned int TRISB2 :1;
        unsigned int TRISB3 :1;
        unsigned int TRISB4 :1;
        unsigned int TRISB5 :1;
        unsigned int TRISB6 :1;
        unsigned int TRISB7 :1;
    };
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __attribute__((address(0xF93)));
# 5137 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TRISC __attribute__((address(0xF94)));

__asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __attribute__((address(0xF94)));

__asm("DDRC equ 0F94h");


typedef union {
    struct {
        unsigned int TRISC0 :1;
        unsigned int TRISC1 :1;
        unsigned int TRISC2 :1;
        unsigned int TRISC3 :1;
        unsigned int TRISC4 :1;
        unsigned int TRISC5 :1;
        unsigned int TRISC6 :1;
        unsigned int TRISC7 :1;
    };
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0xF94)));
# 5252 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int TRISC0 :1;
        unsigned int TRISC1 :1;
        unsigned int TRISC2 :1;
        unsigned int TRISC3 :1;
        unsigned int TRISC4 :1;
        unsigned int TRISC5 :1;
        unsigned int TRISC6 :1;
        unsigned int TRISC7 :1;
    };
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __attribute__((address(0xF94)));
# 5359 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TRISD __attribute__((address(0xF95)));

__asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __attribute__((address(0xF95)));

__asm("DDRD equ 0F95h");


typedef union {
    struct {
        unsigned int TRISD0 :1;
        unsigned int TRISD1 :1;
        unsigned int TRISD2 :1;
        unsigned int TRISD3 :1;
        unsigned int TRISD4 :1;
        unsigned int TRISD5 :1;
        unsigned int TRISD6 :1;
        unsigned int TRISD7 :1;
    };
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0xF95)));
# 5474 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int TRISD0 :1;
        unsigned int TRISD1 :1;
        unsigned int TRISD2 :1;
        unsigned int TRISD3 :1;
        unsigned int TRISD4 :1;
        unsigned int TRISD5 :1;
        unsigned int TRISD6 :1;
        unsigned int TRISD7 :1;
    };
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __attribute__((address(0xF95)));
# 5581 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TRISE __attribute__((address(0xF96)));

__asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __attribute__((address(0xF96)));

__asm("DDRE equ 0F96h");


typedef union {
    struct {
        unsigned int TRISE0 :1;
        unsigned int TRISE1 :1;
        unsigned int TRISE2 :1;
        unsigned int TRISE3 :1;
        unsigned int TRISE4 :1;
        unsigned int TRISE5 :1;
        unsigned int TRISE6 :1;
        unsigned int TRISE7 :1;
    };
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
        unsigned int RE3 :1;
        unsigned int RE4 :1;
        unsigned int RE5 :1;
        unsigned int RE6 :1;
        unsigned int RE7 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0xF96)));
# 5696 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int TRISE0 :1;
        unsigned int TRISE1 :1;
        unsigned int TRISE2 :1;
        unsigned int TRISE3 :1;
        unsigned int TRISE4 :1;
        unsigned int TRISE5 :1;
        unsigned int TRISE6 :1;
        unsigned int TRISE7 :1;
    };
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
        unsigned int RE3 :1;
        unsigned int RE4 :1;
        unsigned int RE5 :1;
        unsigned int RE6 :1;
        unsigned int RE7 :1;
    };
} DDREbits_t;
extern volatile DDREbits_t DDREbits __attribute__((address(0xF96)));
# 5803 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TRISF __attribute__((address(0xF97)));

__asm("TRISF equ 0F97h");


extern volatile unsigned char DDRF __attribute__((address(0xF97)));

__asm("DDRF equ 0F97h");


typedef union {
    struct {
        unsigned int TRISF0 :1;
        unsigned int TRISF1 :1;
        unsigned int TRISF2 :1;
        unsigned int TRISF3 :1;
        unsigned int TRISF4 :1;
        unsigned int TRISF5 :1;
        unsigned int TRISF6 :1;
        unsigned int TRISF7 :1;
    };
    struct {
        unsigned int RF0 :1;
        unsigned int RF1 :1;
        unsigned int RF2 :1;
        unsigned int RF3 :1;
        unsigned int RF4 :1;
        unsigned int RF5 :1;
        unsigned int RF6 :1;
        unsigned int RF7 :1;
    };
} TRISFbits_t;
extern volatile TRISFbits_t TRISFbits __attribute__((address(0xF97)));
# 5918 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int TRISF0 :1;
        unsigned int TRISF1 :1;
        unsigned int TRISF2 :1;
        unsigned int TRISF3 :1;
        unsigned int TRISF4 :1;
        unsigned int TRISF5 :1;
        unsigned int TRISF6 :1;
        unsigned int TRISF7 :1;
    };
    struct {
        unsigned int RF0 :1;
        unsigned int RF1 :1;
        unsigned int RF2 :1;
        unsigned int RF3 :1;
        unsigned int RF4 :1;
        unsigned int RF5 :1;
        unsigned int RF6 :1;
        unsigned int RF7 :1;
    };
} DDRFbits_t;
extern volatile DDRFbits_t DDRFbits __attribute__((address(0xF97)));
# 6025 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TRISG __attribute__((address(0xF98)));

__asm("TRISG equ 0F98h");


extern volatile unsigned char DDRG __attribute__((address(0xF98)));

__asm("DDRG equ 0F98h");


typedef union {
    struct {
        unsigned int TRISG0 :1;
        unsigned int TRISG1 :1;
        unsigned int TRISG2 :1;
        unsigned int TRISG3 :1;
        unsigned int TRISG4 :1;
    };
    struct {
        unsigned int RG0 :1;
        unsigned int RG1 :1;
        unsigned int RG2 :1;
        unsigned int RG3 :1;
        unsigned int RG4 :1;
    };
} TRISGbits_t;
extern volatile TRISGbits_t TRISGbits __attribute__((address(0xF98)));
# 6104 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int TRISG0 :1;
        unsigned int TRISG1 :1;
        unsigned int TRISG2 :1;
        unsigned int TRISG3 :1;
        unsigned int TRISG4 :1;
    };
    struct {
        unsigned int RG0 :1;
        unsigned int RG1 :1;
        unsigned int RG2 :1;
        unsigned int RG3 :1;
        unsigned int RG4 :1;
    };
} DDRGbits_t;
extern volatile DDRGbits_t DDRGbits __attribute__((address(0xF98)));
# 6175 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0xF9B)));

__asm("OSCTUNE equ 0F9Bh");


typedef union {
    struct {
        unsigned int TUN :5;
        unsigned int :1;
        unsigned int PLLEN :1;
        unsigned int INTSRC :1;
    };
    struct {
        unsigned int TUN0 :1;
        unsigned int TUN1 :1;
        unsigned int TUN2 :1;
        unsigned int TUN3 :1;
        unsigned int TUN4 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0xF9B)));
# 6240 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0xF9D)));

__asm("PIE1 equ 0F9Dh");


typedef union {
    struct {
        unsigned int TMR1IE :1;
        unsigned int TMR2IE :1;
        unsigned int CCP1IE :1;
        unsigned int SSP1IE :1;
        unsigned int TX1IE :1;
        unsigned int RC1IE :1;
        unsigned int ADIE :1;
        unsigned int PSPIE :1;
    };
    struct {
        unsigned int :3;
        unsigned int SSPIE :1;
        unsigned int TXIE :1;
        unsigned int RCIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0xF9D)));
# 6323 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0xF9E)));

__asm("PIR1 equ 0F9Eh");


typedef union {
    struct {
        unsigned int TMR1IF :1;
        unsigned int TMR2IF :1;
        unsigned int CCP1IF :1;
        unsigned int SSP1IF :1;
        unsigned int TX1IF :1;
        unsigned int RC1IF :1;
        unsigned int ADIF :1;
        unsigned int PSPIF :1;
    };
    struct {
        unsigned int :3;
        unsigned int SSPIF :1;
        unsigned int TXIF :1;
        unsigned int RCIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0xF9E)));
# 6406 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char IPR1 __attribute__((address(0xF9F)));

__asm("IPR1 equ 0F9Fh");


typedef union {
    struct {
        unsigned int TMR1IP :1;
        unsigned int TMR2IP :1;
        unsigned int CCP1IP :1;
        unsigned int SSP1IP :1;
        unsigned int TX1IP :1;
        unsigned int RC1IP :1;
        unsigned int ADIP :1;
        unsigned int PSPIP :1;
    };
    struct {
        unsigned int :3;
        unsigned int SSPIP :1;
        unsigned int TXIP :1;
        unsigned int RCIP :1;
    };
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __attribute__((address(0xF9F)));
# 6489 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0xFA0)));

__asm("PIE2 equ 0FA0h");


typedef union {
    struct {
        unsigned int CCP2IE :1;
        unsigned int TMR3IE :1;
        unsigned int HLVDIE :1;
        unsigned int BCL1IE :1;
        unsigned int EEIE :1;
        unsigned int :1;
        unsigned int CMIE :1;
        unsigned int OSCFIE :1;
    };
    struct {
        unsigned int :2;
        unsigned int LVDIE :1;
        unsigned int BCLIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0xFA0)));
# 6561 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0xFA1)));

__asm("PIR2 equ 0FA1h");


typedef union {
    struct {
        unsigned int CCP2IF :1;
        unsigned int TMR3IF :1;
        unsigned int HLVDIF :1;
        unsigned int BCL1IF :1;
        unsigned int EEIF :1;
        unsigned int :1;
        unsigned int CMIF :1;
        unsigned int OSCFIF :1;
    };
    struct {
        unsigned int :2;
        unsigned int LVDIF :1;
        unsigned int BCLIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0xFA1)));
# 6633 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char IPR2 __attribute__((address(0xFA2)));

__asm("IPR2 equ 0FA2h");


typedef union {
    struct {
        unsigned int CCP2IP :1;
        unsigned int TMR3IP :1;
        unsigned int HLVDIP :1;
        unsigned int BCL1IP :1;
        unsigned int EEIP :1;
        unsigned int :1;
        unsigned int CMIP :1;
        unsigned int OSCFIP :1;
    };
    struct {
        unsigned int :2;
        unsigned int LVDIP :1;
        unsigned int BCLIP :1;
    };
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __attribute__((address(0xFA2)));
# 6705 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0xFA3)));

__asm("PIE3 equ 0FA3h");


typedef union {
    struct {
        unsigned int CCP3IE :1;
        unsigned int CCP4IE :1;
        unsigned int CCP5IE :1;
        unsigned int TMR4IE :1;
        unsigned int TX2IE :1;
        unsigned int RC2IE :1;
        unsigned int BCL2IE :1;
        unsigned int SSP2IE :1;
    };
    struct {
        unsigned int RXB0IE :1;
        unsigned int RXB1IE :1;
        unsigned int TXB0IE :1;
        unsigned int TXB1IE :1;
        unsigned int TXB2IE :1;
    };
    struct {
        unsigned int :1;
        unsigned int RXBNIE :1;
        unsigned int :2;
        unsigned int TXBNIE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0xFA3)));
# 6815 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0xFA4)));

__asm("PIR3 equ 0FA4h");


typedef union {
    struct {
        unsigned int CCP3IF :1;
        unsigned int CCP4IF :1;
        unsigned int CCP5IF :1;
        unsigned int TMR4IF :1;
        unsigned int TX2IF :1;
        unsigned int RC2IF :1;
        unsigned int BCL2IF :1;
        unsigned int SSP2IF :1;
    };
    struct {
        unsigned int :1;
        unsigned int RXBNIF :1;
        unsigned int :2;
        unsigned int TXBNIF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0xFA4)));
# 6893 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char IPR3 __attribute__((address(0xFA5)));

__asm("IPR3 equ 0FA5h");


typedef union {
    struct {
        unsigned int CCP3IP :1;
        unsigned int CCP4IP :1;
        unsigned int CCP5IP :1;
        unsigned int TMR4IP :1;
        unsigned int TX2IP :1;
        unsigned int RC2IP :1;
        unsigned int BCL2IP :1;
        unsigned int SSP2IP :1;
    };
    struct {
        unsigned int :1;
        unsigned int RXBNIP :1;
        unsigned int :2;
        unsigned int TXBNIP :1;
    };
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __attribute__((address(0xFA5)));
# 6971 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0xFA6)));

__asm("EECON1 equ 0FA6h");


typedef union {
    struct {
        unsigned int RD :1;
        unsigned int WR :1;
        unsigned int WREN :1;
        unsigned int WRERR :1;
        unsigned int FREE :1;
        unsigned int :1;
        unsigned int CFGS :1;
        unsigned int EEPGD :1;
    };
    struct {
        unsigned int :6;
        unsigned int EEFS :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0xFA6)));
# 7037 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0xFA7)));

__asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __attribute__((address(0xFA8)));

__asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __attribute__((address(0xFA9)));

__asm("EEADR equ 0FA9h");




extern volatile unsigned char EEADRH __attribute__((address(0xFAA)));

__asm("EEADRH equ 0FAAh");




extern volatile unsigned char RCSTA1 __attribute__((address(0xFAB)));

__asm("RCSTA1 equ 0FABh");


extern volatile unsigned char RCSTA __attribute__((address(0xFAB)));

__asm("RCSTA equ 0FABh");


typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
    struct {
        unsigned int RCD8 :1;
        unsigned int :5;
        unsigned int RC9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_RC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nRC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC8_9 :1;
    };
    struct {
        unsigned int RX9D1 :1;
        unsigned int OERR1 :1;
        unsigned int FERR1 :1;
        unsigned int ADDEN1 :1;
        unsigned int CREN1 :1;
        unsigned int SREN1 :1;
        unsigned int RX91 :1;
        unsigned int SPEN1 :1;
    };
    struct {
        unsigned int :5;
        unsigned int SRENA :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0xFAB)));
# 7231 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
    struct {
        unsigned int RCD8 :1;
        unsigned int :5;
        unsigned int RC9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_RC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nRC8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC8_9 :1;
    };
    struct {
        unsigned int RX9D1 :1;
        unsigned int OERR1 :1;
        unsigned int FERR1 :1;
        unsigned int ADDEN1 :1;
        unsigned int CREN1 :1;
        unsigned int SREN1 :1;
        unsigned int RX91 :1;
        unsigned int SPEN1 :1;
    };
    struct {
        unsigned int :5;
        unsigned int SRENA :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0xFAB)));
# 7389 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TXSTA1 __attribute__((address(0xFAC)));

__asm("TXSTA1 equ 0FACh");


extern volatile unsigned char TXSTA __attribute__((address(0xFAC)));

__asm("TXSTA equ 0FACh");


typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int SENDB :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
    struct {
        unsigned int TXD8 :1;
        unsigned int :5;
        unsigned int TX8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_TX8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nTX8 :1;
    };
    struct {
        unsigned int TX9D1 :1;
        unsigned int TRMT1 :1;
        unsigned int BRGH1 :1;
        unsigned int SENDB1 :1;
        unsigned int SYNC1 :1;
        unsigned int TXEN1 :1;
        unsigned int TX91 :1;
        unsigned int CSRC1 :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0xFAC)));
# 7537 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int SENDB :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
    struct {
        unsigned int TXD8 :1;
        unsigned int :5;
        unsigned int TX8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int NOT_TX8 :1;
    };
    struct {
        unsigned int :6;
        unsigned int nTX8 :1;
    };
    struct {
        unsigned int TX9D1 :1;
        unsigned int TRMT1 :1;
        unsigned int BRGH1 :1;
        unsigned int SENDB1 :1;
        unsigned int SYNC1 :1;
        unsigned int TXEN1 :1;
        unsigned int TX91 :1;
        unsigned int CSRC1 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0xFAC)));
# 7677 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TXREG1 __attribute__((address(0xFAD)));

__asm("TXREG1 equ 0FADh");


extern volatile unsigned char TXREG __attribute__((address(0xFAD)));

__asm("TXREG equ 0FADh");




extern volatile unsigned char RCREG1 __attribute__((address(0xFAE)));

__asm("RCREG1 equ 0FAEh");


extern volatile unsigned char RCREG __attribute__((address(0xFAE)));

__asm("RCREG equ 0FAEh");




extern volatile unsigned char SPBRG1 __attribute__((address(0xFAF)));

__asm("SPBRG1 equ 0FAFh");


extern volatile unsigned char SPBRG __attribute__((address(0xFAF)));

__asm("SPBRG equ 0FAFh");




extern volatile unsigned char PSPCON __attribute__((address(0xFB0)));

__asm("PSPCON equ 0FB0h");


typedef union {
    struct {
        unsigned int :4;
        unsigned int PSPMODE :1;
        unsigned int IBOV :1;
        unsigned int OBF :1;
        unsigned int IBF :1;
    };
} PSPCONbits_t;
extern volatile PSPCONbits_t PSPCONbits __attribute__((address(0xFB0)));
# 7752 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char T3CON __attribute__((address(0xFB1)));

__asm("T3CON equ 0FB1h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int NOT_T3SYNC :1;
    };
    struct {
        unsigned int TMR3ON :1;
        unsigned int TMR3CS :1;
        unsigned int nT3SYNC :1;
        unsigned int T3CCP1 :1;
        unsigned int T3CKPS :2;
        unsigned int T3CCP2 :1;
        unsigned int RD16 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T3SYNC :1;
        unsigned int :1;
        unsigned int T3CKPS0 :1;
        unsigned int T3CKPS1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T3INSYNC :1;
    };
    struct {
        unsigned int :3;
        unsigned int SOSCEN3 :1;
        unsigned int :3;
        unsigned int RD163 :1;
    };
    struct {
        unsigned int :7;
        unsigned int T3RD16 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0xFB1)));
# 7873 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short TMR3 __attribute__((address(0xFB2)));

__asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __attribute__((address(0xFB2)));

__asm("TMR3L equ 0FB2h");




extern volatile unsigned char TMR3H __attribute__((address(0xFB3)));

__asm("TMR3H equ 0FB3h");




extern volatile unsigned char CMCON __attribute__((address(0xFB4)));

__asm("CMCON equ 0FB4h");


typedef union {
    struct {
        unsigned int CM :3;
        unsigned int CIS :1;
        unsigned int C1INV :1;
        unsigned int C2INV :1;
        unsigned int C1OUT :1;
        unsigned int C2OUT :1;
    };
    struct {
        unsigned int CM0 :1;
        unsigned int CM1 :1;
        unsigned int CM2 :1;
    };
    struct {
        unsigned int CMEN0 :1;
        unsigned int CMEN1 :1;
        unsigned int CMEN2 :1;
    };
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __attribute__((address(0xFB4)));
# 7984 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char CVRCON __attribute__((address(0xFB5)));

__asm("CVRCON equ 0FB5h");


typedef union {
    struct {
        unsigned int CVR :4;
        unsigned int CVRSS :1;
        unsigned int CVRR :1;
        unsigned int CVROE :1;
        unsigned int CVREN :1;
    };
    struct {
        unsigned int CVR0 :1;
        unsigned int CVR1 :1;
        unsigned int CVR2 :1;
        unsigned int CVR3 :1;
    };
    struct {
        unsigned int :6;
        unsigned int CVROEN :1;
    };
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __attribute__((address(0xFB5)));
# 8063 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char ECCP1AS __attribute__((address(0xFB6)));

__asm("ECCP1AS equ 0FB6h");


typedef union {
    struct {
        unsigned int PSS1BD :2;
        unsigned int PSS1AC :2;
        unsigned int ECCP1AS :3;
        unsigned int ECCP1ASE :1;
    };
    struct {
        unsigned int PSS1BD0 :1;
        unsigned int PSS1BD1 :1;
        unsigned int PSS1AC0 :1;
        unsigned int PSS1AC1 :1;
        unsigned int ECCP1AS0 :1;
        unsigned int ECCP1AS1 :1;
        unsigned int ECCP1AS2 :1;
    };
    struct {
        unsigned int PSSBD0 :1;
        unsigned int PSSBD1 :1;
        unsigned int PSSAC0 :1;
        unsigned int PSSAC1 :1;
        unsigned int ECCPAS0 :1;
        unsigned int ECCPAS1 :1;
        unsigned int ECCPAS2 :1;
        unsigned int ECCPASE :1;
    };
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __attribute__((address(0xFB6)));
# 8195 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char CCP3CON __attribute__((address(0xFB7)));

__asm("CCP3CON equ 0FB7h");


extern volatile unsigned char ECCP3CON __attribute__((address(0xFB7)));

__asm("ECCP3CON equ 0FB7h");


typedef union {
    struct {
        unsigned int CCP3M :4;
        unsigned int DC3B :2;
        unsigned int P3M :2;
    };
    struct {
        unsigned int CCP3M0 :1;
        unsigned int CCP3M1 :1;
        unsigned int CCP3M2 :1;
        unsigned int CCP3M3 :1;
        unsigned int DC3B0 :1;
        unsigned int DC3B1 :1;
        unsigned int P3M0 :1;
        unsigned int P3M1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CCP3Y :1;
        unsigned int CCP3X :1;
    };
} CCP3CONbits_t;
extern volatile CCP3CONbits_t CCP3CONbits __attribute__((address(0xFB7)));
# 8295 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int CCP3M :4;
        unsigned int DC3B :2;
        unsigned int P3M :2;
    };
    struct {
        unsigned int CCP3M0 :1;
        unsigned int CCP3M1 :1;
        unsigned int CCP3M2 :1;
        unsigned int CCP3M3 :1;
        unsigned int DC3B0 :1;
        unsigned int DC3B1 :1;
        unsigned int P3M0 :1;
        unsigned int P3M1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CCP3Y :1;
        unsigned int CCP3X :1;
    };
} ECCP3CONbits_t;
extern volatile ECCP3CONbits_t ECCP3CONbits __attribute__((address(0xFB7)));
# 8387 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short CCPR3 __attribute__((address(0xFB8)));

__asm("CCPR3 equ 0FB8h");




extern volatile unsigned char CCPR3L __attribute__((address(0xFB8)));

__asm("CCPR3L equ 0FB8h");




extern volatile unsigned char CCPR3H __attribute__((address(0xFB9)));

__asm("CCPR3H equ 0FB9h");




extern volatile unsigned char CCP2CON __attribute__((address(0xFBA)));

__asm("CCP2CON equ 0FBAh");


extern volatile unsigned char ECCP2CON __attribute__((address(0xFBA)));

__asm("ECCP2CON equ 0FBAh");


typedef union {
    struct {
        unsigned int CCP2M :4;
        unsigned int DC2B :2;
        unsigned int P2M :2;
    };
    struct {
        unsigned int CCP2M0 :1;
        unsigned int CCP2M1 :1;
        unsigned int CCP2M2 :1;
        unsigned int CCP2M3 :1;
        unsigned int DC2B0 :1;
        unsigned int DC2B1 :1;
        unsigned int P2M0 :1;
        unsigned int P2M1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CCP2Y :1;
        unsigned int CCP2X :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0xFBA)));
# 8508 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int CCP2M :4;
        unsigned int DC2B :2;
        unsigned int P2M :2;
    };
    struct {
        unsigned int CCP2M0 :1;
        unsigned int CCP2M1 :1;
        unsigned int CCP2M2 :1;
        unsigned int CCP2M3 :1;
        unsigned int DC2B0 :1;
        unsigned int DC2B1 :1;
        unsigned int P2M0 :1;
        unsigned int P2M1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CCP2Y :1;
        unsigned int CCP2X :1;
    };
} ECCP2CONbits_t;
extern volatile ECCP2CONbits_t ECCP2CONbits __attribute__((address(0xFBA)));
# 8600 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0xFBB)));

__asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __attribute__((address(0xFBB)));

__asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __attribute__((address(0xFBC)));

__asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __attribute__((address(0xFBD)));

__asm("CCP1CON equ 0FBDh");


extern volatile unsigned char ECCP1CON __attribute__((address(0xFBD)));

__asm("ECCP1CON equ 0FBDh");


typedef union {
    struct {
        unsigned int CCP1M :4;
        unsigned int DC1B :2;
        unsigned int P1M :2;
    };
    struct {
        unsigned int CCP1M0 :1;
        unsigned int CCP1M1 :1;
        unsigned int CCP1M2 :1;
        unsigned int CCP1M3 :1;
        unsigned int DC1B0 :1;
        unsigned int DC1B1 :1;
        unsigned int P1M0 :1;
        unsigned int P1M1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CCP1Y :1;
        unsigned int CCP1X :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0xFBD)));
# 8721 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int CCP1M :4;
        unsigned int DC1B :2;
        unsigned int P1M :2;
    };
    struct {
        unsigned int CCP1M0 :1;
        unsigned int CCP1M1 :1;
        unsigned int CCP1M2 :1;
        unsigned int CCP1M3 :1;
        unsigned int DC1B0 :1;
        unsigned int DC1B1 :1;
        unsigned int P1M0 :1;
        unsigned int P1M1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int CCP1Y :1;
        unsigned int CCP1X :1;
    };
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __attribute__((address(0xFBD)));
# 8813 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0xFBE)));

__asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __attribute__((address(0xFBE)));

__asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __attribute__((address(0xFBF)));

__asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON2 __attribute__((address(0xFC0)));

__asm("ADCON2 equ 0FC0h");


typedef union {
    struct {
        unsigned int ADCS :3;
        unsigned int ACQT :3;
        unsigned int :1;
        unsigned int ADFM :1;
    };
    struct {
        unsigned int ADCS0 :1;
        unsigned int ADCS1 :1;
        unsigned int ADCS2 :1;
        unsigned int ACQT0 :1;
        unsigned int ACQT1 :1;
        unsigned int ACQT2 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0xFC0)));
# 8905 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0xFC1)));

__asm("ADCON1 equ 0FC1h");


typedef union {
    struct {
        unsigned int PCFG :4;
        unsigned int VCFG :2;
    };
    struct {
        unsigned int PCFG0 :1;
        unsigned int PCFG1 :1;
        unsigned int PCFG2 :1;
        unsigned int PCFG3 :1;
        unsigned int VCFG0 :1;
        unsigned int VCFG1 :1;
    };
    struct {
        unsigned int :3;
        unsigned int CHSN3 :1;
        unsigned int VCFG01 :1;
        unsigned int VCFG11 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0xFC1)));
# 8990 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0xFC2)));

__asm("ADCON0 equ 0FC2h");


typedef union {
    struct {
        unsigned int :1;
        unsigned int GO_NOT_DONE :1;
    };
    struct {
        unsigned int ADON :1;
        unsigned int GO_nDONE :1;
        unsigned int CHS :4;
    };
    struct {
        unsigned int :1;
        unsigned int DONE :1;
    };
    struct {
        unsigned int :1;
        unsigned int GO_DONE :1;
        unsigned int CHS0 :1;
        unsigned int CHS1 :1;
        unsigned int CHS2 :1;
        unsigned int CHS3 :1;
    };
    struct {
        unsigned int :1;
        unsigned int GO :1;
    };
    struct {
        unsigned int :1;
        unsigned int NOT_DONE :1;
    };
    struct {
        unsigned int :1;
        unsigned int nDONE :1;
    };
    struct {
        unsigned int :1;
        unsigned int GODONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0xFC2)));
# 9109 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short ADRES __attribute__((address(0xFC3)));

__asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __attribute__((address(0xFC3)));

__asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __attribute__((address(0xFC4)));

__asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSP1CON2 __attribute__((address(0xFC5)));

__asm("SSP1CON2 equ 0FC5h");


extern volatile unsigned char SSPCON2 __attribute__((address(0xFC5)));

__asm("SSPCON2 equ 0FC5h");


typedef union {
    struct {
        unsigned int SEN :1;
        unsigned int RSEN :1;
        unsigned int PEN :1;
        unsigned int RCEN :1;
        unsigned int ACKEN :1;
        unsigned int ACKDT :1;
        unsigned int ACKSTAT :1;
        unsigned int GCEN :1;
    };
    struct {
        unsigned int SEN1 :1;
        unsigned int ADMSK1 :1;
        unsigned int ADMSK2 :1;
        unsigned int ADMSK3 :1;
        unsigned int ACKEN1 :1;
        unsigned int ACKDT1 :1;
        unsigned int ACKSTAT1 :1;
        unsigned int GCEN1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int ADMSK11 :1;
        unsigned int ADMSK21 :1;
        unsigned int ADMSK31 :1;
        unsigned int ADMSK4 :1;
        unsigned int ADMSK5 :1;
    };
    struct {
        unsigned int :1;
        unsigned int RSEN1 :1;
        unsigned int PEN1 :1;
        unsigned int RCEN1 :1;
        unsigned int ADMSK41 :1;
        unsigned int ADMSK51 :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0xFC5)));
# 9311 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int SEN :1;
        unsigned int RSEN :1;
        unsigned int PEN :1;
        unsigned int RCEN :1;
        unsigned int ACKEN :1;
        unsigned int ACKDT :1;
        unsigned int ACKSTAT :1;
        unsigned int GCEN :1;
    };
    struct {
        unsigned int SEN1 :1;
        unsigned int ADMSK1 :1;
        unsigned int ADMSK2 :1;
        unsigned int ADMSK3 :1;
        unsigned int ACKEN1 :1;
        unsigned int ACKDT1 :1;
        unsigned int ACKSTAT1 :1;
        unsigned int GCEN1 :1;
    };
    struct {
        unsigned int :1;
        unsigned int ADMSK11 :1;
        unsigned int ADMSK21 :1;
        unsigned int ADMSK31 :1;
        unsigned int ADMSK4 :1;
        unsigned int ADMSK5 :1;
    };
    struct {
        unsigned int :1;
        unsigned int RSEN1 :1;
        unsigned int PEN1 :1;
        unsigned int RCEN1 :1;
        unsigned int ADMSK41 :1;
        unsigned int ADMSK51 :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0xFC5)));
# 9484 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP1CON1 __attribute__((address(0xFC6)));

__asm("SSP1CON1 equ 0FC6h");


extern volatile unsigned char SSPCON1 __attribute__((address(0xFC6)));

__asm("SSPCON1 equ 0FC6h");


typedef union {
    struct {
        unsigned int SSPM :4;
        unsigned int CKP :1;
        unsigned int SSPEN :1;
        unsigned int SSPOV :1;
        unsigned int WCOL :1;
    };
    struct {
        unsigned int SSPM0 :1;
        unsigned int SSPM1 :1;
        unsigned int SSPM2 :1;
        unsigned int SSPM3 :1;
    };
    struct {
        unsigned int SSPM01 :1;
        unsigned int SSPM11 :1;
        unsigned int SSPM21 :1;
        unsigned int SSPM31 :1;
        unsigned int CKP1 :1;
        unsigned int SSPEN1 :1;
        unsigned int SSPOV1 :1;
        unsigned int WCOL1 :1;
    };
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __attribute__((address(0xFC6)));
# 9607 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int SSPM :4;
        unsigned int CKP :1;
        unsigned int SSPEN :1;
        unsigned int SSPOV :1;
        unsigned int WCOL :1;
    };
    struct {
        unsigned int SSPM0 :1;
        unsigned int SSPM1 :1;
        unsigned int SSPM2 :1;
        unsigned int SSPM3 :1;
    };
    struct {
        unsigned int SSPM01 :1;
        unsigned int SSPM11 :1;
        unsigned int SSPM21 :1;
        unsigned int SSPM31 :1;
        unsigned int CKP1 :1;
        unsigned int SSPEN1 :1;
        unsigned int SSPOV1 :1;
        unsigned int WCOL1 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0xFC6)));
# 9722 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP1STAT __attribute__((address(0xFC7)));

__asm("SSP1STAT equ 0FC7h");


extern volatile unsigned char SSPSTAT __attribute__((address(0xFC7)));

__asm("SSPSTAT equ 0FC7h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int R_NOT_W :1;
    };
    struct {
        unsigned int :5;
        unsigned int D_NOT_A :1;
    };
    struct {
        unsigned int BF :1;
        unsigned int UA :1;
        unsigned int R_nW :1;
        unsigned int S :1;
        unsigned int P :1;
        unsigned int D_nA :1;
        unsigned int CKE :1;
        unsigned int SMP :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W :1;
        unsigned int :2;
        unsigned int D_A :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ :1;
        unsigned int I2C_START :1;
        unsigned int I2C_STOP :1;
        unsigned int I2C_DAT :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW :1;
        unsigned int :2;
        unsigned int nA :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_WRITE :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE :1;
        unsigned int :2;
        unsigned int nADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE :1;
        unsigned int :2;
        unsigned int DATA_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int R :1;
        unsigned int :2;
        unsigned int D :1;
    };
    struct {
        unsigned int BF1 :1;
        unsigned int UA1 :1;
        unsigned int RW :1;
        unsigned int START :1;
        unsigned int STOP :1;
        unsigned int DA :1;
        unsigned int CKE1 :1;
        unsigned int SMP1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int RW1 :1;
        unsigned int START1 :1;
        unsigned int STOP1 :1;
        unsigned int DA1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_W :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_A :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0xFC7)));
# 10025 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int :2;
        unsigned int R_NOT_W :1;
    };
    struct {
        unsigned int :5;
        unsigned int D_NOT_A :1;
    };
    struct {
        unsigned int BF :1;
        unsigned int UA :1;
        unsigned int R_nW :1;
        unsigned int S :1;
        unsigned int P :1;
        unsigned int D_nA :1;
        unsigned int CKE :1;
        unsigned int SMP :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W :1;
        unsigned int :2;
        unsigned int D_A :1;
    };
    struct {
        unsigned int :2;
        unsigned int I2C_READ :1;
        unsigned int I2C_START :1;
        unsigned int I2C_STOP :1;
        unsigned int I2C_DAT :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW :1;
        unsigned int :2;
        unsigned int nA :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_WRITE :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE :1;
        unsigned int :2;
        unsigned int nADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int READ_WRITE :1;
        unsigned int :2;
        unsigned int DATA_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int R :1;
        unsigned int :2;
        unsigned int D :1;
    };
    struct {
        unsigned int BF1 :1;
        unsigned int UA1 :1;
        unsigned int RW :1;
        unsigned int START :1;
        unsigned int STOP :1;
        unsigned int DA :1;
        unsigned int CKE1 :1;
        unsigned int SMP1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int RW1 :1;
        unsigned int START1 :1;
        unsigned int STOP1 :1;
        unsigned int DA1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_W :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_A :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0xFC7)));
# 10320 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP1ADD __attribute__((address(0xFC8)));

__asm("SSP1ADD equ 0FC8h");


extern volatile unsigned char SSPADD __attribute__((address(0xFC8)));

__asm("SSPADD equ 0FC8h");


typedef union {
    struct {
        unsigned int MSK0 :1;
        unsigned int MSK1 :1;
        unsigned int MSK2 :1;
        unsigned int MSK3 :1;
        unsigned int MSK4 :1;
        unsigned int MSK5 :1;
        unsigned int MSK6 :1;
        unsigned int MSK7 :1;
    };
    struct {
        unsigned int MSK01 :1;
        unsigned int MSK11 :1;
        unsigned int MSK21 :1;
        unsigned int MSK31 :1;
        unsigned int MSK41 :1;
        unsigned int MSK51 :1;
        unsigned int MSK61 :1;
        unsigned int MSK71 :1;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0xFC8)));
# 10435 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int MSK0 :1;
        unsigned int MSK1 :1;
        unsigned int MSK2 :1;
        unsigned int MSK3 :1;
        unsigned int MSK4 :1;
        unsigned int MSK5 :1;
        unsigned int MSK6 :1;
        unsigned int MSK7 :1;
    };
    struct {
        unsigned int MSK01 :1;
        unsigned int MSK11 :1;
        unsigned int MSK21 :1;
        unsigned int MSK31 :1;
        unsigned int MSK41 :1;
        unsigned int MSK51 :1;
        unsigned int MSK61 :1;
        unsigned int MSK71 :1;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0xFC8)));
# 10542 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char SSP1BUF __attribute__((address(0xFC9)));

__asm("SSP1BUF equ 0FC9h");


extern volatile unsigned char SSPBUF __attribute__((address(0xFC9)));

__asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __attribute__((address(0xFCA)));

__asm("T2CON equ 0FCAh");


typedef union {
    struct {
        unsigned int T2CKPS :2;
        unsigned int TMR2ON :1;
        unsigned int TOUTPS :4;
    };
    struct {
        unsigned int T2CKPS0 :1;
        unsigned int T2CKPS1 :1;
        unsigned int :1;
        unsigned int T2OUTPS0 :1;
        unsigned int T2OUTPS1 :1;
        unsigned int T2OUTPS2 :1;
        unsigned int T2OUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0xFCA)));
# 10625 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char PR2 __attribute__((address(0xFCB)));

__asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __attribute__((address(0xFCB)));

__asm("MEMCON equ 0FCBh");


typedef union {
    struct {
        unsigned int :7;
        unsigned int EBDIS :1;
    };
    struct {
        unsigned int :4;
        unsigned int WAIT0 :1;
    };
    struct {
        unsigned int :5;
        unsigned int WAIT1 :1;
    };
    struct {
        unsigned int WM0 :1;
    };
    struct {
        unsigned int :1;
        unsigned int WM1 :1;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0xFCB)));
# 10684 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int :7;
        unsigned int EBDIS :1;
    };
    struct {
        unsigned int :4;
        unsigned int WAIT0 :1;
    };
    struct {
        unsigned int :5;
        unsigned int WAIT1 :1;
    };
    struct {
        unsigned int WM0 :1;
    };
    struct {
        unsigned int :1;
        unsigned int WM1 :1;
    };
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __attribute__((address(0xFCB)));
# 10735 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0xFCC)));

__asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __attribute__((address(0xFCD)));

__asm("T1CON equ 0FCDh");


typedef union {
    struct {
        unsigned int :2;
        unsigned int NOT_T1SYNC :1;
    };
    struct {
        unsigned int TMR1ON :1;
        unsigned int TMR1CS :1;
        unsigned int nT1SYNC :1;
        unsigned int T1OSCEN :1;
        unsigned int T1CKPS :2;
        unsigned int T1RUN :1;
        unsigned int RD16 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T1SYNC :1;
        unsigned int :1;
        unsigned int T1CKPS0 :1;
        unsigned int T1CKPS1 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T1INSYNC :1;
    };
    struct {
        unsigned int :3;
        unsigned int SOSCEN :1;
        unsigned int :3;
        unsigned int T1RD16 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0xFCD)));
# 10854 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0xFCE)));

__asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __attribute__((address(0xFCE)));

__asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __attribute__((address(0xFCF)));

__asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __attribute__((address(0xFD0)));

__asm("RCON equ 0FD0h");


typedef union {
    struct {
        unsigned int NOT_BOR :1;
    };
    struct {
        unsigned int :1;
        unsigned int NOT_POR :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_PD :1;
    };
    struct {
        unsigned int :3;
        unsigned int NOT_TO :1;
    };
    struct {
        unsigned int :4;
        unsigned int NOT_RI :1;
    };
    struct {
        unsigned int nBOR :1;
        unsigned int nPOR :1;
        unsigned int nPD :1;
        unsigned int nTO :1;
        unsigned int nRI :1;
        unsigned int :1;
        unsigned int SBOREN :1;
        unsigned int IPEN :1;
    };
    struct {
        unsigned int BOR :1;
        unsigned int POR :1;
        unsigned int PD :1;
        unsigned int TO :1;
        unsigned int RI :1;
    };
} RCONbits_t;
extern volatile RCONbits_t RCONbits __attribute__((address(0xFD0)));
# 11008 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0xFD1)));

__asm("WDTCON equ 0FD1h");


typedef union {
    struct {
        unsigned int SWDTEN :1;
    };
    struct {
        unsigned int SWDTE :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0xFD1)));
# 11036 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char HLVDCON __attribute__((address(0xFD2)));

__asm("HLVDCON equ 0FD2h");


extern volatile unsigned char LVDCON __attribute__((address(0xFD2)));

__asm("LVDCON equ 0FD2h");


typedef union {
    struct {
        unsigned int HLVDL :4;
        unsigned int HLVDEN :1;
        unsigned int IRVST :1;
        unsigned int :1;
        unsigned int VDIRMAG :1;
    };
    struct {
        unsigned int HLVDL0 :1;
        unsigned int HLVDL1 :1;
        unsigned int HLVDL2 :1;
        unsigned int HLVDL3 :1;
        unsigned int :1;
        unsigned int IVRST :1;
    };
    struct {
        unsigned int LVV0 :1;
        unsigned int LVV1 :1;
        unsigned int LVV2 :1;
        unsigned int LVV3 :1;
        unsigned int :1;
        unsigned int BGST :1;
    };
    struct {
        unsigned int LVDL0 :1;
        unsigned int LVDL1 :1;
        unsigned int LVDL2 :1;
        unsigned int LVDL3 :1;
        unsigned int LVDEN :1;
    };
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __attribute__((address(0xFD2)));
# 11176 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
typedef union {
    struct {
        unsigned int HLVDL :4;
        unsigned int HLVDEN :1;
        unsigned int IRVST :1;
        unsigned int :1;
        unsigned int VDIRMAG :1;
    };
    struct {
        unsigned int HLVDL0 :1;
        unsigned int HLVDL1 :1;
        unsigned int HLVDL2 :1;
        unsigned int HLVDL3 :1;
        unsigned int :1;
        unsigned int IVRST :1;
    };
    struct {
        unsigned int LVV0 :1;
        unsigned int LVV1 :1;
        unsigned int LVV2 :1;
        unsigned int LVV3 :1;
        unsigned int :1;
        unsigned int BGST :1;
    };
    struct {
        unsigned int LVDL0 :1;
        unsigned int LVDL1 :1;
        unsigned int LVDL2 :1;
        unsigned int LVDL3 :1;
        unsigned int LVDEN :1;
    };
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __attribute__((address(0xFD2)));
# 11308 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0xFD3)));

__asm("OSCCON equ 0FD3h");


typedef union {
    struct {
        unsigned int SCS :2;
        unsigned int IOFS :1;
        unsigned int OSTS :1;
        unsigned int IRCF :3;
        unsigned int IDLEN :1;
    };
    struct {
        unsigned int SCS0 :1;
        unsigned int SCS1 :1;
        unsigned int FLTS :1;
        unsigned int :1;
        unsigned int IRCF0 :1;
        unsigned int IRCF1 :1;
        unsigned int IRCF2 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0xFD3)));
# 11391 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char T0CON __attribute__((address(0xFD5)));

__asm("T0CON equ 0FD5h");


typedef union {
    struct {
        unsigned int T0PS :3;
        unsigned int PSA :1;
        unsigned int T0SE :1;
        unsigned int T0CS :1;
        unsigned int T08BIT :1;
        unsigned int TMR0ON :1;
    };
    struct {
        unsigned int T0PS0 :1;
        unsigned int T0PS1 :1;
        unsigned int T0PS2 :1;
        unsigned int T0PS3 :1;
    };
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __attribute__((address(0xFD5)));
# 11467 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short TMR0 __attribute__((address(0xFD6)));

__asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __attribute__((address(0xFD6)));

__asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __attribute__((address(0xFD7)));

__asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __attribute__((address(0xFD8)));

__asm("STATUS equ 0FD8h");


typedef union {
    struct {
        unsigned int C :1;
        unsigned int DC :1;
        unsigned int Z :1;
        unsigned int OV :1;
        unsigned int N :1;
    };
    struct {
        unsigned int CARRY :1;
        unsigned int :1;
        unsigned int ZERO :1;
        unsigned int OVERFLOW :1;
        unsigned int NEGATIVE :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0xFD8)));
# 11559 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short FSR2 __attribute__((address(0xFD9)));

__asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __attribute__((address(0xFD9)));

__asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __attribute__((address(0xFDA)));

__asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __attribute__((address(0xFDB)));

__asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __attribute__((address(0xFDC)));

__asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __attribute__((address(0xFDD)));

__asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __attribute__((address(0xFDE)));

__asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __attribute__((address(0xFDF)));

__asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __attribute__((address(0xFE0)));

__asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __attribute__((address(0xFE1)));

__asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __attribute__((address(0xFE1)));

__asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __attribute__((address(0xFE2)));

__asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __attribute__((address(0xFE3)));

__asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __attribute__((address(0xFE4)));

__asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __attribute__((address(0xFE5)));

__asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __attribute__((address(0xFE6)));

__asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __attribute__((address(0xFE7)));

__asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __attribute__((address(0xFE8)));

__asm("WREG equ 0FE8h");




extern volatile unsigned short FSR0 __attribute__((address(0xFE9)));

__asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __attribute__((address(0xFE9)));

__asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __attribute__((address(0xFEA)));

__asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __attribute__((address(0xFEB)));

__asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __attribute__((address(0xFEC)));

__asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __attribute__((address(0xFED)));

__asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __attribute__((address(0xFEE)));

__asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __attribute__((address(0xFEF)));

__asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __attribute__((address(0xFF0)));

__asm("INTCON3 equ 0FF0h");


typedef union {
    struct {
        unsigned int INT1IF :1;
        unsigned int INT2IF :1;
        unsigned int INT3IF :1;
        unsigned int INT1IE :1;
        unsigned int INT2IE :1;
        unsigned int INT3IE :1;
        unsigned int INT1IP :1;
        unsigned int INT2IP :1;
    };
    struct {
        unsigned int INT1F :1;
        unsigned int INT2F :1;
        unsigned int INT3F :1;
        unsigned int INT1E :1;
        unsigned int INT2E :1;
        unsigned int INT3E :1;
        unsigned int INT1P :1;
        unsigned int INT2P :1;
    };
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __attribute__((address(0xFF0)));
# 11853 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char INTCON2 __attribute__((address(0xFF1)));

__asm("INTCON2 equ 0FF1h");


typedef union {
    struct {
        unsigned int :7;
        unsigned int NOT_RBPU :1;
    };
    struct {
        unsigned int RBIP :1;
        unsigned int INT3IP :1;
        unsigned int TMR0IP :1;
        unsigned int INTEDG3 :1;
        unsigned int INTEDG2 :1;
        unsigned int INTEDG1 :1;
        unsigned int INTEDG0 :1;
        unsigned int nRBPU :1;
    };
    struct {
        unsigned int :1;
        unsigned int INT3P :1;
        unsigned int T0IP :1;
        unsigned int :4;
        unsigned int RBPU :1;
    };
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __attribute__((address(0xFF1)));
# 11946 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned char INTCON __attribute__((address(0xFF2)));

__asm("INTCON equ 0FF2h");


typedef union {
    struct {
        unsigned int RBIF :1;
        unsigned int INT0IF :1;
        unsigned int TMR0IF :1;
        unsigned int RBIE :1;
        unsigned int INT0IE :1;
        unsigned int TMR0IE :1;
        unsigned int PEIE_GIEL :1;
        unsigned int GIE_GIEH :1;
    };
    struct {
        unsigned int :1;
        unsigned int INT0F :1;
        unsigned int T0IF :1;
        unsigned int :1;
        unsigned int INT0E :1;
        unsigned int T0IE :1;
        unsigned int PEIE :1;
        unsigned int GIE :1;
    };
    struct {
        unsigned int :6;
        unsigned int GIEL :1;
        unsigned int GIEH :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0xFF2)));
# 12063 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile unsigned short PROD __attribute__((address(0xFF3)));

__asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __attribute__((address(0xFF3)));

__asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __attribute__((address(0xFF4)));

__asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __attribute__((address(0xFF5)));

__asm("TABLAT equ 0FF5h");





extern volatile __uint24 TBLPTR __attribute__((address(0xFF6)));


__asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __attribute__((address(0xFF6)));

__asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __attribute__((address(0xFF7)));

__asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __attribute__((address(0xFF8)));

__asm("TBLPTRU equ 0FF8h");





extern volatile __uint24 PCLAT __attribute__((address(0xFF9)));


__asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __attribute__((address(0xFF9)));


__asm("PC equ 0FF9h");




extern volatile unsigned char PCL __attribute__((address(0xFF9)));

__asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __attribute__((address(0xFFA)));

__asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __attribute__((address(0xFFB)));

__asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __attribute__((address(0xFFC)));

__asm("STKPTR equ 0FFCh");


typedef union {
    struct {
        unsigned int STKPTR :5;
        unsigned int :1;
        unsigned int STKUNF :1;
        unsigned int STKFUL :1;
    };
    struct {
        unsigned int STKPTR0 :1;
        unsigned int STKPTR1 :1;
        unsigned int STKPTR2 :1;
        unsigned int STKPTR3 :1;
        unsigned int STKPTR4 :1;
        unsigned int :2;
        unsigned int STKOVF :1;
    };
    struct {
        unsigned int SP0 :1;
        unsigned int SP1 :1;
        unsigned int SP2 :1;
        unsigned int SP3 :1;
        unsigned int SP4 :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFFC)));
# 12263 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile __uint24 TOS __attribute__((address(0xFFD)));


__asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __attribute__((address(0xFFD)));

__asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __attribute__((address(0xFFE)));

__asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __attribute__((address(0xFFF)));

__asm("TOSU equ 0FFFh");





extern const unsigned char _CONFIGs[14] __attribute__((address(0x300000)));

extern const unsigned char _CONFIG1H __attribute__((address(0x300001)));

typedef union {
    struct {
        unsigned int OSC :4;
        unsigned int :2;
        unsigned int FCMEN :1;
        unsigned int IESO :1;
    };
} _CONFIG1Hbits_t;
extern const _CONFIG1Hbits_t _CONFIG1Hbits __attribute__((address(0x300001)));


extern const unsigned char _CONFIG2L __attribute__((address(0x300002)));

typedef union {
    struct {
        unsigned int PWRT :1;
        unsigned int BOREN :2;
        unsigned int BORV :2;
    };
} _CONFIG2Lbits_t;
extern const _CONFIG2Lbits_t _CONFIG2Lbits __attribute__((address(0x300002)));


extern const unsigned char _CONFIG2H __attribute__((address(0x300003)));

typedef union {
    struct {
        unsigned int WDT :1;
        unsigned int WDTPS :4;
    };
} _CONFIG2Hbits_t;
extern const _CONFIG2Hbits_t _CONFIG2Hbits __attribute__((address(0x300003)));


extern const unsigned char _CONFIG3H __attribute__((address(0x300005)));

typedef union {
    struct {
        unsigned int CCP2MX :1;
        unsigned int :1;
        unsigned int LPT1OSC :1;
        unsigned int :4;
        unsigned int MCLRE :1;
    };
} _CONFIG3Hbits_t;
extern const _CONFIG3Hbits_t _CONFIG3Hbits __attribute__((address(0x300005)));


extern const unsigned char _CONFIG4L __attribute__((address(0x300006)));

typedef union {
    struct {
        unsigned int STVREN :1;
        unsigned int :1;
        unsigned int LVP :1;
        unsigned int :1;
        unsigned int BBSIZ :2;
        unsigned int XINST :1;
        unsigned int _DEBUG :1;
    };
} _CONFIG4Lbits_t;
extern const _CONFIG4Lbits_t _CONFIG4Lbits __attribute__((address(0x300006)));


extern const unsigned char _CONFIG5L __attribute__((address(0x300008)));

typedef union {
    struct {
        unsigned int CP0 :1;
        unsigned int CP1 :1;
        unsigned int CP2 :1;
        unsigned int CP3 :1;
        unsigned int CP4 :1;
        unsigned int CP5 :1;
        unsigned int CP6 :1;
        unsigned int CP7 :1;
    };
} _CONFIG5Lbits_t;
extern const _CONFIG5Lbits_t _CONFIG5Lbits __attribute__((address(0x300008)));


extern const unsigned char _CONFIG5H __attribute__((address(0x300009)));

typedef union {
    struct {
        unsigned int :6;
        unsigned int CPB :1;
        unsigned int CPD :1;
    };
} _CONFIG5Hbits_t;
extern const _CONFIG5Hbits_t _CONFIG5Hbits __attribute__((address(0x300009)));


extern const unsigned char _CONFIG6L __attribute__((address(0x30000A)));

typedef union {
    struct {
        unsigned int WRT0 :1;
        unsigned int WRT1 :1;
        unsigned int WRT2 :1;
        unsigned int WRT3 :1;
        unsigned int WRT4 :1;
        unsigned int WRT5 :1;
        unsigned int WRT6 :1;
        unsigned int WRT7 :1;
    };
} _CONFIG6Lbits_t;
extern const _CONFIG6Lbits_t _CONFIG6Lbits __attribute__((address(0x30000A)));


extern const unsigned char _CONFIG6H __attribute__((address(0x30000B)));

typedef union {
    struct {
        unsigned int :5;
        unsigned int WRTC :1;
        unsigned int WRTB :1;
        unsigned int WRTD :1;
    };
} _CONFIG6Hbits_t;
extern const _CONFIG6Hbits_t _CONFIG6Hbits __attribute__((address(0x30000B)));


extern const unsigned char _CONFIG7L __attribute__((address(0x30000C)));

typedef union {
    struct {
        unsigned int EBTR0 :1;
        unsigned int EBTR1 :1;
        unsigned int EBTR2 :1;
        unsigned int EBTR3 :1;
        unsigned int EBTR4 :1;
        unsigned int EBTR5 :1;
        unsigned int EBTR6 :1;
        unsigned int EBTR7 :1;
    };
} _CONFIG7Lbits_t;
extern const _CONFIG7Lbits_t _CONFIG7Lbits __attribute__((address(0x30000C)));


extern const unsigned char _CONFIG7H __attribute__((address(0x30000D)));

typedef union {
    struct {
        unsigned int :6;
        unsigned int EBTRB :1;
    };
} _CONFIG7Hbits_t;
extern const _CONFIG7Hbits_t _CONFIG7Hbits __attribute__((address(0x30000D)));

extern const unsigned char _IDLOCs[8] __attribute__((address(0x200000)));

extern const unsigned char _IDLOC0 __attribute__((address(0x200000)));


extern const unsigned char _IDLOC1 __attribute__((address(0x200001)));


extern const unsigned char _IDLOC2 __attribute__((address(0x200002)));


extern const unsigned char _IDLOC3 __attribute__((address(0x200003)));


extern const unsigned char _IDLOC4 __attribute__((address(0x200004)));


extern const unsigned char _IDLOC5 __attribute__((address(0x200005)));


extern const unsigned char _IDLOC6 __attribute__((address(0x200006)));


extern const unsigned char _IDLOC7 __attribute__((address(0x200007)));




extern const unsigned short _DEVID __attribute__((address(0x3FFFFE)));
# 12489 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\proc\\pic18f6722.h" 3
extern volatile __bit ABDEN1 __attribute__((address(0x7BF0)));


extern volatile __bit ABDEN2 __attribute__((address(0x7BE0)));


extern volatile __bit ABDOVF1 __attribute__((address(0x7BF7)));


extern volatile __bit ABDOVF2 __attribute__((address(0x7BE7)));


extern volatile __bit __attribute__((__deprecated__)) ACKDT __attribute__((address(0x7E2D)));


extern volatile __bit ACKDT1 __attribute__((address(0x7E2D)));


extern volatile __bit ACKDT2 __attribute__((address(0x7B15)));


extern volatile __bit __attribute__((__deprecated__)) ACKEN __attribute__((address(0x7E2C)));


extern volatile __bit ACKEN1 __attribute__((address(0x7E2C)));


extern volatile __bit ACKEN2 __attribute__((address(0x7B14)));


extern volatile __bit __attribute__((__deprecated__)) ACKSTAT __attribute__((address(0x7E2E)));


extern volatile __bit ACKSTAT1 __attribute__((address(0x7E2E)));


extern volatile __bit ACKSTAT2 __attribute__((address(0x7B16)));


extern volatile __bit ACQT0 __attribute__((address(0x7E03)));


extern volatile __bit ACQT1 __attribute__((address(0x7E04)));


extern volatile __bit ACQT2 __attribute__((address(0x7E05)));


extern volatile __bit ADCS0 __attribute__((address(0x7E00)));


extern volatile __bit ADCS1 __attribute__((address(0x7E01)));


extern volatile __bit ADCS2 __attribute__((address(0x7E02)));


extern volatile __bit __attribute__((__deprecated__)) ADDEN __attribute__((address(0x7D5B)));


extern volatile __bit ADDEN1 __attribute__((address(0x7D5B)));


extern volatile __bit ADDEN2 __attribute__((address(0x7B5B)));


extern volatile __bit ADFM __attribute__((address(0x7E07)));


extern volatile __bit ADIE __attribute__((address(0x7CEE)));


extern volatile __bit ADIF __attribute__((address(0x7CF6)));


extern volatile __bit ADIP __attribute__((address(0x7CFE)));


extern volatile __bit ADMSK1 __attribute__((address(0x7E29)));


extern volatile __bit ADMSK11 __attribute__((address(0x7E29)));


extern volatile __bit ADMSK12 __attribute__((address(0x7B11)));


extern volatile __bit ADMSK2 __attribute__((address(0x7E2A)));


extern volatile __bit ADMSK21 __attribute__((address(0x7E2A)));


extern volatile __bit ADMSK22 __attribute__((address(0x7B12)));


extern volatile __bit ADMSK3 __attribute__((address(0x7E2B)));


extern volatile __bit ADMSK31 __attribute__((address(0x7E2B)));


extern volatile __bit ADMSK32 __attribute__((address(0x7B13)));


extern volatile __bit ADMSK4 __attribute__((address(0x7E2C)));


extern volatile __bit ADMSK41 __attribute__((address(0x7E2C)));


extern volatile __bit ADMSK42 __attribute__((address(0x7B14)));


extern volatile __bit ADMSK5 __attribute__((address(0x7E2D)));


extern volatile __bit ADMSK51 __attribute__((address(0x7E2D)));


extern volatile __bit ADMSK52 __attribute__((address(0x7B15)));


extern volatile __bit ADON __attribute__((address(0x7E10)));


extern volatile __bit AN0 __attribute__((address(0x7C00)));


extern volatile __bit AN1 __attribute__((address(0x7C01)));


extern volatile __bit AN10 __attribute__((address(0x7C2D)));


extern volatile __bit AN11 __attribute__((address(0x7C2E)));


extern volatile __bit AN2 __attribute__((address(0x7C02)));


extern volatile __bit AN3 __attribute__((address(0x7C03)));


extern volatile __bit AN4 __attribute__((address(0x7C05)));


extern volatile __bit AN5 __attribute__((address(0x7C28)));


extern volatile __bit AN6 __attribute__((address(0x7C29)));


extern volatile __bit AN7 __attribute__((address(0x7C2A)));


extern volatile __bit AN8 __attribute__((address(0x7C2B)));


extern volatile __bit AN9 __attribute__((address(0x7C2C)));


extern volatile __bit BCL1IE __attribute__((address(0x7D03)));


extern volatile __bit BCL1IF __attribute__((address(0x7D0B)));


extern volatile __bit BCL1IP __attribute__((address(0x7D13)));


extern volatile __bit BCL2IE __attribute__((address(0x7D1E)));


extern volatile __bit BCL2IF __attribute__((address(0x7D26)));


extern volatile __bit BCL2IP __attribute__((address(0x7D2E)));


extern volatile __bit BCLIE __attribute__((address(0x7D03)));


extern volatile __bit BCLIF __attribute__((address(0x7D0B)));


extern volatile __bit BCLIP __attribute__((address(0x7D13)));


extern volatile __bit __attribute__((__deprecated__)) BF __attribute__((address(0x7E38)));


extern volatile __bit BF1 __attribute__((address(0x7E38)));


extern volatile __bit BF2 __attribute__((address(0x7B20)));


extern volatile __bit BGST __attribute__((address(0x7E95)));


extern volatile __bit BOR __attribute__((address(0x7E80)));


extern volatile __bit BRG161 __attribute__((address(0x7BF3)));


extern volatile __bit BRG162 __attribute__((address(0x7BE3)));


extern volatile __bit __attribute__((__deprecated__)) BRGH __attribute__((address(0x7D62)));


extern volatile __bit BRGH1 __attribute__((address(0x7D62)));


extern volatile __bit BRGH2 __attribute__((address(0x7B62)));


extern volatile __bit C1INV __attribute__((address(0x7DA4)));


extern volatile __bit __attribute__((__deprecated__)) C1OUT __attribute__((address(0x7DA6)));


extern volatile __bit C1OUTF __attribute__((address(0x7C2A)));


extern volatile __bit C2INV __attribute__((address(0x7DA5)));


extern volatile __bit __attribute__((__deprecated__)) C2OUT __attribute__((address(0x7DA7)));


extern volatile __bit C2OUTF __attribute__((address(0x7C29)));


extern volatile __bit C3OUTG __attribute__((address(0x7C31)));


extern volatile __bit CARRY __attribute__((address(0x7EC0)));


extern volatile __bit CCP1 __attribute__((address(0x7C12)));


extern volatile __bit CCP10 __attribute__((address(0x7C22)));


extern volatile __bit CCP1IE __attribute__((address(0x7CEA)));


extern volatile __bit CCP1IF __attribute__((address(0x7CF2)));


extern volatile __bit CCP1IP __attribute__((address(0x7CFA)));


extern volatile __bit CCP1M0 __attribute__((address(0x7DE8)));


extern volatile __bit CCP1M1 __attribute__((address(0x7DE9)));


extern volatile __bit CCP1M2 __attribute__((address(0x7DEA)));


extern volatile __bit CCP1M3 __attribute__((address(0x7DEB)));


extern volatile __bit CCP1X __attribute__((address(0x7DED)));


extern volatile __bit CCP1Y __attribute__((address(0x7DEC)));


extern volatile __bit CCP2E __attribute__((address(0x7C27)));


extern volatile __bit CCP2IE __attribute__((address(0x7D00)));


extern volatile __bit CCP2IF __attribute__((address(0x7D08)));


extern volatile __bit CCP2IP __attribute__((address(0x7D10)));


extern volatile __bit CCP2M0 __attribute__((address(0x7DD0)));


extern volatile __bit CCP2M1 __attribute__((address(0x7DD1)));


extern volatile __bit CCP2M2 __attribute__((address(0x7DD2)));


extern volatile __bit CCP2M3 __attribute__((address(0x7DD3)));


extern volatile __bit CCP2X __attribute__((address(0x7DD5)));


extern volatile __bit CCP2Y __attribute__((address(0x7DD4)));


extern volatile __bit CCP2_PA2 __attribute__((address(0x7C0B)));


extern volatile __bit CCP3 __attribute__((address(0x7C30)));


extern volatile __bit CCP3IE __attribute__((address(0x7D18)));


extern volatile __bit CCP3IF __attribute__((address(0x7D20)));


extern volatile __bit CCP3IP __attribute__((address(0x7D28)));


extern volatile __bit CCP3M0 __attribute__((address(0x7DB8)));


extern volatile __bit CCP3M1 __attribute__((address(0x7DB9)));


extern volatile __bit CCP3M2 __attribute__((address(0x7DBA)));


extern volatile __bit CCP3M3 __attribute__((address(0x7DBB)));


extern volatile __bit CCP3X __attribute__((address(0x7DBD)));


extern volatile __bit CCP3Y __attribute__((address(0x7DBC)));


extern volatile __bit CCP4 __attribute__((address(0x7C33)));


extern volatile __bit CCP4IE __attribute__((address(0x7D19)));


extern volatile __bit CCP4IF __attribute__((address(0x7D21)));


extern volatile __bit CCP4IP __attribute__((address(0x7D29)));


extern volatile __bit CCP4M0 __attribute__((address(0x7B98)));


extern volatile __bit CCP4M1 __attribute__((address(0x7B99)));


extern volatile __bit CCP4M2 __attribute__((address(0x7B9A)));


extern volatile __bit CCP4M3 __attribute__((address(0x7B9B)));


extern volatile __bit CCP5 __attribute__((address(0x7C34)));


extern volatile __bit CCP5IE __attribute__((address(0x7D1A)));


extern volatile __bit CCP5IF __attribute__((address(0x7D22)));


extern volatile __bit CCP5IP __attribute__((address(0x7D2A)));


extern volatile __bit CCP5M0 __attribute__((address(0x7B80)));


extern volatile __bit CCP5M1 __attribute__((address(0x7B81)));


extern volatile __bit CCP5M2 __attribute__((address(0x7B82)));


extern volatile __bit CCP5M3 __attribute__((address(0x7B83)));


extern volatile __bit CCP6E __attribute__((address(0x7C26)));


extern volatile __bit CCP7E __attribute__((address(0x7C25)));


extern volatile __bit CCP8E __attribute__((address(0x7C24)));


extern volatile __bit CCP9E __attribute__((address(0x7C23)));


extern volatile __bit CFGS __attribute__((address(0x7D36)));


extern volatile __bit CHS0 __attribute__((address(0x7E12)));


extern volatile __bit CHS1 __attribute__((address(0x7E13)));


extern volatile __bit CHS2 __attribute__((address(0x7E14)));


extern volatile __bit CHS3 __attribute__((address(0x7E15)));


extern volatile __bit CHSN3 __attribute__((address(0x7E0B)));


extern volatile __bit CIS __attribute__((address(0x7DA3)));


extern volatile __bit CK __attribute__((address(0x7C16)));


extern volatile __bit CK1 __attribute__((address(0x7C16)));


extern volatile __bit CK2 __attribute__((address(0x7C31)));


extern volatile __bit __attribute__((__deprecated__)) CKE __attribute__((address(0x7E3E)));


extern volatile __bit CKE1 __attribute__((address(0x7E3E)));


extern volatile __bit CKE2 __attribute__((address(0x7B26)));


extern volatile __bit __attribute__((__deprecated__)) CKP __attribute__((address(0x7E34)));


extern volatile __bit CKP1 __attribute__((address(0x7E34)));


extern volatile __bit CKP2 __attribute__((address(0x7B1C)));


extern volatile __bit CKTXP __attribute__((address(0x7BF4)));


extern volatile __bit CM0 __attribute__((address(0x7DA0)));


extern volatile __bit CM1 __attribute__((address(0x7DA1)));


extern volatile __bit CM2 __attribute__((address(0x7DA2)));


extern volatile __bit CMEN0 __attribute__((address(0x7DA0)));


extern volatile __bit CMEN1 __attribute__((address(0x7DA1)));


extern volatile __bit CMEN2 __attribute__((address(0x7DA2)));


extern volatile __bit CMIE __attribute__((address(0x7D06)));


extern volatile __bit CMIF __attribute__((address(0x7D0E)));


extern volatile __bit CMIP __attribute__((address(0x7D16)));


extern volatile __bit __attribute__((__deprecated__)) CREN __attribute__((address(0x7D5C)));


extern volatile __bit CREN1 __attribute__((address(0x7D5C)));


extern volatile __bit CREN2 __attribute__((address(0x7B5C)));


extern volatile __bit CS __attribute__((address(0x7C22)));


extern volatile __bit __attribute__((__deprecated__)) CSRC __attribute__((address(0x7D67)));


extern volatile __bit CSRC1 __attribute__((address(0x7D67)));


extern volatile __bit CSRC2 __attribute__((address(0x7B67)));


extern volatile __bit CVR0 __attribute__((address(0x7DA8)));


extern volatile __bit CVR1 __attribute__((address(0x7DA9)));


extern volatile __bit CVR2 __attribute__((address(0x7DAA)));


extern volatile __bit CVR3 __attribute__((address(0x7DAB)));


extern volatile __bit CVREF __attribute__((address(0x7C2D)));


extern volatile __bit CVREN __attribute__((address(0x7DAF)));


extern volatile __bit CVROE __attribute__((address(0x7DAE)));


extern volatile __bit CVROEN __attribute__((address(0x7DAE)));


extern volatile __bit CVRR __attribute__((address(0x7DAD)));


extern volatile __bit CVRSS __attribute__((address(0x7DAC)));


extern volatile __bit DA __attribute__((address(0x7E3D)));


extern volatile __bit DA1 __attribute__((address(0x7E3D)));


extern volatile __bit DA2 __attribute__((address(0x7B25)));


extern volatile __bit DATA_ADDRESS2 __attribute__((address(0x7B25)));


extern volatile __bit DC __attribute__((address(0x7EC1)));


extern volatile __bit DC1B0 __attribute__((address(0x7DEC)));


extern volatile __bit DC1B1 __attribute__((address(0x7DED)));


extern volatile __bit DC2B0 __attribute__((address(0x7DD4)));


extern volatile __bit DC2B1 __attribute__((address(0x7DD5)));


extern volatile __bit DC3B0 __attribute__((address(0x7DBC)));


extern volatile __bit DC3B1 __attribute__((address(0x7DBD)));


extern volatile __bit DC4B0 __attribute__((address(0x7B9C)));


extern volatile __bit DC4B1 __attribute__((address(0x7B9D)));


extern volatile __bit DC5B0 __attribute__((address(0x7B84)));


extern volatile __bit DC5B1 __attribute__((address(0x7B85)));


extern volatile __bit DCCP4X __attribute__((address(0x7B9D)));


extern volatile __bit DCCP4Y __attribute__((address(0x7B9C)));


extern volatile __bit DCCP5X __attribute__((address(0x7B85)));


extern volatile __bit DCCP5Y __attribute__((address(0x7B84)));


extern volatile __bit DONE __attribute__((address(0x7E11)));


extern volatile __bit DT __attribute__((address(0x7C17)));


extern volatile __bit DT1 __attribute__((address(0x7C17)));


extern volatile __bit DT2 __attribute__((address(0x7C32)));


extern volatile __bit D_A2 __attribute__((address(0x7B25)));


extern volatile __bit D_NOT_A2 __attribute__((address(0x7B25)));


extern volatile __bit D_nA2 __attribute__((address(0x7B25)));


extern volatile __bit EBDIS __attribute__((address(0x7E5F)));


extern volatile __bit ECCP1 __attribute__((address(0x7C12)));


extern volatile __bit ECCP1AS0 __attribute__((address(0x7DB4)));


extern volatile __bit ECCP1AS1 __attribute__((address(0x7DB5)));


extern volatile __bit ECCP1AS2 __attribute__((address(0x7DB6)));


extern volatile __bit ECCP1ASE __attribute__((address(0x7DB7)));


extern volatile __bit ECCP2AS0 __attribute__((address(0x7B44)));


extern volatile __bit ECCP2AS1 __attribute__((address(0x7B45)));


extern volatile __bit ECCP2AS2 __attribute__((address(0x7B46)));


extern volatile __bit ECCP2ASE __attribute__((address(0x7B47)));


extern volatile __bit ECCP3 __attribute__((address(0x7C30)));


extern volatile __bit ECCP3AS0 __attribute__((address(0x7B54)));


extern volatile __bit ECCP3AS1 __attribute__((address(0x7B55)));


extern volatile __bit ECCP3AS2 __attribute__((address(0x7B56)));


extern volatile __bit ECCP3ASE __attribute__((address(0x7B57)));


extern volatile __bit EEFS __attribute__((address(0x7D36)));


extern volatile __bit EEIE __attribute__((address(0x7D04)));


extern volatile __bit EEIF __attribute__((address(0x7D0C)));


extern volatile __bit EEIP __attribute__((address(0x7D14)));


extern volatile __bit EEPGD __attribute__((address(0x7D37)));


extern volatile __bit __attribute__((__deprecated__)) FERR __attribute__((address(0x7D5A)));


extern volatile __bit FERR1 __attribute__((address(0x7D5A)));


extern volatile __bit FERR2 __attribute__((address(0x7B5A)));


extern volatile __bit FLT0 __attribute__((address(0x7C08)));


extern volatile __bit FLTS __attribute__((address(0x7E9A)));


extern volatile __bit FREE __attribute__((address(0x7D34)));


extern volatile __bit __attribute__((__deprecated__)) GCEN __attribute__((address(0x7E2F)));


extern volatile __bit GCEN1 __attribute__((address(0x7E2F)));


extern volatile __bit GCEN2 __attribute__((address(0x7B17)));


extern volatile __bit GIE __attribute__((address(0x7F97)));


extern volatile __bit GIEH __attribute__((address(0x7F97)));


extern volatile __bit GIEL __attribute__((address(0x7F96)));


extern volatile __bit GIE_GIEH __attribute__((address(0x7F97)));


extern volatile __bit GO __attribute__((address(0x7E11)));


extern volatile __bit GODONE __attribute__((address(0x7E11)));


extern volatile __bit GO_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_nDONE __attribute__((address(0x7E11)));


extern volatile __bit HLVDEN __attribute__((address(0x7E94)));


extern volatile __bit HLVDIE __attribute__((address(0x7D02)));


extern volatile __bit HLVDIF __attribute__((address(0x7D0A)));


extern volatile __bit HLVDIN __attribute__((address(0x7C05)));


extern volatile __bit HLVDIP __attribute__((address(0x7D12)));


extern volatile __bit HLVDL0 __attribute__((address(0x7E90)));


extern volatile __bit HLVDL1 __attribute__((address(0x7E91)));


extern volatile __bit HLVDL2 __attribute__((address(0x7E92)));


extern volatile __bit HLVDL3 __attribute__((address(0x7E93)));


extern volatile __bit I2C_DAT2 __attribute__((address(0x7B25)));


extern volatile __bit I2C_READ2 __attribute__((address(0x7B22)));


extern volatile __bit I2C_START2 __attribute__((address(0x7B23)));


extern volatile __bit I2C_STOP2 __attribute__((address(0x7B24)));


extern volatile __bit IBF __attribute__((address(0x7D87)));


extern volatile __bit IBOV __attribute__((address(0x7D85)));


extern volatile __bit IDLEN __attribute__((address(0x7E9F)));


extern volatile __bit INT0 __attribute__((address(0x7C08)));


extern volatile __bit INT0E __attribute__((address(0x7F94)));


extern volatile __bit INT0F __attribute__((address(0x7F91)));


extern volatile __bit INT0IE __attribute__((address(0x7F94)));


extern volatile __bit INT0IF __attribute__((address(0x7F91)));


extern volatile __bit INT1 __attribute__((address(0x7C09)));


extern volatile __bit INT1E __attribute__((address(0x7F83)));


extern volatile __bit INT1F __attribute__((address(0x7F80)));


extern volatile __bit INT1IE __attribute__((address(0x7F83)));


extern volatile __bit INT1IF __attribute__((address(0x7F80)));


extern volatile __bit INT1IP __attribute__((address(0x7F86)));


extern volatile __bit INT1P __attribute__((address(0x7F86)));


extern volatile __bit INT2 __attribute__((address(0x7C0A)));


extern volatile __bit INT2E __attribute__((address(0x7F84)));


extern volatile __bit INT2F __attribute__((address(0x7F81)));


extern volatile __bit INT2IE __attribute__((address(0x7F84)));


extern volatile __bit INT2IF __attribute__((address(0x7F81)));


extern volatile __bit INT2IP __attribute__((address(0x7F87)));


extern volatile __bit INT2P __attribute__((address(0x7F87)));


extern volatile __bit INT3 __attribute__((address(0x7C0B)));


extern volatile __bit INT3E __attribute__((address(0x7F85)));


extern volatile __bit INT3F __attribute__((address(0x7F82)));


extern volatile __bit INT3IE __attribute__((address(0x7F85)));


extern volatile __bit INT3IF __attribute__((address(0x7F82)));


extern volatile __bit INT3IP __attribute__((address(0x7F89)));


extern volatile __bit INT3P __attribute__((address(0x7F89)));


extern volatile __bit INTEDG0 __attribute__((address(0x7F8E)));


extern volatile __bit INTEDG1 __attribute__((address(0x7F8D)));


extern volatile __bit INTEDG2 __attribute__((address(0x7F8C)));


extern volatile __bit INTEDG3 __attribute__((address(0x7F8B)));


extern volatile __bit INTSRC __attribute__((address(0x7CDF)));


extern volatile __bit IOFS __attribute__((address(0x7E9A)));


extern volatile __bit IPEN __attribute__((address(0x7E87)));


extern volatile __bit IRCF0 __attribute__((address(0x7E9C)));


extern volatile __bit IRCF1 __attribute__((address(0x7E9D)));


extern volatile __bit IRCF2 __attribute__((address(0x7E9E)));


extern volatile __bit IRVST __attribute__((address(0x7E95)));


extern volatile __bit IVRST __attribute__((address(0x7E95)));


extern volatile __bit KBI0 __attribute__((address(0x7C0C)));


extern volatile __bit KBI1 __attribute__((address(0x7C0D)));


extern volatile __bit KBI2 __attribute__((address(0x7C0E)));


extern volatile __bit KBI3 __attribute__((address(0x7C0F)));


extern volatile __bit LA0 __attribute__((address(0x7C48)));


extern volatile __bit LA1 __attribute__((address(0x7C49)));


extern volatile __bit LA2 __attribute__((address(0x7C4A)));


extern volatile __bit LA3 __attribute__((address(0x7C4B)));


extern volatile __bit LA4 __attribute__((address(0x7C4C)));


extern volatile __bit LA5 __attribute__((address(0x7C4D)));


extern volatile __bit LA6 __attribute__((address(0x7C4E)));


extern volatile __bit LA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATA0 __attribute__((address(0x7C48)));


extern volatile __bit LATA1 __attribute__((address(0x7C49)));


extern volatile __bit LATA2 __attribute__((address(0x7C4A)));


extern volatile __bit LATA3 __attribute__((address(0x7C4B)));


extern volatile __bit LATA4 __attribute__((address(0x7C4C)));


extern volatile __bit LATA5 __attribute__((address(0x7C4D)));


extern volatile __bit LATA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATB0 __attribute__((address(0x7C50)));


extern volatile __bit LATB1 __attribute__((address(0x7C51)));


extern volatile __bit LATB2 __attribute__((address(0x7C52)));


extern volatile __bit LATB3 __attribute__((address(0x7C53)));


extern volatile __bit LATB4 __attribute__((address(0x7C54)));


extern volatile __bit LATB5 __attribute__((address(0x7C55)));


extern volatile __bit LATB6 __attribute__((address(0x7C56)));


extern volatile __bit LATB7 __attribute__((address(0x7C57)));


extern volatile __bit LATC0 __attribute__((address(0x7C58)));


extern volatile __bit LATC1 __attribute__((address(0x7C59)));


extern volatile __bit LATC2 __attribute__((address(0x7C5A)));


extern volatile __bit LATC3 __attribute__((address(0x7C5B)));


extern volatile __bit LATC4 __attribute__((address(0x7C5C)));


extern volatile __bit LATC5 __attribute__((address(0x7C5D)));


extern volatile __bit LATC6 __attribute__((address(0x7C5E)));


extern volatile __bit LATC7 __attribute__((address(0x7C5F)));


extern volatile __bit LATD0 __attribute__((address(0x7C60)));


extern volatile __bit LATD1 __attribute__((address(0x7C61)));


extern volatile __bit LATD2 __attribute__((address(0x7C62)));


extern volatile __bit LATD3 __attribute__((address(0x7C63)));


extern volatile __bit LATD4 __attribute__((address(0x7C64)));


extern volatile __bit LATD5 __attribute__((address(0x7C65)));


extern volatile __bit LATD6 __attribute__((address(0x7C66)));


extern volatile __bit LATD7 __attribute__((address(0x7C67)));


extern volatile __bit LATE0 __attribute__((address(0x7C68)));


extern volatile __bit LATE1 __attribute__((address(0x7C69)));


extern volatile __bit LATE2 __attribute__((address(0x7C6A)));


extern volatile __bit LATE3 __attribute__((address(0x7C6B)));


extern volatile __bit LATE4 __attribute__((address(0x7C6C)));


extern volatile __bit LATE5 __attribute__((address(0x7C6D)));


extern volatile __bit LATE6 __attribute__((address(0x7C6E)));


extern volatile __bit LATE7 __attribute__((address(0x7C6F)));


extern volatile __bit LATF0 __attribute__((address(0x7C70)));


extern volatile __bit LATF1 __attribute__((address(0x7C71)));


extern volatile __bit LATF2 __attribute__((address(0x7C72)));


extern volatile __bit LATF3 __attribute__((address(0x7C73)));


extern volatile __bit LATF4 __attribute__((address(0x7C74)));


extern volatile __bit LATF5 __attribute__((address(0x7C75)));


extern volatile __bit LATF6 __attribute__((address(0x7C76)));


extern volatile __bit LATF7 __attribute__((address(0x7C77)));


extern volatile __bit LATG0 __attribute__((address(0x7C78)));


extern volatile __bit LATG1 __attribute__((address(0x7C79)));


extern volatile __bit LATG2 __attribute__((address(0x7C7A)));


extern volatile __bit LATG3 __attribute__((address(0x7C7B)));


extern volatile __bit LATG4 __attribute__((address(0x7C7C)));


extern volatile __bit LATG5 __attribute__((address(0x7C7D)));


extern volatile __bit LB0 __attribute__((address(0x7C50)));


extern volatile __bit LB1 __attribute__((address(0x7C51)));


extern volatile __bit LB2 __attribute__((address(0x7C52)));


extern volatile __bit LB3 __attribute__((address(0x7C53)));


extern volatile __bit LB4 __attribute__((address(0x7C54)));


extern volatile __bit LB5 __attribute__((address(0x7C55)));


extern volatile __bit LB6 __attribute__((address(0x7C56)));


extern volatile __bit LB7 __attribute__((address(0x7C57)));


extern volatile __bit LC0 __attribute__((address(0x7C58)));


extern volatile __bit LC1 __attribute__((address(0x7C59)));


extern volatile __bit LC2 __attribute__((address(0x7C5A)));


extern volatile __bit LC3 __attribute__((address(0x7C5B)));


extern volatile __bit LC4 __attribute__((address(0x7C5C)));


extern volatile __bit LC5 __attribute__((address(0x7C5D)));


extern volatile __bit LC6 __attribute__((address(0x7C5E)));


extern volatile __bit LC7 __attribute__((address(0x7C5F)));


extern volatile __bit LD0 __attribute__((address(0x7C60)));


extern volatile __bit LD1 __attribute__((address(0x7C61)));


extern volatile __bit LD2 __attribute__((address(0x7C62)));


extern volatile __bit LD3 __attribute__((address(0x7C63)));


extern volatile __bit LD4 __attribute__((address(0x7C64)));


extern volatile __bit LD5 __attribute__((address(0x7C65)));


extern volatile __bit LD6 __attribute__((address(0x7C66)));


extern volatile __bit LD7 __attribute__((address(0x7C67)));


extern volatile __bit LE0 __attribute__((address(0x7C68)));


extern volatile __bit LE1 __attribute__((address(0x7C69)));


extern volatile __bit LE2 __attribute__((address(0x7C6A)));


extern volatile __bit LE3 __attribute__((address(0x7C6B)));


extern volatile __bit LE4 __attribute__((address(0x7C6C)));


extern volatile __bit LE5 __attribute__((address(0x7C6D)));


extern volatile __bit LE6 __attribute__((address(0x7C6E)));


extern volatile __bit LE7 __attribute__((address(0x7C6F)));


extern volatile __bit LF0 __attribute__((address(0x7C70)));


extern volatile __bit LF1 __attribute__((address(0x7C71)));


extern volatile __bit LF2 __attribute__((address(0x7C72)));


extern volatile __bit LF3 __attribute__((address(0x7C73)));


extern volatile __bit LF4 __attribute__((address(0x7C74)));


extern volatile __bit LF5 __attribute__((address(0x7C75)));


extern volatile __bit LF6 __attribute__((address(0x7C76)));


extern volatile __bit LF7 __attribute__((address(0x7C77)));


extern volatile __bit LG0 __attribute__((address(0x7C78)));


extern volatile __bit LG1 __attribute__((address(0x7C79)));


extern volatile __bit LG2 __attribute__((address(0x7C7A)));


extern volatile __bit LG3 __attribute__((address(0x7C7B)));


extern volatile __bit LG4 __attribute__((address(0x7C7C)));


extern volatile __bit LVDEN __attribute__((address(0x7E94)));


extern volatile __bit LVDIE __attribute__((address(0x7D02)));


extern volatile __bit LVDIF __attribute__((address(0x7D0A)));


extern volatile __bit LVDIN __attribute__((address(0x7C05)));


extern volatile __bit LVDIP __attribute__((address(0x7D12)));


extern volatile __bit LVDL0 __attribute__((address(0x7E90)));


extern volatile __bit LVDL1 __attribute__((address(0x7E91)));


extern volatile __bit LVDL2 __attribute__((address(0x7E92)));


extern volatile __bit LVDL3 __attribute__((address(0x7E93)));


extern volatile __bit LVV0 __attribute__((address(0x7E90)));


extern volatile __bit LVV1 __attribute__((address(0x7E91)));


extern volatile __bit LVV2 __attribute__((address(0x7E92)));


extern volatile __bit LVV3 __attribute__((address(0x7E93)));


extern volatile __bit MCLR __attribute__((address(0x7C35)));


extern volatile __bit MSK0 __attribute__((address(0x7E40)));


extern volatile __bit MSK01 __attribute__((address(0x7E40)));


extern volatile __bit MSK02 __attribute__((address(0x7B28)));


extern volatile __bit MSK1 __attribute__((address(0x7E41)));


extern volatile __bit MSK11 __attribute__((address(0x7E41)));


extern volatile __bit MSK12 __attribute__((address(0x7B29)));


extern volatile __bit MSK2 __attribute__((address(0x7E42)));


extern volatile __bit MSK21 __attribute__((address(0x7E42)));


extern volatile __bit MSK22 __attribute__((address(0x7B2A)));


extern volatile __bit MSK3 __attribute__((address(0x7E43)));


extern volatile __bit MSK31 __attribute__((address(0x7E43)));


extern volatile __bit MSK32 __attribute__((address(0x7B2B)));


extern volatile __bit MSK4 __attribute__((address(0x7E44)));


extern volatile __bit MSK41 __attribute__((address(0x7E44)));


extern volatile __bit MSK42 __attribute__((address(0x7B2C)));


extern volatile __bit MSK5 __attribute__((address(0x7E45)));


extern volatile __bit MSK51 __attribute__((address(0x7E45)));


extern volatile __bit MSK52 __attribute__((address(0x7B2D)));


extern volatile __bit MSK6 __attribute__((address(0x7E46)));


extern volatile __bit MSK61 __attribute__((address(0x7E46)));


extern volatile __bit MSK62 __attribute__((address(0x7B2E)));


extern volatile __bit MSK7 __attribute__((address(0x7E47)));


extern volatile __bit MSK71 __attribute__((address(0x7E47)));


extern volatile __bit MSK72 __attribute__((address(0x7B2F)));


extern volatile __bit NEGATIVE __attribute__((address(0x7EC4)));


extern volatile __bit NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit NOT_A2 __attribute__((address(0x7B25)));


extern volatile __bit NOT_ADDRESS2 __attribute__((address(0x7B25)));


extern volatile __bit NOT_BOR __attribute__((address(0x7E80)));


extern volatile __bit NOT_CS __attribute__((address(0x7C22)));


extern volatile __bit NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit NOT_MCLR __attribute__((address(0x7C35)));


extern volatile __bit NOT_PD __attribute__((address(0x7E82)));


extern volatile __bit NOT_POR __attribute__((address(0x7E81)));


extern volatile __bit NOT_RBPU __attribute__((address(0x7F8F)));


extern volatile __bit NOT_RD __attribute__((address(0x7C20)));


extern volatile __bit NOT_RI __attribute__((address(0x7E84)));


extern volatile __bit NOT_SS1 __attribute__((address(0x7C2F)));


extern volatile __bit NOT_SS2 __attribute__((address(0x7C1F)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit NOT_T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit NOT_TO __attribute__((address(0x7E83)));


extern volatile __bit NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit NOT_W2 __attribute__((address(0x7B22)));


extern volatile __bit NOT_WR __attribute__((address(0x7C21)));


extern volatile __bit NOT_WRITE2 __attribute__((address(0x7B22)));


extern volatile __bit OBF __attribute__((address(0x7D86)));


extern volatile __bit __attribute__((__deprecated__)) OERR __attribute__((address(0x7D59)));


extern volatile __bit OERR1 __attribute__((address(0x7D59)));


extern volatile __bit OERR2 __attribute__((address(0x7B59)));


extern volatile __bit OSCFIE __attribute__((address(0x7D07)));


extern volatile __bit OSCFIF __attribute__((address(0x7D0F)));


extern volatile __bit OSCFIP __attribute__((address(0x7D17)));


extern volatile __bit OSTS __attribute__((address(0x7E9B)));


extern volatile __bit OV __attribute__((address(0x7EC3)));


extern volatile __bit OVERFLOW __attribute__((address(0x7EC3)));


extern volatile __bit P1A __attribute__((address(0x7C12)));


extern volatile __bit P1B __attribute__((address(0x7C26)));


extern volatile __bit P1C __attribute__((address(0x7C25)));


extern volatile __bit P1D __attribute__((address(0x7C34)));


extern volatile __bit P1DC0 __attribute__((address(0x7BC8)));


extern volatile __bit P1DC1 __attribute__((address(0x7BC9)));


extern volatile __bit P1DC2 __attribute__((address(0x7BCA)));


extern volatile __bit P1DC3 __attribute__((address(0x7BCB)));


extern volatile __bit P1DC4 __attribute__((address(0x7BCC)));


extern volatile __bit P1DC5 __attribute__((address(0x7BCD)));


extern volatile __bit P1DC6 __attribute__((address(0x7BCE)));


extern volatile __bit P1M0 __attribute__((address(0x7DEE)));


extern volatile __bit P1M1 __attribute__((address(0x7DEF)));


extern volatile __bit P1RSEN __attribute__((address(0x7BCF)));


extern volatile __bit P2 __attribute__((address(0x7B24)));


extern volatile __bit P2B __attribute__((address(0x7C22)));


extern volatile __bit P2C __attribute__((address(0x7C21)));


extern volatile __bit P2D __attribute__((address(0x7C20)));


extern volatile __bit P2DC0 __attribute__((address(0x7B38)));


extern volatile __bit P2DC1 __attribute__((address(0x7B39)));


extern volatile __bit P2DC2 __attribute__((address(0x7B3A)));


extern volatile __bit P2DC3 __attribute__((address(0x7B3B)));


extern volatile __bit P2DC4 __attribute__((address(0x7B3C)));


extern volatile __bit P2DC5 __attribute__((address(0x7B3D)));


extern volatile __bit P2DC6 __attribute__((address(0x7B3E)));


extern volatile __bit P2M0 __attribute__((address(0x7DD6)));


extern volatile __bit P2M1 __attribute__((address(0x7DD7)));


extern volatile __bit P2RSEN __attribute__((address(0x7B3F)));


extern volatile __bit P3A __attribute__((address(0x7C30)));


extern volatile __bit P3B __attribute__((address(0x7C24)));


extern volatile __bit P3C __attribute__((address(0x7C23)));


extern volatile __bit P3D __attribute__((address(0x7C33)));


extern volatile __bit P3DC0 __attribute__((address(0x7B48)));


extern volatile __bit P3DC1 __attribute__((address(0x7B49)));


extern volatile __bit P3DC2 __attribute__((address(0x7B4A)));


extern volatile __bit P3DC3 __attribute__((address(0x7B4B)));


extern volatile __bit P3DC4 __attribute__((address(0x7B4C)));


extern volatile __bit P3DC5 __attribute__((address(0x7B4D)));


extern volatile __bit P3DC6 __attribute__((address(0x7B4E)));


extern volatile __bit P3M0 __attribute__((address(0x7DBE)));


extern volatile __bit P3M1 __attribute__((address(0x7DBF)));


extern volatile __bit P3RSEN __attribute__((address(0x7B4F)));


extern volatile __bit PA1 __attribute__((address(0x7C12)));


extern volatile __bit PA2 __attribute__((address(0x7C11)));


extern volatile __bit PA2E __attribute__((address(0x7C27)));


extern volatile __bit PB1E __attribute__((address(0x7C26)));


extern volatile __bit PB2 __attribute__((address(0x7C22)));


extern volatile __bit PB3E __attribute__((address(0x7C24)));


extern volatile __bit PC1E __attribute__((address(0x7C25)));


extern volatile __bit PC2 __attribute__((address(0x7C21)));


extern volatile __bit PC3E __attribute__((address(0x7C23)));


extern volatile __bit PCFG0 __attribute__((address(0x7E08)));


extern volatile __bit PCFG1 __attribute__((address(0x7E09)));


extern volatile __bit PCFG2 __attribute__((address(0x7E0A)));


extern volatile __bit PCFG3 __attribute__((address(0x7E0B)));


extern volatile __bit PD __attribute__((address(0x7E82)));


extern volatile __bit PD2 __attribute__((address(0x7C20)));


extern volatile __bit PEIE __attribute__((address(0x7F96)));


extern volatile __bit PEIE_GIEL __attribute__((address(0x7F96)));


extern volatile __bit __attribute__((__deprecated__)) PEN __attribute__((address(0x7E2A)));


extern volatile __bit PEN1 __attribute__((address(0x7E2A)));


extern volatile __bit PEN2 __attribute__((address(0x7B12)));


extern volatile __bit PLLEN __attribute__((address(0x7CDE)));


extern volatile __bit POR __attribute__((address(0x7E81)));


extern volatile __bit PSA __attribute__((address(0x7EAB)));


extern volatile __bit PSP0 __attribute__((address(0x7C18)));


extern volatile __bit PSP1 __attribute__((address(0x7C19)));


extern volatile __bit PSP2 __attribute__((address(0x7C1A)));


extern volatile __bit PSP3 __attribute__((address(0x7C1B)));


extern volatile __bit PSP4 __attribute__((address(0x7C1C)));


extern volatile __bit PSP5 __attribute__((address(0x7C1D)));


extern volatile __bit PSP6 __attribute__((address(0x7C1E)));


extern volatile __bit PSP7 __attribute__((address(0x7C1F)));


extern volatile __bit PSPIE __attribute__((address(0x7CEF)));


extern volatile __bit PSPIF __attribute__((address(0x7CF7)));


extern volatile __bit PSPIP __attribute__((address(0x7CFF)));


extern volatile __bit PSPMODE __attribute__((address(0x7D84)));


extern volatile __bit PSS1AC0 __attribute__((address(0x7DB2)));


extern volatile __bit PSS1AC1 __attribute__((address(0x7DB3)));


extern volatile __bit PSS1BD0 __attribute__((address(0x7DB0)));


extern volatile __bit PSS1BD1 __attribute__((address(0x7DB1)));


extern volatile __bit PSS2AC0 __attribute__((address(0x7B42)));


extern volatile __bit PSS2AC1 __attribute__((address(0x7B43)));


extern volatile __bit PSS2BD0 __attribute__((address(0x7B40)));


extern volatile __bit PSS2BD1 __attribute__((address(0x7B41)));


extern volatile __bit PSS3AC0 __attribute__((address(0x7B52)));


extern volatile __bit PSS3AC1 __attribute__((address(0x7B53)));


extern volatile __bit PSS3BD0 __attribute__((address(0x7B50)));


extern volatile __bit PSS3BD1 __attribute__((address(0x7B51)));


extern volatile __bit __attribute__((__deprecated__)) RA0 __attribute__((address(0x7C00)));


extern volatile __bit __attribute__((__deprecated__)) RA1 __attribute__((address(0x7C01)));


extern volatile __bit __attribute__((__deprecated__)) RA2 __attribute__((address(0x7C02)));


extern volatile __bit __attribute__((__deprecated__)) RA3 __attribute__((address(0x7C03)));


extern volatile __bit __attribute__((__deprecated__)) RA4 __attribute__((address(0x7C04)));


extern volatile __bit __attribute__((__deprecated__)) RA5 __attribute__((address(0x7C05)));


extern volatile __bit __attribute__((__deprecated__)) RA6 __attribute__((address(0x7C06)));


extern volatile __bit __attribute__((__deprecated__)) RA7 __attribute__((address(0x7C07)));


extern volatile __bit __attribute__((__deprecated__)) RB0 __attribute__((address(0x7C08)));


extern volatile __bit __attribute__((__deprecated__)) RB1 __attribute__((address(0x7C09)));


extern volatile __bit __attribute__((__deprecated__)) RB2 __attribute__((address(0x7C0A)));


extern volatile __bit __attribute__((__deprecated__)) RB3 __attribute__((address(0x7C0B)));


extern volatile __bit __attribute__((__deprecated__)) RB4 __attribute__((address(0x7C0C)));


extern volatile __bit __attribute__((__deprecated__)) RB5 __attribute__((address(0x7C0D)));


extern volatile __bit __attribute__((__deprecated__)) RB6 __attribute__((address(0x7C0E)));


extern volatile __bit __attribute__((__deprecated__)) RB7 __attribute__((address(0x7C0F)));


extern volatile __bit RBIE __attribute__((address(0x7F93)));


extern volatile __bit RBIF __attribute__((address(0x7F90)));


extern volatile __bit RBIP __attribute__((address(0x7F88)));


extern volatile __bit RBPU __attribute__((address(0x7F8F)));


extern volatile __bit __attribute__((__deprecated__)) RC0 __attribute__((address(0x7C10)));


extern volatile __bit __attribute__((__deprecated__)) RC1 __attribute__((address(0x7C11)));


extern volatile __bit RC1IE __attribute__((address(0x7CED)));


extern volatile __bit RC1IF __attribute__((address(0x7CF5)));


extern volatile __bit RC1IP __attribute__((address(0x7CFD)));


extern volatile __bit __attribute__((__deprecated__)) RC2 __attribute__((address(0x7C12)));


extern volatile __bit RC2IE __attribute__((address(0x7D1D)));


extern volatile __bit RC2IF __attribute__((address(0x7D25)));


extern volatile __bit RC2IP __attribute__((address(0x7D2D)));


extern volatile __bit __attribute__((__deprecated__)) RC3 __attribute__((address(0x7C13)));


extern volatile __bit __attribute__((__deprecated__)) RC4 __attribute__((address(0x7C14)));


extern volatile __bit __attribute__((__deprecated__)) RC5 __attribute__((address(0x7C15)));


extern volatile __bit __attribute__((__deprecated__)) RC6 __attribute__((address(0x7C16)));


extern volatile __bit __attribute__((__deprecated__)) RC7 __attribute__((address(0x7C17)));


extern volatile __bit RC8_92 __attribute__((address(0x7B5E)));


extern volatile __bit RC92 __attribute__((address(0x7B5E)));


extern volatile __bit RCD82 __attribute__((address(0x7B58)));


extern volatile __bit __attribute__((__deprecated__)) RCEN __attribute__((address(0x7E2B)));


extern volatile __bit RCEN1 __attribute__((address(0x7E2B)));


extern volatile __bit RCEN2 __attribute__((address(0x7B13)));


extern volatile __bit RCIDL1 __attribute__((address(0x7BF6)));


extern volatile __bit RCIDL2 __attribute__((address(0x7BE6)));


extern volatile __bit RCIE __attribute__((address(0x7CED)));


extern volatile __bit RCIF __attribute__((address(0x7CF5)));


extern volatile __bit RCIP __attribute__((address(0x7CFD)));


extern volatile __bit RCMT1 __attribute__((address(0x7BF6)));


extern volatile __bit RCMT2 __attribute__((address(0x7BE6)));


extern volatile __bit __attribute__((__deprecated__)) RD __attribute__((address(0x7D30)));


extern volatile __bit __attribute__((__deprecated__)) RD0 __attribute__((address(0x7C18)));


extern volatile __bit __attribute__((__deprecated__)) RD1 __attribute__((address(0x7C19)));


extern volatile __bit RD163 __attribute__((address(0x7D8F)));


extern volatile __bit __attribute__((__deprecated__)) RD2 __attribute__((address(0x7C1A)));


extern volatile __bit __attribute__((__deprecated__)) RD3 __attribute__((address(0x7C1B)));


extern volatile __bit __attribute__((__deprecated__)) RD4 __attribute__((address(0x7C1C)));


extern volatile __bit __attribute__((__deprecated__)) RD5 __attribute__((address(0x7C1D)));


extern volatile __bit __attribute__((__deprecated__)) RD6 __attribute__((address(0x7C1E)));


extern volatile __bit __attribute__((__deprecated__)) RD7 __attribute__((address(0x7C1F)));


extern volatile __bit RDE __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE0 __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE1 __attribute__((address(0x7C21)));


extern volatile __bit __attribute__((__deprecated__)) RE2 __attribute__((address(0x7C22)));


extern volatile __bit __attribute__((__deprecated__)) RE3 __attribute__((address(0x7C23)));


extern volatile __bit __attribute__((__deprecated__)) RE4 __attribute__((address(0x7C24)));


extern volatile __bit __attribute__((__deprecated__)) RE5 __attribute__((address(0x7C25)));


extern volatile __bit __attribute__((__deprecated__)) RE6 __attribute__((address(0x7C26)));


extern volatile __bit __attribute__((__deprecated__)) RE7 __attribute__((address(0x7C27)));


extern volatile __bit READ_WRITE2 __attribute__((address(0x7B22)));


extern volatile __bit __attribute__((__deprecated__)) RF0 __attribute__((address(0x7C28)));


extern volatile __bit __attribute__((__deprecated__)) RF1 __attribute__((address(0x7C29)));


extern volatile __bit __attribute__((__deprecated__)) RF2 __attribute__((address(0x7C2A)));


extern volatile __bit __attribute__((__deprecated__)) RF3 __attribute__((address(0x7C2B)));


extern volatile __bit __attribute__((__deprecated__)) RF4 __attribute__((address(0x7C2C)));


extern volatile __bit __attribute__((__deprecated__)) RF5 __attribute__((address(0x7C2D)));


extern volatile __bit __attribute__((__deprecated__)) RF6 __attribute__((address(0x7C2E)));


extern volatile __bit __attribute__((__deprecated__)) RF7 __attribute__((address(0x7C2F)));


extern volatile __bit __attribute__((__deprecated__)) RG0 __attribute__((address(0x7C30)));


extern volatile __bit __attribute__((__deprecated__)) RG1 __attribute__((address(0x7C31)));


extern volatile __bit __attribute__((__deprecated__)) RG2 __attribute__((address(0x7C32)));


extern volatile __bit __attribute__((__deprecated__)) RG3 __attribute__((address(0x7C33)));


extern volatile __bit __attribute__((__deprecated__)) RG4 __attribute__((address(0x7C34)));


extern volatile __bit RG5 __attribute__((address(0x7C35)));


extern volatile __bit RI __attribute__((address(0x7E84)));


extern volatile __bit __attribute__((__deprecated__)) RSEN __attribute__((address(0x7E29)));


extern volatile __bit RSEN1 __attribute__((address(0x7E29)));


extern volatile __bit RSEN2 __attribute__((address(0x7B11)));


extern volatile __bit RW __attribute__((address(0x7E3A)));


extern volatile __bit RW1 __attribute__((address(0x7E3A)));


extern volatile __bit RW2 __attribute__((address(0x7B22)));


extern volatile __bit RX __attribute__((address(0x7C17)));


extern volatile __bit RX1 __attribute__((address(0x7C17)));


extern volatile __bit RX2 __attribute__((address(0x7C32)));


extern volatile __bit __attribute__((__deprecated__)) RX9 __attribute__((address(0x7D5E)));


extern volatile __bit RX91 __attribute__((address(0x7D5E)));


extern volatile __bit RX92 __attribute__((address(0x7B5E)));


extern volatile __bit __attribute__((__deprecated__)) RX9D __attribute__((address(0x7D58)));


extern volatile __bit RX9D1 __attribute__((address(0x7D58)));


extern volatile __bit RX9D2 __attribute__((address(0x7B58)));


extern volatile __bit RXB0IE __attribute__((address(0x7D18)));


extern volatile __bit RXB1IE __attribute__((address(0x7D19)));


extern volatile __bit RXBNIE __attribute__((address(0x7D19)));


extern volatile __bit RXBNIF __attribute__((address(0x7D21)));


extern volatile __bit RXBNIP __attribute__((address(0x7D29)));


extern volatile __bit R_NOT_W2 __attribute__((address(0x7B22)));


extern volatile __bit R_W2 __attribute__((address(0x7B22)));


extern volatile __bit R_nW2 __attribute__((address(0x7B22)));


extern volatile __bit S2 __attribute__((address(0x7B23)));


extern volatile __bit SBOREN __attribute__((address(0x7E86)));


extern volatile __bit SCK __attribute__((address(0x7C13)));


extern volatile __bit SCK1 __attribute__((address(0x7C13)));


extern volatile __bit SCK2 __attribute__((address(0x7C1E)));


extern volatile __bit SCKP1 __attribute__((address(0x7BF4)));


extern volatile __bit SCKP2 __attribute__((address(0x7BE4)));


extern volatile __bit SCL __attribute__((address(0x7C13)));


extern volatile __bit SCL1 __attribute__((address(0x7C13)));


extern volatile __bit SCL2 __attribute__((address(0x7C1E)));


extern volatile __bit SCS0 __attribute__((address(0x7E98)));


extern volatile __bit SCS1 __attribute__((address(0x7E99)));


extern volatile __bit SDA __attribute__((address(0x7C14)));


extern volatile __bit SDA1 __attribute__((address(0x7C14)));


extern volatile __bit SDA2 __attribute__((address(0x7C1D)));


extern volatile __bit SDI __attribute__((address(0x7C14)));


extern volatile __bit SDI1 __attribute__((address(0x7C14)));


extern volatile __bit SDI2 __attribute__((address(0x7C1D)));


extern volatile __bit SDO __attribute__((address(0x7C15)));


extern volatile __bit SDO1 __attribute__((address(0x7C15)));


extern volatile __bit SDO2 __attribute__((address(0x7C1C)));


extern volatile __bit __attribute__((__deprecated__)) SEN __attribute__((address(0x7E28)));


extern volatile __bit SEN1 __attribute__((address(0x7E28)));


extern volatile __bit SEN2 __attribute__((address(0x7B10)));


extern volatile __bit __attribute__((__deprecated__)) SENDB __attribute__((address(0x7D63)));


extern volatile __bit SENDB1 __attribute__((address(0x7D63)));


extern volatile __bit SENDB2 __attribute__((address(0x7B63)));


extern volatile __bit __attribute__((__deprecated__)) SMP __attribute__((address(0x7E3F)));


extern volatile __bit SMP1 __attribute__((address(0x7E3F)));


extern volatile __bit SMP2 __attribute__((address(0x7B27)));


extern volatile __bit SOSCEN __attribute__((address(0x7E6B)));


extern volatile __bit SOSCEN3 __attribute__((address(0x7D8B)));


extern volatile __bit SP0 __attribute__((address(0x7FE0)));


extern volatile __bit SP1 __attribute__((address(0x7FE1)));


extern volatile __bit SP2 __attribute__((address(0x7FE2)));


extern volatile __bit SP3 __attribute__((address(0x7FE3)));


extern volatile __bit SP4 __attribute__((address(0x7FE4)));


extern volatile __bit __attribute__((__deprecated__)) SPEN __attribute__((address(0x7D5F)));


extern volatile __bit SPEN1 __attribute__((address(0x7D5F)));


extern volatile __bit SPEN2 __attribute__((address(0x7B5F)));


extern volatile __bit __attribute__((__deprecated__)) SREN __attribute__((address(0x7D5D)));


extern volatile __bit SREN1 __attribute__((address(0x7D5D)));


extern volatile __bit SREN2 __attribute__((address(0x7B5D)));


extern volatile __bit SRENA __attribute__((address(0x7D5D)));


extern volatile __bit SS1 __attribute__((address(0x7C2F)));


extern volatile __bit SS2 __attribute__((address(0x7C1F)));


extern volatile __bit SSP1IE __attribute__((address(0x7CEB)));


extern volatile __bit SSP1IF __attribute__((address(0x7CF3)));


extern volatile __bit SSP1IP __attribute__((address(0x7CFB)));


extern volatile __bit SSP2IE __attribute__((address(0x7D1F)));


extern volatile __bit SSP2IF __attribute__((address(0x7D27)));


extern volatile __bit SSP2IP __attribute__((address(0x7D2F)));


extern volatile __bit __attribute__((__deprecated__)) SSPEN __attribute__((address(0x7E35)));


extern volatile __bit SSPEN1 __attribute__((address(0x7E35)));


extern volatile __bit SSPEN2 __attribute__((address(0x7B1D)));


extern volatile __bit SSPIE __attribute__((address(0x7CEB)));


extern volatile __bit SSPIF __attribute__((address(0x7CF3)));


extern volatile __bit SSPIP __attribute__((address(0x7CFB)));


extern volatile __bit __attribute__((__deprecated__)) SSPM0 __attribute__((address(0x7E30)));


extern volatile __bit SSPM01 __attribute__((address(0x7E30)));


extern volatile __bit SSPM02 __attribute__((address(0x7B18)));


extern volatile __bit __attribute__((__deprecated__)) SSPM1 __attribute__((address(0x7E31)));


extern volatile __bit SSPM11 __attribute__((address(0x7E31)));


extern volatile __bit SSPM12 __attribute__((address(0x7B19)));


extern volatile __bit __attribute__((__deprecated__)) SSPM2 __attribute__((address(0x7E32)));


extern volatile __bit SSPM21 __attribute__((address(0x7E32)));


extern volatile __bit SSPM22 __attribute__((address(0x7B1A)));


extern volatile __bit __attribute__((__deprecated__)) SSPM3 __attribute__((address(0x7E33)));


extern volatile __bit SSPM31 __attribute__((address(0x7E33)));


extern volatile __bit SSPM32 __attribute__((address(0x7B1B)));


extern volatile __bit __attribute__((__deprecated__)) SSPOV __attribute__((address(0x7E36)));


extern volatile __bit SSPOV1 __attribute__((address(0x7E36)));


extern volatile __bit SSPOV2 __attribute__((address(0x7B1E)));


extern volatile __bit START __attribute__((address(0x7E3B)));


extern volatile __bit START1 __attribute__((address(0x7E3B)));


extern volatile __bit START2 __attribute__((address(0x7B23)));


extern volatile __bit STKFUL __attribute__((address(0x7FE7)));


extern volatile __bit STKOVF __attribute__((address(0x7FE7)));


extern volatile __bit STKPTR0 __attribute__((address(0x7FE0)));


extern volatile __bit STKPTR1 __attribute__((address(0x7FE1)));


extern volatile __bit STKPTR2 __attribute__((address(0x7FE2)));


extern volatile __bit STKPTR3 __attribute__((address(0x7FE3)));


extern volatile __bit STKPTR4 __attribute__((address(0x7FE4)));


extern volatile __bit STKUNF __attribute__((address(0x7FE6)));


extern volatile __bit STOP __attribute__((address(0x7E3C)));


extern volatile __bit STOP1 __attribute__((address(0x7E3C)));


extern volatile __bit STOP2 __attribute__((address(0x7B24)));


extern volatile __bit SWDTE __attribute__((address(0x7E88)));


extern volatile __bit SWDTEN __attribute__((address(0x7E88)));


extern volatile __bit __attribute__((__deprecated__)) SYNC __attribute__((address(0x7D64)));


extern volatile __bit SYNC1 __attribute__((address(0x7D64)));


extern volatile __bit SYNC2 __attribute__((address(0x7B64)));


extern volatile __bit T08BIT __attribute__((address(0x7EAE)));


extern volatile __bit T0CKI __attribute__((address(0x7C04)));


extern volatile __bit T0CS __attribute__((address(0x7EAD)));


extern volatile __bit T0IE __attribute__((address(0x7F95)));


extern volatile __bit T0IF __attribute__((address(0x7F92)));


extern volatile __bit T0IP __attribute__((address(0x7F8A)));


extern volatile __bit T0PS0 __attribute__((address(0x7EA8)));


extern volatile __bit T0PS1 __attribute__((address(0x7EA9)));


extern volatile __bit T0PS2 __attribute__((address(0x7EAA)));


extern volatile __bit T0PS3 __attribute__((address(0x7EAB)));


extern volatile __bit T0SE __attribute__((address(0x7EAC)));


extern volatile __bit T13CKI __attribute__((address(0x7C10)));


extern volatile __bit T1CKPS0 __attribute__((address(0x7E6C)));


extern volatile __bit T1CKPS1 __attribute__((address(0x7E6D)));


extern volatile __bit T1INSYNC __attribute__((address(0x7E6A)));


extern volatile __bit T1OSCEN __attribute__((address(0x7E6B)));


extern volatile __bit T1OSI __attribute__((address(0x7C11)));


extern volatile __bit T1OSO __attribute__((address(0x7C10)));


extern volatile __bit T1RD16 __attribute__((address(0x7E6F)));


extern volatile __bit T1RUN __attribute__((address(0x7E6E)));


extern volatile __bit T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit T2CKPS0 __attribute__((address(0x7E50)));


extern volatile __bit T2CKPS1 __attribute__((address(0x7E51)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x7E53)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x7E54)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x7E55)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x7E56)));


extern volatile __bit T3CCP1 __attribute__((address(0x7D8B)));


extern volatile __bit T3CCP2 __attribute__((address(0x7D8E)));


extern volatile __bit T3CKPS0 __attribute__((address(0x7D8C)));


extern volatile __bit T3CKPS1 __attribute__((address(0x7D8D)));


extern volatile __bit T3INSYNC __attribute__((address(0x7D8A)));


extern volatile __bit T3RD16 __attribute__((address(0x7D8F)));


extern volatile __bit T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit T4CKPS0 __attribute__((address(0x7BB0)));


extern volatile __bit T4CKPS1 __attribute__((address(0x7BB1)));


extern volatile __bit T4OUTPS0 __attribute__((address(0x7BB3)));


extern volatile __bit T4OUTPS1 __attribute__((address(0x7BB4)));


extern volatile __bit T4OUTPS2 __attribute__((address(0x7BB5)));


extern volatile __bit T4OUTPS3 __attribute__((address(0x7BB6)));


extern volatile __bit TMR0IE __attribute__((address(0x7F95)));


extern volatile __bit TMR0IF __attribute__((address(0x7F92)));


extern volatile __bit TMR0IP __attribute__((address(0x7F8A)));


extern volatile __bit TMR0ON __attribute__((address(0x7EAF)));


extern volatile __bit TMR1CS __attribute__((address(0x7E69)));


extern volatile __bit TMR1IE __attribute__((address(0x7CE8)));


extern volatile __bit TMR1IF __attribute__((address(0x7CF0)));


extern volatile __bit TMR1IP __attribute__((address(0x7CF8)));


extern volatile __bit TMR1ON __attribute__((address(0x7E68)));


extern volatile __bit TMR2IE __attribute__((address(0x7CE9)));


extern volatile __bit TMR2IF __attribute__((address(0x7CF1)));


extern volatile __bit TMR2IP __attribute__((address(0x7CF9)));


extern volatile __bit TMR2ON __attribute__((address(0x7E52)));


extern volatile __bit TMR3CS __attribute__((address(0x7D89)));


extern volatile __bit TMR3IE __attribute__((address(0x7D01)));


extern volatile __bit TMR3IF __attribute__((address(0x7D09)));


extern volatile __bit TMR3IP __attribute__((address(0x7D11)));


extern volatile __bit TMR3ON __attribute__((address(0x7D88)));


extern volatile __bit TMR4IE __attribute__((address(0x7D1B)));


extern volatile __bit TMR4IF __attribute__((address(0x7D23)));


extern volatile __bit TMR4IP __attribute__((address(0x7D2B)));


extern volatile __bit TMR4ON __attribute__((address(0x7BB2)));


extern volatile __bit TO __attribute__((address(0x7E83)));


extern volatile __bit TRISA0 __attribute__((address(0x7C90)));


extern volatile __bit TRISA1 __attribute__((address(0x7C91)));


extern volatile __bit TRISA2 __attribute__((address(0x7C92)));


extern volatile __bit TRISA3 __attribute__((address(0x7C93)));


extern volatile __bit TRISA4 __attribute__((address(0x7C94)));


extern volatile __bit TRISA5 __attribute__((address(0x7C95)));


extern volatile __bit TRISA6 __attribute__((address(0x7C96)));


extern volatile __bit TRISA7 __attribute__((address(0x7C97)));


extern volatile __bit TRISB0 __attribute__((address(0x7C98)));


extern volatile __bit TRISB1 __attribute__((address(0x7C99)));


extern volatile __bit TRISB2 __attribute__((address(0x7C9A)));


extern volatile __bit TRISB3 __attribute__((address(0x7C9B)));


extern volatile __bit TRISB4 __attribute__((address(0x7C9C)));


extern volatile __bit TRISB5 __attribute__((address(0x7C9D)));


extern volatile __bit TRISB6 __attribute__((address(0x7C9E)));


extern volatile __bit TRISB7 __attribute__((address(0x7C9F)));


extern volatile __bit TRISC0 __attribute__((address(0x7CA0)));


extern volatile __bit TRISC1 __attribute__((address(0x7CA1)));


extern volatile __bit TRISC2 __attribute__((address(0x7CA2)));


extern volatile __bit TRISC3 __attribute__((address(0x7CA3)));


extern volatile __bit TRISC4 __attribute__((address(0x7CA4)));


extern volatile __bit TRISC5 __attribute__((address(0x7CA5)));


extern volatile __bit TRISC6 __attribute__((address(0x7CA6)));


extern volatile __bit TRISC7 __attribute__((address(0x7CA7)));


extern volatile __bit TRISD0 __attribute__((address(0x7CA8)));


extern volatile __bit TRISD1 __attribute__((address(0x7CA9)));


extern volatile __bit TRISD2 __attribute__((address(0x7CAA)));


extern volatile __bit TRISD3 __attribute__((address(0x7CAB)));


extern volatile __bit TRISD4 __attribute__((address(0x7CAC)));


extern volatile __bit TRISD5 __attribute__((address(0x7CAD)));


extern volatile __bit TRISD6 __attribute__((address(0x7CAE)));


extern volatile __bit TRISD7 __attribute__((address(0x7CAF)));


extern volatile __bit TRISE0 __attribute__((address(0x7CB0)));


extern volatile __bit TRISE1 __attribute__((address(0x7CB1)));


extern volatile __bit TRISE2 __attribute__((address(0x7CB2)));


extern volatile __bit TRISE3 __attribute__((address(0x7CB3)));


extern volatile __bit TRISE4 __attribute__((address(0x7CB4)));


extern volatile __bit TRISE5 __attribute__((address(0x7CB5)));


extern volatile __bit TRISE6 __attribute__((address(0x7CB6)));


extern volatile __bit TRISE7 __attribute__((address(0x7CB7)));


extern volatile __bit TRISF0 __attribute__((address(0x7CB8)));


extern volatile __bit TRISF1 __attribute__((address(0x7CB9)));


extern volatile __bit TRISF2 __attribute__((address(0x7CBA)));


extern volatile __bit TRISF3 __attribute__((address(0x7CBB)));


extern volatile __bit TRISF4 __attribute__((address(0x7CBC)));


extern volatile __bit TRISF5 __attribute__((address(0x7CBD)));


extern volatile __bit TRISF6 __attribute__((address(0x7CBE)));


extern volatile __bit TRISF7 __attribute__((address(0x7CBF)));


extern volatile __bit TRISG0 __attribute__((address(0x7CC0)));


extern volatile __bit TRISG1 __attribute__((address(0x7CC1)));


extern volatile __bit TRISG2 __attribute__((address(0x7CC2)));


extern volatile __bit TRISG3 __attribute__((address(0x7CC3)));


extern volatile __bit TRISG4 __attribute__((address(0x7CC4)));


extern volatile __bit __attribute__((__deprecated__)) TRMT __attribute__((address(0x7D61)));


extern volatile __bit TRMT1 __attribute__((address(0x7D61)));


extern volatile __bit TRMT2 __attribute__((address(0x7B61)));


extern volatile __bit TUN0 __attribute__((address(0x7CD8)));


extern volatile __bit TUN1 __attribute__((address(0x7CD9)));


extern volatile __bit TUN2 __attribute__((address(0x7CDA)));


extern volatile __bit TUN3 __attribute__((address(0x7CDB)));


extern volatile __bit TUN4 __attribute__((address(0x7CDC)));


extern volatile __bit TX __attribute__((address(0x7C16)));


extern volatile __bit TX1 __attribute__((address(0x7C16)));


extern volatile __bit TX1IE __attribute__((address(0x7CEC)));


extern volatile __bit TX1IF __attribute__((address(0x7CF4)));


extern volatile __bit TX1IP __attribute__((address(0x7CFC)));


extern volatile __bit TX2 __attribute__((address(0x7C31)));


extern volatile __bit TX2IE __attribute__((address(0x7D1C)));


extern volatile __bit TX2IF __attribute__((address(0x7D24)));


extern volatile __bit TX2IP __attribute__((address(0x7D2C)));


extern volatile __bit TX8_92 __attribute__((address(0x7B66)));


extern volatile __bit __attribute__((__deprecated__)) TX9 __attribute__((address(0x7D66)));


extern volatile __bit TX91 __attribute__((address(0x7D66)));


extern volatile __bit TX92 __attribute__((address(0x7B66)));


extern volatile __bit __attribute__((__deprecated__)) TX9D __attribute__((address(0x7D60)));


extern volatile __bit TX9D1 __attribute__((address(0x7D60)));


extern volatile __bit TX9D2 __attribute__((address(0x7B60)));


extern volatile __bit TXB0IE __attribute__((address(0x7D1A)));


extern volatile __bit TXB1IE __attribute__((address(0x7D1B)));


extern volatile __bit TXB2IE __attribute__((address(0x7D1C)));


extern volatile __bit TXBNIE __attribute__((address(0x7D1C)));


extern volatile __bit TXBNIF __attribute__((address(0x7D24)));


extern volatile __bit TXBNIP __attribute__((address(0x7D2C)));


extern volatile __bit TXCKP __attribute__((address(0x7BF4)));


extern volatile __bit TXCKP1 __attribute__((address(0x7BF4)));


extern volatile __bit TXCKP2 __attribute__((address(0x7BE4)));


extern volatile __bit TXD82 __attribute__((address(0x7B60)));


extern volatile __bit __attribute__((__deprecated__)) TXEN __attribute__((address(0x7D65)));


extern volatile __bit TXEN1 __attribute__((address(0x7D65)));


extern volatile __bit TXEN2 __attribute__((address(0x7B65)));


extern volatile __bit TXIE __attribute__((address(0x7CEC)));


extern volatile __bit TXIF __attribute__((address(0x7CF4)));


extern volatile __bit TXIP __attribute__((address(0x7CFC)));


extern volatile __bit __attribute__((__deprecated__)) UA __attribute__((address(0x7E39)));


extern volatile __bit UA1 __attribute__((address(0x7E39)));


extern volatile __bit UA2 __attribute__((address(0x7B21)));


extern volatile __bit ULPWUIN __attribute__((address(0x7C00)));


extern volatile __bit VCFG0 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG01 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG1 __attribute__((address(0x7E0D)));


extern volatile __bit VCFG11 __attribute__((address(0x7E0D)));


extern volatile __bit VDIRMAG __attribute__((address(0x7E97)));


extern volatile __bit VREFM __attribute__((address(0x7C02)));


extern volatile __bit VREFP __attribute__((address(0x7C03)));


extern volatile __bit W4E __attribute__((address(0x7BF1)));


extern volatile __bit WAIT0 __attribute__((address(0x7E5C)));


extern volatile __bit WAIT1 __attribute__((address(0x7E5D)));


extern volatile __bit __attribute__((__deprecated__)) WCOL __attribute__((address(0x7E37)));


extern volatile __bit WCOL1 __attribute__((address(0x7E37)));


extern volatile __bit WCOL2 __attribute__((address(0x7B1F)));


extern volatile __bit WM0 __attribute__((address(0x7E58)));


extern volatile __bit WM1 __attribute__((address(0x7E59)));


extern volatile __bit __attribute__((__deprecated__)) WR __attribute__((address(0x7D31)));


extern volatile __bit WRE __attribute__((address(0x7C21)));


extern volatile __bit WREN __attribute__((address(0x7D32)));


extern volatile __bit WRERR __attribute__((address(0x7D33)));


extern volatile __bit WUE1 __attribute__((address(0x7BF1)));


extern volatile __bit WUE2 __attribute__((address(0x7BE1)));


extern volatile __bit ZERO __attribute__((address(0x7EC2)));


extern volatile __bit nA2 __attribute__((address(0x7B25)));


extern volatile __bit nADDRESS2 __attribute__((address(0x7B25)));


extern volatile __bit nBOR __attribute__((address(0x7E80)));


extern volatile __bit nCS __attribute__((address(0x7C22)));


extern volatile __bit nDONE __attribute__((address(0x7E11)));


extern volatile __bit nMCLR __attribute__((address(0x7C35)));


extern volatile __bit nPD __attribute__((address(0x7E82)));


extern volatile __bit nPOR __attribute__((address(0x7E81)));


extern volatile __bit nRBPU __attribute__((address(0x7F8F)));


extern volatile __bit nRD __attribute__((address(0x7C20)));


extern volatile __bit nRI __attribute__((address(0x7E84)));


extern volatile __bit nSS1 __attribute__((address(0x7C2F)));


extern volatile __bit nSS2 __attribute__((address(0x7C1F)));


extern volatile __bit nT1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit nT3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit nTO __attribute__((address(0x7E83)));


extern volatile __bit nW2 __attribute__((address(0x7B22)));


extern volatile __bit nWR __attribute__((address(0x7C21)));


extern volatile __bit nWRITE2 __attribute__((address(0x7B22)));
# 461 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18_chip_select.h" 2 3
# 6 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18.h" 2 3
# 15 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18.h" 3
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char * a, unsigned int b, __far unsigned char * c);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);







# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\errata.h" 1 3
# 24 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18.h" 2 3
# 141 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18.h" 3
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
# 177 "C:/Users/Marius/.mchp_packs/Microchip/PIC18Fxxxx_DFP/1.8.178/xc8\\pic\\include\\pic18.h" 3
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
# 33 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 2 3
# 15 "main.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdbool.h" 1 3
# 17 "main.c" 2

#pragma config OSC = HSPLL, FCMEN = OFF, IESO = OFF
#pragma config PWRT = ON, BOREN = ON, BORV = 3
#pragma config WDT = ON, WDTPS = 128
#pragma config CCP2MX = PORTE, LPT1OSC = OFF, MCLRE = ON
#pragma config STVREN = ON, LVP = OFF, BBSIZ = BB4K
#pragma config XINST = OFF, DEBUG = OFF
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
# 45 "main.c"
__asm("PSECT intcode");
__asm("GOTO 0x1008");
# 78 "main.c"
static uint16_t upload_size;
static uint32_t upload_expected_crc;
static uint16_t upload_received;
static uint16_t upload_sequence;
static _Bool upload_active;

static uint16_t flash_upload_size;
static uint16_t eeprom_upload_size;
static uint32_t eeprom_upload_expected_crc;
static uint32_t flash_final_crc;
static uint8_t upload_phase;
static uint8_t uart2_rx_byte;

static uint8_t frame_payload[48u];
static uint8_t flash_row_buffer[64u];
static uint8_t flash_row_fill;
static uint16_t flash_row_address;


static volatile uint8_t asm_clear_count;


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
static _Bool upload_have_frame;


static uint16_t parsed_flash_size;
static uint16_t parsed_eeprom_size;
static uint32_t parsed_flash_crc;
static uint32_t parsed_eeprom_crc;


static uint32_t crc32_update(uint32_t crc, uint8_t data);
static _Bool flash_program_row(uint16_t address, const uint8_t *buffer);
static uint8_t eeprom_read_byte(uint16_t address);
static _Bool eeprom_write_verify_byte(uint16_t address, uint8_t value);
static _Bool eeprom_clear_unused(uint16_t used_size);

static void uart2_init(void)
{

    TRISGbits.TRISG2 = 1;
    TRISGbits.TRISG1 = 0;




    BAUDCON2bits.BRG16 = 1;
    RCSTA2 = 0b10010000;
    TXSTA2 = 0b00100100;
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




static void uart2_error(char code)
{
    uart2_putc('!');
    uart2_putc(code);


    uart2_putc(0x0D);
    uart2_putc(0x0A);
}

static _Bool uart2_try_getc(void)
{
    if (RCSTA2bits.OERR) {
        RCSTA2bits.CREN = 0;
        RCSTA2bits.CREN = 1;
    }

    if (PIR3bits.RC2IF) {
        uart2_rx_byte = RCREG2;
        return 1;
    }

    return 0;
}

static _Bool uart2_getc_timeout(void)
{
    uint16_t timeout = 60000u;

    while (timeout != 0u)
    {
        if (uart2_try_getc())
            return 1;

        __asm(" clrwdt");
        timeout--;
    }

    return 0;
}


static void flash_set_pointer(uint16_t address)
{

    TBLPTRU = 0;
    TBLPTRH = (uint8_t)(address >> 8);
    TBLPTRL = (uint8_t) address;
}


static _Bool flash_valid_row(uint16_t address)
{

    return (address >= 0x1000u) &&
           (address <= (0xFFFFu - (64u - 1u))) &&
           ((address & (64u - 1u)) == 0u);
}

static _Bool flash_erase_row(uint16_t address)
{
    uint8_t gie_state;
    uint8_t status;

    if (!flash_valid_row(address))
        return 0;

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
        __asm(" clrwdt");

    status = EECON1;

    EECON1bits.WREN = 0;

    if (status & 0x08)
        return 0;

    if (status & 0x10)
        return 0;

    flash_set_pointer(address);

    {
        uint8_t i;

        for (i = 0; i < 64u - 1u; i++)
        {
            __asm("TBLRD*+");

            if (TABLAT != 0xFFu)
                return 0;
        }

        __asm("TBLRD*");

        if (TABLAT != 0xFFu)
            return 0;
    }

    return 1;
}




static _Bool flash_verify_row(uint16_t address, const uint8_t *buffer)
{
    uint8_t i;

    EECON1bits.EEPGD = 1;
    EECON1bits.CFGS = 0;

    flash_set_pointer(address);


    for (i = 0; i < 64u - 1u; i++)
    {
        __asm("TBLRD*+");

        if (TABLAT != buffer[i])
            return 0;
    }


    __asm("TBLRD*");

    if (TABLAT != buffer[64u - 1u])
        return 0;

    return 1;
}



static _Bool application_marker_valid(void)
{
    uint8_t marker[8];
    uint8_t i;
    uint16_t size;

    EECON1bits.EEPGD = 1;
    EECON1bits.CFGS = 0;
    flash_set_pointer(0xFFC0u);

    for (i = 0; i < 8u; i++)
    {
        __asm("TBLRD*+");
        marker[i] = TABLAT;
    }

    if (marker[0] != 'A' ||
        marker[1] != 'P' ||
        marker[2] != 'P' ||
        marker[3] != '1')
        return 0;

    if (marker[6] != 0u || marker[7] != 0u)
        return 0;

    size = (uint16_t)marker[4] |
           ((uint16_t)marker[5] << 8);

    return (size != 0u && size <= (0xFFC0u - 0x1000u));
}



static _Bool application_marker_write(uint16_t size, uint32_t crc)
{
    uint8_t i;

    if (size == 0u || size > (0xFFC0u - 0x1000u))
        return 0;

    for (i = 0; i < 64u; i++)
        flash_row_buffer[i] = 0xFF;

    flash_row_buffer[0] = 'A';
    flash_row_buffer[1] = 'P';
    flash_row_buffer[2] = 'P';
    flash_row_buffer[3] = '1';

    flash_row_buffer[4] = (uint8_t)size;
    flash_row_buffer[5] = (uint8_t)(size >> 8);
    flash_row_buffer[6] = 0;
    flash_row_buffer[7] = 0;

    flash_row_buffer[8] = (uint8_t)crc;
    flash_row_buffer[9] = (uint8_t)(crc >> 8);
    flash_row_buffer[10] = (uint8_t)(crc >> 16);
    flash_row_buffer[11] = (uint8_t)(crc >> 24);

    if (!flash_program_row(0xFFC0u, flash_row_buffer))
        return 0;

    return application_marker_valid();
}




static _Bool flash_write_row(uint16_t address,
                            const uint8_t *buffer)
{
    uint8_t i;
    uint8_t gie_state;

    EECON1bits.EEPGD = 1;
    EECON1bits.CFGS = 0;

    flash_set_pointer(address);


    for (i = 0; i < 64u; i++)
    {
        TABLAT = buffer[i];
        __asm("TBLWT*+");
    }


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
        __asm(" clrwdt");

    EECON1bits.WREN = 0;


    return flash_verify_row(address, buffer);
}


static _Bool flash_program_row(uint16_t address,
                              const uint8_t *buffer)
{
    if (!flash_erase_row(address))
        return 0;

    return flash_write_row(address, buffer);
}


static _Bool flash_flush_row(void)
{
    if (flash_row_fill == 0u)
        return 1;

    flash_fill_buffer(flash_row_fill,
                      (uint8_t)(64u - flash_row_fill));

    if (!flash_program_row(flash_row_address, flash_row_buffer))
        return 0;


    flash_row_fill = 0u;
    flash_row_address += 64u;



    return 1;
}


static uint8_t eeprom_read_byte(uint16_t address)
{

    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;

    EEADRH = (uint8_t)(address >> 8);
    EEADR = (uint8_t) address;
    EECON1bits.RD = 1;
    __asm("NOP");
    return EEDATA;
}





static _Bool eeprom_write_verify_byte(uint16_t address, uint8_t value)
{
    uint8_t gie_state;

    if (address >= 1024u)
        return 0;

    if (eeprom_read_byte(address) == value)
        return 1;

    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.FREE = 0;

    EEADRH = (uint8_t)(address >> 8);
    EEADR = (uint8_t)address;
    EEDATA = value;


    EECON1bits.WRERR = 0;
    EECON1bits.WREN = 1;

    gie_state = INTCONbits.GIE;
    INTCONbits.GIE = 0;

    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;

    INTCONbits.GIE = gie_state;

    while (EECON1bits.WR)
        __asm(" clrwdt");


    PIR2bits.EEIF = 0;
    EECON1bits.WREN = 0;

    if (EECON1bits.WRERR)
        return 0;

    return (eeprom_read_byte(address) == value);
}


static _Bool eeprom_clear_unused(uint16_t used_size)
{
    uint16_t address;

    if (used_size > 1024u)
        return 0;

    for (address = used_size; address < 1024u; address++)
    {
        __asm(" clrwdt");

        if (!eeprom_write_verify_byte(address, 0xFFu))
            return 0;
    }

    return 1;
}
# 575 "main.c"
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


    if (!uart2_try_getc())
        return 0u;

    ch = uart2_rx_byte;
    if (ch == 0x04u)
        return 4u;

    if (ch != 0x02u)
        return 0u;


    if (!uart2_getc_timeout())
        return 3u;
    seq_hi = uart2_rx_byte;
    if (!uart2_getc_timeout())
        return 3u;
    seq_lo = uart2_rx_byte;


    if (!uart2_getc_timeout())
        return 3u;
    len_hi = uart2_rx_byte;
    if (!uart2_getc_timeout())
        return 3u;
    len_lo = uart2_rx_byte;

    *sequence = ((uint16_t)seq_hi << 8) | seq_lo;


    if (len_hi != 0u || len_lo == 0u || len_lo > 48u)
        return 5u;

    *length = len_lo;

    calculated_crc = 0xFFFFu;

    calculated_crc = crc16_update(calculated_crc, seq_hi);
    calculated_crc = crc16_update(calculated_crc, seq_lo);
    calculated_crc = crc16_update(calculated_crc, len_hi);
    calculated_crc = crc16_update(calculated_crc, len_lo);


    for (i = 0; i < *length; i++)
    {
        if (!uart2_getc_timeout())
            return 3u;
        frame_payload[i] = uart2_rx_byte;

        calculated_crc =
            crc16_update(calculated_crc, frame_payload[i]);
    }


    if (!uart2_getc_timeout())
        return 3u;
    seq_hi = uart2_rx_byte;
    if (!uart2_getc_timeout())
        return 3u;
    seq_lo = uart2_rx_byte;

    received_crc = ((uint16_t)seq_hi << 8) | seq_lo;

    if (received_crc != calculated_crc)
        return 2u;

    return 1u;
}




static _Bool upload_store_payload(uint8_t length)
{
    uint8_t i;
    uint8_t data;

    if (upload_phase == 0u)
    {
        for (i = 0; i < length; i++)
        {
            data = frame_payload[i];
            upload_crc32 = crc32_update(upload_crc32, data);
            flash_row_buffer[flash_row_fill++] = data;

            if (flash_row_fill >= 64u)
            {
                if (!flash_program_row(flash_row_address,
                                       flash_row_buffer))
                    return 0;

                flash_row_fill = 0u;
                flash_row_address += 64u;

                flash_fill_buffer(0u, 64u);
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
                return 0;
        }
    }

    return 1;
}

static void receive_upload_data(void)
{
    uint16_t sequence;
    uint8_t length;
    uint8_t result;
    uint8_t error;

    while (upload_active)
    {
        __asm(" clrwdt");
        result = receive_upload_frame(&sequence, &length);

        if (result == 1u)
        {
            if (sequence == upload_sequence)
            {

                if ((upload_received > upload_size) ||
                    (length > (upload_size - upload_received)))
                {
                    error = 'S';
                    goto upload_abort;
                }

                if (!upload_store_payload(length))
                {
                    error = upload_phase == 0u ? 'F' : 'E';
                    goto upload_abort;
                }

                upload_received += length;
                upload_sequence++;
                upload_have_frame = 1;
            }
            else if (!upload_have_frame ||
                     sequence != (uint16_t)(upload_sequence - 1u))
            {
                result = 2u;
            }

            if (result == 1u)
            {

                uart2_putc(0x06u);
                uart2_putc((uint8_t)(sequence >> 8));
                uart2_putc((uint8_t)sequence);
                continue;
            }
        }

        if (result == 2u)
        {
            uart2_putc(0x15u);
            uart2_putc((uint8_t)(upload_sequence >> 8));
            uart2_putc((uint8_t)upload_sequence);
            continue;
        }

        if (result == 5u)
        {
            error = 'D';
            goto upload_abort;
        }

        if (result == 3u)
        {
            error = 'T';
            goto upload_abort;
        }

        if (result == 4u)
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

            if (upload_phase == 0u)
            {

                if (!flash_flush_row())
                {
                    error = 'F';
                    goto upload_abort;
                }


                flash_final_crc = upload_expected_crc;


                upload_phase = 1u;
                upload_size = eeprom_upload_size;
                upload_expected_crc = eeprom_upload_expected_crc;
                upload_received = 0;
                upload_sequence = 0;
                upload_crc32 = 0xFFFFFFFFUL;
                upload_have_frame = 0;


                uart2_putc('E');
                uart2_putc(0x0D);
                uart2_putc(0x0A);
            }
            else
            {

                if (!eeprom_clear_unused(eeprom_upload_size))
                {
                    error = 'E';
                    goto upload_abort;
                }


                if (!application_marker_write(flash_upload_size, flash_final_crc))
                {
                    error = 'M';
                    goto upload_abort;
                }

                upload_active = 0;
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
        upload_active = 0;
    }
}






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

static _Bool parse_decimal_u16(const char **cursor, uint16_t *value)
{
    uint16_t accumulator = 0;
    uint8_t digits = 0;
    uint8_t digit;

    while (**cursor >= '0' && **cursor <= '9')
    {
        digit = (uint8_t)(**cursor - '0');

        if (accumulator > 6553u ||
            (accumulator == 6553u && digit > 5u))
            return 0;

        accumulator = (uint16_t)((accumulator << 3) +
                                 (accumulator << 1) +
                                 digit);
        (*cursor)++;
        digits++;
    }

    if (digits == 0u)
        return 0;

    *value = (uint16_t)accumulator;
    return 1;
}

static _Bool parse_crc32_hex(const char **cursor, uint32_t *value)
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
            return 0;

        crc = (crc << 4) | nibble;
    }

    *value = crc;
    return 1;
}





static _Bool parse_upload_command(const char *cmd)
{
    const char *p = cmd;
    char error;


    if (*p++ != 'U' || *p++ != 'P' ||
        *p++ != 'L' || *p++ != 'O' ||
        *p++ != 'A' || *p++ != 'D' ||
        *p++ != ' ')
        return 0;

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

    if (parsed_flash_size == 0u || parsed_flash_size > (0xFFC0u - 0x1000u) ||
        parsed_eeprom_size == 0u || parsed_eeprom_size > 1024u)
    {
        error = 'S';
        goto upload_command_error;
    }

    if (upload_active)
    {
        error = 'B';
        goto upload_command_error;
    }


    if (!flash_erase_row(0xFFC0u))
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
    upload_have_frame = 0;
    upload_phase = 0u;

    flash_row_address = 0x1000u;
    flash_row_fill = 0;

    flash_fill_buffer(0u, 64u);

    upload_active = 1;
    uart2_putc('R');
    uart2_putc(0x0D);
    uart2_putc(0x0A);
    return 1;

upload_command_error:
    uart2_error(error);
    return 1;
}
# 1043 "main.c"
static void reset_to_bootloader(void)
{
    while (!TXSTA2bits.TRMT) {
        __asm(" clrwdt");
    }

    __asm("RESET");

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
    char line[36u];
    uint8_t count = 0;
    uint8_t ch;

    INTCONbits.GIE = 0;
    INTCONbits.PEIE = 0;





    TRISBbits.TRISB6 = 1;


    if (PORTBbits.RB6 && application_marker_valid())
    {
        __asm("GOTO 0x1000");
    }


    upload_crc32 = 0xFFFFFFFFUL;
    flash_row_address = 0x1000u;

    uart2_init();

    for (;;) {
        __asm(" clrwdt");
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
                if (count < (36u - 1u)) {
                    line[count++] = (char)ch;
                } else {
                    count = 0;
                    uart2_error('L');
                }
            }
        }
    }
}
