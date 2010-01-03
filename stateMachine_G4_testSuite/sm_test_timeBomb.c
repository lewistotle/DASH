/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"

#include "sm_test_timeBomb.h"



#define config_tbEVENT_QUEUE_DEPTH		16

#define INIT_TIMEOUT	30

#define STATE_MACHINE_NAME timeBomb

DEFINE_STATE_MACHINE() ;
	DECLARE_STATE_MACHINE_VARIABLES() ;
		uint8_t		timeout ;
		uint8_t		codeBeingEntered ;
		uint8_t		disarmCode ;
	END_STATE_MACHINE_VARIABLES() ;

	SET_EVENT_QUEUE_DEPTH(config_tbEVENT_QUEUE_DEPTH) ;

	ADD_SUB_STATE(setting, PARENT_STATE(TOP)) ;

	ADD_SUB_STATE(timing, PARENT_STATE(TOP)) ;

	ADD_CHOICE_PSEUDO_STATE(isTimeToGoBoom, PARENT_STATE(TOP)) ;

END_STATE_MACHINE_DEFINITION() ;


STATE_MACHINE_CONSTRUCTOR()
{
	self->timeout			= 0 ;
	self->codeBeingEntered	= 0 ;
	self->disarmCode		= 0 ;
}


STATE_MACHINE_DESTRUCTOR()
{
	(void)self ;	/* Nothing to do here */
}


void updateDisplay(	uint8_t value)
{
	(void)value ;
}


void goBOOM(		void)
{
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
	TRANSITION_ON(ARM, TO(timing), ACTION(self->codeBeingEntered = 0)) ;

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
	TRANSITION_ON_IF(ARM, self->codeBeingEntered == self->disarmCode, TO(setting), ACTION(updateDisplay(self->timeout))) ;

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

			TRANSITION_TO(isTimeToGoBoom, updateDisplay(self->timeout)) ;
		}
		EVENT_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_CHOICE_PSEUDO_STATE(	isTimeToGoBoom,
							IF(self->timeout == 0),				/* condition */
							TO(STATE_MACHINE_EXIT), goBOOM(),	/* if true */
							TO(timing), NO_ACTION) ;			/* if false */

