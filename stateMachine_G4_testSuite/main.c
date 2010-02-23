/*
 ============================================================================
 Name        : StateMachine_G4.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */


#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#if defined(__TS7800__) || defined(__cygwin__)
	#include <sys/time.h>
	#include <unistd.h>
	#include <termios.h>
	#include <pthread.h>

	pthread_mutex_t	hsm_mutex = PTHREAD_MUTEX_INITIALIZER ;
#elif defined(__AVR_ARCH__)
	#define EXIT_SUCCESS	0
#endif

#include "task_UART.h"


#include "stateMachine_G4.h"
#include "sm_globalEvents.h"
#include "sm_test_timeBomb.h"
#include "sm_test_calculator.h"
#include "sm_test_fourLevelTest.h"



void task_TIMER_init(		void) ;
void task_TIMER_core(		void) ;
void task_TIMER_shutdown(	void) ;

stateMachine_t*	bomb_0 ;
stateMachine_t*	bomb_1 ;
stateMachine_t*	bomb_2 ;
stateMachine_t*	calculator ;
stateMachine_t*	fourLevelTest ;

static bool ok = true ;

void handleKeypress(uint8_t c)
{
	stateMachine_t*	target ;
	eventType_t		eventType = SUBSTATE_NON_EVENT ;

	switch(c)
	{
		case 0x1B:	{ ok = false ;											break ; }

		case 'i':
		case 'I':	{ target = bomb_0 ;			eventType = UP ;			break ; }
		case 'o':
		case 'O':	{ target = bomb_0 ;			eventType = DOWN ;			break ; }
		case 'p':
		case 'P':	{ target = bomb_0 ;			eventType = ARM ;			break ; }

		case 'j':
		case 'J':	{ target = bomb_1 ;			eventType = UP ;			break ; }
		case 'k':
		case 'K':	{ target = bomb_1 ;			eventType = DOWN ;			break ; }
		case 'l':
		case 'L':	{ target = bomb_1 ;			eventType = ARM ;			break ; }

		case 'n':
		case 'N':	{ target = bomb_2 ;			eventType = UP ;			break ; }
		case 'm':
		case 'M':	{ target = bomb_2 ;			eventType = DOWN ;			break ; }
		case ',':	{ target = bomb_2 ;			eventType = ARM ;			break ; }

		case 'q':
		case 'Q':	{ target = calculator ;		eventType = CLEAR ;			break ; }
		case 'w':
		case 'W':	{ target = calculator ;		eventType = CLEAR_ENTRY ;	break ; }
		case '0':	{ target = calculator ;		eventType = DIGIT_0 ;		break ; }
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':	{ target = calculator ;		eventType = DIGIT_1_9 ;		break ; }
		case '.':	{ target = calculator ;		eventType = POINT ;			break ; }
		case '+':
		case '-':
		case '*':
		case '/':	{ target = calculator ;		eventType = OPERATION ;		break ; }
		case '=':	{ target = calculator ;		eventType = EQUALS ;		break ; }

		case 'a':
		case 'A':	{ target = fourLevelTest ;	eventType = A ;				break ; }
		case 'b':
		case 'B':	{ target = fourLevelTest ;	eventType = B ;				break ; }
		case 'c':
		case 'C':	{ target = fourLevelTest ;	eventType = C ;				break ; }
		case 'd':
		case 'D':	{ target = fourLevelTest ;	eventType = D ;				break ; }
		case 'e':
		case 'E':	{ target = fourLevelTest ;	eventType = E ;				break ; }
		case 'f':
		case 'F':	{ target = fourLevelTest ;	eventType = F ;				break ; }
		case 'g':
		case 'G':	{ target = fourLevelTest ;	eventType = G ;				break ; }
		case 'h':
		case 'H':	{ target = fourLevelTest ;	eventType = H ;				break ; }
		case 'u':
		case 'U':	{ target = fourLevelTest ;	eventType = U ;				break ; }

		case 't':
		case 'T':	{ target = 0 ;				eventType = ARMAGEDDON ;	break ; }
	}

	if(eventType != SUBSTATE_NON_EVENT)
	{
		keyEvent_t*	event ;

		if(target)
		{
			event = (keyEvent_t*)hsm_createNewEvent(target, eventType, sizeof(keyEvent_t)) ;
		}
		else
		{
			/* global publishable event */

			static keyEvent_t	everyoneGoBoom ;

			everyoneGoBoom.parent.eventType				= ARMAGEDDON ;
			everyoneGoBoom.parent.eventListenerCount	= 0 ;

			event = &everyoneGoBoom ;
		}

		if(event)
		{
			event->key = c ;
		}
		else
		{
			printf("UNABLE TO ALLOCATE EVENT\n") ;
		}

		if(target == bomb_0)
		{
			hsm_postEventToMachine((event_t*)event, bomb_0) ;
		}
		else if(target == bomb_1)
		{
			hsm_postEventToMachine((event_t*)event, bomb_1) ;
		}
		else if(target == bomb_2)
		{
			hsm_postEventToMachine((event_t*)event, bomb_2) ;
		}
		else if(target == calculator)
		{
			hsm_postEventToMachine((event_t*)event, calculator) ;
		}
		else if(target == fourLevelTest)
		{
			hsm_postEventToMachine((event_t*)event, fourLevelTest) ;
		}
		else if(target == 0)
		{
			hsm_publishEventToAll((event_t*)event) ;
		}
	}
}


#if defined(__TS7800__) || defined(__cygwin__) || defined(__AVR_ARCH__)
int main()
#else
void main(	void)
#endif
{
	ok = true ;

	puts("4th Generation state machine test started.") ;

	task_UART_init(0) ;
	task_TIMER_init() ;

	bomb_0 = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

	if(bomb_0)
	{
		REGISTER_STATE_MACHINE(bomb_0) ;
	}

	bomb_1 = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

	if(bomb_1)
	{
		REGISTER_STATE_MACHINE(bomb_1) ;
	}

	bomb_2 = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

	if(bomb_2)
	{
		REGISTER_STATE_MACHINE(bomb_2) ;
	}

	calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;

	if(calculator)
	{
		REGISTER_STATE_MACHINE(calculator) ;
	}

	fourLevelTest = STATE_MACHINE_CREATE_INSTANCE_OF(fourLevelTest) ;

	if(fourLevelTest)
	{
		REGISTER_STATE_MACHINE(fourLevelTest) ;
	}

	puts("Iterating state machines") ;

	while(ok)
	{
		task_UART_core(0) ;
		task_TIMER_core() ;

		ITERATE_ALL_STATE_MACHINES() ;
		fflush(stdout) ;
		usleep(10000) ;
	}

	task_UART_shutdown(0) ;
	task_TIMER_shutdown() ;

	if(fourLevelTest)
	{
		UNREGISTER_STATE_MACHINE(fourLevelTest) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(fourLevelTest) ;

		fourLevelTest = 0 ;
	}

	if(calculator)
	{
		UNREGISTER_STATE_MACHINE(calculator) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(calculator) ;

		calculator = 0 ;
	}

	if(bomb_2)
	{
		UNREGISTER_STATE_MACHINE(bomb_2) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(bomb_2) ;

		bomb_2 = 0 ;
	}

	if(bomb_1)
	{
		UNREGISTER_STATE_MACHINE(bomb_1) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(bomb_1) ;

		bomb_1 = 0 ;
	}

	if(bomb_0)
	{
		UNREGISTER_STATE_MACHINE(bomb_0) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(bomb_0) ;

		bomb_0 = 0 ;
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
