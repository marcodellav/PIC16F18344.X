subtitle "Microchip MPLAB XC8 C Compiler v2.31 (Free license) build 20201012212115 Og1 "

pagewidth 120

	opt flic

	processor	16F18344
include "/Applications/microchip/xc8/v2.31/pic/include/proc/16f18344.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 55 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INDF0 equ 00h ;# 
# 75 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INDF1 equ 01h ;# 
# 95 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PCL equ 02h ;# 
# 115 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
STATUS equ 03h ;# 
# 178 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR0L equ 04h ;# 
# 198 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR0H equ 05h ;# 
# 222 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR1L equ 06h ;# 
# 242 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR1H equ 07h ;# 
# 262 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BSR equ 08h ;# 
# 314 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WREG equ 09h ;# 
# 334 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PCLATH equ 0Ah ;# 
# 354 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INTCON equ 0Bh ;# 
# 387 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PORTA equ 0Ch ;# 
# 437 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PORTB equ 0Dh ;# 
# 476 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PORTC equ 0Eh ;# 
# 538 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR0 equ 010h ;# 
# 571 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR1 equ 011h ;# 
# 633 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR2 equ 012h ;# 
# 684 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR3 equ 013h ;# 
# 746 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR4 equ 014h ;# 
# 808 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR0L equ 015h ;# 
# 813 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR0 equ 015h ;# 
# 946 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR0H equ 016h ;# 
# 951 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PR0 equ 016h ;# 
# 1200 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T0CON0 equ 017h ;# 
# 1265 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T0CON1 equ 018h ;# 
# 1342 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR1 equ 019h ;# 
# 1349 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR1L equ 019h ;# 
# 1369 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR1H equ 01Ah ;# 
# 1389 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T1CON equ 01Bh ;# 
# 1461 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T1GCON equ 01Ch ;# 
# 1531 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR2 equ 01Dh ;# 
# 1551 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PR2 equ 01Eh ;# 
# 1571 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T2CON equ 01Fh ;# 
# 1642 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TRISA equ 08Ch ;# 
# 1687 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TRISB equ 08Dh ;# 
# 1726 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TRISC equ 08Eh ;# 
# 1788 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE0 equ 090h ;# 
# 1821 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE1 equ 091h ;# 
# 1883 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE2 equ 092h ;# 
# 1934 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE3 equ 093h ;# 
# 1996 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE4 equ 094h ;# 
# 2058 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WDTCON equ 097h ;# 
# 2117 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADRES equ 09Bh ;# 
# 2124 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADRESL equ 09Bh ;# 
# 2144 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADRESH equ 09Ch ;# 
# 2164 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADCON0 equ 09Dh ;# 
# 2250 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADCON1 equ 09Eh ;# 
# 2322 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADACT equ 09Fh ;# 
# 2374 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
LATA equ 010Ch ;# 
# 2419 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
LATB equ 010Dh ;# 
# 2458 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
LATC equ 010Eh ;# 
# 2520 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CM1CON0 equ 0111h ;# 
# 2572 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CM1CON1 equ 0112h ;# 
# 2648 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CM2CON0 equ 0113h ;# 
# 2700 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CM2CON1 equ 0114h ;# 
# 2776 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CMOUT equ 0115h ;# 
# 2802 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BORCON equ 0116h ;# 
# 2829 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FVRCON equ 0117h ;# 
# 2905 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
DACCON0 equ 0118h ;# 
# 2961 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
DACCON1 equ 0119h ;# 
# 3013 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ANSELA equ 018Ch ;# 
# 3058 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ANSELB equ 018Dh ;# 
# 3097 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ANSELC equ 018Eh ;# 
# 3159 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
VREGCON equ 0197h ;# 
# 3180 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC1REG equ 0199h ;# 
# 3185 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RCREG equ 0199h ;# 
# 3189 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RCREG1 equ 0199h ;# 
# 3234 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TX1REG equ 019Ah ;# 
# 3239 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXREG1 equ 019Ah ;# 
# 3243 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXREG equ 019Ah ;# 
# 3288 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SP1BRG equ 019Bh ;# 
# 3295 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SP1BRGL equ 019Bh ;# 
# 3300 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRG equ 019Bh ;# 
# 3304 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRG1 equ 019Bh ;# 
# 3308 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRGL equ 019Bh ;# 
# 3365 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SP1BRGH equ 019Ch ;# 
# 3370 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRGH equ 019Ch ;# 
# 3374 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRGH1 equ 019Ch ;# 
# 3419 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC1STA equ 019Dh ;# 
# 3424 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RCSTA1 equ 019Dh ;# 
# 3428 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RCSTA equ 019Dh ;# 
# 3599 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TX1STA equ 019Eh ;# 
# 3604 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXSTA1 equ 019Eh ;# 
# 3608 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXSTA equ 019Eh ;# 
# 3779 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUD1CON equ 019Fh ;# 
# 3784 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUDCON1 equ 019Fh ;# 
# 3788 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUDCTL1 equ 019Fh ;# 
# 3792 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUDCON equ 019Fh ;# 
# 3796 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUDCTL equ 019Fh ;# 
# 4025 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WPUA equ 020Ch ;# 
# 4075 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WPUB equ 020Dh ;# 
# 4114 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WPUC equ 020Eh ;# 
# 4176 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1BUF equ 0211h ;# 
# 4181 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPBUF equ 0211h ;# 
# 4430 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1ADD equ 0212h ;# 
# 4435 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPADD equ 0212h ;# 
# 4684 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1MSK equ 0213h ;# 
# 4689 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPMSK equ 0213h ;# 
# 4938 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1STAT equ 0214h ;# 
# 4943 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPSTAT equ 0214h ;# 
# 5060 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CON1 equ 0215h ;# 
# 5065 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPCON equ 0215h ;# 
# 5069 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPCON1 equ 0215h ;# 
# 5073 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CON equ 0215h ;# 
# 5330 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CON2 equ 0216h ;# 
# 5335 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPCON2 equ 0216h ;# 
# 5452 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CON3 equ 0217h ;# 
# 5457 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPCON3 equ 0217h ;# 
# 5574 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ODCONA equ 028Ch ;# 
# 5619 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ODCONB equ 028Dh ;# 
# 5658 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ODCONC equ 028Eh ;# 
# 5720 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR1 equ 0291h ;# 
# 5727 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR1L equ 0291h ;# 
# 5747 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR1H equ 0292h ;# 
# 5767 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP1CON equ 0293h ;# 
# 5832 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP1CAP equ 0294h ;# 
# 5878 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR2 equ 0295h ;# 
# 5885 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR2L equ 0295h ;# 
# 5905 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR2H equ 0296h ;# 
# 5925 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP2CON equ 0297h ;# 
# 5990 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP2CAP equ 0298h ;# 
# 6036 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPTMRS equ 029Fh ;# 
# 6124 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SLRCONA equ 030Ch ;# 
# 6169 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SLRCONB equ 030Dh ;# 
# 6208 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SLRCONC equ 030Eh ;# 
# 6270 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR3 equ 0311h ;# 
# 6277 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR3L equ 0311h ;# 
# 6297 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR3H equ 0312h ;# 
# 6317 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP3CON equ 0313h ;# 
# 6382 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP3CAP equ 0314h ;# 
# 6428 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR4 equ 0315h ;# 
# 6435 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR4L equ 0315h ;# 
# 6455 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR4H equ 0316h ;# 
# 6475 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP4CON equ 0317h ;# 
# 6540 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP4CAP equ 0318h ;# 
# 6586 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INLVLA equ 038Ch ;# 
# 6636 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INLVLB equ 038Dh ;# 
# 6675 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INLVLC equ 038Eh ;# 
# 6737 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCAP equ 0391h ;# 
# 6787 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCAN equ 0392h ;# 
# 6837 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCAF equ 0393h ;# 
# 6887 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCBP equ 0394h ;# 
# 6926 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCBN equ 0395h ;# 
# 6965 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCBF equ 0396h ;# 
# 7004 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCCP equ 0397h ;# 
# 7066 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCCN equ 0398h ;# 
# 7128 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCCF equ 0399h ;# 
# 7190 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLKRCON equ 039Ah ;# 
# 7255 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCON equ 039Ch ;# 
# 7295 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDSRC equ 039Dh ;# 
# 7341 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCARH equ 039Eh ;# 
# 7400 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCARL equ 039Fh ;# 
# 7459 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR3 equ 0411h ;# 
# 7466 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR3L equ 0411h ;# 
# 7486 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR3H equ 0412h ;# 
# 7506 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T3CON equ 0413h ;# 
# 7578 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T3GCON equ 0414h ;# 
# 7648 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR4 equ 0415h ;# 
# 7668 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PR4 equ 0416h ;# 
# 7688 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T4CON equ 0417h ;# 
# 7759 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR5 equ 0418h ;# 
# 7766 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR5L equ 0418h ;# 
# 7786 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR5H equ 0419h ;# 
# 7806 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T5CON equ 041Ah ;# 
# 7878 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T5GCON equ 041Bh ;# 
# 7948 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR6 equ 041Ch ;# 
# 7968 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PR6 equ 041Dh ;# 
# 7988 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T6CON equ 041Eh ;# 
# 8059 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCDCON equ 041Fh ;# 
# 8102 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1ACC equ 0498h ;# 
# 8109 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1ACCL equ 0498h ;# 
# 8129 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1ACCH equ 0499h ;# 
# 8149 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1ACCU equ 049Ah ;# 
# 8171 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1INC equ 049Bh ;# 
# 8178 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1INCL equ 049Bh ;# 
# 8198 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1INCH equ 049Ch ;# 
# 8218 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1INCU equ 049Dh ;# 
# 8238 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1CON equ 049Eh ;# 
# 8278 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1CLK equ 049Fh ;# 
# 8305 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM5DCL equ 0617h ;# 
# 8341 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM5DCH equ 0618h ;# 
# 8411 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM5CON equ 0619h ;# 
# 8416 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM5CON0 equ 0619h ;# 
# 8477 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM6DCL equ 061Ah ;# 
# 8513 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM6DCH equ 061Bh ;# 
# 8583 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM6CON equ 061Ch ;# 
# 8588 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM6CON0 equ 061Ch ;# 
# 8649 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWMTMRS equ 061Fh ;# 
# 8701 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1CLKCON equ 0691h ;# 
# 8729 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1DAT equ 0692h ;# 
# 8775 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1DBR equ 0693h ;# 
# 8879 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1DBF equ 0694h ;# 
# 8983 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1CON0 equ 0695h ;# 
# 9084 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1CON1 equ 0696h ;# 
# 9162 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1AS0 equ 0697h ;# 
# 9282 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1AS1 equ 0698h ;# 
# 9326 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1STR equ 0699h ;# 
# 9438 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2CLKCON equ 0711h ;# 
# 9466 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2DAT equ 0712h ;# 
# 9512 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2DBR equ 0713h ;# 
# 9616 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2DBF equ 0714h ;# 
# 9720 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2CON0 equ 0715h ;# 
# 9821 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2CON1 equ 0716h ;# 
# 9899 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2AS0 equ 0717h ;# 
# 10019 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2AS1 equ 0718h ;# 
# 10063 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2STR equ 0719h ;# 
# 10175 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMADR equ 0891h ;# 
# 10180 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEADR equ 0891h ;# 
# 10184 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMADR equ 0891h ;# 
# 10191 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMADRL equ 0891h ;# 
# 10196 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEADRL equ 0891h ;# 
# 10200 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMADRL equ 0891h ;# 
# 10443 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMADRH equ 0892h ;# 
# 10448 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEADRH equ 0892h ;# 
# 10452 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMADRH equ 0892h ;# 
# 10677 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMDAT equ 0893h ;# 
# 10682 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEDAT equ 0893h ;# 
# 10686 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMDAT equ 0893h ;# 
# 10693 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMDATL equ 0893h ;# 
# 10698 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEDATL equ 0893h ;# 
# 10702 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMDATL equ 0893h ;# 
# 10945 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMDATH equ 0894h ;# 
# 10950 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEDATH equ 0894h ;# 
# 10954 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMDATH equ 0894h ;# 
# 11161 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMCON1 equ 0895h ;# 
# 11166 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EECON1 equ 0895h ;# 
# 11170 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMCON1 equ 0895h ;# 
# 11350 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMCON2 equ 0896h ;# 
# 11355 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EECON2 equ 0896h ;# 
# 11359 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMCON2 equ 0896h ;# 
# 11452 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PCON0 equ 089Bh ;# 
# 11509 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD0 equ 0911h ;# 
# 11554 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD1 equ 0912h ;# 
# 11616 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD2 equ 0913h ;# 
# 11656 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD3 equ 0914h ;# 
# 11718 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD4 equ 0915h ;# 
# 11746 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD5 equ 0916h ;# 
# 11790 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CPUDOZE equ 0918h ;# 
# 11855 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCCON1 equ 0919h ;# 
# 11925 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCCON2 equ 091Ah ;# 
# 11995 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCCON3 equ 091Bh ;# 
# 12040 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCSTAT1 equ 091Ch ;# 
# 12092 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCEN equ 091Dh ;# 
# 12138 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCTUNE equ 091Eh ;# 
# 12196 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCFRQ equ 091Fh ;# 
# 12242 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PPSLOCK equ 0E0Fh ;# 
# 12262 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INTPPS equ 0E10h ;# 
# 12314 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T0CKIPPS equ 0E11h ;# 
# 12366 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T1CKIPPS equ 0E12h ;# 
# 12418 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T1GPPS equ 0E13h ;# 
# 12470 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP1PPS equ 0E14h ;# 
# 12522 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP2PPS equ 0E15h ;# 
# 12574 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP3PPS equ 0E16h ;# 
# 12626 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP4PPS equ 0E17h ;# 
# 12678 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1PPS equ 0E18h ;# 
# 12730 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2PPS equ 0E19h ;# 
# 12782 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCIN1PPS equ 0E1Ah ;# 
# 12834 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCIN2PPS equ 0E1Bh ;# 
# 12886 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDMINPPS equ 0E1Ch ;# 
# 12938 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CLKPPS equ 0E20h ;# 
# 12990 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1DATPPS equ 0E21h ;# 
# 13042 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1SSPPS equ 0E22h ;# 
# 13094 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RXPPS equ 0E24h ;# 
# 13146 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXPPS equ 0E25h ;# 
# 13198 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCIN0PPS equ 0E28h ;# 
# 13250 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCIN1PPS equ 0E29h ;# 
# 13302 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCIN2PPS equ 0E2Ah ;# 
# 13354 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCIN3PPS equ 0E2Bh ;# 
# 13406 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T3CKIPPS equ 0E2Ch ;# 
# 13426 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T3GPPS equ 0E2Dh ;# 
# 13446 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T5CKIPPS equ 0E2Eh ;# 
# 13466 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T5GPPS equ 0E2Fh ;# 
# 13486 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA0PPS equ 0E90h ;# 
# 13538 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA1PPS equ 0E91h ;# 
# 13590 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA2PPS equ 0E92h ;# 
# 13642 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA4PPS equ 0E94h ;# 
# 13694 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA5PPS equ 0E95h ;# 
# 13746 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RB4PPS equ 0E9Ch ;# 
# 13798 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RB5PPS equ 0E9Dh ;# 
# 13850 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RB6PPS equ 0E9Eh ;# 
# 13902 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RB7PPS equ 0E9Fh ;# 
# 13954 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC0PPS equ 0EA0h ;# 
# 14006 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC1PPS equ 0EA1h ;# 
# 14058 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC2PPS equ 0EA2h ;# 
# 14110 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC3PPS equ 0EA3h ;# 
# 14162 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC4PPS equ 0EA4h ;# 
# 14214 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC5PPS equ 0EA5h ;# 
# 14266 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC6PPS equ 0EA6h ;# 
# 14318 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC7PPS equ 0EA7h ;# 
# 14370 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCDATA equ 0F0Fh ;# 
# 14408 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1CON equ 0F10h ;# 
# 14526 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1POL equ 0F11h ;# 
# 14604 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1SEL0 equ 0F12h ;# 
# 14708 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1SEL1 equ 0F13h ;# 
# 14812 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1SEL2 equ 0F14h ;# 
# 14916 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1SEL3 equ 0F15h ;# 
# 15020 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1GLS0 equ 0F16h ;# 
# 15132 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1GLS1 equ 0F17h ;# 
# 15244 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1GLS2 equ 0F18h ;# 
# 15356 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1GLS3 equ 0F19h ;# 
# 15468 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2CON equ 0F1Ah ;# 
# 15586 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2POL equ 0F1Bh ;# 
# 15664 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2SEL0 equ 0F1Ch ;# 
# 15768 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2SEL1 equ 0F1Dh ;# 
# 15872 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2SEL2 equ 0F1Eh ;# 
# 15976 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2SEL3 equ 0F1Fh ;# 
# 16080 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2GLS0 equ 0F20h ;# 
# 16192 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2GLS1 equ 0F21h ;# 
# 16304 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2GLS2 equ 0F22h ;# 
# 16416 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2GLS3 equ 0F23h ;# 
# 16528 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3CON equ 0F24h ;# 
# 16646 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3POL equ 0F25h ;# 
# 16724 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3SEL0 equ 0F26h ;# 
# 16828 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3SEL1 equ 0F27h ;# 
# 16932 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3SEL2 equ 0F28h ;# 
# 17036 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3SEL3 equ 0F29h ;# 
# 17140 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3GLS0 equ 0F2Ah ;# 
# 17252 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3GLS1 equ 0F2Bh ;# 
# 17364 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3GLS2 equ 0F2Ch ;# 
# 17476 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3GLS3 equ 0F2Dh ;# 
# 17588 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4CON equ 0F2Eh ;# 
# 17706 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4POL equ 0F2Fh ;# 
# 17784 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4SEL0 equ 0F30h ;# 
# 17888 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4SEL1 equ 0F31h ;# 
# 17992 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4SEL2 equ 0F32h ;# 
# 18096 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4SEL3 equ 0F33h ;# 
# 18200 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4GLS0 equ 0F34h ;# 
# 18312 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4GLS1 equ 0F35h ;# 
# 18424 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4GLS2 equ 0F36h ;# 
# 18536 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4GLS3 equ 0F37h ;# 
# 18648 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
STATUS_SHAD equ 0FE4h ;# 
# 18680 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WREG_SHAD equ 0FE5h ;# 
# 18700 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BSR_SHAD equ 0FE6h ;# 
# 18720 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PCLATH_SHAD equ 0FE7h ;# 
# 18740 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR0L_SHAD equ 0FE8h ;# 
# 18760 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR0H_SHAD equ 0FE9h ;# 
# 18780 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR1L_SHAD equ 0FEAh ;# 
# 18800 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR1H_SHAD equ 0FEBh ;# 
# 18820 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
STKPTR equ 0FEDh ;# 
# 18840 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TOSL equ 0FEEh ;# 
# 18860 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TOSH equ 0FEFh ;# 
# 55 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INDF0 equ 00h ;# 
# 75 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INDF1 equ 01h ;# 
# 95 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PCL equ 02h ;# 
# 115 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
STATUS equ 03h ;# 
# 178 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR0L equ 04h ;# 
# 198 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR0H equ 05h ;# 
# 222 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR1L equ 06h ;# 
# 242 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR1H equ 07h ;# 
# 262 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BSR equ 08h ;# 
# 314 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WREG equ 09h ;# 
# 334 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PCLATH equ 0Ah ;# 
# 354 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INTCON equ 0Bh ;# 
# 387 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PORTA equ 0Ch ;# 
# 437 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PORTB equ 0Dh ;# 
# 476 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PORTC equ 0Eh ;# 
# 538 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR0 equ 010h ;# 
# 571 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR1 equ 011h ;# 
# 633 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR2 equ 012h ;# 
# 684 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR3 equ 013h ;# 
# 746 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIR4 equ 014h ;# 
# 808 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR0L equ 015h ;# 
# 813 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR0 equ 015h ;# 
# 946 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR0H equ 016h ;# 
# 951 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PR0 equ 016h ;# 
# 1200 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T0CON0 equ 017h ;# 
# 1265 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T0CON1 equ 018h ;# 
# 1342 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR1 equ 019h ;# 
# 1349 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR1L equ 019h ;# 
# 1369 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR1H equ 01Ah ;# 
# 1389 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T1CON equ 01Bh ;# 
# 1461 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T1GCON equ 01Ch ;# 
# 1531 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR2 equ 01Dh ;# 
# 1551 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PR2 equ 01Eh ;# 
# 1571 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T2CON equ 01Fh ;# 
# 1642 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TRISA equ 08Ch ;# 
# 1687 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TRISB equ 08Dh ;# 
# 1726 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TRISC equ 08Eh ;# 
# 1788 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE0 equ 090h ;# 
# 1821 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE1 equ 091h ;# 
# 1883 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE2 equ 092h ;# 
# 1934 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE3 equ 093h ;# 
# 1996 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PIE4 equ 094h ;# 
# 2058 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WDTCON equ 097h ;# 
# 2117 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADRES equ 09Bh ;# 
# 2124 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADRESL equ 09Bh ;# 
# 2144 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADRESH equ 09Ch ;# 
# 2164 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADCON0 equ 09Dh ;# 
# 2250 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADCON1 equ 09Eh ;# 
# 2322 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ADACT equ 09Fh ;# 
# 2374 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
LATA equ 010Ch ;# 
# 2419 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
LATB equ 010Dh ;# 
# 2458 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
LATC equ 010Eh ;# 
# 2520 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CM1CON0 equ 0111h ;# 
# 2572 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CM1CON1 equ 0112h ;# 
# 2648 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CM2CON0 equ 0113h ;# 
# 2700 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CM2CON1 equ 0114h ;# 
# 2776 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CMOUT equ 0115h ;# 
# 2802 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BORCON equ 0116h ;# 
# 2829 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FVRCON equ 0117h ;# 
# 2905 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
DACCON0 equ 0118h ;# 
# 2961 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
DACCON1 equ 0119h ;# 
# 3013 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ANSELA equ 018Ch ;# 
# 3058 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ANSELB equ 018Dh ;# 
# 3097 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ANSELC equ 018Eh ;# 
# 3159 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
VREGCON equ 0197h ;# 
# 3180 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC1REG equ 0199h ;# 
# 3185 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RCREG equ 0199h ;# 
# 3189 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RCREG1 equ 0199h ;# 
# 3234 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TX1REG equ 019Ah ;# 
# 3239 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXREG1 equ 019Ah ;# 
# 3243 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXREG equ 019Ah ;# 
# 3288 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SP1BRG equ 019Bh ;# 
# 3295 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SP1BRGL equ 019Bh ;# 
# 3300 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRG equ 019Bh ;# 
# 3304 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRG1 equ 019Bh ;# 
# 3308 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRGL equ 019Bh ;# 
# 3365 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SP1BRGH equ 019Ch ;# 
# 3370 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRGH equ 019Ch ;# 
# 3374 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SPBRGH1 equ 019Ch ;# 
# 3419 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC1STA equ 019Dh ;# 
# 3424 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RCSTA1 equ 019Dh ;# 
# 3428 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RCSTA equ 019Dh ;# 
# 3599 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TX1STA equ 019Eh ;# 
# 3604 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXSTA1 equ 019Eh ;# 
# 3608 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXSTA equ 019Eh ;# 
# 3779 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUD1CON equ 019Fh ;# 
# 3784 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUDCON1 equ 019Fh ;# 
# 3788 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUDCTL1 equ 019Fh ;# 
# 3792 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUDCON equ 019Fh ;# 
# 3796 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BAUDCTL equ 019Fh ;# 
# 4025 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WPUA equ 020Ch ;# 
# 4075 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WPUB equ 020Dh ;# 
# 4114 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WPUC equ 020Eh ;# 
# 4176 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1BUF equ 0211h ;# 
# 4181 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPBUF equ 0211h ;# 
# 4430 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1ADD equ 0212h ;# 
# 4435 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPADD equ 0212h ;# 
# 4684 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1MSK equ 0213h ;# 
# 4689 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPMSK equ 0213h ;# 
# 4938 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1STAT equ 0214h ;# 
# 4943 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPSTAT equ 0214h ;# 
# 5060 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CON1 equ 0215h ;# 
# 5065 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPCON equ 0215h ;# 
# 5069 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPCON1 equ 0215h ;# 
# 5073 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CON equ 0215h ;# 
# 5330 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CON2 equ 0216h ;# 
# 5335 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPCON2 equ 0216h ;# 
# 5452 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CON3 equ 0217h ;# 
# 5457 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSPCON3 equ 0217h ;# 
# 5574 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ODCONA equ 028Ch ;# 
# 5619 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ODCONB equ 028Dh ;# 
# 5658 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
ODCONC equ 028Eh ;# 
# 5720 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR1 equ 0291h ;# 
# 5727 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR1L equ 0291h ;# 
# 5747 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR1H equ 0292h ;# 
# 5767 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP1CON equ 0293h ;# 
# 5832 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP1CAP equ 0294h ;# 
# 5878 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR2 equ 0295h ;# 
# 5885 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR2L equ 0295h ;# 
# 5905 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR2H equ 0296h ;# 
# 5925 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP2CON equ 0297h ;# 
# 5990 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP2CAP equ 0298h ;# 
# 6036 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPTMRS equ 029Fh ;# 
# 6124 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SLRCONA equ 030Ch ;# 
# 6169 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SLRCONB equ 030Dh ;# 
# 6208 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SLRCONC equ 030Eh ;# 
# 6270 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR3 equ 0311h ;# 
# 6277 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR3L equ 0311h ;# 
# 6297 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR3H equ 0312h ;# 
# 6317 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP3CON equ 0313h ;# 
# 6382 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP3CAP equ 0314h ;# 
# 6428 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR4 equ 0315h ;# 
# 6435 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR4L equ 0315h ;# 
# 6455 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCPR4H equ 0316h ;# 
# 6475 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP4CON equ 0317h ;# 
# 6540 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP4CAP equ 0318h ;# 
# 6586 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INLVLA equ 038Ch ;# 
# 6636 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INLVLB equ 038Dh ;# 
# 6675 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INLVLC equ 038Eh ;# 
# 6737 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCAP equ 0391h ;# 
# 6787 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCAN equ 0392h ;# 
# 6837 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCAF equ 0393h ;# 
# 6887 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCBP equ 0394h ;# 
# 6926 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCBN equ 0395h ;# 
# 6965 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCBF equ 0396h ;# 
# 7004 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCCP equ 0397h ;# 
# 7066 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCCN equ 0398h ;# 
# 7128 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
IOCCF equ 0399h ;# 
# 7190 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLKRCON equ 039Ah ;# 
# 7255 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCON equ 039Ch ;# 
# 7295 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDSRC equ 039Dh ;# 
# 7341 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCARH equ 039Eh ;# 
# 7400 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCARL equ 039Fh ;# 
# 7459 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR3 equ 0411h ;# 
# 7466 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR3L equ 0411h ;# 
# 7486 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR3H equ 0412h ;# 
# 7506 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T3CON equ 0413h ;# 
# 7578 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T3GCON equ 0414h ;# 
# 7648 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR4 equ 0415h ;# 
# 7668 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PR4 equ 0416h ;# 
# 7688 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T4CON equ 0417h ;# 
# 7759 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR5 equ 0418h ;# 
# 7766 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR5L equ 0418h ;# 
# 7786 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR5H equ 0419h ;# 
# 7806 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T5CON equ 041Ah ;# 
# 7878 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T5GCON equ 041Bh ;# 
# 7948 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TMR6 equ 041Ch ;# 
# 7968 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PR6 equ 041Dh ;# 
# 7988 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T6CON equ 041Eh ;# 
# 8059 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCDCON equ 041Fh ;# 
# 8102 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1ACC equ 0498h ;# 
# 8109 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1ACCL equ 0498h ;# 
# 8129 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1ACCH equ 0499h ;# 
# 8149 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1ACCU equ 049Ah ;# 
# 8171 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1INC equ 049Bh ;# 
# 8178 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1INCL equ 049Bh ;# 
# 8198 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1INCH equ 049Ch ;# 
# 8218 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1INCU equ 049Dh ;# 
# 8238 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1CON equ 049Eh ;# 
# 8278 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NCO1CLK equ 049Fh ;# 
# 8305 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM5DCL equ 0617h ;# 
# 8341 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM5DCH equ 0618h ;# 
# 8411 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM5CON equ 0619h ;# 
# 8416 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM5CON0 equ 0619h ;# 
# 8477 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM6DCL equ 061Ah ;# 
# 8513 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM6DCH equ 061Bh ;# 
# 8583 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM6CON equ 061Ch ;# 
# 8588 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWM6CON0 equ 061Ch ;# 
# 8649 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PWMTMRS equ 061Fh ;# 
# 8701 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1CLKCON equ 0691h ;# 
# 8729 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1DAT equ 0692h ;# 
# 8775 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1DBR equ 0693h ;# 
# 8879 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1DBF equ 0694h ;# 
# 8983 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1CON0 equ 0695h ;# 
# 9084 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1CON1 equ 0696h ;# 
# 9162 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1AS0 equ 0697h ;# 
# 9282 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1AS1 equ 0698h ;# 
# 9326 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1STR equ 0699h ;# 
# 9438 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2CLKCON equ 0711h ;# 
# 9466 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2DAT equ 0712h ;# 
# 9512 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2DBR equ 0713h ;# 
# 9616 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2DBF equ 0714h ;# 
# 9720 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2CON0 equ 0715h ;# 
# 9821 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2CON1 equ 0716h ;# 
# 9899 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2AS0 equ 0717h ;# 
# 10019 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2AS1 equ 0718h ;# 
# 10063 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2STR equ 0719h ;# 
# 10175 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMADR equ 0891h ;# 
# 10180 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEADR equ 0891h ;# 
# 10184 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMADR equ 0891h ;# 
# 10191 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMADRL equ 0891h ;# 
# 10196 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEADRL equ 0891h ;# 
# 10200 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMADRL equ 0891h ;# 
# 10443 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMADRH equ 0892h ;# 
# 10448 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEADRH equ 0892h ;# 
# 10452 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMADRH equ 0892h ;# 
# 10677 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMDAT equ 0893h ;# 
# 10682 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEDAT equ 0893h ;# 
# 10686 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMDAT equ 0893h ;# 
# 10693 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMDATL equ 0893h ;# 
# 10698 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEDATL equ 0893h ;# 
# 10702 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMDATL equ 0893h ;# 
# 10945 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMDATH equ 0894h ;# 
# 10950 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EEDATH equ 0894h ;# 
# 10954 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMDATH equ 0894h ;# 
# 11161 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMCON1 equ 0895h ;# 
# 11166 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EECON1 equ 0895h ;# 
# 11170 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMCON1 equ 0895h ;# 
# 11350 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
NVMCON2 equ 0896h ;# 
# 11355 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
EECON2 equ 0896h ;# 
# 11359 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMCON2 equ 0896h ;# 
# 11452 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PCON0 equ 089Bh ;# 
# 11509 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD0 equ 0911h ;# 
# 11554 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD1 equ 0912h ;# 
# 11616 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD2 equ 0913h ;# 
# 11656 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD3 equ 0914h ;# 
# 11718 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD4 equ 0915h ;# 
# 11746 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PMD5 equ 0916h ;# 
# 11790 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CPUDOZE equ 0918h ;# 
# 11855 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCCON1 equ 0919h ;# 
# 11925 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCCON2 equ 091Ah ;# 
# 11995 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCCON3 equ 091Bh ;# 
# 12040 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCSTAT1 equ 091Ch ;# 
# 12092 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCEN equ 091Dh ;# 
# 12138 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCTUNE equ 091Eh ;# 
# 12196 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
OSCFRQ equ 091Fh ;# 
# 12242 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PPSLOCK equ 0E0Fh ;# 
# 12262 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
INTPPS equ 0E10h ;# 
# 12314 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T0CKIPPS equ 0E11h ;# 
# 12366 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T1CKIPPS equ 0E12h ;# 
# 12418 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T1GPPS equ 0E13h ;# 
# 12470 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP1PPS equ 0E14h ;# 
# 12522 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP2PPS equ 0E15h ;# 
# 12574 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP3PPS equ 0E16h ;# 
# 12626 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CCP4PPS equ 0E17h ;# 
# 12678 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG1PPS equ 0E18h ;# 
# 12730 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CWG2PPS equ 0E19h ;# 
# 12782 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCIN1PPS equ 0E1Ah ;# 
# 12834 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDCIN2PPS equ 0E1Bh ;# 
# 12886 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
MDMINPPS equ 0E1Ch ;# 
# 12938 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1CLKPPS equ 0E20h ;# 
# 12990 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1DATPPS equ 0E21h ;# 
# 13042 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
SSP1SSPPS equ 0E22h ;# 
# 13094 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RXPPS equ 0E24h ;# 
# 13146 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TXPPS equ 0E25h ;# 
# 13198 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCIN0PPS equ 0E28h ;# 
# 13250 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCIN1PPS equ 0E29h ;# 
# 13302 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCIN2PPS equ 0E2Ah ;# 
# 13354 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCIN3PPS equ 0E2Bh ;# 
# 13406 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T3CKIPPS equ 0E2Ch ;# 
# 13426 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T3GPPS equ 0E2Dh ;# 
# 13446 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T5CKIPPS equ 0E2Eh ;# 
# 13466 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
T5GPPS equ 0E2Fh ;# 
# 13486 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA0PPS equ 0E90h ;# 
# 13538 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA1PPS equ 0E91h ;# 
# 13590 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA2PPS equ 0E92h ;# 
# 13642 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA4PPS equ 0E94h ;# 
# 13694 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RA5PPS equ 0E95h ;# 
# 13746 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RB4PPS equ 0E9Ch ;# 
# 13798 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RB5PPS equ 0E9Dh ;# 
# 13850 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RB6PPS equ 0E9Eh ;# 
# 13902 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RB7PPS equ 0E9Fh ;# 
# 13954 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC0PPS equ 0EA0h ;# 
# 14006 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC1PPS equ 0EA1h ;# 
# 14058 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC2PPS equ 0EA2h ;# 
# 14110 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC3PPS equ 0EA3h ;# 
# 14162 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC4PPS equ 0EA4h ;# 
# 14214 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC5PPS equ 0EA5h ;# 
# 14266 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC6PPS equ 0EA6h ;# 
# 14318 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
RC7PPS equ 0EA7h ;# 
# 14370 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLCDATA equ 0F0Fh ;# 
# 14408 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1CON equ 0F10h ;# 
# 14526 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1POL equ 0F11h ;# 
# 14604 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1SEL0 equ 0F12h ;# 
# 14708 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1SEL1 equ 0F13h ;# 
# 14812 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1SEL2 equ 0F14h ;# 
# 14916 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1SEL3 equ 0F15h ;# 
# 15020 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1GLS0 equ 0F16h ;# 
# 15132 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1GLS1 equ 0F17h ;# 
# 15244 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1GLS2 equ 0F18h ;# 
# 15356 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC1GLS3 equ 0F19h ;# 
# 15468 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2CON equ 0F1Ah ;# 
# 15586 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2POL equ 0F1Bh ;# 
# 15664 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2SEL0 equ 0F1Ch ;# 
# 15768 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2SEL1 equ 0F1Dh ;# 
# 15872 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2SEL2 equ 0F1Eh ;# 
# 15976 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2SEL3 equ 0F1Fh ;# 
# 16080 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2GLS0 equ 0F20h ;# 
# 16192 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2GLS1 equ 0F21h ;# 
# 16304 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2GLS2 equ 0F22h ;# 
# 16416 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC2GLS3 equ 0F23h ;# 
# 16528 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3CON equ 0F24h ;# 
# 16646 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3POL equ 0F25h ;# 
# 16724 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3SEL0 equ 0F26h ;# 
# 16828 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3SEL1 equ 0F27h ;# 
# 16932 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3SEL2 equ 0F28h ;# 
# 17036 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3SEL3 equ 0F29h ;# 
# 17140 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3GLS0 equ 0F2Ah ;# 
# 17252 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3GLS1 equ 0F2Bh ;# 
# 17364 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3GLS2 equ 0F2Ch ;# 
# 17476 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC3GLS3 equ 0F2Dh ;# 
# 17588 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4CON equ 0F2Eh ;# 
# 17706 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4POL equ 0F2Fh ;# 
# 17784 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4SEL0 equ 0F30h ;# 
# 17888 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4SEL1 equ 0F31h ;# 
# 17992 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4SEL2 equ 0F32h ;# 
# 18096 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4SEL3 equ 0F33h ;# 
# 18200 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4GLS0 equ 0F34h ;# 
# 18312 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4GLS1 equ 0F35h ;# 
# 18424 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4GLS2 equ 0F36h ;# 
# 18536 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
CLC4GLS3 equ 0F37h ;# 
# 18648 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
STATUS_SHAD equ 0FE4h ;# 
# 18680 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
WREG_SHAD equ 0FE5h ;# 
# 18700 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
BSR_SHAD equ 0FE6h ;# 
# 18720 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
PCLATH_SHAD equ 0FE7h ;# 
# 18740 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR0L_SHAD equ 0FE8h ;# 
# 18760 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR0H_SHAD equ 0FE9h ;# 
# 18780 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR1L_SHAD equ 0FEAh ;# 
# 18800 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
FSR1H_SHAD equ 0FEBh ;# 
# 18820 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
STKPTR equ 0FEDh ;# 
# 18840 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TOSL equ 0FEEh ;# 
# 18860 "/Applications/microchip/xc8/v2.31/pic/include/proc/pic16f18344.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_load_dac
	FNCALL	_main,_reset_envelope
	FNCALL	_main,_spi_init
	FNCALL	_main,_time_lookup
	FNCALL	_time_lookup,_flash_read
	FNROOT	_main
	FNCALL	_my_isr,_envelope_control
	FNCALL	_my_isr,i1_load_dac
	FNCALL	intlevel1,_my_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_adc_chans
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	83

