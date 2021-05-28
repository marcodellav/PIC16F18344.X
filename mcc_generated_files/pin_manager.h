/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18344
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB 	          :  MPLAB X 5.45	
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set NC_RA0 aliases
#define NC_RA0_TRIS                 TRISAbits.TRISA0
#define NC_RA0_LAT                  LATAbits.LATA0
#define NC_RA0_PORT                 PORTAbits.RA0
#define NC_RA0_WPU                  WPUAbits.WPUA0
#define NC_RA0_OD                   ODCONAbits.ODCA0
#define NC_RA0_ANS                  ANSELAbits.ANSA0
#define NC_RA0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define NC_RA0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define NC_RA0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define NC_RA0_GetValue()           PORTAbits.RA0
#define NC_RA0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define NC_RA0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define NC_RA0_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define NC_RA0_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define NC_RA0_SetPushPull()        do { ODCONAbits.ODCA0 = 0; } while(0)
#define NC_RA0_SetOpenDrain()       do { ODCONAbits.ODCA0 = 1; } while(0)
#define NC_RA0_SetAnalogMode()      do { ANSELAbits.ANSA0 = 1; } while(0)
#define NC_RA0_SetDigitalMode()     do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set NC_RA1 aliases
#define NC_RA1_TRIS                 TRISAbits.TRISA1
#define NC_RA1_LAT                  LATAbits.LATA1
#define NC_RA1_PORT                 PORTAbits.RA1
#define NC_RA1_WPU                  WPUAbits.WPUA1
#define NC_RA1_OD                   ODCONAbits.ODCA1
#define NC_RA1_ANS                  ANSELAbits.ANSA1
#define NC_RA1_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define NC_RA1_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define NC_RA1_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define NC_RA1_GetValue()           PORTAbits.RA1
#define NC_RA1_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define NC_RA1_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define NC_RA1_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define NC_RA1_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define NC_RA1_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define NC_RA1_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define NC_RA1_SetAnalogMode()      do { ANSELAbits.ANSA1 = 1; } while(0)
#define NC_RA1_SetDigitalMode()     do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set SUSTAIN_IN_1 aliases
#define SUSTAIN_IN_1_TRIS                 TRISAbits.TRISA2
#define SUSTAIN_IN_1_LAT                  LATAbits.LATA2
#define SUSTAIN_IN_1_PORT                 PORTAbits.RA2
#define SUSTAIN_IN_1_WPU                  WPUAbits.WPUA2
#define SUSTAIN_IN_1_OD                   ODCONAbits.ODCA2
#define SUSTAIN_IN_1_ANS                  ANSELAbits.ANSA2
#define SUSTAIN_IN_1_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define SUSTAIN_IN_1_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define SUSTAIN_IN_1_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define SUSTAIN_IN_1_GetValue()           PORTAbits.RA2
#define SUSTAIN_IN_1_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define SUSTAIN_IN_1_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define SUSTAIN_IN_1_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define SUSTAIN_IN_1_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define SUSTAIN_IN_1_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define SUSTAIN_IN_1_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define SUSTAIN_IN_1_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define SUSTAIN_IN_1_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set GATE_IN_1 aliases
#define GATE_IN_1_PORT                 PORTAbits.RA3
#define GATE_IN_1_WPU                  WPUAbits.WPUA3
#define GATE_IN_1_GetValue()           PORTAbits.RA3
#define GATE_IN_1_SetPullup()          do { WPUAbits.WPUA3 = 1; } while(0)
#define GATE_IN_1_ResetPullup()        do { WPUAbits.WPUA3 = 0; } while(0)

