/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18344
        Driver Version    :  2.00
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

#include "mcc_generated_files/mcc.h"
#include "time_map.h"

// hardware defines
#define GATE1_IN PORTAbits.RA5
#define GATE2_IN PORTAbits.RA3
// #define DAC_CS   PORTBbits.RB7
#define DAC_CS   LATBbits.LATB7
// #define TEST_OUT PORTCbits.RC6
#define TEST_OUT LATCbits.LATC6

// maximum level for ramping up
#define MAX_LEVEL 65535

// envelope modes
// #define MODE_ADSR 0
// #define MODE_AR 1
// #define MODE_LFO 2
// unsigned char env_mode[2];  // the ADSR, AR, LFO mode

// envelope states
#define ENV_IDLE 0
#define ENV_ATTACK 1
#define ENV_DECAY 2 
#define ENV_SUSTAIN 3
#define ENV_RELEASE 4
unsigned char env_state[2];  // the current ADSR state

// other stuff
unsigned char gate_state[2];  // the state of the gate
long env_level[2];  // the current DAC level for the output
unsigned int attack[2];  // step size for attack phase
unsigned int decay[2];  // step size for decay phase
unsigned int sustain[2];  // sustain level
unsigned int release[2];  // step size for release phase

// ADC stuff
unsigned char adc_chans[] = {12, 13, 2, 4};
unsigned char adc_vals[4];

// function prototypes
void load_dac(unsigned char chan, unsigned int val);
void reset_envelope(unsigned char chan);
void envelope_control(unsigned char chan, unsigned char gate);
unsigned int time_lookup(unsigned char val);
void Timer2ISR(void);


/*
                         Main application
 */
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    unsigned char chan_sel = 0;
    
    DAC_CS = 0x01; // Setting CS pin to high to disable serial clock and data functions.

	// clear outputs
	load_dac(0, 0); // chan 0, val 0
	load_dac(1, 0); // chan 1, val 0
    
	// kick off the ADC
    ADCON0bits.ADON = 1;
	ADCON0bits.ADGO = 1;

    
	// reset stuff
	env_state[0] = ENV_IDLE;
	env_state[1] = ENV_IDLE;
	gate_state[0] = 0;
	gate_state[1] = 0;
	env_level[0] = 0;
	env_level[1] = 0;
	attack[0] = 100;
	attack[1] = 100;
	decay[0] = 100;
	decay[1] = 100;
	sustain[0] = 4000;
	sustain[1] = 4000;
	release[0] = 1000;
	release[1] = 1000;
    
    

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    // INTERRUPT_PeripheralInterruptDisable();
    PIE1bits.TMR2IE = 1; 
    TMR2_SetInterruptHandler (Timer2ISR);     //Register the interrupt Handler

	// main loop!
	while(1) {

    /*    
        
	// CLRWDT();
        
	// read pot inputs
    ADCON0bits.ADGO = 1;
    if (!ADCON0bits.ADGO); {  
        //TEST_OUT = 1;
        INTERRUPT_GlobalInterruptDisable();   
		adc_vals[chan_sel] = ADRESH; // ADRESH: ADC RESULT REGISTER HIGH
        INTERRUPT_GlobalInterruptEnable();  
        chan_sel = (chan_sel + 1) & 0x07;
        ADCON0bits.CHS = adc_chans[chan_sel];
        ADCON0bits.ADGO = 1;   
        __delay_us(400);
        //TEST_OUT = 0;
        // INTERRUPT_GlobalInterruptEnable();  
   
    }    
      
     */ 
    INTERRUPT_GlobalInterruptDisable(); 
    adc_vals[chan_sel] = ADC_GetConversion(ADCON0bits.CHS);
    // __delay_us(400);
 
    chan_sel = (chan_sel + 1) & 0x07;
    ADCON0bits.CHS = adc_chans[chan_sel]; 
    
    INTERRUPT_GlobalInterruptEnable(); 
        
        
		// process pot input to control variables
	   INTERRUPT_GlobalInterruptDisable();

		switch(chan_sel) {
			case 0:
				attack[0] = time_lookup(adc_vals[0] >> 1);
				break;
			case 1:
				decay[0] = time_lookup(adc_vals[1] >> 1);
				break;
			case 2:
				sustain[0] = adc_vals[2] << 8;
				break;
			case 3:
				release[0] = time_lookup(adc_vals[3] >> 1);
				break;
			case 4:
				attack[1] = time_lookup(adc_vals[0] >> 1);
				break;
			case 5:
				decay[1] = time_lookup(adc_vals[1] >> 1);
				break;
			case 6:
				sustain[1] = adc_vals[2] << 8;
				break;
			case 7:
				release[1] = time_lookup(adc_vals[3] >> 1);
				break;
		}

         
        INTERRUPT_GlobalInterruptEnable();
        // reset_envelope(0);
        // reset_envelope(1);
        // __delay_ms(10);

    }

}