;initializer for _adc_chans
	retlw	0Ah
	retlw	0Bh
	retlw	02h
	retlw	03h
	retlw	04h
	retlw	05h
	retlw	06h
	retlw	07h
	global	_time15
	global	_time15_absaddr
_time15_absaddr	set	0x8F0
	global	_time14
	global	_time14_absaddr
_time14_absaddr	set	0x8E0
	global	_time13
	global	_time13_absaddr
_time13_absaddr	set	0x8D0
	global	_time12
	global	_time12_absaddr
_time12_absaddr	set	0x8C0
	global	_time11
	global	_time11_absaddr
_time11_absaddr	set	0x8B0
	global	_time10
	global	_time10_absaddr
_time10_absaddr	set	0x8A0
	global	_time09
	global	_time09_absaddr
_time09_absaddr	set	0x890
	global	_time08
	global	_time08_absaddr
_time08_absaddr	set	0x880
	global	_time07
	global	_time07_absaddr
_time07_absaddr	set	0x870
	global	_time06
	global	_time06_absaddr
_time06_absaddr	set	0x860
	global	_time05
	global	_time05_absaddr
_time05_absaddr	set	0x850
	global	_time04
	global	_time04_absaddr
_time04_absaddr	set	0x840
	global	_time03
	global	_time03_absaddr
