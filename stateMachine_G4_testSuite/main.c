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

#if defined(__TS7800__) || defined(__cygwin__) || defined(__linux__)
	#include <sys/time.h>
	#include <unistd.h>
	#include <termios.h>
	#include <pthread.h>

	#if !defined(__TS7800__)
		pthread_mutex_t	hal_mutex = PTHREAD_MUTEX_INITIALIZER ;
	#endif
	pthread_mutex_t	hsm_mutex = PTHREAD_MUTEX_INITIALIZER ;
	int				criticalSectionLockAttempts ;
	int				criticalSectionLockEntries ;
#elif defined(__AVR_ARCH__)
	#include <avr/sleep.h>

	#define EXIT_SUCCESS	0
#elif defined(__c8051f040__)
	#include <C8051F040.h>

	void gpio_init_projectSpecific(	void) ;
#endif


#define includeTimeBombs		1
#define numberOfTimeBombs		3
#define includeCalculator		1
#define	includeFourLevelTest	1

#ifdef __c8051f040__
	#undef	numberOfTimeBombs
	#define	numberOfTimeBombs		1

	#undef	includeTimeBombs
	#define	includeTimeBombs		1

	#undef	includeCalculator
	#define	includeCalculator		0

	#undef	includeFourLevelTest
	#define	includeFourLevelTest	0
#endif

#ifdef __AVR_ARCH__
	#undef	includeTimeBombs
	#define	includeTimeBombs		0

	#undef	includeCalculator
	#define	includeCalculator		0

	#undef	includeFourLevelTest
	#define	includeFourLevelTest	0
#endif


#include "hal.h"
#include "hal_UART.h"
#include "stateMachine_G4.h"
#include "sm_globalEvents.h"
#if includeTimeBombs
	#include "sm_test_timeBomb.h"
#endif
#if includeCalculator
	#include "sm_test_calculator.h"
#endif
#if includeFourLevelTest
	#include "sm_test_fourLevelTest.h"
#endif

#if includeTimeBombs
	#if numberOfTimeBombs >= 1
		stateMachine_t __xdata*	bomb_0 ;
	#endif
	#if numberOfTimeBombs >= 2
		stateMachine_t*	bomb_1 ;
	#endif
	#if numberOfTimeBombs >= 3
		stateMachine_t*	bomb_2 ;
	#endif
#endif
#if includeCalculator
	stateMachine_t*	calculator ;
#endif
#if includeFourLevelTest
	stateMachine_t*	fourLevelTest ;
#endif

static volatile	bool	ok						= true ;

extern hal_UART_info_t* UART_0 ;


void handleKeypress(uint8_t c) ;


#if defined(__TS7800__) || defined(__cygwin__) || defined(__linux__) || defined(__AVR_ARCH__)
	#ifdef USING_NEWLIB
		int _start()
	#else
		int main()
	#endif
