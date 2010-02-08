/*
 * sm_test_fourLevelTest.c
 *
 *  Created on: Feb 6, 2010
 *      Author: jlewis
 */

#include <stdio.h>

#include "config.h"

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"

#include "sm_globalEvents.h"
#include "sm_test_fourLevelTest.h"



#define STATE_MACHINE_NAME fourLevelTest

DEFINE_STATE_MACHINE() ;
	DECLARE_MEMORY_REQUIREMENTS()
	{
		DECLARE_EVENT_QUEUE_DEPTH(5) ;

		START_MEMORY_POOL_DECLARATIONS()
		{
			DECLARE_EVENT_MEMORY_POOL(3, keyEvent_t),
			DECLARE_NUMBER_OF_WATCH_EVENTS(1)
		}
		END_MEMORY_POOL_DECLARATIONS()
	}
	END_MEMORY_REQUIREMENTS()

	DECLARE_STATE_MACHINE_VARIABLES() ;
		bool	foo ;
	END_STATE_MACHINE_VARIABLES() ;

	ADD_SUB_STATE(s, PARENT_STATE(TOP)) ;

		ADD_SUB_STATE(s1, PARENT_STATE(s)) ;

			ADD_SUB_STATE(s11, PARENT_STATE(s1)) ;

		ADD_SUB_STATE(s2, PARENT_STATE(s)) ;

			ADD_SUB_STATE(s21, PARENT_STATE(s2)) ;

				ADD_SUB_STATE(s211, PARENT_STATE(s21)) ;

END_STATE_MACHINE_DEFINITION() ;


STATE_MACHINE_CONSTRUCTOR()
{
	static const char*	eventNames[] =	{	"A",
											"B",
											"C",
											"D",
											"E",
											"F",
											"G",
											"H",
											"U"
										} ;

	SET_EVENT_NAMES(eventNames) ;
	ENABLE_DEBUGGING_OUTPUT_FOR_TRANSITIONS() ;
	ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY() ;
	ENABLE_MACHINE_OUTPUT_DEBUGGING_DISPLAY() ;
}


STATE_MACHINE_DESTRUCTOR()
{
	(void)self ;	/* Nothing to do here */
}


DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()
{
	printf("%c: ", CAST_EVENT(keyEvent_t)->key) ;
}
END_EXTERNAL_EVENT_DEBUGGING_DISPLAY()


DEFINE_MACHINE_OUTPUT_DEBUGGING_DISPLAY()
{
	printf("\n>(foo=%d)", self->foo) ;
}
END_MACHINE_OUTPUT_DEBUGGING_DISPLAY()


DEFINE_TOP_STATE()
{
	INITIAL_TRANSITION(					s2,			self->foo = 0) ;
}
END_DEFINE_STATE()


DEFINE_STATE(s)
{
	INITIAL_TRANSITION(					s11, 		NO_ACTION) ;

	ON_EVENT_IF(		U,	self->foo,				self->foo = 0) ;

	TRANSITION_ON(		E,				s11,		NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(s1)
{
	INITIAL_TRANSITION(					s11, 		NO_ACTION) ;

	TRANSITION_ON(		A,				SELF(),		NO_ACTION) ;
	TRANSITION_ON(		B,				s11,		NO_ACTION) ;
	TRANSITION_ON(		C,				s2,			NO_ACTION) ;
	TRANSITION_ON_IF(	D,	!self->foo,	s,			self->foo = 1) ;
	TRANSITION_ON(		F,				s211,		NO_ACTION) ;

	CONSUME_EVENT(		U,							NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(s11)
{
	TRANSITION_ON_IF(	D,	self->foo,	s1,			self->foo = 0) ;
	TRANSITION_ON(		G,				s211,		NO_ACTION) ;
	TRANSITION_ON(		H,				s,			NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(s2)
{
	INITIAL_TRANSITION(					s211,		NO_ACTION) ;

	TRANSITION_ON(		C,				s1,			NO_ACTION) ;
	TRANSITION_ON(		F,				s11,		NO_ACTION) ;

	ON_EVENT_IF(		U,	!self->foo,				self->foo = 1) ;
}
END_DEFINE_STATE()


DEFINE_STATE(s21)
{
	INITIAL_TRANSITION(					s211,		NO_ACTION) ;

	TRANSITION_ON(		A,				SELF(),		NO_ACTION) ;
	TRANSITION_ON(		B,				s211,		NO_ACTION) ;
	TRANSITION_ON(		G,				s11,		NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(s211)
{
	TRANSITION_ON(		D,				s21,		NO_ACTION) ;
	TRANSITION_ON(		H,				s,			NO_ACTION) ;

	TRANSITION_WHEN(	self->foo,		s1,			NO_ACTION) ;
}
END_DEFINE_STATE()