_time03_absaddr	set	0x830
	global	_time02
	global	_time02_absaddr
_time02_absaddr	set	0x820
	global	_time01
	global	_time01_absaddr
_time01_absaddr	set	0x810
	global	_time00
	global	_time00_absaddr
_time00_absaddr	set	0x800
	global	_time15
	global	_time15_absaddr
_time15_absaddr	set	0x8F0
psect	_time15_text,class=STRCODE,delta=2,noexec
global __p_time15_text
__p_time15_text:
_time15:
	retlw	0Ch
	retlw	low(0)
	retlw	0Bh
	retlw	low(0)
	retlw	0Ah
	retlw	low(0)
	retlw	09h
	retlw	low(0)
	retlw	08h
	retlw	low(0)
	retlw	08h
	retlw	low(0)
	retlw	07h
	retlw	low(0)
	retlw	07h
	retlw	low(0)
	global __end_of_time15
__end_of_time15:
	global	_time14
	global	_time14_absaddr
_time14_absaddr	set	0x8E0
psect	_time14_text,class=STRCODE,delta=2,noexec
global __p_time14_text
__p_time14_text:
_time14:
	retlw	019h
	retlw	low(0)
	retlw	017h
	retlw	low(0)
	retlw	016h
	retlw	low(0)
	retlw	014h
	retlw	low(0)
	retlw	012h
	retlw	low(0)
	retlw	010h
	retlw	low(0)
	retlw	0Fh
	retlw	low(0)
	retlw	0Eh
	retlw	low(0)
	global __end_of_time14