// get/set RELEASE_IN_1 aliases
#define RELEASE_IN_1_TRIS                 TRISAbits.TRISA4
#define RELEASE_IN_1_LAT                  LATAbits.LATA4
#define RELEASE_IN_1_PORT                 PORTAbits.RA4
#define RELEASE_IN_1_WPU                  WPUAbits.WPUA4
#define RELEASE_IN_1_OD                   ODCONAbits.ODCA4
#define RELEASE_IN_1_ANS                  ANSELAbits.ANSA4
#define RELEASE_IN_1_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define RELEASE_IN_1_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define RELEASE_IN_1_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define RELEASE_IN_1_GetValue()           PORTAbits.RA4
#define RELEASE_IN_1_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define RELEASE_IN_1_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define RELEASE_IN_1_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define RELEASE_IN_1_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define RELEASE_IN_1_SetPushPull()        do { ODCONAbits.ODCA4 = 0; } while(0)
#define RELEASE_IN_1_SetOpenDrain()       do { ODCONAbits.ODCA4 = 1; } while(0)
#define RELEASE_IN_1_SetAnalogMode()      do { ANSELAbits.ANSA4 = 1; } while(0)
#define RELEASE_IN_1_SetDigitalMode()     do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set GATE_IN_2 aliases
#define GATE_IN_2_TRIS                 TRISAbits.TRISA5
#define GATE_IN_2_LAT                  LATAbits.LATA5
#define GATE_IN_2_PORT                 PORTAbits.RA5
#define GATE_IN_2_WPU                  WPUAbits.WPUA5
#define GATE_IN_2_OD                   ODCONAbits.ODCA5
#define GATE_IN_2_ANS                  ANSELAbits.ANSA5
#define GATE_IN_2_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define GATE_IN_2_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define GATE_IN_2_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define GATE_IN_2_GetValue()           PORTAbits.RA5
#define GATE_IN_2_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define GATE_IN_2_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define GATE_IN_2_SetPullup()          do { WPUAbits.WPUA5 = 1; } while(0)
#define GATE_IN_2_ResetPullup()        do { WPUAbits.WPUA5 = 0; } while(0)
#define GATE_IN_2_SetPushPull()        do { ODCONAbits.ODCA5 = 0; } while(0)
#define GATE_IN_2_SetOpenDrain()       do { ODCONAbits.ODCA5 = 1; } while(0)
#define GATE_IN_2_SetAnalogMode()      do { ANSELAbits.ANSA5 = 1; } while(0)
#define GATE_IN_2_SetDigitalMode()     do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set ATTACK_IN_1 aliases
#define ATTACK_IN_1_TRIS                 TRISBbits.TRISB4
#define ATTACK_IN_1_LAT                  LATBbits.LATB4
#define ATTACK_IN_1_PORT                 PORTBbits.RB4
#define ATTACK_IN_1_WPU                  WPUBbits.WPUB4
#define ATTACK_IN_1_OD                   ODCONBbits.ODCB4
#define ATTACK_IN_1_ANS                  ANSELBbits.ANSB4
#define ATTACK_IN_1_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define ATTACK_IN_1_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define ATTACK_IN_1_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define ATTACK_IN_1_GetValue()           PORTBbits.RB4
#define ATTACK_IN_1_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define ATTACK_IN_1_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define ATTACK_IN_1_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define ATTACK_IN_1_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define ATTACK_IN_1_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define ATTACK_IN_1_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define ATTACK_IN_1_SetAnalogMode()      do { ANSELBbits.ANSB4 = 1; } while(0)
#define ATTACK_IN_1_SetDigitalMode()     do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set DECAY_IN_1 aliases
#define DECAY_IN_1_TRIS                 TRISBbits.TRISB5
#define DECAY_IN_1_LAT                  LATBbits.LATB5
#define DECAY_IN_1_PORT                 PORTBbits.RB5
#define DECAY_IN_1_WPU                  WPUBbits.WPUB5
#define DECAY_IN_1_OD                   ODCONBbits.ODCB5
#define DECAY_IN_1_ANS                  ANSELBbits.ANSB5
#define DECAY_IN_1_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define DECAY_IN_1_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define DECAY_IN_1_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define DECAY_IN_1_GetValue()           PORTBbits.RB5
#define DECAY_IN_1_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define DECAY_IN_1_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define DECAY_IN_1_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define DECAY_IN_1_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define DECAY_IN_1_SetPushPull()        do { ODCONBbits.ODCB5 = 0; } while(0)
#define DECAY_IN_1_SetOpenDrain()       do { ODCONBbits.ODCB5 = 1; } while(0)
#define DECAY_IN_1_SetAnalogMode()      do { ANSELBbits.ANSB5 = 1; } while(0)
#define DECAY_IN_1_SetDigitalMode()     do { ANSELBbits.ANSB5 = 0; } while(0)

