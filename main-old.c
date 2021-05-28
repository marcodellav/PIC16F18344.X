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
#define MODE2_SW_ADSR PORTAbits.RA0
#define MODE2_SW_LFO PORTAbits.RA1
#define GATE1_IN PORTAbits.RA3
#define GATE2_IN PORTAbits.RA5
#define DAC_CS PORTBbits.RB7 // CS is connected to the DAC's Chip Select input pin, which requires an active-low to enable serial clock and data functions
#define MODE1_SW_ADSR PORTCbits.RC4
#define MODE1_SW_LFO PORTCbits.RC5
#define TEST_OUT PORTCbits.RC6

// maximum level for ramping up
#define MAX_LEVEL 65535

// envelope modes
#define MODE_ADSR 0
#define MODE_AR 1
#define MODE_LFO 2
unsigned char env_mode[2];  // the ADSR, AR, LFO mode

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
unsigned char adc_chans[] = {10, 11, 2, 3, 4, 5, 6, 7};
unsigned char adc_vals[8];

// function prototypes
void load_dac(unsigned char chan, unsigned int val);
void spi_init(void);
void reset_envelope(unsigned char chan);
void envelope_control(unsigned char chan, unsigned char gate);
unsigned int time_lookup(unsigned char val);
unsigned int flash_read(unsigned int flash_adr);

/*
 * Main.
 */