__end_of_time14:
	global	_time13
	global	_time13_absaddr
_time13_absaddr	set	0x8D0
psect	_time13_text,class=STRCODE,delta=2,noexec
global __p_time13_text
__p_time13_text:
_time13:
	retlw	036h
	retlw	low(0)
	retlw	031h
	retlw	low(0)
	retlw	02Dh
	retlw	low(0)
	retlw	029h
	retlw	low(0)
	retlw	025h
	retlw	low(0)
	retlw	022h
	retlw	low(0)
	retlw	01Fh
	retlw	low(0)
	retlw	01Ch
	retlw	low(0)
	global __end_of_time13
__end_of_time13:
	global	_time12
	global	_time12_absaddr
_time12_absaddr	set	0x8C0
psect	_time12_text,class=STRCODE,delta=2,noexec
global __p_time12_text
__p_time12_text:
_time12:
	retlw	054h
	retlw	low(0)
	retlw	050h
	retlw	low(0)
	retlw	04Dh
	retlw	low(0)
	retlw	049h
	retlw	low(0)
	retlw	046h
	retlw	low(0)
	retlw	043h
	retlw	low(0)
	retlw	042h
	retlw	low(0)
	retlw	03Ch
	retlw	low(0)
	global __end_of_time12
__end_of_time12:
	global	_time11
	global	_time11_absaddr
_time11_absaddr	set	0x8B0
psect	_time11_text,class=STRCODE,delta=2,noexec
global __p_time11_text
__p_time11_text:
_time11:
	retlw	054h
	retlw	low(0)
	retlw	050h
	retlw	low(0)
	retlw	04Dh
	retlw	low(0)
	retlw	049h
	retlw	low(0)
	retlw	046h
	retlw	low(0)
	retlw	043h
	retlw	low(0)
	retlw	042h
	retlw	low(0)
	retlw	03Ch
	retlw	low(0)
	global __end_of_time11
__end_of_time11:
	global	_time10
	global	_time10_absaddr
_time10_absaddr	set	0x8A0
psect	_time10_text,class=STRCODE,delta=2,noexec
global __p_time10_text
__p_time10_text:
_time10:
	retlw	0BAh
	retlw	low(0)
	retlw	0B0h
	retlw	low(0)
	retlw	0A7h
	retlw	low(0)
	retlw	09Eh
	retlw	low(0)
	retlw	096h
	retlw	low(0)
	retlw	08Eh
	retlw	low(0)
	retlw	087h
	retlw	low(0)
	retlw	080h
	retlw	low(0)
	global __end_of_time10
__end_of_time10:
	global	_time09
	global	_time09_absaddr
_time09_absaddr	set	0x890
psect	_time09_text,class=STRCODE,delta=2,noexec
global __p_time09_text
__p_time09_text:
_time09:
	retlw	049h
	retlw	01h
	retlw	02Eh
	retlw	01h
	retlw	015h
	retlw	01h
	retlw	0FEh
	retlw	low(0)
	retlw	0E9h
	retlw	low(0)
	retlw	0DAh
	retlw	low(0)
	retlw	0CFh
	retlw	low(0)
	retlw	0C4h
	retlw	low(0)
	global __end_of_time09
__end_of_time09:
	global	_time08
	global	_time08_absaddr
_time08_absaddr	set	0x880
psect	_time08_text,class=STRCODE,delta=2,noexec
global __p_time08_text
__p_time08_text:
_time08:
	retlw	08Fh
	retlw	02h
	retlw	059h
	retlw	02h
	retlw	028h
	retlw	02h
	retlw	0FAh
	retlw	01h
	retlw	0D0h
	retlw	01h
	retlw	0AAh
	retlw	01h
	retlw	087h
	retlw	01h
	retlw	066h
	retlw	01h
	global __end_of_time08
__end_of_time08:
	global	_time07
	global	_time07_absaddr
_time07_absaddr	set	0x870
psect	_time07_text,class=STRCODE,delta=2,noexec
global __p_time07_text
__p_time07_text:
_time07:
	retlw	082h
	retlw	03h
	retlw	05Fh
	retlw	03h
	retlw	03Eh
	retlw	03h
	retlw	01Eh
	retlw	03h
	retlw	0FFh
	retlw	02h
	retlw	0E2h
	retlw	02h
	retlw	0C6h
	retlw	02h
	retlw	0AAh
	retlw	02h
	global __end_of_time07
__end_of_time07:
	global	_time06
	global	_time06_absaddr
_time06_absaddr	set	0x860
psect	_time06_text,class=STRCODE,delta=2,noexec
global __p_time06_text
__p_time06_text:
_time06:
	retlw	0FFh
	retlw	04h
	retlw	0BCh
	retlw	04h
	retlw	07Dh
	retlw	04h
	retlw	044h
	retlw	04h
	retlw	01Ah
	retlw	04h
	retlw	0F2h
	retlw	03h
	retlw	0CBh
	retlw	03h
	retlw	0A6h
	retlw	03h
	global __end_of_time06
__end_of_time06:
	global	_time05
	global	_time05_absaddr
_time05_absaddr	set	0x850
psect	_time05_text,class=STRCODE,delta=2,noexec
global __p_time05_text
__p_time05_text:
_time05:
	retlw	0ABh
	retlw	07h
	retlw	044h
	retlw	07h
	retlw	0E3h
	retlw	06h
	retlw	087h
	retlw	06h
	retlw	030h
	retlw	06h
	retlw	0DEh
	retlw	05h
	retlw	08Fh
	retlw	05h
	retlw	045h
	retlw	05h
	global __end_of_time05
__end_of_time05:
	global	_time04
	global	_time04_absaddr
_time04_absaddr	set	0x840
psect	_time04_text,class=STRCODE,delta=2,noexec
global __p_time04_text
__p_time04_text:
_time04:
	retlw	01h
	retlw	0Eh
	retlw	0D9h
	retlw	0Ch
	retlw	0C9h
	retlw	0Bh
	retlw	0D0h
	retlw	0Ah
	retlw	0ECh
	retlw	09h
	retlw	01Ah
	retlw	09h
	retlw	089h
	retlw	08h
	retlw	017h
	retlw	08h
	global __end_of_time04
__end_of_time04:
	global	_time03
	global	_time03_absaddr
_time03_absaddr	set	0x830
psect	_time03_text,class=STRCODE,delta=2,noexec
global __p_time03_text
__p_time03_text:
_time03:
	retlw	013h
	retlw	01Bh
	retlw	09Ah
	retlw	019h
	retlw	07Ch
	retlw	017h
	retlw	08Ch
	retlw	015h
	retlw	0C5h
	retlw	013h
	retlw	023h
	retlw	012h
	retlw	0A3h
	retlw	010h
	retlw	044h
	retlw	0Fh
	global __end_of_time03
__end_of_time03:
	global	_time02
	global	_time02_absaddr
_time02_absaddr	set	0x820
psect	_time02_text,class=STRCODE,delta=2,noexec
global __p_time02_text
__p_time02_text:
_time02:
	retlw	065h
	retlw	03Eh
	retlw	036h
	retlw	038h
	retlw	0A4h
	retlw	032h
	retlw	09Fh
	retlw	02Dh
	retlw	01Ah
	retlw	029h
	retlw	07h
	retlw	025h
	retlw	05Ch
	retlw	021h
	retlw	0Dh
	retlw	01Eh
	global __end_of_time02
__end_of_time02:
	global	_time01
	global	_time01_absaddr