// get/set RB6 procedures
#define RB6_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define RB6_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define RB6_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define RB6_GetValue()              PORTBbits.RB6
#define RB6_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define RB6_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define RB6_SetPullup()             do { WPUBbits.WPUB6 = 1; } while(0)
#define RB6_ResetPullup()           do { WPUBbits.WPUB6 = 0; } while(0)
#define RB6_SetAnalogMode()         do { ANSELBbits.ANSB6 = 1; } while(0)
#define RB6_SetDigitalMode()        do { ANSELBbits.ANSB6 = 0; } while(0)

// get/set DAC_CS aliases
#define DAC_CS_TRIS                 TRISBbits.TRISB7
#define DAC_CS_LAT                  LATBbits.LATB7
#define DAC_CS_PORT                 PORTBbits.RB7
#define DAC_CS_WPU                  WPUBbits.WPUB7
#define DAC_CS_OD                   ODCONBbits.ODCB7
#define DAC_CS_ANS                  ANSELBbits.ANSB7
#define DAC_CS_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define DAC_CS_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define DAC_CS_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define DAC_CS_GetValue()           PORTBbits.RB7
#define DAC_CS_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define DAC_CS_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define DAC_CS_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define DAC_CS_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)
#define DAC_CS_SetPushPull()        do { ODCONBbits.ODCB7 = 0; } while(0)
#define DAC_CS_SetOpenDrain()       do { ODCONBbits.ODCB7 = 1; } while(0)
#define DAC_CS_SetAnalogMode()      do { ANSELBbits.ANSB7 = 1; } while(0)
#define DAC_CS_SetDigitalMode()     do { ANSELBbits.ANSB7 = 0; } while(0)

// get/set NC_RC0 aliases
#define NC_RC0_TRIS                 TRISCbits.TRISC0
#define NC_RC0_LAT                  LATCbits.LATC0
#define NC_RC0_PORT                 PORTCbits.RC0
#define NC_RC0_WPU                  WPUCbits.WPUC0
#define NC_RC0_OD                   ODCONCbits.ODCC0
#define NC_RC0_ANS                  ANSELCbits.ANSC0
#define NC_RC0_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define NC_RC0_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define NC_RC0_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define NC_RC0_GetValue()           PORTCbits.RC0
#define NC_RC0_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define NC_RC0_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define NC_RC0_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define NC_RC0_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define NC_RC0_SetPushPull()        do { ODCONCbits.ODCC0 = 0; } while(0)
#define NC_RC0_SetOpenDrain()       do { ODCONCbits.ODCC0 = 1; } while(0)
#define NC_RC0_SetAnalogMode()      do { ANSELCbits.ANSC0 = 1; } while(0)
#define NC_RC0_SetDigitalMode()     do { ANSELCbits.ANSC0 = 0; } while(0)

