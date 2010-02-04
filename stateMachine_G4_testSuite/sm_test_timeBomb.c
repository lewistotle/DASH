/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include <stdio.h>

#include "config.h"

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"

#include "sm_globalEvents.h"
#include "sm_test_timeBomb.h"



#define STATE_MACHINE_NAME timeBomb

DEFINE_STATE_MACHINE() ;
	DECLARE_MEMORY_REQUIREMENTS()
	{
		DECLARE_EVENT_QUEUE_DEPTH(5) ;

		START_MEMORY_POOL_DECLARATIONS()
		{
			DECLARE_EVENT_MEMORY_POOL(3, keyEvent_t),
			DECLARE_TIMER_MEMORY_POOL(1)
		}
		END_MEMORY_POOL_DECLARATIONS()
	}
	END_MEMORY_REQUIREMENTS()

	DECLARE_STATE_MACHINE_VARIABLES() ;
		uint8_t		finetime ;
		uint8_t		timeout ;
		uint8_t		codeBeingEntered ;
		uint8_t		disarmCode ;
	END_STATE_MACHINE_VARIABLES() ;

	ADD_SUB_STATE(setting, PARENT_STATE(TOP)) ;

	ADD_SUB_STATE(timing, PARENT_STATE(TOP)) ;

	ADD_CHOICE_PSEUDO_STATE(isTimeToGoBoom, PARENT_STATE(TOP)) ;

END_STATE_MACHINE_DEFINITION() ;


STATE_MACHINE_CONSTRUCTOR()
{
	static const char*	eventNames[] =	{	"UP",
											"DOWN",
											"ARM",
											"FINETICK"
										} ;

	SET_EVENT_NAMES(eventNames) ;
	DISABLE_DEBUGGING_OUTPUT_FOR_TRANSITIONS() ;
	ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY() ;

	self->finetime			= config_tbFINE_TICKS_PER_SECOND ;
	self->timeout			= config_tbINIT_TIMEOUT ;
	self->codeBeingEntered	= 0 ;
	self->disarmCode		= 0x42 ;

	{
		alarmEvent_t* alarm = self->parent.startOfTimerEvents ;

		alarm->parent.eventType			= FINETICK ;
		alarm->active					= false ;
		alarm->remainingHours			= 0 ;
		alarm->remainingMicroseconds	= (1.0 / config_tbFINE_TICKS_PER_SECOND) * 1000000UL ;
		alarm->repeatingHours			= 0 ;
		alarm->repeatingMicroseconds	= (1.0 / config_tbFINE_TICKS_PER_SECOND) * 1000000UL ;
	}
}


STATE_MACHINE_DESTRUCTOR()
{
	(void)self ;	/* Nothing to do here */
}


DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()
{
	if(event->eventType != FINETICK)
	{
		printf("\n<%s>%4s: ", self->parent.instanceName ? self->parent.instanceName : self->parent.stateMachineName ? self->parent.stateMachineName : "???", self->parent.eventNames ? self->parent.eventNames[hsm_getEventType(event) - SUBSTATE_LAST_INTERNAL_EVENT - 1] : "<USER_EVENT>") ;
	}
}
END_EXTERNAL_EVENT_DEBUGGING_DISPLAY()


void displayTicks(	const char* instanceName, uint8_t value)
{
#if 0
	printf("<%s:%2d> ", instanceName, value) ;
#endif
}


void updateDisplay(	const char* instanceName, uint8_t value)
{
	printf("\n[%s:%d] ", instanceName, value) ;
}


void goBOOM(		const char* instanceName)
{
	printf("\n\n%s:BOOM!!!\n\n", instanceName) ;
}


DEFINE_TOP_STATE()
{
	INITIAL_TRANSITION(TO(setting), NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(setting)
{
	TRANSITION_ON(ARM, TO(timing), ACTION(self->codeBeingEntered = 0)) ;

	HANDLE_STATE_EVENTS
	{
		ENTER
		{
			alarmEvent_t* alarm = self->parent.startOfTimerEvents ;

			alarm->active = false ;

			self->finetime			= config_tbFINE_TICKS_PER_SECOND ;
			self->timeout			= config_tbINIT_TIMEOUT ;
			self->codeBeingEntered	= 0 ;
		}
		ENTER_HANDLED

		EVENT(UP)
		{
			if(self->timeout < 60)
			{
				self->timeout++ ;

				updateDisplay(self->parent.instanceName, self->timeout) ;
			}
		}
		EVENT_HANDLED

		EVENT(DOWN)
		{
			if(self->timeout > 1)
			{
				self->timeout-- ;

				updateDisplay(self->parent.instanceName, self->timeout) ;
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
	ON_ENTRY(alarmEvent_t* alarm = self->parent.startOfTimerEvents ; alarm->active = true) ;

	TRANSITION_ON_IF(ARM,				self->codeBeingEntered == self->disarmCode,	TO(setting),		ACTION(updateDisplay(self->parent.instanceName, self->timeout))) ;
	TRANSITION_ON_IF(FINETICK,			self->finetime == 0,						TO(isTimeToGoBoom),	ACTION(--(self->timeout) ; updateDisplay(self->parent.instanceName, self->timeout))) ;

	ON_EVENT(FINETICK, --self->finetime ; displayTicks(self->parent.instanceName, self->finetime)) ;

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
							TO(STATE_MACHINE_EXIT),	goBOOM(self->parent.instanceName),					/* if true */
							TO(timing),				self->finetime = config_tbFINE_TICKS_PER_SECOND) ;	/* if false */

