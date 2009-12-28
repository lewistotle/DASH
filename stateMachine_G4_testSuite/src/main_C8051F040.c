/*
 * main_C8051F040.c
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#include "stateMachine_G4.h"

#include "sm_test_timeBomb.h"
#include "sm_test_calculator.h"

#include <stdio.h>

#include "config.h"
#include "HardwareAbstractionLayer.h"
#include "ioMapping.h"
#include "gpio.h"
#include "pwm.h"
#include "task_UART.h"

static void prvSetupSystemClock(	void ) ;
static void prvSetupTimerInterrupt(	void ) ;

static volatile bool		timeForTickProcessing ;				// set in an ISR so volatile is needed

void main(	void)
{
	bool			ok = true ;
	stateMachine_t*	bomb ;
	stateMachine_t*	calculator ;

	WDTCN = 0xDE ;	// Disable the watchdog timer
	WDTCN = 0xAD ;
	WDTCN = 0xFF ;	// Disable any future ability to modify the watchdog timer

	prvSetupSystemClock() ;
	gpio_init() ;
	pwm_init(ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL) ;
	prvSetupTimerInterrupt() ;
	task_UART_init(0) ;

	portENABLE_INTERRUPTS() ;

	puts("4th Generation state machine test started.") ;

	bomb = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

	if(bomb)
	{
//		REGISTER_STATE_MACHINE(bomb) ;
	}

	calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;

	if(calculator)
	{
		REGISTER_STATE_MACHINE(calculator) ;
	}

	while(true)
	{
		static bool processed = false ;

		if(timeForTickProcessing)
		{
			timeForTickProcessing = false ;

//			task_UART_core(0) ;

			if(!processed)
			{
				processed = true ;

				puts("loop") ;

				ITERATE_ALL_STATE_MACHINES() ;
			}
		}
	}
}


void taskSwitcherTickHook(	void)
{
	timeForTickProcessing = true ;
}


// Now include the project specific hardware interface C file directly. This
// is a bit unusual but I'm doing since I want to be able to keep the hardware
// specific code in one place for code clarity reasons, but the ISRs must be
// in the same file as main() with this compiler. This gives me both.

#include "projectSpecificHardwareInterface_C8051F040.c"
