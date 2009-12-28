/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"

#include "sm_test_timeBomb.h"



#define STATE_MACHINE_NAME			timeBomb
#define configEVENT_QUEUE_DEPTH		16

#define INIT_TIMEOUT	30


DECLARE_STATE_MACHINE_VARIABLES()
	PARENT_CLASS(stateMachine_t) ;

	uint8_t		timeout ;
	uint8_t		codeBeingEntered ;
	uint8_t		disarmCode ;
END_STATE_MACHINE_VARIABLES()


DEFINE_STATE_MACHINE() ;

	ADD_SUB_STATE(TOP, setting) ;

	ADD_SUB_STATE(TOP, timing) ;

	ADD_SUB_STATE(TOP, BOOM) ;

END_STATE_MACHINE_DEFINITION()


CREATE_STATE_MACHINE_INSTANCE()
{
	static event_t*	eventQueue[configEVENT_QUEUE_DEPTH] ;

	initializeEventQueue(&timeBombMachine.parent.eventQueue, &eventQueue[0], configEVENT_QUEUE_DEPTH) ;

	timeBombMachine.parent.currentState = (void*)&timeBomb_TOP ;

	return (stateMachine_t*)&timeBombMachine ;
}


DESTROY_STATE_MACHINE_INSTANCE()
{
	(void)instance ;
	/* Nothing to do here since I am only working with a static instance */
}


void updateDisplay(	uint8_t value)
{
	(void)value ;
}


DEFINE_TOP_STATE()
{
	INITIAL_TRANSITION(TO(setting), ACTION(self->timeout = INIT_TIMEOUT)) ;

	HANDLE_STATE_EVENTS
	{
		EXIT
		{
			/* BOOM */
		}
		EXIT_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_STATE(setting)
{
	TRANSITION_ON(ARM, UNCONDITIONALLY, TO(timing), ACTION(self->codeBeingEntered = 0)) ;

	HANDLE_STATE_EVENTS
	{
		EVENT(UP)
		{
			if(self->timeout < 60)
			{
				self->timeout++ ;

				updateDisplay(self->timeout) ;
			}
		}
		EVENT_HANDLED

		EVENT(DOWN)
		{
			if(self->timeout > 1)
			{
				self->timeout-- ;

				updateDisplay(self->timeout) ;
			}
		}
		EVENT_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_STATE(timing)
{
	TRANSITION_ON(ARM, IF(self->codeBeingEntered == self->disarmCode), TO(setting), ACTION(updateDisplay(self->timeout))) ;

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

		EVENT(TICK)
		{
			self->timeout-- ;

			updateDisplay(self->timeout) ;

			TRANSITION_IF(self->timeout == 0, TO(BOOM), NO_ACTION)
		}
		EVENT_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_STATE(BOOM)
{
	HANDLE_STATE_EVENTS
	{
		ENTER
		{
			/* BOOM */

			TRANSITION_TO(STATE_MACHINE_EXIT, NO_ACTION) ;
		}
		ENTER_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()