_time01_absaddr	set	0x810
psect	_time01_text,class=STRCODE,delta=2,noexec
global __p_time01_text
__p_time01_text:
_time01:
	retlw	07Ah
	retlw	080h
	retlw	0DEh
	retlw	075h
	retlw	023h
	retlw	06Ch
	retlw	035h
	retlw	063h
	retlw	04h
	retlw	05Bh
	retlw	055h
	retlw	055h
	retlw	0E0h
	retlw	04Ch
	retlw	042h
	retlw	045h
	global __end_of_time01
__end_of_time01:
	global	_time00
	global	_time00_absaddr
_time00_absaddr	set	0x800
psect	_time00_text,class=STRCODE,delta=2,noexec
global __p_time00_text
__p_time00_text:
_time00:
	retlw	0FFh
	retlw	0FFh
	retlw	0DCh
	retlw	0EAh
	retlw	077h
	retlw	0D7h
	retlw	0ADh
	retlw	0C5h
	retlw	05Bh
	retlw	0B5h
	retlw	061h
	retlw	0A6h
	retlw	0A4h
	retlw	098h
	retlw	0Ah
	retlw	08Ch
	global __end_of_time00
__end_of_time00:
	global	_adc_vals
	global	_env_level
	global	_release
	global	_sustain
	global	_decay
	global	_attack
	global	_gate_state
	global	_env_state
	global	_env_mode
	global	_PIR1bits
_PIR1bits	set	0x11
	global	_PORTAbits
_PORTAbits	set	0xC
	global	_PORTCbits
_PORTCbits	set	0xE
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_INTCON
_INTCON	set	0xB
	global	_T2CON
_T2CON	set	0x1F
	global	_PORTBbits
_PORTBbits	set	0xD
	global	_PORTC
_PORTC	set	0xE
	global	_PORTB
_PORTB	set	0xD
	global	_PORTA
_PORTA	set	0xC
	global	_TRISCbits
_TRISCbits	set	0x8E
	global	_ADRESH
_ADRESH	set	0x9C
	global	_PIE1bits
_PIE1bits	set	0x91
	global	_ADCON0bits
_ADCON0bits	set	0x9D
	global	_TRISBbits
_TRISBbits	set	0x8D
	global	_ADCON1
_ADCON1	set	0x9E
	global	_ADCON0
_ADCON0	set	0x9D
	global	_TRISC
_TRISC	set	0x8E
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISA
_TRISA	set	0x8C
	global	_SSP1BUF
_SSP1BUF	set	0x211
	global	_SSPSTATbits
_SSPSTATbits	set	0x214
	global	_SSPCONbits
_SSPCONbits	set	0x215
	global	_WPUA
_WPUA	set	0x20C
	global	_EEDAT
_EEDAT	set	0x893
	global	_EEADR
_EEADR	set	0x891
	global	_NVMCON1bits
_NVMCON1bits	set	0x895
	global	_EEADRH
_EEADRH	set	0x892
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"main.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_adc_vals:
       ds      8

_env_level:
       ds      8

_release:
       ds      4

_sustain:
       ds      4

_decay:
       ds      4

_attack:
       ds      4

_gate_state:
       ds      2

_env_state:
       ds      2

_env_mode:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	83
_adc_chans:
       ds      8

	file	"main.s"
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 08h
	fcall init_ram
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	026h
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_SYSTEM_Initialize:	; 1 bytes @ 0x0
?_spi_init:	; 1 bytes @ 0x0
?_reset_envelope:	; 1 bytes @ 0x0
?_envelope_control:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_my_isr:	; 1 bytes @ 0x0
?i1_load_dac:	; 1 bytes @ 0x0
	global	envelope_control@gate
envelope_control@gate:	; 1 bytes @ 0x0
	global	i1load_dac@val
i1load_dac@val:	; 2 bytes @ 0x0
	ds	1
??_envelope_control:	; 1 bytes @ 0x1
	ds	1
??i1_load_dac:	; 1 bytes @ 0x2
	ds	5
	global	i1load_dac@chan
i1load_dac@chan:	; 1 bytes @ 0x7
	ds	1
	global	i1load_dac@dac_bits
i1load_dac@dac_bits:	; 1 bytes @ 0x8
	ds	5
	global	envelope_control@chan
envelope_control@chan:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_SYSTEM_Initialize:	; 1 bytes @ 0x0
??_my_isr:	; 1 bytes @ 0x0
	ds	5
??_spi_init:	; 1 bytes @ 0x5
?_load_dac:	; 1 bytes @ 0x5
??_reset_envelope:	; 1 bytes @ 0x5
	global	?_flash_read
?_flash_read:	; 2 bytes @ 0x5
	global	load_dac@val
load_dac@val:	; 2 bytes @ 0x5
	global	flash_read@flash_adr
flash_read@flash_adr:	; 2 bytes @ 0x5
	ds	1
	global	reset_envelope@chan
reset_envelope@chan:	; 1 bytes @ 0x6
	ds	1
??_load_dac:	; 1 bytes @ 0x7
??_flash_read:	; 1 bytes @ 0x7
	ds	2
	global	flash_read@flash_value
flash_read@flash_value:	; 2 bytes @ 0x9
	ds	2
	global	?_time_lookup
?_time_lookup:	; 2 bytes @ 0xB
	ds	1
	global	load_dac@chan
load_dac@chan:	; 1 bytes @ 0xC
	ds	1
??_time_lookup:	; 1 bytes @ 0xD
	global	load_dac@dac_bits
load_dac@dac_bits:	; 1 bytes @ 0xD
	ds	4
	global	time_lookup@temp
time_lookup@temp:	; 2 bytes @ 0x11
	ds	2
	global	time_lookup@val
time_lookup@val:	; 1 bytes @ 0x13
	ds	1
??_main:	; 1 bytes @ 0x14
	ds	3
	global	main@chan_sel
main@chan_sel:	; 1 bytes @ 0x17
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        8
;!    BSS         38
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     24      70
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            16      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _my_isr in COMMON
;!
;!    _my_isr->_envelope_control
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_time_lookup
;!    _time_lookup->_flash_read
;!
;!Critical Paths under _my_isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _my_isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _my_isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _my_isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _my_isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _my_isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _my_isr in BANK6
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0     788
;!                                             20 BANK0      4     4      0
;!                  _SYSTEM_Initialize
;!                           _load_dac
;!                     _reset_envelope
;!                           _spi_init
;!                        _time_lookup
;! ---------------------------------------------------------------------------------
;! (1) _time_lookup                                          9     7      2     288
;!                                             11 BANK0      9     7      2
;!                         _flash_read
;! ---------------------------------------------------------------------------------
;! (2) _flash_read                                           6     4      2     220
;!                                              5 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _spi_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _reset_envelope                                       2     2      0      66
;!                                              5 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _load_dac                                            10     8      2     344
;!                                              5 BANK0      9     7      2
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _my_isr                                               5     5      0    1132
;!                                              0 BANK0      5     5      0
;!                   _envelope_control
;!                         i1_load_dac
;! ---------------------------------------------------------------------------------
;! (4) i1_load_dac                                          10     8      2     144
;!                                              0 COMMON     9     7      2
;! ---------------------------------------------------------------------------------
;! (4) _envelope_control                                    14    13      1     988
;!                                              0 COMMON    14    13      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _SYSTEM_Initialize
;!   _load_dac
;!   _reset_envelope
;!   _spi_init
;!   _time_lookup
;!     _flash_read
;!
;! _my_isr (ROOT)
;!   _envelope_control
;!   i1_load_dac
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      E       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      54       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     18      46       6       87.5%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BANK4               50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITBANK5            50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BANK5               50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITBANK6            10      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BANK6               10      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!DATA                 0      0      54      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 97 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  chan_sel        1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SYSTEM_Initialize
;;		_load_dac
;;		_reset_envelope
;;		_spi_init
;;		_time_lookup
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	97
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	97
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	callstack 12
; Regs used in _main: [allreg]
	line	100
	
l1255:	
	fcall	_SYSTEM_Initialize
	line	102
	
l1257:	
	movlb 0	; select bank0
	clrf	(main@chan_sel)
	line	108
	
l1259:	
	movlw	low(037h)
	movlb 4	; select bank4
	movwf	(524)^0200h	;volatile
	line	111
	
l1261:	
	movlw	low(03Fh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	112
	
l1263:	
	movlb 0	; select bank0
	clrf	(12)	;volatile
	line	113
	
l1265:	
	movlw	low(030h)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	114
	
l1267:	
	movlb 0	; select bank0
	clrf	(13)	;volatile
	line	115
	
l1269:	
	movlw	low(03Fh)
	movlb 1	; select bank1
	movwf	(142)^080h	;volatile
	line	116
	
l1271:	
	movlb 0	; select bank0
	clrf	(14)	;volatile
	line	117
	
l1273:	
	movlw	low(01h)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	119
	
l1275:	
	movlw	low(050h)
	movwf	(158)^080h	;volatile
	line	123
	
l1277:	
	fcall	_spi_init
	line	125
	
l1279:	
	movlb 0	; select bank0
	bsf	(13),7	;volatile
	line	127
	
l1281:	
	movlb 1	; select bank1
	bsf	(141)^080h,4	;volatile
	line	130
	
l1283:	
	movlw	low(03Ch)
	movlb 0	; select bank0
	movwf	(31)	;volatile
	line	137
	
l1285:	
	movlw	0
	movwf	(load_dac@val)
	movwf	(load_dac@val+1)
	movlw	low(0)
	fcall	_load_dac
	line	138
	
l1287:	
	movlw	0
	movlb 0	; select bank0
	movwf	(load_dac@val)
	movwf	(load_dac@val+1)
	movlw	low(01h)
	fcall	_load_dac
	line	141
	
l1289:	
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	144
	
l1291:	
	movlb 0	; select bank0
	clrf	(_env_mode)
	line	145
	
l1293:	
	clrf	0+(_env_mode)+01h
	line	146
	
l1295:	
	clrf	(_env_state)
	line	147
	
l1297:	
	clrf	0+(_env_state)+01h
	line	148
	
l1299:	
	clrf	(_gate_state)
	line	149
	
l1301:	
	clrf	0+(_gate_state)+01h
	line	150
	
l1303:	
	movlw	high highword(0)
	movwf	(_env_level+3)
	movlw	low highword(0)
	movwf	(_env_level+2)
	movlw	high(0)
	movwf	(_env_level+1)
	movlw	low(0)
	movwf	(_env_level)

	line	151
	
l1305:	
	movlw	high highword(0)
	movwf	3+(_env_level)+04h
	movlw	low highword(0)
	movwf	2+(_env_level)+04h
	movlw	high(0)
	movwf	1+(_env_level)+04h
	movlw	low(0)
	movwf	0+(_env_level)+04h

	line	152
	
l1307:	
	movlw	064h
	movwf	(_attack)
	movlw	0
	movwf	((_attack))+1
	line	153
	
l1309:	
	movlw	064h
	movwf	0+(_attack)+02h
	movlw	0
	movwf	(0+(_attack)+02h)+1
	line	154
	
l1311:	
	movlw	064h
	movwf	(_decay)
	movlw	0
	movwf	((_decay))+1
	line	155
	
l1313:	
	movlw	064h
	movwf	0+(_decay)+02h
	movlw	0
	movwf	(0+(_decay)+02h)+1
	line	156
	
l1315:	
	movlw	0A0h
	movwf	(_sustain)
	movlw	0Fh
	movwf	((_sustain))+1
	line	157
	
l1317:	
	movlw	0A0h
	movwf	0+(_sustain)+02h
	movlw	0Fh
	movwf	(0+(_sustain)+02h)+1
	line	158
	
l1319:	
	movlw	064h
	movwf	(_release)
	movlw	0
	movwf	((_release))+1
	line	159
	
l1321:	
	movlw	064h
	movwf	0+(_release)+02h
	movlw	0
	movwf	(0+(_release)+02h)+1
	line	162
	
l1323:	
	clrf	(11)	;volatile
	line	163
	
l1325:	
	bsf	(11),6	;volatile
	line	164
	
l1327:	
	movlb 1	; select bank1
	bsf	(145)^080h,1	;volatile
	line	165
	
l1329:	
	bsf	(11),7	;volatile
	line	168
	
l129:	
	line	169
# 169 "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
clrwdt ;# 
psect	maintext
	line	170
	
l1331:	
	movlb 4	; select bank4
	bcf	(533)^0200h,7	;volatile
	line	172
	
l1333:	
	movlb 1	; select bank1
	btfsc	(157)^080h,1	;volatile
	goto	u771
	goto	u770
u771:
	goto	l1349
u770:
	line	174
	
l1335:	
	bcf	(11),7	;volatile
	line	176
	
l1337:	
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(main@chan_sel),w
	addlw	low(_adc_vals|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_main+0)+0,w
	movwf	indf1
	line	177
	
l1339:	
	bsf	(11),7	;volatile
	line	178
	
l1341:	
	movf	(main@chan_sel),w
	addlw	01h
	andlw	07h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@chan_sel)
	line	179
	