void main(void) {

    // initialize the device
    SYSTEM_Initialize();

	unsigned char chan_sel = 0;

	// initialise I/O
	//OSCCON = 0x71; // See OSCILLATOR_Initialize
	//OPTION_REG = 0x0f; // PSA = 1 -> pre-scaler is assigned to the WDT, PS<2:0> = 111 -> WDT RATE is 1:128. Use WDTCON: WATCHDOG TIMER CONTROL REGISTER See WDT_Initialize
	//WPUA = 0x03; // WPUA<2:0> = 11 weak pull-ups enabled
    //WPUA = 0x37; // WPUA<2:0> = 11 weak pull-ups enabled
	//ANSEL = 0xfc; // ANS<7:0> = 1111 1100 -> pins 7,6,5,4,3,2 assigned as analogue inputs, pins 1,0 assigned as digital I/O
	//ANSELH = 0x0c; // ANS<11:8> = 1100 -> pins 11, 10 assigned as analogue inputs, pins 9,8 assigned as digital I/O
	//TRISA = 0x3f; // TRISA<5:0> = 111111 -> PORTA pins 5,4,3,2,1,0 are configured as inputs
	//PORTA = 0x00; // RA<5:0> = 000000 -> PORTA I/O Pins 5,4,3,2,1,0 are < V IL
	//TRISB = 0x30; // TRISB<7:4> = 0011 -> PORTB pins 7,6 are configured as outputs, PORTB pins 5,4 are configured as inputs, 
	//PORTB = 0x00; // RB<7:4> 0000 -> PORTB  I/O Pins 7,6,5,4 are < V IL
	//TRISC = 0x3f; // TRISC<7:0> = 111111 -> PORTC pins 7,6 pins are configured as outputs, 5,4,3,2,1,0 are configured as inputs
	//PORTC = 0x00;
	// ADCON0 = 0x01; // ADON = 1 -> ADC is enabled, GO/DONE = 0 -> conversion not in progress, CHS<3:0> = 0000 -> channel AN0 selected, 
                   // VCFG = 0 -> voltage reference is VDD, ADFM = 0 -> A/D conversion result format is: left justified
	// ADCON1 = 0x50; // 0b1010000 ADCS<2:0> = 101 -> conversion clock frequency is FOSC/16
    
	// SPI
    
    // spi_init();

	// DAC_CS = 0x01; // Setting CS pin to high to disable serial clock and data functions.
    
	// TRISBbits.TRISB4 = 1; // PORTB4 is configured as input
    
    

	// timer 2 - 1024ms interval
	//T2CON = 0x3c; // 0b00111100
                  // T2CON: TIMER 2 CONTROL REGISTER
                  // bit 6-3 TOUTPS<3:0>: Timer2 Output Postscaler Select bits (0111 =1:8 Postscaler)
                  // bit 2   TMR2ON: Timer2 On bit (1 = Timer2 is on)
                  // bit 1-0 T2CKPS<1:0>: Timer2 Clock Prescale Select bits (00 =Prescaler is 1)
    
	// clear outputs
	load_dac(0, 0); // chan 0, val 0
	load_dac(1, 0); // chan 1, val 0
	
	// kick off the ADC
	ADCON0bits.GO = 1;

	// reset stuff
	// env_mode[0] = MODE_ADSR;
	// env_mode[1] = MODE_ADSR;
	// env_state[0] = ENV_IDLE;
	// env_state[1] = ENV_IDLE;
	// gate_state[0] = 0;
	// gate_state[1] = 0;
	// env_level[0] = 0;
	// env_level[1] = 0;
	// attack[0] = 100;
	// attack[1] = 100;
	// decay[0] = 100;
	// decay[1] = 100;
	// sustain[0] = 4000;
	// sustain[1] = 4000;
	// release[0] = 100;
	// release[1] = 100;

	// timer 2 int
	INTCON = 0x00;
	INTCONbits.PEIE = 0x01;
	PIE1bits.TMR2IE = 0x01;
	INTCONbits.GIE = 0x01;	

	// main loop!
	while(1) {
		CLRWDT();
		// read pot inputs
		if(!ADCON0bits.GO) {   // ADCON0: A/D CONTROL REGISTER 0, 
                               // GO/DONE: A/D Conversion Status bit (0 = A/D conversion completed/not in progress)
			INTCONbits.GIE = 0; // INTCON: INTERRUPT CONTROL REGISTER 
                                // GIE: Global Interrupt Enable bit (0 = Disables all interrupts)                                          
			adc_vals[chan_sel] = ADRESH; // ADRESH: ADC RESULT REGISTER HIGH
			INTCONbits.GIE = 1;
			chan_sel = (chan_sel + 1) & 0x07;
			ADCON0 &= 0xc3;
			ADCON0 |= (adc_chans[chan_sel] & 0x0f) << 2;
			__delay_us(50);  // acq time
			ADCON0bits.GO = 1;
		}
        
        

		// process pot input to control variables
		INTCONbits.GIE = 0;
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
				attack[1] = time_lookup(adc_vals[4] >> 1);
				break;
			case 5:
				decay[1] = time_lookup(adc_vals[5] >> 1);
				break;
			case 6:
				sustain[1] = adc_vals[6] << 8;
				break;
			case 7:
				release[1] = time_lookup(adc_vals[7] >> 1);
				break;
		}
		INTCONbits.GIE = 1;
        
        if(env_mode[0] != MODE_AR) {
				env_mode[0] = MODE_AR;
				reset_envelope(0);}

		// handle mode switches
		if(!MODE1_SW_ADSR) {
			if(env_mode[0] != MODE_ADSR) {
				env_mode[0] = MODE_ADSR;
				reset_envelope(0);
			}
		}
		else if(!MODE1_SW_LFO) {
			if(env_mode[0] != MODE_LFO) {
				env_mode[0] = MODE_LFO;
				reset_envelope(0);
			}
		}
		else {
			if(env_mode[0] != MODE_AR) {
				env_mode[0] = MODE_AR;
				reset_envelope(0);
			}
		}

		if(!MODE2_SW_ADSR) {
			if(env_mode[1] != MODE_ADSR) {
				env_mode[1] = MODE_ADSR;
				reset_envelope(1);
			}
		}
		else if(!MODE2_SW_LFO) {
			if(env_mode[1] != MODE_LFO) {
				env_mode[1] = MODE_LFO;
				reset_envelope(1);
			}
		}
		else {
			if(env_mode[1] != MODE_AR) {
				env_mode[1] = MODE_AR;
				reset_envelope(1);
			}
		}
 
        __delay_ms(10);
 
}

}