#else
void main(	void)
#endif
{
	hal_init() ;
	hal_clock_init() ;
	hal_timer_init() ;
	hal_gpio_init() ;
	hal_UART_init(UART_0) ;

	hal_UART_puts(UART_0, "\n\n") ;

	ok = true ;
	puts("DASH test started.") ;
	printf("Registering state machines\n") ;

#if includeTimeBombs
	#if numberOfTimeBombs >= 1
		bomb_0 = (stateMachine_t __xdata*)STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

		if(bomb_0)
		{
			REGISTER_STATE_MACHINE(bomb_0) ;
		}
	#endif
	#if numberOfTimeBombs >= 2
		bomb_1 = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

		if(bomb_1)
		{
			REGISTER_STATE_MACHINE(bomb_1) ;
		}
	#endif
	#if numberOfTimeBombs >= 3
		bomb_2 = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

		if(bomb_2)
		{
			REGISTER_STATE_MACHINE(bomb_2) ;
		}
	#endif
#endif
#if includeCalculator
	calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;

	if(calculator)
	{
		REGISTER_STATE_MACHINE(calculator) ;
	}
#endif
#if includeFourLevelTest
	fourLevelTest = STATE_MACHINE_CREATE_INSTANCE_OF(fourLevelTest) ;

	if(fourLevelTest)
	{
		REGISTER_STATE_MACHINE(fourLevelTest) ;
	}
#endif

	puts("Iterating state machines\n") ;

	portENABLE_INTERRUPTS() ;

	while(ok)
	{
		if(hal_timer_is_time_for_tick_processing())
		{
			hal_UART_core(UART_0) ;

			if(hal_UART_hasCharBeenReceived(UART_0))
			{
				handleKeypress(hal_UART_getchar(UART_0)) ;
			}

#if includeTimeBombs
	#if numberOfTimeBombs >= 1
			if(bomb_0)
			{
				ITERATE_SINGLE_STATE_MACHINE(bomb_0) ;
			}
	#endif
	#if numberOfTimeBombs >= 2
			if(bomb_1)
			{
				ITERATE_SINGLE_STATE_MACHINE(bomb_1) ;
			}
	#endif
	#if numberOfTimeBombs >= 3
			if(bomb_2)
			{
				ITERATE_SINGLE_STATE_MACHINE(bomb_2) ;
			}
	#endif
#endif
#if includeCalculator
			if(calculator)
			{
				ITERATE_SINGLE_STATE_MACHINE(calculator) ;
			}
#endif
#if includeFourLevelTest
			if(fourLevelTest)
			{
				REGISTER_STATE_MACHINE(fourLevelTest) ;
			}
#endif

			hal_timer_tick_procesed() ;
		}
	}

	puts("DONE with state machines") ;

#if includeFourLevelTest
	if(fourLevelTest)
	{
		UNREGISTER_STATE_MACHINE(fourLevelTest) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(fourLevelTest) ;

		fourLevelTest = 0 ;
	}
#endif
#if includeCalculator
	if(calculator)
	{
		UNREGISTER_STATE_MACHINE(calculator) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(calculator) ;

		calculator = 0 ;
	}
#endif
#if includeTimeBombs
	#if numberOfTimeBombs >= 3
		if(bomb_2)
		{
			UNREGISTER_STATE_MACHINE(bomb_2) ;

			STATE_MACHINE_DESTROY_INSTANCE_OF(bomb_2) ;

			bomb_2 = 0 ;
		}
	#endif
	#if numberOfTimeBombs >= 2
		if(bomb_1)
		{
			UNREGISTER_STATE_MACHINE(bomb_1) ;

			STATE_MACHINE_DESTROY_INSTANCE_OF(bomb_1) ;

			bomb_1 = 0 ;
		}
	#endif
	#if numberOfTimeBombs >= 1
		if(bomb_0)
		{
			UNREGISTER_STATE_MACHINE(bomb_0) ;

			STATE_MACHINE_DESTROY_INSTANCE_OF(bomb_0) ;

			bomb_0 = 0 ;
		}
	#endif
#endif

	hal_UART_shutdown(UART_0) ;
	hal_gpio_shutdown() ;
	hal_timer_shutdown() ;
	hal_clock_shutdown() ;
	hal_shutdown() ;

	puts("\nDASH test done.") ;

#if defined(__linux__)
	exit(0) ;
#endif
#if defined(__TS7800__) || defined(__cygwin__) || defined(__AVR_ARCH__)
	return EXIT_SUCCESS ;
#endif
}