// get/set NC_RC1 aliases
#define NC_RC1_TRIS                 TRISCbits.TRISC1
#define NC_RC1_LAT                  LATCbits.LATC1
#define NC_RC1_PORT                 PORTCbits.RC1
#define NC_RC1_WPU                  WPUCbits.WPUC1
#define NC_RC1_OD                   ODCONCbits.ODCC1
#define NC_RC1_ANS                  ANSELCbits.ANSC1
#define NC_RC1_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define NC_RC1_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define NC_RC1_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define NC_RC1_GetValue()           PORTCbits.RC1
#define NC_RC1_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define NC_RC1_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define NC_RC1_SetPullup()          do { WPUCbits.WPUC1 = 1; } while(0)
#define NC_RC1_ResetPullup()        do { WPUCbits.WPUC1 = 0; } while(0)
#define NC_RC1_SetPushPull()        do { ODCONCbits.ODCC1 = 0; } while(0)
#define NC_RC1_SetOpenDrain()       do { ODCONCbits.ODCC1 = 1; } while(0)
#define NC_RC1_SetAnalogMode()      do { ANSELCbits.ANSC1 = 1; } while(0)
#define NC_RC1_SetDigitalMode()     do { ANSELCbits.ANSC1 = 0; } while(0)

// get/set NC_RC2 aliases
#define NC_RC2_TRIS                 TRISCbits.TRISC2
#define NC_RC2_LAT                  LATCbits.LATC2
#define NC_RC2_PORT                 PORTCbits.RC2
#define NC_RC2_WPU                  WPUCbits.WPUC2
#define NC_RC2_OD                   ODCONCbits.ODCC2
#define NC_RC2_ANS                  ANSELCbits.ANSC2
#define NC_RC2_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define NC_RC2_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define NC_RC2_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define NC_RC2_GetValue()           PORTCbits.RC2
#define NC_RC2_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define NC_RC2_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define NC_RC2_SetPullup()          do { WPUCbits.WPUC2 = 1; } while(0)
#define NC_RC2_ResetPullup()        do { WPUCbits.WPUC2 = 0; } while(0)
#define NC_RC2_SetPushPull()        do { ODCONCbits.ODCC2 = 0; } while(0)
#define NC_RC2_SetOpenDrain()       do { ODCONCbits.ODCC2 = 1; } while(0)
#define NC_RC2_SetAnalogMode()      do { ANSELCbits.ANSC2 = 1; } while(0)
#define NC_RC2_SetDigitalMode()     do { ANSELCbits.ANSC2 = 0; } while(0)

// get/set NC_RC3 aliases
#define NC_RC3_TRIS                 TRISCbits.TRISC3
#define NC_RC3_LAT                  LATCbits.LATC3
#define NC_RC3_PORT                 PORTCbits.RC3
#define NC_RC3_WPU                  WPUCbits.WPUC3
#define NC_RC3_OD                   ODCONCbits.ODCC3
#define NC_RC3_ANS                  ANSELCbits.ANSC3
#define NC_RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define NC_RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define NC_RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define NC_RC3_GetValue()           PORTCbits.RC3
#define NC_RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define NC_RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define NC_RC3_SetPullup()          do { WPUCbits.WPUC3 = 1; } while(0)
#define NC_RC3_ResetPullup()        do { WPUCbits.WPUC3 = 0; } while(0)
#define NC_RC3_SetPushPull()        do { ODCONCbits.ODCC3 = 0; } while(0)
#define NC_RC3_SetOpenDrain()       do { ODCONCbits.ODCC3 = 1; } while(0)
#define NC_RC3_SetAnalogMode()      do { ANSELCbits.ANSC3 = 1; } while(0)
#define NC_RC3_SetDigitalMode()     do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set NC_RC4 aliases
#define NC_RC4_TRIS                 TRISCbits.TRISC4
#define NC_RC4_LAT                  LATCbits.LATC4
#define NC_RC4_PORT                 PORTCbits.RC4
#define NC_RC4_WPU                  WPUCbits.WPUC4
#define NC_RC4_OD                   ODCONCbits.ODCC4
#define NC_RC4_ANS                  ANSELCbits.ANSC4
#define NC_RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define NC_RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define NC_RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define NC_RC4_GetValue()           PORTCbits.RC4
#define NC_RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define NC_RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define NC_RC4_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define NC_RC4_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define NC_RC4_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define NC_RC4_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define NC_RC4_SetAnalogMode()      do { ANSELCbits.ANSC4 = 1; } while(0)
#define NC_RC4_SetDigitalMode()     do { ANSELCbits.ANSC4 = 0; } while(0)

