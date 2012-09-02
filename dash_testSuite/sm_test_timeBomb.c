/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include <stdio.h>
#include <string.h>

#include "config.h"

#include "dash.h"
#include "dash_eventQueue.h"

#include "sm_globalEvents.h"
#include "sm_test_timeBomb.h"



#define STATE_MACHINE_NAME timeBomb

#define MAX_RETURNED_STRING_LENGTH	(100)

DEFINE_STATE_MACHINE() ;
	DECLARE_MEMORY_REQUIREMENTS()
	{
		DECLARE_EVENT_QUEUE_DEPTH(5) ;

		START_MEMORY_POOL_DECLARATIONS()
		{
			DECLARE_EVENT_MEMORY_POOL(3, keyEvent_t),
			DECLARE_TIMER_MEMORY_POOL(3)
		}
		END_MEMORY_POOL_DECLARATIONS()
	}
	END_MEMORY_REQUIREMENTS()

	DECLARE_STATE_MACHINE_VARIABLES() ;
		char			machineOutputBuffer[MAX_RETURNED_STRING_LENGTH + 1] ;

		uint8_t			finetime ;
		uint8_t			timeout ;
		uint8_t			codeBeingEntered ;
		uint8_t			disarmCode ;

		alarmEvent_t*	finetick ;
	END_STATE_MACHINE_VARIABLES() ;

	ADD_SUB_STATE(setting, PARENT_STATE(TOP)) ;

	ADD_SUB_STATE(timing, PARENT_STATE(TOP)) ;

	ADD_CHOICE_PSEUDO_STATE(isTimeToGoBoom, PARENT_STATE(TOP)) ;

END_STATE_MACHINE_DEFINITION() ;


STATE_MACHINE_CONSTRUCTOR()
{
	static const char*	eventNames[] =	{
											"UP",
											"DOWN",
											"ARM",
											"FINETICK"
										} ;

	SET_EVENT_NAMES(eventNames) ;
	DISABLE_DEBUGGING_OUTPUT_FOR_TRANSITIONS() ;
	DISABLE_INTERNAL_EVENT_DEBUGGING_DISPLAY() ;
	DISABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY() ;
	ENABLE_MACHINE_OUTPUT_DISPLAY() ;
	DISABLE_MACHINE_DEBUGGING_DISPLAY() ;

	self->finetime			= config_tbFINE_TICKS_PER_SECOND ;
	self->timeout			= config_tbINIT_TIMEOUT ;
	self->codeBeingEntered	= 0 ;
	self->disarmCode		= 0x42 ;
	self->finetick			= CREATE_ALARM(FINETICK, SECONDS(1.0 / config_tbFINE_TICKS_PER_SECOND), REPEATING) ;

	memset(self->machineOutputBuffer, 0, MAX_RETURNED_STRING_LENGTH + 1) ;

	printf("Locating self->finetick at %p\n", (void*)self->finetick) ;
}


STATE_MACHINE_DESTRUCTOR()
{
	(void)self ;	/* Nothing to do here */
}


DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY()
{
	printf("\n<%s>%4s: ", ((stateMachine_t*)self)->stateMachineName ? ((stateMachine_t*)self)->stateMachineName : "???", self->parent.eventNames ? self->parent.eventNames[hsm_getEventType(event) - SUBSTATE_LAST_INTERNAL_EVENT - 1] : "<USER_EVENT>") ;
}
END_EXTERNAL_EVENT_DEBUGGING_DISPLAY()


DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()
{
#if 1
	if(event->eventType != FINETICK)
#endif
	{
		printf("\n<%s>%4s: ", ((stateMachine_t*)self)->stateMachineName ? ((stateMachine_t*)self)->stateMachineName : "???", self->parent.eventNames ? self->parent.eventNames[hsm_getEventType(event) - SUBSTATE_LAST_INTERNAL_EVENT - 1] : "<USER_EVENT>") ;
	}
}
END_EXTERNAL_EVENT_DEBUGGING_DISPLAY()


DEFINE_MACHINE_OUTPUT_DISPLAY()
{
	if(strlen(self->machineOutputBuffer) > 0)
	{
		char* myBuffer = self->machineOutputBuffer ;

		while(*myBuffer)
		{
			putchar(*myBuffer) ;

			++myBuffer ;
		}

		putchar('\n') ;

		fflush(stdout) ;

		memset(self->machineOutputBuffer, 0, MAX_RETURNED_STRING_LENGTH + 1) ;
	}
}
END_MACHINE_OUTPUT_DISPLAY()


DEFINE_MACHINE_DEBUGGING_DISPLAY()
{
}
END_MACHINE_DEBUGGING_DISPLAY()


