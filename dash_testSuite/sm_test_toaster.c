/*
 * sm_test_toaster.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include "config.h"

#include "dash.h"
#include "dash_eventQueue.h"

#include "sm_test_toaster.h"



#define STATE_MACHINE_NAME toaster

DEFINE_STATE_MACHINE() ;
	DECLARE_STATE_MACHINE_VARIABLES() ;
		uint8_t		cookingTime_hours ;
		uint8_t		cookingTime_minutes ;
		uint8_t		cookingTime_seconds ;

		uint8_t		flag ;

		uint16_t	temp ;
	END_STATE_MACHINE_VARIABLES() ;

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


STATE_MACHINE_FATAL_ERROR_HANDLER()
{
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
	INITIAL_TRANSITION(TO(doorClosed),							NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(doorClosed)
{
	/* test of history macros */

	SET_HISTORY_DEFAULT_STATE(off,								NO_ACTION) ;
	SET_HISTORY_DEFAULT_STATE(HISTORY_OF(off),					NO_ACTION) ;

	/* test of initial transition macro */

	INITIAL_TRANSITION(			TO(off),						NO_ACTION) ;

	/* test of signal event transition macro */

	TRANSITION_ON(BAKE,			TO(baking),						NO_ACTION) ;
	TRANSITION_ON(TOAST,		TO(toasting),					NO_ACTION) ;
	TRANSITION_ON(OFF,			TO(off),						NO_ACTION) ;
	TRANSITION_ON(OPEN,			TO(off),						NO_ACTION) ;

#if 0
	/* test of change event transition macro */

	TRANSITION_WHEN(self->flag,	TO(heating),	NO_ACTION) ;

	/* test of time event transition macro */

	TRANSITION_AFTER(DAYS(42.3) + HOURS(7.58) + MINUTES(3) + SECONDS(10.452537), TO(OFF), NO_ACTION) ;

	/* test of generic IF transition macro that also sets DO flag */

	TRANSITION_IF(self->flag > 55, TO(off), NO_ACTION) ;

	/* test of call event transition macro */

	TRANSITION_CALL(TO(heating)) ;
#endif
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