l1343:	
	movlw	low(0C3h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movlb 1	; select bank1
	andwf	(157)^080h,f	;volatile
	line	180
	movlb 0	; select bank0
	movf	(main@chan_sel),w
	addlw	low(_adc_chans|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	andlw	0Fh
	movwf	(??_main+0)+0
	movlw	(02h)-1
u785:
	lslf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u785
	lslf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movlb 1	; select bank1
	iorwf	(157)^080h,f	;volatile
	line	181
	
l1345:	
	asmopt push
asmopt off
	movlw	33
u937:
decfsz	wreg
	goto	u937
	nop
asmopt pop

	line	182
	
l1347:	
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	186
	
l1349:	
	bcf	(11),7	;volatile
	line	187
	goto	l1369
	line	189
	
l1351:	
	lsrf	(_adc_vals),w
	fcall	_time_lookup
	movlb 0	; select bank0
	movf	(1+(?_time_lookup)),w
	movwf	(_attack+1)
	movf	(0+(?_time_lookup)),w
	movwf	(_attack)
	line	190
	goto	l133
	line	192
	
l1353:	
	lsrf	0+(_adc_vals)+01h,w
	fcall	_time_lookup
	movlb 0	; select bank0
	movf	(1+(?_time_lookup)),w
	movwf	(_decay+1)
	movf	(0+(?_time_lookup)),w
	movwf	(_decay)
	line	193
	goto	l133
	line	195
	
l1355:	
	movf	0+(_adc_vals)+02h,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	movwf	(_sustain)
	movf	1+(??_main+0)+0,w
	movwf	(_sustain+1)
	line	196
	goto	l133
	line	198
	
l1357:	
	lsrf	0+(_adc_vals)+03h,w
	fcall	_time_lookup
	movlb 0	; select bank0
	movf	(1+(?_time_lookup)),w
	movwf	(_release+1)
	movf	(0+(?_time_lookup)),w
	movwf	(_release)
	line	199
	goto	l133
	line	201
	
l1359:	
	lsrf	0+(_adc_vals)+04h,w
	fcall	_time_lookup
	movlb 0	; select bank0
	movf	(1+(?_time_lookup)),w
	movwf	1+(_attack)+02h
	movf	(0+(?_time_lookup)),w
	movwf	0+(_attack)+02h
	line	202
	goto	l133
	line	204
	
l1361:	
	lsrf	0+(_adc_vals)+05h,w
	fcall	_time_lookup
	movlb 0	; select bank0
	movf	(1+(?_time_lookup)),w
	movwf	1+(_decay)+02h
	movf	(0+(?_time_lookup)),w
	movwf	0+(_decay)+02h
	line	205
	goto	l133
	line	207
	
l1363:	
	movf	0+(_adc_vals)+06h,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	movwf	0+(_sustain)+02h
	movf	1+(??_main+0)+0,w
	movwf	1+(_sustain)+02h
	line	208
	goto	l133
	line	210
	
l1365:	
	lsrf	0+(_adc_vals)+07h,w
	fcall	_time_lookup
	movlb 0	; select bank0
	movf	(1+(?_time_lookup)),w
	movwf	1+(_release)+02h
	movf	(0+(?_time_lookup)),w
	movwf	0+(_release)+02h
	line	211
	goto	l133
	line	212
	
l1369:	
	movlb 0	; select bank0
	movf	(main@chan_sel),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_main+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1455
	goto	l133
	asmopt pop
	
l1455:	
; Switch size 1, requested type "simple"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           22     6 (fixed)
; simple_byte           25    13 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_main+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1351
	xorlw	1^0	; case 1
	skipnz
	goto	l1353
	xorlw	2^1	; case 2
	skipnz
	goto	l1355
	xorlw	3^2	; case 3
	skipnz
	goto	l1357
	xorlw	4^3	; case 4
	skipnz
	goto	l1359
	xorlw	5^4	; case 5
	skipnz
	goto	l1361
	xorlw	6^5	; case 6
	skipnz
	goto	l1363
	xorlw	7^6	; case 7
	skipnz
	goto	l1365
	goto	l133
	asmopt pop

	
l133:	
	line	213
	bsf	(11),7	;volatile
	line	215
	
l1371:	
		decf	((_env_mode)),w
	btfsc	status,2
	goto	u791
	goto	u790
u791:
	goto	l1377
u790:
	line	216
	
l1373:	
	clrf	(_env_mode)
	incf	(_env_mode),f
	line	217
	
l1375:	
	movlw	low(0)
	fcall	_reset_envelope
	line	220
	
l1377:	
	movlb 0	; select bank0
	btfsc	(14),4	;volatile
	goto	u801
	goto	u800
u801:
	goto	l142
u800:
	line	221
	
l1379:	
	movf	((_env_mode)),w
	btfsc	status,2
	goto	u811
	goto	u810
u811:
	goto	l1397
u810:
	line	222
	
l1381:	
	clrf	(_env_mode)
	line	223
	
l1383:	
	movlw	low(0)
	fcall	_reset_envelope
	goto	l1397
	line	226
	
l142:	
	btfsc	(14),5	;volatile
	goto	u821
	goto	u820
u821:
	goto	l1391
u820:
	line	227
	
l1385:	
		movlw	2
	xorwf	((_env_mode)),w
	btfsc	status,2
	goto	u831
	goto	u830
u831:
	goto	l1397
u830:
	line	228
	
l1387:	
	movlw	low(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_env_mode)
	line	229
	
l1389:	
	movlw	low(0)
	fcall	_reset_envelope
	goto	l1397
	line	233
	
l1391:	
		decf	((_env_mode)),w
	btfsc	status,2
	goto	u841
	goto	u840
u841:
	goto	l1397
u840:
	line	234
	
l1393:	
	clrf	(_env_mode)
	incf	(_env_mode),f
	line	235
	
l1395:	
	movlw	low(0)
	fcall	_reset_envelope
	line	239
	
l1397:	
	movlb 0	; select bank0
	btfsc	(12),0	;volatile
	goto	u851
	goto	u850
u851:
	goto	l149
u850:
	line	240
	
l1399:	
	movf	(0+(_env_mode)+01h),w
	btfsc	status,2
	goto	u861
	goto	u860
u861:
	goto	l1417
u860:
	line	241
	
l1401:	
	clrf	0+(_env_mode)+01h
	line	242
	
l1403:	
	movlw	low(01h)
	fcall	_reset_envelope
	goto	l1417
	line	245
	
l149:	
	btfsc	(12),1	;volatile
	goto	u871
	goto	u870
u871:
	goto	l1411
u870:
	line	246
	
l1405:	
		movlw	2
	xorwf	(0+(_env_mode)+01h),w
	btfsc	status,2
	goto	u881
	goto	u880
u881:
	goto	l1417
u880:
	line	247
	
l1407:	
	movlw	low(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_env_mode)+01h
	line	248
	
l1409:	
	movlw	low(01h)
	fcall	_reset_envelope
	goto	l1417
	line	252
	
l1411:	
		decf	(0+(_env_mode)+01h),w
	btfsc	status,2
	goto	u891
	goto	u890
u891:
	goto	l1417
u890:
	line	253
	
l1413:	
	clrf	0+(_env_mode)+01h
	incf	0+(_env_mode)+01h,f
	line	254
	
l1415:	
	movlw	low(01h)
	fcall	_reset_envelope
	line	258
	
l1417:	
	asmopt push
asmopt off
movlw	26
	movlb 0	; select bank0
movwf	((??_main+0)+0),f
	movlw	248
u947:
decfsz	wreg
	goto	u947
	decfsz	((??_main+0)+0),f
	goto	u947
	nop
asmopt pop

	goto	l129
	global	start
	ljmp	start
	callstack 0
	line	262
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_time_lookup

;; *************** function _time_lookup *****************
;; Defined at:
;;		line 417 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   19[BANK0 ] unsigned char 
;;  temp            2   17[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   11[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_flash_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	417
global __ptext1
__ptext1:	;psect for function _time_lookup
psect	text1
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	417
	global	__size_of_time_lookup
	__size_of_time_lookup	equ	__end_of_time_lookup-_time_lookup
	
_time_lookup:	
;incstack = 0
	callstack 12
; Regs used in _time_lookup: [wreg+status,2+status,0+pclath+cstack]
	movlb 0	; select bank0
	movwf	(time_lookup@val)
	line	419
	
l1171:	
	movf	(time_lookup@val),w
	movwf	(??_time_lookup+0)+0
	clrf	(??_time_lookup+0)+0+1
	lslf	(??_time_lookup+0)+0,f
	rlf	(??_time_lookup+0)+1,f
	movf	0+(??_time_lookup+0)+0,w
	addlw	0
	movwf	(flash_read@flash_adr)
	movlw	08h
	addwfc	1+(??_time_lookup+0)+0,w
	movwf	1+(flash_read@flash_adr)
	fcall	_flash_read
	movlb 0	; select bank0
	movf	(1+(?_flash_read)),w
	movwf	(time_lookup@temp+1)
	movf	(0+(?_flash_read)),w
	movwf	(time_lookup@temp)
	line	420
	movf	(time_lookup@val),w
	movwf	(??_time_lookup+0)+0
	clrf	(??_time_lookup+0)+0+1
	lslf	(??_time_lookup+0)+0,f
	rlf	(??_time_lookup+0)+1,f
	movf	0+(??_time_lookup+0)+0,w
	addlw	01h
	movwf	(flash_read@flash_adr)
	movlw	08h
	addwfc	1+(??_time_lookup+0)+0,w
	movwf	1+(flash_read@flash_adr)
	fcall	_flash_read
	movlb 0	; select bank0
	movf	(0+(?_flash_read)),w
	movwf	(??_time_lookup+2)+0+1
	clrf	(??_time_lookup+2)+0
	movf	0+(??_time_lookup+2)+0,w
	iorwf	(time_lookup@temp),f
	movf	1+(??_time_lookup+2)+0,w
	iorwf	(time_lookup@temp+1),f
	line	421
	
l1173:	
	movf	(time_lookup@temp+1),w
	movwf	(?_time_lookup+1)
	movf	(time_lookup@temp),w
	movwf	(?_time_lookup)
	line	422
	
l198:	
	return
	callstack 0
GLOBAL	__end_of_time_lookup
	__end_of_time_lookup:
	signat	_time_lookup,4218
	global	_flash_read

;; *************** function _flash_read *****************
;; Defined at:
;;		line 425 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;  flash_adr       2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  flash_value     2    9[BANK0 ] short 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_time_lookup
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	425
global __ptext2
__ptext2:	;psect for function _flash_read
psect	text2
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	425
	global	__size_of_flash_read
	__size_of_flash_read	equ	__end_of_flash_read-_flash_read
	
_flash_read:	
;incstack = 0
	callstack 12
; Regs used in _flash_read: [wreg+status,2]
	line	426
	
l1139:	
	bcf	(11),7	;volatile
	line	427
	
l1141:	
	line	429
	
l1143:	
	movlb 0	; select bank0
	movf	(flash_read@flash_adr+1),w
	movlb 17	; select bank17
	movwf	(2194)^0880h	;volatile
	line	430
	movlw	0FFh
	movlb 0	; select bank0
	andwf	(flash_read@flash_adr),w
	movwf	(??_flash_read+0)+0
	movlw	0
	andwf	(flash_read@flash_adr+1),w
	movwf	1+(??_flash_read+0)+0
	movf	0+(??_flash_read+0)+0,w
	movlb 17	; select bank17
	movwf	(2193)^0880h	;volatile
	movlb 0	; select bank0
	movf	1+(??_flash_read+0)+0,w
	movlb 17	; select bank17
	movwf	(2193+1)^0880h	;volatile
	line	432
	
l1145:	
	bsf	(2197)^0880h,6	;volsfr
	line	433
	
l1147:	
	bsf	(2197)^0880h,0	;volsfr
	line	435
	movf	(2195+1)^0880h,w	;volatile
	movlb 0	; select bank0
	movwf	(flash_read@flash_value+1)
	movlb 17	; select bank17
	movf	(2195)^0880h,w	;volatile
	movlb 0	; select bank0
	movwf	(flash_read@flash_value)
	line	436
	movf	(flash_read@flash_value+1),w
	movwf	(?_flash_read+1)
	movf	(flash_read@flash_value),w
	movwf	(?_flash_read)
	line	439
	
l201:	
	return
	callstack 0
GLOBAL	__end_of_flash_read
	__end_of_flash_read:
	signat	_flash_read,4218
	global	_spi_init

;; *************** function _spi_init *****************
;; Defined at:
;;		line 282 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	282
global __ptext3
__ptext3:	;psect for function _spi_init
psect	text3
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	282
	global	__size_of_spi_init
	__size_of_spi_init	equ	__end_of_spi_init-_spi_init
	
_spi_init:	
;incstack = 0
	callstack 13
; Regs used in _spi_init: []
	line	284
	
l1153:	
	movlb 1	; select bank1
	bcf	(142)^080h,7	;volatile
	line	285
	bcf	(141)^080h,6	;volatile
	line	286
	bcf	(142)^080h,6	;volatile
	line	288
	movlb 4	; select bank4
	bsf	(532)^0200h,6	;volatile
	line	290
	bcf	(533)^0200h,5	;volatile
	line	292
	bcf	(533)^0200h,7	;volatile
	line	293
	bcf	(533)^0200h,6	;volatile
	line	295
	bcf	(533)^0200h,4	;volatile
	line	296
	bcf	(533)^0200h,3	;volatile
	line	297
	bcf	(533)^0200h,2	;volatile
	line	298
	bcf	(533)^0200h,1	;volatile
	line	299
	bcf	(533)^0200h,0	;volatile
	line	301
	bsf	(533)^0200h,5	;volatile
	line	303
	
l167:	
	return
	callstack 0
GLOBAL	__end_of_spi_init
	__end_of_spi_init:
	signat	_spi_init,89
	global	_reset_envelope

;; *************** function _reset_envelope *****************
;; Defined at:
;;		line 334 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;  chan            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  chan            1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	334
global __ptext4
__ptext4:	;psect for function _reset_envelope
psect	text4
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	334
	global	__size_of_reset_envelope
	__size_of_reset_envelope	equ	__end_of_reset_envelope-_reset_envelope
	
_reset_envelope:	
;incstack = 0
	callstack 13
; Regs used in _reset_envelope: [wreg+fsr1l+fsr1h+status,2+status,0]
	movlb 0	; select bank0
	movwf	(reset_envelope@chan)
	line	335
	
l1177:	
	movlw	low(02h)
	subwf	(reset_envelope@chan),w
	skipc
	goto	u481
	goto	u480
u481:
	goto	l1181
u480:
	goto	l176
	line	336
	
l1181:	
	movf	(reset_envelope@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	337
	movf	(reset_envelope@chan),w
	movwf	(??_reset_envelope+0)+0
	movlw	(02h)-1
u495:
	lslf	(??_reset_envelope+0)+0,f
	addlw	-1
	skipz
	goto	u495
	lslf	(??_reset_envelope+0)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movlw	0
	movwi	[1]fsr1
	movwi	[2]fsr1
	movwi	[3]fsr1
	line	338
	
l176:	
	return
	callstack 0
GLOBAL	__end_of_reset_envelope
	__end_of_reset_envelope:
	signat	_reset_envelope,4217
	global	_load_dac

;; *************** function _load_dac *****************
;; Defined at:
;;		line 307 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;  chan            1    wreg     unsigned char 
;;  val             2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  chan            1   12[BANK0 ] unsigned char 
;;  temp_l          2    0        unsigned int 
;;  temp_h          2    0        unsigned int 
;;  dac_bits        1   13[BANK0 ] unsigned char 
;;  read_buf        1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       2       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	307
global __ptext5
__ptext5:	;psect for function _load_dac
psect	text5
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	307
	global	__size_of_load_dac
	__size_of_load_dac	equ	__end_of_load_dac-_load_dac
	
_load_dac:	
;incstack = 0
	callstack 13
; Regs used in _load_dac: [wreg+status,2+status,0]
	movlb 0	; select bank0
	movwf	(load_dac@chan)
	line	313
	
l1155:	
	line	314
	
l1157:	
	line	316
	
l1159:	
	movf	((load_dac@chan)),w
	btfsc	status,2
	goto	u471
	goto	u470
u471:
	goto	l1163
u470:
	
l1161:	
	movlw	low(090h)
	movwf	(??_load_dac+0)+0
	movf	(??_load_dac+0)+0,w
	movwf	(load_dac@dac_bits)
	goto	l1165
	line	317
	
l1163:	
	movlw	low(010h)
	movwf	(??_load_dac+0)+0
	movf	(??_load_dac+0)+0,w
	movwf	(load_dac@dac_bits)
	line	319
	
l1165:	
	bcf	(13),7	;volatile
	line	322
	movf	(load_dac@dac_bits),w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	325
	
l1167:	
	clrf	(529)^0200h	;volatile
	line	327
	
l1169:	
	movlb 0	; select bank0
	bsf	(13),7	;volatile
	line	328
	
l172:	
	return
	callstack 0
GLOBAL	__end_of_load_dac
	__end_of_load_dac:
	signat	_load_dac,8313
	global	_SYSTEM_Initialize
	global	_my_isr

;; *************** function _my_isr *****************
;; Defined at:
;;		line 265 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_envelope_control
;;		i1_load_dac
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	265
	global	__size_of_my_isr
	__size_of_my_isr	equ	__end_of_my_isr-_my_isr
	
_my_isr:	
;incstack = 0
	callstack 12
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _my_isr: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	267
	
i1l1423:	
	movlb 0	; select bank0
	btfss	(17),1	;volatile
	goto	u90_21
	goto	u90_20
u90_21:
	goto	i1l164
u90_20:
	line	269
	
i1l1425:	
	bcf	(17),1	;volatile
	line	270
	bsf	(14),6	;volatile
	line	272
	
i1l1427:	
	movlw	0
	btfsc	(12),3	;volatile
	movlw	1
	movwf	(envelope_control@gate)
	movlw	low(0)
	fcall	_envelope_control
	line	273
	movlw	0
	movlb 0	; select bank0
	btfsc	(12),5	;volatile
	movlw	1
	movwf	(envelope_control@gate)
	movlw	low(01h)
	fcall	_envelope_control
	line	275
	
i1l1429:	
	movlb 0	; select bank0
	movf	(_env_level),w
	movwf	(??_my_isr+0)+0
	movf	(_env_level+1),w
	movwf	((??_my_isr+0)+0+1)
	movf	(_env_level+2),w
	movwf	((??_my_isr+0)+0+2)
	movf	(_env_level+3),w
	movwf	((??_my_isr+0)+0+3)
	movlw	04h
	movwf	(??_my_isr+4)+0
u91_25:
	asrf	(??_my_isr+0)+3,f
	rrf	(??_my_isr+0)+2,f
	rrf	(??_my_isr+0)+1,f
	rrf	(??_my_isr+0)+0,f
u91_20:
	decfsz	(??_my_isr+4)+0,f
	goto	u91_25
	movf	1+(??_my_isr+0)+0,w
	movwf	(i1load_dac@val+1)
	movf	0+(??_my_isr+0)+0,w
	movwf	(i1load_dac@val)
	movlw	low(0)
	fcall	i1_load_dac
	line	276
	
i1l1431:	
	movlb 0	; select bank0
	movf	0+(_env_level)+04h,w
	movwf	(??_my_isr+0)+0
	movf	1+(_env_level)+04h,w
	movwf	((??_my_isr+0)+0+1)
	movf	2+(_env_level)+04h,w
	movwf	((??_my_isr+0)+0+2)
	movf	3+(_env_level)+04h,w
	movwf	((??_my_isr+0)+0+3)
	movlw	04h
	movwf	(??_my_isr+4)+0
u92_25:
	asrf	(??_my_isr+0)+3,f
	rrf	(??_my_isr+0)+2,f
	rrf	(??_my_isr+0)+1,f
	rrf	(??_my_isr+0)+0,f
u92_20:
	decfsz	(??_my_isr+4)+0,f
	goto	u92_25
	movf	1+(??_my_isr+0)+0,w
	movwf	(i1load_dac@val+1)
	movf	0+(??_my_isr+0)+0,w
	movwf	(i1load_dac@val)
	movlw	low(01h)
	fcall	i1_load_dac
	line	278
	
i1l1433:	
	movlb 0	; select bank0
	bcf	(14),6	;volatile
	line	280
	
i1l164:	
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	callstack 0
GLOBAL	__end_of_my_isr
	__end_of_my_isr:
	signat	_my_isr,89
	global	i1_load_dac

;; *************** function i1_load_dac *****************
;; Defined at:
;;		line 307 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;  chan            1    wreg     unsigned char 
;;  val             2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  chan            1    7[COMMON] unsigned char 
;;  temp_l          2    0        unsigned int 
;;  temp_h          2    0        unsigned int 
;;  dac_bits        1    8[COMMON] unsigned char 
;;  read_buf        1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_my_isr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	307
global __ptext7
__ptext7:	;psect for function i1_load_dac
psect	text7
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	307
	global	__size_ofi1_load_dac
	__size_ofi1_load_dac	equ	__end_ofi1_load_dac-i1_load_dac
	
i1_load_dac:	
;incstack = 0
	callstack 12
; Regs used in i1_load_dac: [wreg+status,2+status,0]
	movwf	(i1load_dac@chan)
	line	313
	
i1l1239:	
	line	314
	
i1l1241:	
	line	316
	
i1l1243:	
	movf	((i1load_dac@chan)),w
	btfsc	status,2
	goto	u76_21
	goto	u76_20
u76_21:
	goto	i1l1247
u76_20:
	
i1l1245:	
	movlw	low(090h)
	movwf	(??i1_load_dac+0)+0
	movf	(??i1_load_dac+0)+0,w
	movwf	(i1load_dac@dac_bits)
	goto	i1l1249
	line	317
	
i1l1247:	
	movlw	low(010h)
	movwf	(??i1_load_dac+0)+0
	movf	(??i1_load_dac+0)+0,w
	movwf	(i1load_dac@dac_bits)
	line	319
	
i1l1249:	
	movlb 0	; select bank0
	bcf	(13),7	;volatile
	line	322
	movf	(i1load_dac@dac_bits),w
	movlb 4	; select bank4
	movwf	(529)^0200h	;volatile
	line	325
	
i1l1251:	
	clrf	(529)^0200h	;volatile
	line	327
	
i1l1253:	
	movlb 0	; select bank0
	bsf	(13),7	;volatile
	line	328
	
i1l172:	
	return
	callstack 0
GLOBAL	__end_ofi1_load_dac
	__end_ofi1_load_dac:
	signat	i1_load_dac,8281
	global	_envelope_control

;; *************** function _envelope_control *****************
;; Defined at:
;;		line 342 in file "/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
;; Parameters:    Size  Location     Type
;;  chan            1    wreg     unsigned char 
;;  gate            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  chan            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         1       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:         12       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_my_isr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	342
global __ptext8
__ptext8:	;psect for function _envelope_control
psect	text8
	file	"/Users/marcodellav/MPLABXProjects/PIC16F18344.X/main.c"
	line	342
	global	__size_of_envelope_control
	__size_of_envelope_control	equ	__end_of_envelope_control-_envelope_control
	
_envelope_control:	
;incstack = 0
	callstack 12
; Regs used in _envelope_control: [wreg+fsr1l+fsr1h+status,2+status,0]
	movwf	(envelope_control@chan)
	line	343
	
i1l1183:	
	movlw	low(02h)
	subwf	(envelope_control@chan),w
	skipc
	goto	u50_21
	goto	u50_20
u50_21:
	goto	i1l1187
u50_20:
	goto	i1l180
	line	348
	
i1l1187:	
	movf	(envelope_control@chan),w
	addlw	low(_env_mode|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
		movlw	2
	xorwf	(indf1),w
	btfss	status,2
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l1193
u51_20:
	line	350
	
i1l1189:	
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(indf1),w
	btfss	status,2
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l183
u52_20:
	line	351
	
i1l1191:	
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	goto	i1l183
	line	356
	
i1l1193:	
	movf	((envelope_control@gate)),w
	btfss	status,2
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l1199
u53_20:
	
i1l1195:	
	movf	(envelope_control@chan),w
	addlw	low(_gate_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(indf1),w
	btfss	status,2
	goto	u54_21
	goto	u54_20
u54_21:
	goto	i1l1199
u54_20:
	line	357
	
i1l1197:	
	movf	(envelope_control@chan),w
	addlw	low(_gate_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	358
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	361
	
i1l1199:	
		decf	((envelope_control@gate)),w
	btfss	status,2
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l183
u55_20:
	
i1l1201:	
	movf	(envelope_control@chan),w
	addlw	low(_gate_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
		decf	(indf1),w
	btfss	status,2
	goto	u56_21
	goto	u56_20
u56_21:
	goto	i1l183
u56_20:
	line	362
	
i1l1203:	
	movf	(envelope_control@chan),w
	addlw	low(_gate_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	364
	movf	(envelope_control@chan),w
	addlw	low(_env_mode|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(indf1),w
	btfss	status,2
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l183
u57_20:
	
i1l1205:	
	movlw	low(04h)
	movwf	(??_envelope_control+0)+0
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_envelope_control+0)+0,w
	movwf	indf1
	line	366
	
i1l183:	
	line	372
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
		decf	(indf1),w
	btfss	status,2
	goto	u58_21
	goto	u58_20
u58_21:
	goto	i1l1217
u58_20:
	line	373
	
i1l1207:	
	lslf	(envelope_control@chan),w
	addlw	low(_attack|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_envelope_control+0)+0
	moviw	[1]fsr1
	movwf	(??_envelope_control+0)+0+1
	movf	0+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0)
	movf	1+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0+1)
	clrf	((??_envelope_control+2)+0+2)
	clrf	((??_envelope_control+2)+0+3)
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+6)+0
	movlw	(02h)-1
u59_25:
	lslf	(??_envelope_control+6)+0,f
	addlw	-1
	skipz
	goto	u59_25
	lslf	(??_envelope_control+6)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_envelope_control+2)+0,w
	addwf	indf1,f
	addfsr	fsr1,1
	movf	1+(??_envelope_control+2)+0,w
	addwfc	indf1,f
	addfsr	fsr1,1
	movf	2+(??_envelope_control+2)+0,w
	addwfc	indf1,f
	addfsr	fsr1,1
	movf	3+(??_envelope_control+2)+0,w
	addwfc	indf1,f

	line	375
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+0)+0
	movlw	(02h)-1
u60_25:
	lslf	(??_envelope_control+0)+0,f
	addlw	-1
	skipz
	goto	u60_25
	lslf	(??_envelope_control+0)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[3]fsr1
btfsc	wreg,7
	goto	u61_21
	moviw	[3]fsr1
	btfss	status,2
	goto	u61_20
	moviw	[2]fsr1
	movwf	(??_envelope_control+1)+0
	movlw	1
	subwf	 (??_envelope_control+1)+0,w
	btfss	status,0
	goto	u61_21
	goto	u61_20

u61_21:
	goto	i1l180
u61_20:
	line	376
	
i1l1209:	
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+0)+0
	movlw	(02h)-1
u62_25:
	lslf	(??_envelope_control+0)+0,f
	addlw	-1
	skipz
	goto	u62_25
	lslf	(??_envelope_control+0)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0FFh
	movwi	[0]fsr1
	movlw	0FFh
	movwi	[1]fsr1
	movlw	0
	movwi	[2]fsr1
	movlw	0
	movwi	[3]fsr1
	line	378
	movf	(envelope_control@chan),w
	addlw	low(_env_mode|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(indf1),w
	btfss	status,2
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l1213
u63_20:
	line	379
	
i1l1211:	
	movlw	low(02h)
	movwf	(??_envelope_control+0)+0
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_envelope_control+0)+0,w
	movwf	indf1
	line	380
	goto	i1l180
	line	383
	
i1l1213:	
	movlw	low(04h)
	movwf	(??_envelope_control+0)+0
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_envelope_control+0)+0,w
	movwf	indf1
	goto	i1l180
	line	389
	
i1l1217:	
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
		movlw	2
	xorwf	(indf1),w
	btfss	status,2
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l1225
u64_20:
	line	390
	
i1l1219:	
	lslf	(envelope_control@chan),w
	addlw	low(_decay|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_envelope_control+0)+0
	moviw	[1]fsr1
	movwf	(??_envelope_control+0)+0+1
	movf	0+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0)
	movf	1+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0+1)
	clrf	((??_envelope_control+2)+0+2)
	clrf	((??_envelope_control+2)+0+3)
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+6)+0
	movlw	(02h)-1