STATE_MACHINE_FATAL_ERROR_HANDLER()
{
	(void)self ;
}


void displayTicks(	const char* instanceName, uint8_t value)
{
#if 0
	printf("<%s:%2d> ", instanceName, value) ;
#else
	(void)instanceName ;
	(void)value ;
#endif
}


void updateDisplay(	const char* instanceName, uint8_t value)
{
	(void)instanceName ;
	(void)value ;
	printf("\n[%s: time to BOOM: %2d] ", instanceName, value) ;

	fflush(stdout) ;
}


void goBOOM(		const char* instanceName)
{
	printf("\n\n\n%s:BOOM!!!\n\n", instanceName) ;
}

#include "hal.h"
#include "hal_UART.h"
#ifdef __c8051f040__
	#include <C8051F040.h>
#endif

DEFINE_TOP_STATE()
{
	INITIAL_TRANSITION(TO(setting), NO_ACTION) ;

	TRANSITION_ON(ARMAGEDDON,		TO(setting),	ACTION(goBOOM(((stateMachine_t*)self)->stateMachineName))) ;

	HANDLE_STATE_EVENTS
	{
		ENTER
		{
			sprintf(self->machineOutputBuffer, "Entered TOP") ; DUMP_MACHINE_OUTPUT() ;
		}
		ENTER_HANDLED

		EVENT(ARM)
		{
#ifdef __c8051f040__
			portSET_REGISTER_GROUP(CONFIG_PAGE)
			{
				P5 = 1 ;
				P5 = 0 ;
			}
			portRESTORE_REGISTER_GROUP()
#else
			sprintf(self->machineOutputBuffer, "ARMED!!!") ; DUMP_MACHINE_OUTPUT() ;
#endif
		}
		EVENT_HANDLED

		EXIT
		{
			sprintf(self->machineOutputBuffer, "Leaving TOP") ; DUMP_MACHINE_OUTPUT() ;
		}
		EXIT_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_STATE(setting)
{
	TRANSITION_ON(ARM,				TO(timing),		ACTION(self->codeBeingEntered = 0)) ;

	HANDLE_STATE_EVENTS
	{
		ENTER
		{
			DEACTIVATE_ALARM(self->finetick) ;

			self->finetime			= config_tbFINE_TICKS_PER_SECOND ;
			self->timeout			= config_tbINIT_TIMEOUT ;
			self->codeBeingEntered	= 0 ;

#ifdef __c8051f040__
			portSET_REGISTER_GROUP(CONFIG_PAGE)
			{
				P5 = 2 ;
				P5 = 0 ;
			}
			portRESTORE_REGISTER_GROUP()
#endif
		}
		ENTER_HANDLED

		EVENT(UP)
		{
			RESET_TIMEOUT() ;

			if(self->timeout < 60)
			{
				self->timeout++ ;

				updateDisplay(((stateMachine_t*)self)->stateMachineName, self->timeout) ;
			}
		}
		EVENT_HANDLED

		EVENT(DOWN)
		{
			RESET_TIMEOUT() ;

			if(self->timeout > 1)
			{
				self->timeout-- ;

				updateDisplay(((stateMachine_t*)self)->stateMachineName, self->timeout) ;
			}
			else
			{
				/* IMMEDIATE KABOOM!!! */

				self->finetime = 0 ;
			}
		}
		EVENT_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_STATE(timing)
{
	ON_ENTRY(ACTIVATE_ALARM(self->finetick)) ;

	ON_EVENT(FINETICK, --self->finetime ; displayTicks(((stateMachine_t*)self)->stateMachineName, self->finetime)) ;

	TRANSITION_ON_IF(ARM,		self->codeBeingEntered == self->disarmCode,	TO(setting),		ACTION(updateDisplay(((stateMachine_t*)self)->stateMachineName, self->timeout))) ;
	TRANSITION_ON_IF(FINETICK,	self->finetime == 0,						TO(isTimeToGoBoom),	ACTION(--(self->timeout) ; updateDisplay(((stateMachine_t*)self)->stateMachineName, self->timeout))) ;

	HANDLE_STATE_EVENTS
	{
		EVENT(UP)
		{
			self->codeBeingEntered <<= 1 ;
			self->codeBeingEntered |= 1 ;
		}
		EVENT_HANDLED

		EVENT(DOWN)
		{
			self->codeBeingEntered <<= 1 ;
		}
		EVENT_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_CHOICE_PSEUDO_STATE(	isTimeToGoBoom,
							IF(self->timeout == 0),														/* condition */
							TO(STATE_MACHINE_EXIT),	goBOOM(((stateMachine_t*)self)->stateMachineName),	/* if true */
							TO(timing),				self->finetime = config_tbFINE_TICKS_PER_SECOND) ;	/* if false */

