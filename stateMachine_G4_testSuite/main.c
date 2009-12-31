/*
 ============================================================================
 Name        : StateMachine_G4.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <pthread.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define true	1

#include "stateMachine_G4.h"

#include "sm_test_timeBomb.h"
#include "sm_test_calculator.h"

//#include "sm_test_machine_c.h"


#ifdef __TS7800__
#define puts(s)		puts(s) ; fflush(stdout) ;

void* ISR_thread(	void* threadID)
{
	uint32_t	iterations = 0 ;

	puts("ISR thread started.") ;

	usleep(10000) ;

//	while(iterations < 5000)
	{
		iterations++ ;

		if((iterations % 1000) == 0)
		{
			puts(".") ;
		}

		usleep(1) ;
	}

	puts("ISR thread exited.") ;

	pthread_exit((void*)threadID) ;

	return NULL ;
}
#endif

#ifdef __c8051f040__
#include "config.h"
#include "HardwareAbstractionLayer.h"
#include "ioMapping.h"
#include "gpio.h"
#include "pwm.h"
#include "task_UART.h"

static void prvSetupSystemClock(	void ) ;
static void prvSetupTimerInterrupt(	void ) ;

static volatile bool		timeForTickProcessing ;				// set in an ISR so volatile is needed
#endif

#ifdef __c8051f040__
void main(	void)
#else
int main()
#endif
{
	int				rc ;
	pthread_t		ISR_threadHandle ;
	void*			ISR_threadStatus ;
	bool			ok = true ;
	stateMachine_t*	bomb ;
	stateMachine_t*	calculator ;
	static int iterationMax = 10 ;

	puts("4th Generation state machine test started.") ;

#ifdef __TS7800__
	rc = pthread_create(&ISR_threadHandle, NULL, ISR_thread, (void*)&ISR_threadStatus) ;

	if (rc != 0)
	{
		puts("\nInternal error starting ISR thread.  Exiting...\n") ;

		exit(EXIT_FAILURE) ;
	}
#endif
#ifdef __c8051f040__
	WDTCN = 0xDE ;	// Disable the watchdog timer
	WDTCN = 0xAD ;
	WDTCN = 0xFF ;	// Disable any future ability to modify the watchdog timer

	prvSetupSystemClock() ;
	gpio_init() ;
	pwm_init(ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL) ;
	prvSetupTimerInterrupt() ;
	task_UART_init(0) ;

	portENABLE_INTERRUPTS() ;
#endif

	puts("Generating timebomb") ;

	bomb = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

	if(bomb)
	{
		REGISTER_STATE_MACHINE(bomb) ;
	}

	puts("Generating calculator") ;

	calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;

	if(calculator)
	{
		puts("Registering calculator") ;

		REGISTER_STATE_MACHINE(calculator) ;
	}

	puts("Iterating state machines") ;

	while(ok)
	{
		if(iterationMax-- == 0)
		{
			ok = false ;
		}

		puts("loop") ;

		ITERATE_ALL_STATE_MACHINES() ;
	}

#ifdef __TS7800__
	pthread_join(ISR_threadHandle, &ISR_threadStatus) ;
#endif

	if(calculator)
	{
		UNREGISTER_STATE_MACHINE(calculator) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(calculator, calculator) ;

		calculator = 0 ;
	}

	if(bomb)
	{
		UNREGISTER_STATE_MACHINE(bomb) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(timeBomb, bomb) ;

		bomb = 0 ;
	}

	puts("\n4th Generation state machine test done.") ;

#ifdef __TS7800__
	return EXIT_SUCCESS ;
#endif
}


#ifdef __c8051f040__
void taskSwitcherTickHook(	void)
{
	timeForTickProcessing = true ;
}


// Now include the project specific hardware interface C file directly. This
// is a bit unusual but I'm doing since I want to be able to keep the hardware
// specific code in one place for code clarity reasons, but the ISRs must be
// in the same file as main() with this compiler. This gives me both.

#include "projectSpecificHardwareInterface_C8051F040.c"
#endif