void Timer2ISR(void) {
    
	// timer 2 - 1ms interval
	
    // if (PIR1bits.TMR2IF){
        // PIR1bits.TMR2IF = 0;
    // TEST_OUT = 1;

    envelope_control(0, GATE1_IN);


    load_dac(0, (env_level[0] >> 4));
 // load_dac(1, (env_level[1] >> 4));
    // PIR1bits.TMR2IF = 0;
    // TEST_OUT = 0;
 	// }
}

// send output to DAC
void load_dac(unsigned char chan, unsigned int val) {


    unsigned char dac_bits;
    unsigned char temp_h;
    unsigned char temp_l;
    unsigned char read_buf;
    
    temp_h = val >> 8;
    temp_l = val;
    
    TRISBbits.TRISB6 = 0;
    TRISCbits.TRISC7 = 0;
    

    
    if(chan) dac_bits = 0b10010000; // DAC config bits: 0b0001
    else dac_bits = 0b00010000;     // DAC config bits: 0b1001
    

    read_buf = SSP1BUF;
    
    SSP1CON1 = 0x20;
    SSP1STAT = 0x40;
    DAC_CS = 0;  

    // bits 15-8
    SSP1BUF = dac_bits | temp_h;
    
//    while (!SSP1STATbits.BF);

    
    // bits 7-0
    SSP1BUF = temp_l;
 //   while (!SSP1STATbits.BF);
    
    
    DAC_CS = 1;
}

// reset an envelope
void reset_envelope(unsigned char chan) {
	if(chan > 1) return;
	env_state[chan] = ENV_IDLE;
	env_level[chan] = 0;
}

// control an envelope
// gate signal is inverted - 0 = on, 1 = off
void envelope_control(unsigned char chan, unsigned char gate) {
     
	if(chan > 1) return;

	// 
	// GATE CONTROL
	//

	else {
		// gate came on
		if(gate == 0 && gate_state[chan] == 0) {
			gate_state[chan] = 1;
			env_state[chan] = ENV_ATTACK;
            
		}
		// gate went off
		if(gate == 1 && gate_state[chan] == 1) {
			gate_state[chan] = 0;
			// only change to release phase for ADSR
			env_state[chan] = ENV_RELEASE;
            
		}
                    

	}

	//
	// ENV STATE CONTROL
	//
	// attack
	if(env_state[chan] == ENV_ATTACK) {
		env_level[chan] += attack[chan];
		// is it time to move to the decay or release phase?
		if(env_level[chan] > MAX_LEVEL) {
			env_level[chan] = MAX_LEVEL;
			env_state[chan] = ENV_DECAY;
			}
        	return;
		}

	
	// decay
	if(env_state[chan] == ENV_DECAY) {
		env_level[chan] -= decay[chan];
		// is it time to move to the sustain phase?
		if(env_level[chan] < sustain[chan]) {
			env_level[chan] = sustain[chan];
			env_state[chan] = ENV_SUSTAIN;
		}
		return;
	}
	// sustain
	if(env_state[chan] == ENV_SUSTAIN) {
		// make the sustain control interactive in real-time
		env_level[chan] = sustain[chan];
		return;
	}
	// release
	if(env_state[chan] == ENV_RELEASE) {
		env_level[chan] -= release[chan];
		// is it time to end the release phase?
        __delay_us(400);
        
		if(env_level[chan] < 0) {
			env_level[chan] = 0;
			env_state[chan] = ENV_IDLE;
		}
		return;
	}

}

// look up a time val and return the step size
unsigned int time_lookup(unsigned char val) {
	unsigned char temp;
	temp = FLASH_ReadWord(0x0800 + (val << 1));
    temp |= FLASH_ReadWord(0x0801 + (val << 1)) << 8;
	return temp;
}

    