u65_25:
	lslf	(??_envelope_control+6)+0,f
	addlw	-1
	skipz
	goto	u65_25
	lslf	(??_envelope_control+6)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_envelope_control+2)+0,w
	subwf	indf1,f
	addfsr	fsr1,1
	movf	1+(??_envelope_control+2)+0,w
	subwfb	indf1,f
	addfsr	fsr1,1
	movf	2+(??_envelope_control+2)+0,w
	subwfb	indf1,f
	addfsr	fsr1,1
	movf	3+(??_envelope_control+2)+0,w
	subwfb	indf1,f
	addfsr	fsr1,-3
	line	392
	lslf	(envelope_control@chan),w
	addlw	low(_sustain|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_envelope_control+0)+0
	moviw	[1]fsr1
	movwf	(??_envelope_control+0)+0+1
	movf	0+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0)
	movf	1+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0+1)
	clrf	((??_envelope_control+2)+0+2)
	clrf	((??_envelope_control+2)+0+3)
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+6)+0
	movlw	(02h)-1
u66_25:
	lslf	(??_envelope_control+6)+0,f
	addlw	-1
	skipz
	goto	u66_25
	lslf	(??_envelope_control+6)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	((??_envelope_control+7)+0+0)
	moviw	[1]fsr1
	movwf	((??_envelope_control+7)+0+1)
	moviw	[2]fsr1
	movwf	((??_envelope_control+7)+0+2)
	moviw	[3]fsr1
	movwf	((??_envelope_control+7)+0+3)
	movf	3+(??_envelope_control+7)+0,w
	xorlw	80h
	movwf	(??_envelope_control+11)+0
	movf	3+(??_envelope_control+2)+0,w
	xorlw	80h
	subwf	(??_envelope_control+11)+0,w
	
	skipz
	goto	u67_23
	movf	2+(??_envelope_control+2)+0,w
	subwf	2+(??_envelope_control+7)+0,w
	skipz
	goto	u67_23
	movf	1+(??_envelope_control+2)+0,w
	subwf	1+(??_envelope_control+7)+0,w
	skipz
	goto	u67_23
	movf	0+(??_envelope_control+2)+0,w
	subwf	0+(??_envelope_control+7)+0,w