// get/set NC_RC5 aliases
#define NC_RC5_TRIS                 TRISCbits.TRISC5
#define NC_RC5_LAT                  LATCbits.LATC5
#define NC_RC5_PORT                 PORTCbits.RC5
#define NC_RC5_WPU                  WPUCbits.WPUC5
#define NC_RC5_OD                   ODCONCbits.ODCC5
#define NC_RC5_ANS                  ANSELCbits.ANSC5
#define NC_RC5_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define NC_RC5_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define NC_RC5_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define NC_RC5_GetValue()           PORTCbits.RC5
#define NC_RC5_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define NC_RC5_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define NC_RC5_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define NC_RC5_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define NC_RC5_SetPushPull()        do { ODCONCbits.ODCC5 = 0; } while(0)
#define NC_RC5_SetOpenDrain()       do { ODCONCbits.ODCC5 = 1; } while(0)
#define NC_RC5_SetAnalogMode()      do { ANSELCbits.ANSC5 = 1; } while(0)
#define NC_RC5_SetDigitalMode()     do { ANSELCbits.ANSC5 = 0; } while(0)

// get/set TEST_OUT aliases
#define TEST_OUT_TRIS                 TRISCbits.TRISC6
#define TEST_OUT_LAT                  LATCbits.LATC6
#define TEST_OUT_PORT                 PORTCbits.RC6
#define TEST_OUT_WPU                  WPUCbits.WPUC6
#define TEST_OUT_OD                   ODCONCbits.ODCC6
#define TEST_OUT_ANS                  ANSELCbits.ANSC6
#define TEST_OUT_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define TEST_OUT_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define TEST_OUT_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define TEST_OUT_GetValue()           PORTCbits.RC6
#define TEST_OUT_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define TEST_OUT_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define TEST_OUT_SetPullup()          do { WPUCbits.WPUC6 = 1; } while(0)
#define TEST_OUT_ResetPullup()        do { WPUCbits.WPUC6 = 0; } while(0)
#define TEST_OUT_SetPushPull()        do { ODCONCbits.ODCC6 = 0; } while(0)
#define TEST_OUT_SetOpenDrain()       do { ODCONCbits.ODCC6 = 1; } while(0)
#define TEST_OUT_SetAnalogMode()      do { ANSELCbits.ANSC6 = 1; } while(0)
#define TEST_OUT_SetDigitalMode()     do { ANSELCbits.ANSC6 = 0; } while(0)

// get/set SDO aliases
#define SDO_TRIS                 TRISCbits.TRISC7
#define SDO_LAT                  LATCbits.LATC7
#define SDO_PORT                 PORTCbits.RC7
#define SDO_WPU                  WPUCbits.WPUC7
#define SDO_OD                   ODCONCbits.ODCC7
#define SDO_ANS                  ANSELCbits.ANSC7
#define SDO_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define SDO_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define SDO_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define SDO_GetValue()           PORTCbits.RC7
#define SDO_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define SDO_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define SDO_SetPullup()          do { WPUCbits.WPUC7 = 1; } while(0)
#define SDO_ResetPullup()        do { WPUCbits.WPUC7 = 0; } while(0)
#define SDO_SetPushPull()        do { ODCONCbits.ODCC7 = 0; } while(0)
#define SDO_SetOpenDrain()       do { ODCONCbits.ODCC7 = 1; } while(0)
#define SDO_SetAnalogMode()      do { ANSELCbits.ANSC7 = 1; } while(0)
#define SDO_SetDigitalMode()     do { ANSELCbits.ANSC7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/