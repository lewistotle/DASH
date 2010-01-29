/*
 ============================================================================
 Name        : StateMachine_G4.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */


#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/time.h>

#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <termios.h>


#ifdef __AVR_ARCH__
#define EXIT_SUCCESS	0
#endif

#define true	1

#include "stateMachine_G4.h"

#include "sm_globalEvents.h"
#include "sm_test_timeBomb.h"
#include "sm_test_calculator.h"

#include "task_UART.h"

void task_TIMER_init(		void) ;
void task_TIMER_core(		void) ;
void task_TIMER_shutdown(	void) ;

stateMachine_t*	bomb ;
stateMachine_t*	calculator ;

#if configENABLE_CALC_2
	stateMachine_t*	calc2 ;
#endif

void handleKeypress(uint8_t c)
{
	eventType_t	eventType = SUBSTATE_NON_EVENT ;

	if((c == 'c') || (c == 'C'))
	{
		eventType = CLEAR ;
	}
	else if(c == 0x1B)
	{
		eventType = CLEAR_ENTRY ;
	}
	else if(c == '0')
	{
		eventType = DIGIT_0 ;
	}
	else if((c >= '1') && (c <= '9'))
	{
		eventType = DIGIT_1_9 ;
	}
	else if(c == '.')
	{
		eventType = POINT ;
	}
	else if((c == '+') || (c == '-') || (c == '*') || (c == '/'))
	{
		eventType = OPERATION ;
	}
	else if((c == '='))
	{
		eventType = EQUALS ;
	}

	if(eventType != SUBSTATE_NON_EVENT)
	{
#if configENABLE_CALC_2
		static int	counter = 0 ;
#endif
		keyEvent_t*	event ;

#if configENABLE_CALC_2
		if(counter & 0x01)
		{
			event = (keyEvent_t*)hsm_createNewEvent(calc2, eventType, sizeof(keyEvent_t)) ;
		}
		else
		{
#endif
			event = (keyEvent_t*)hsm_createNewEvent(calculator, eventType, sizeof(keyEvent_t)) ;
#if configENABLE_CALC_2
		}
#endif

		if(event)
		{
			event->key = c ;

			printf(" %c: ", c) ;

#if 1
	#if configENABLE_CALC_2
			if(counter & 0x01)
			{
				hsm_postEventToMachine(event, calc2) ;
			}
			else
			{
	#endif
				hsm_postEventToMachine((event_t*)event, calculator) ;
	#if configENABLE_CALC_2
			}
	#endif

	#if configENABLE_CALC_EVENT_TOGGLING
			counter++ ;
	#endif
#else
			hsm_publishEventForAll(event) ;
#endif
		}
		else
		{
			printf("UNABLE TO ALLOCATE EVENT\n") ;
		}
	}
}


void handleTimer(	void)
{
}


extern uint32_t	uptime_hours ;
extern uint32_t	uptime_microseconds ;

void handleTick(	void)
{
#if 0
	tickEvent_t*	event = (tickEvent_t*)hsm_createNewEvent(GLOBAL, SUBSTATE_TICK, sizeof(tickEvent_t)) ;

	event->uptime_hours_currentTime			= uptime_hours ;
	event->uptime_microseconds_currentTime	= uptime_microseconds ;

	hsm_publishEventForAll(event) ;
#endif
}


#if defined(__TS7800__) || defined(__cygwin__) || defined(__AVR_ARCH__)
int main()
#else
void main(	void)
#endif
{
	bool		ok				= true ;
#if 0
	static int	iterationMax	= 10 ;
#endif

	puts("4th Generation state machine test started.") ;

	task_UART_init(0) ;
	task_TIMER_init() ;

	puts("Generating timebomb") ;

	bomb = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

	if(bomb)
	{
		puts("Registering timebomb") ;

		REGISTER_STATE_MACHINE(bomb) ;
	}

	puts("Generating calculator") ;

	calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;

	if(calculator)
	{
		puts("Registering calculator") ;

		REGISTER_STATE_MACHINE(calculator) ;
	}
#if configENABLE_CALC_2
	calc2 = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;

	if(calc2)
	{
		puts("Registering calc2") ;

		REGISTER_STATE_MACHINE(calc2) ;
	}
#endif
	puts("Iterating state machines") ;

	while(ok)
	{
#if 0
		if(iterationMax-- == 0)
		{
			ok = false ;
		}
#endif

#if 0
		puts("loop") ;
#endif

		task_UART_core(0) ;
		task_TIMER_core() ;

		ITERATE_ALL_STATE_MACHINES() ;
		fflush(stdout) ;
		usleep(10000) ;
	}

	task_UART_shutdown(0) ;
	task_TIMER_shutdown() ;

#if configENABLE_CALC_2
	if(calc2)
	{
		UNREGISTER_STATE_MACHINE(calc2) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(calculator, calc2) ;

		calc2 = 0 ;
	}
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

#if defined(__TS7800__) || defined(__cygwin__) || defined(__AVR_ARCH__)
	return EXIT_SUCCESS ;
#endif
}


#ifdef __c8051f040__
void taskSwitcherTickHook(	void)
{
	timeForTickProcessing = true ;
}


/* Now include the project specific hardware interface C file directly. This
 * is a bit unusual but I'm doing since I want to be able to keep the hardware
 * specific code in one place for code clarity reasons, but the ISRs must be
 * in the same file as main() with this compiler. This gives me both.
 */

#include "projectSpecificHardwareInterface_C8051F040.c"
#endif
