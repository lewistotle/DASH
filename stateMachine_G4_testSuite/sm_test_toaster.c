/*
 * sm_test_toaster.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"

#include "sm_test_toaster.h"



#define config_toastEVENT_QUEUE_DEPTH		8

#define STATE_MACHINE_NAME toaster

DEFINE_STATE_MACHINE() ;
	DECLARE_STATE_MACHINE_VARIABLES() ;
		uint8_t		cookingTime_hours ;
		uint8_t		cookingTime_minutes ;
		uint8_t		cookingTime_seconds ;
	END_STATE_MACHINE_VARIABLES() ;

	SET_EVENT_QUEUE_DEPTH(config_toastEVENT_QUEUE_DEPTH) ;

	ADD_SUB_STATE_WITH_DEEP_HISTORY(doorClosed, PARENT_STATE(TOP)) ;

		ADD_SUB_STATE(heating, PARENT_STATE(doorClosed)) ;

			ADD_SUB_STATE(baking, PARENT_STATE(heating)) ;

			ADD_SUB_STATE(toasting, PARENT_STATE(heating)) ;

		ADD_SUB_STATE(off, PARENT_STATE(doorClosed)) ;

	ADD_SUB_STATE(doorOpen, PARENT_STATE(TOP)) ;

END_STATE_MACHINE_DEFINITION() ;


STATE_MACHINE_CONSTRUCTOR()
{
	self->cookingTime_hours		= 0 ;
	self->cookingTime_minutes	= 0 ;
	self->cookingTime_seconds	= 0 ;
}


STATE_MACHINE_DESTRUCTOR()
{
	(void)self ;	/* Nothing to do here */
}


void heaterOn(	void)
{
}


void heaterOff(	void)
{
}


void lampOn(	void)
{
}


void lampOff(	void)
{
}


DEFINE_TOP_STATE()
{
	self->cookingTime_hours		= 0 ;
	self->cookingTime_minutes	= 0 ;
	self->cookingTime_seconds	= 0 ;

	INITIAL_TRANSITION(TO(doorClosed),						NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(doorClosed)
{
	SET_HISTORY_DEFAULT_STATE(off,							NO_ACTION) ;
	SET_HISTORY_DEFAULT_STATE(HISTORY_OF(off),				NO_ACTION) ;

	INITIAL_TRANSITION(TO(off),								NO_ACTION) ;

	TRANSITION_ON(BAKE,		TO(baking),	NO_ACTION) ;
	TRANSITION_ON(TOAST,	TO(toasting),	NO_ACTION) ;
	TRANSITION_ON(OFF,		TO(off),		NO_ACTION) ;
	TRANSITION_ON(OPEN,		TO(off),		NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(heating)
{
	ON_ENTRY(	heaterOn()) ;
	ON_EXIT(	heaterOff()) ;
}
END_DEFINE_STATE()


DEFINE_STATE(baking)
{
}
END_DEFINE_STATE()


DEFINE_STATE(toasting)
{
}
END_DEFINE_STATE()


DEFINE_STATE(off)
{
	heaterOff() ;
	lampOff() ;
}
END_DEFINE_STATE()


DEFINE_STATE(doorOpen)
{
	DEFER_EVENT(BAKE) ;
	DEFER_EVENT(TOAST) ;

	ON_ENTRY(	lampOn()) ;
	ON_EXIT(	lampOff()) ;

	TRANSITION_ON(CLOSE,	HISTORY_OF(doorClosed),		NO_ACTION) ;
}
END_DEFINE_STATE()