// interrupt handler
void __interrupt() my_isr(void) {
	// timer 2 - 1ms interval
	 if(PIR1bits.TMR2IF) { // PIR1: PERIPHERAL INTERRUPT REQUEST REGISTER 1
                          // TMR2IF: Timer2 to PR2 Interrupt Flag bit (1 = A Timer2 to PR2 match occurred (must be cleared in software))
		PIR1bits.TMR2IF = 0;
		TEST_OUT = 1;

		envelope_control(0, GATE1_IN);
		envelope_control(1, GATE2_IN);

		load_dac(0, (env_level[0] >> 4));
		load_dac(1, (env_level[1] >> 4));
        
		TEST_OUT = 0;
	}
}

void spi_init(void) {
    
    TRISCbits.TRISC7 = 0x00; // SDO must have TRISC<7> bit cleared
    TRISBbits.TRISB6 = 0x00; // SCK (master mode) must have TRISB<6> bit cleared
    TRISCbits.TRISC6 = 0x00; // 
    
    SSPSTATbits.CKE = 1;
    
    SSPCONbits.SSPEN=0;    
    // Disable port to allow configuration 
    SSPCONbits.WCOL = 0;
    SSPCONbits.SSPOV = 0;
    // SSPCONbits.SSPEN=1;
    SSPCONbits.CKP = 0; 
    SSPCONbits.SSPM3 = 0;                 // CLK=Fosc/4  (2MHz)
    SSPCONbits.SSPM2 = 0;
    SSPCONbits.SSPM1 = 0;
    SSPCONbits.SSPM0 = 0;

    SSPCONbits.SSPEN=1;                   // Enable 
    
}


// send output to DAC
void load_dac(unsigned char chan, unsigned int val) {
    unsigned char dac_bits;
    unsigned int temp_h;
    unsigned int temp_l;
    unsigned char read_buf;

    temp_h = val >> 2;
    temp_l = val;
    
    if(chan) dac_bits = 0b10010000; // DAC config bits: 0b0001
    else dac_bits = 0b00010000;     // DAC config bits: 0b1001

    DAC_CS = 0;
        
    // bits 15-8
    SSP1BUF = dac_bits | (temp_h << 8);

    // bits 7-0
    SSP1BUF = temp_l << 8;
    
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
	if(env_mode[chan] == MODE_LFO) {
		// restart the envelope if it is stopped
		if(env_state[chan] == ENV_IDLE) {
			env_state[chan] = ENV_ATTACK;
		}
	}
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
			if(env_mode[chan] == MODE_ADSR) env_state[chan] = ENV_RELEASE;
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
			// ADSR mode
			if(env_mode[chan] == MODE_ADSR) {
				env_state[chan] = ENV_DECAY;
			}
			// AR or LFO mode
			else {
				env_state[chan] = ENV_RELEASE;
			}
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
		if(env_level[chan] < 0) {
			env_level[chan] = 0;
			env_state[chan] = ENV_IDLE;
		}
		return;
	}
}

// look up a time val and return the step size
unsigned int time_lookup(unsigned char val) {
	unsigned int temp;
	temp = flash_read(0x0800 + (val << 1));
	temp |= flash_read(0x0801 + (val << 1)) << 8;
	return temp;
}


unsigned int flash_read(unsigned int flash_adr) {
    INTCONbits.GIE = 0;
    short int flash_value = 0;
    
    EEADRH = flash_adr >> 8;
    EEADR = flash_adr & 0x00FF;
    
    NVMCON1bits.NVMREGS = 0x01;
    NVMCON1bits.RD = 0x01;
    
    flash_value = EEDAT;
    return flash_value;    
    INTCONbits.GIE = 1;

}