u67_23:
	skipnc
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l180
u67_20:
	line	393
	
i1l1221:	
	lslf	(envelope_control@chan),w
	addlw	low(_sustain|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_envelope_control+0)+0
	moviw	[1]fsr1
	movwf	(??_envelope_control+0)+0+1
	movf	0+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0)
	movf	1+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0+1)
	clrf	((??_envelope_control+2)+0+2)
	clrf	((??_envelope_control+2)+0+3)
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+6)+0
	movlw	(02h)-1
u68_25:
	lslf	(??_envelope_control+6)+0,f
	addlw	-1
	skipz
	goto	u68_25
	lslf	(??_envelope_control+6)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_envelope_control+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_envelope_control+2)+0,w
	movwi	[1]fsr1
	movf	2+(??_envelope_control+2)+0,w
	movwi	[2]fsr1
	movf	3+(??_envelope_control+2)+0,w
	movwi	[3]fsr1
	line	394
	movlw	low(03h)
	movwf	(??_envelope_control+0)+0
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_envelope_control+0)+0,w
	movwf	indf1
	goto	i1l180
	line	399
	
i1l1225:	
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
		movlw	3
	xorwf	(indf1),w
	btfss	status,2
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l1231
u69_20:
	line	401
	
i1l1227:	
	lslf	(envelope_control@chan),w
	addlw	low(_sustain|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_envelope_control+0)+0
	moviw	[1]fsr1
	movwf	(??_envelope_control+0)+0+1
	movf	0+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0)
	movf	1+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0+1)
	clrf	((??_envelope_control+2)+0+2)
	clrf	((??_envelope_control+2)+0+3)
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+6)+0
	movlw	(02h)-1
u70_25:
	lslf	(??_envelope_control+6)+0,f
	addlw	-1
	skipz
	goto	u70_25
	lslf	(??_envelope_control+6)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_envelope_control+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_envelope_control+2)+0,w
	movwi	[1]fsr1
	movf	2+(??_envelope_control+2)+0,w
	movwi	[2]fsr1
	movf	3+(??_envelope_control+2)+0,w
	movwi	[3]fsr1
	goto	i1l180
	line	405
	
i1l1231:	
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
		movlw	4
	xorwf	(indf1),w
	btfss	status,2
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l180
u71_20:
	line	406
	
i1l1233:	
	lslf	(envelope_control@chan),w
	addlw	low(_release|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_envelope_control+0)+0
	moviw	[1]fsr1
	movwf	(??_envelope_control+0)+0+1
	movf	0+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0)
	movf	1+(??_envelope_control+0)+0,w
	movwf	((??_envelope_control+2)+0+1)
	clrf	((??_envelope_control+2)+0+2)
	clrf	((??_envelope_control+2)+0+3)
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+6)+0
	movlw	(02h)-1
u72_25:
	lslf	(??_envelope_control+6)+0,f
	addlw	-1
	skipz
	goto	u72_25
	lslf	(??_envelope_control+6)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_envelope_control+2)+0,w
	subwf	indf1,f
	addfsr	fsr1,1
	movf	1+(??_envelope_control+2)+0,w
	subwfb	indf1,f
	addfsr	fsr1,1
	movf	2+(??_envelope_control+2)+0,w
	subwfb	indf1,f
	addfsr	fsr1,1
	movf	3+(??_envelope_control+2)+0,w
	subwfb	indf1,f
	addfsr	fsr1,-3
	line	408
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+0)+0
	movlw	(02h)-1
u73_25:
	lslf	(??_envelope_control+0)+0,f
	addlw	-1
	skipz
	goto	u73_25
	lslf	(??_envelope_control+0)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	((??_envelope_control+1)+0+0)
	moviw	[1]fsr1
	movwf	((??_envelope_control+1)+0+1)
	moviw	[2]fsr1
	movwf	((??_envelope_control+1)+0+2)
	moviw	[3]fsr1
	movwf	((??_envelope_control+1)+0+3)
	btfss	3+(??_envelope_control+1)+0,7
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l180
u74_20:
	line	409
	
i1l1235:	
	movf	(envelope_control@chan),w
	movwf	(??_envelope_control+0)+0
	movlw	(02h)-1
u75_25:
	lslf	(??_envelope_control+0)+0,f
	addlw	-1
	skipz
	goto	u75_25
	lslf	(??_envelope_control+0)+0,w
	addlw	low(_env_level|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movlw	0
	movwi	[1]fsr1
	movwi	[2]fsr1
	movwi	[3]fsr1
	line	410
	movf	(envelope_control@chan),w
	addlw	low(_env_state|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	414
	
i1l180:	
	return
	callstack 0
GLOBAL	__end_of_envelope_control
	__end_of_envelope_control:
	signat	_envelope_control,8313
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	int$flags
	int$flags	set btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