void handleKeypress(uint8_t c)
{
	stateMachine_t*	target		= NULL ;
	eventType_t		eventType	= SUBSTATE_NON_EVENT ;

	switch(c)
	{
		case 0x1B:	{ ok = false ;											break ; }

#if includeTimeBombs
	#if numberOfTimeBombs >= 1
		case 'i':
		case 'I':	{ target = bomb_0 ;			eventType = UP ;			break ; }
		case 'o':
		case 'O':	{ target = bomb_0 ;			eventType = DOWN ;			break ; }
		case 'p':
		case 'P':	{ target = bomb_0 ;			eventType = ARM ;			break ; }
	#endif
	#if numberOfTimeBombs >= 2
		case 'j':
		case 'J':	{ target = bomb_1 ;			eventType = UP ;			break ; }
		case 'k':
		case 'K':	{ target = bomb_1 ;			eventType = DOWN ;			break ; }
		case 'l':
		case 'L':	{ target = bomb_1 ;			eventType = ARM ;			break ; }
	#endif
	#if numberOfTimeBombs >= 3
		case 'n':
		case 'N':	{ target = bomb_2 ;			eventType = UP ;			break ; }
		case 'm':
		case 'M':	{ target = bomb_2 ;			eventType = DOWN ;			break ; }
		case ',':	{ target = bomb_2 ;			eventType = ARM ;			break ; }
	#endif
#endif
#if includeCalculator
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
#endif
#if includeFourLevelTest
		case 'a':
		case 'A':	{ target = fourLevelTest ;	eventType = A_ ;			break ; }
		case 'b':
		case 'B':	{ target = fourLevelTest ;	eventType = B_ ;			break ; }
		case 'c':
		case 'C':	{ target = fourLevelTest ;	eventType = C_ ;			break ; }
		case 'd':
		case 'D':	{ target = fourLevelTest ;	eventType = D_ ;			break ; }
		case 'e':
		case 'E':	{ target = fourLevelTest ;	eventType = E_ ;			break ; }
		case 'f':
		case 'F':	{ target = fourLevelTest ;	eventType = F_ ;			break ; }
		case 'g':
		case 'G':	{ target = fourLevelTest ;	eventType = G_ ;			break ; }
		case 'h':
		case 'H':	{ target = fourLevelTest ;	eventType = H_ ;			break ; }
		case 'u':
		case 'U':	{ target = fourLevelTest ;	eventType = U_ ;			break ; }
#endif
		case 't':
		case 'T':	{ target = 0 ;				eventType = ARMAGEDDON ;	break ; }

//		default:	{ target = 0 ;				eventType = ARMAGEDDON ;	break ; }
	}

	if(eventType != SUBSTATE_NON_EVENT)
	{
		keyEvent_t*	event = NULL ;

		if(target)
		{
#if includeTimeBombs || includeCalculator || includeFourLevelTest
			event = (keyEvent_t*)hsm_createNewEvent(target, eventType, sizeof(keyEvent_t)) ;
#endif
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
#if includeTimeBombs || includeCalculator || includeFourLevelTest
			printf("UNABLE TO ALLOCATE EVENT\n") ;
#endif
		}

		if(false)
		{
			/* This clause was included so that no matter what
			 * combiation of included state machines the user
			 * chose, there would always be a valid compilation
			 * state.
			 */
		}
#if includeTimeBombs
	#if numberOfTimeBombs >= 1
		else if(target == bomb_0)
		{
			printf("\nPosting '%c' to bomb0\n", c) ;
			hsm_postEventToMachine(bomb_0, (event_t*)event) ;
		}
	#endif
	#if numberOfTimeBombs >= 2
		else if(target == bomb_1)
		{
			hsm_postEventToMachine(bomb_1, (event_t*)event) ;
		}
	#endif
	#if numberOfTimeBombs >= 3
		else if(target == bomb_2)
		{
			hsm_postEventToMachine(bomb_2, (event_t*)event) ;
		}
	#endif
#endif
#if includeCalculator
		else if(target == calculator)
		{
			hsm_postEventToMachine(calculator, (event_t*)event) ;
		}
#endif
#if includeFourLevelTest
		else if(target == fourLevelTest)
		{
			hsm_postEventToMachine(fourLevelTest, (event_t*)event) ;
		}
#endif
		else if(target == 0)
		{
#if includeTimeBombs || includeCalculator || includeFourLevelTest
			hsm_publishEventToAll((event_t*)event) ;
#endif
		}
	}
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
