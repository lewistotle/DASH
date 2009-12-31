/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"

#include "sm_test_calculator.h"

#define config_CalcEVENT_QUEUE_DEPTH		16


#define STATE_MACHINE_NAME calculator

DEFINE_STATE_MACHINE() ;
	DECLARE_STATE_MACHINE_VARIABLES() ;
		uint32_t	result ;
	END_STATE_MACHINE_VARIABLES() ;

	SET_EVENT_QUEUE_DEPTH(config_CalcEVENT_QUEUE_DEPTH) ;

	ADD_SUB_STATE(on, PARENT_STATE(TOP)) ;
		ADD_SUB_STATE(ready, PARENT_STATE(on)) ;
			ADD_SUB_STATE(result, PARENT_STATE(ready)) ;
			ADD_SUB_STATE(begin, PARENT_STATE(ready)) ;

		ADD_SUB_STATE(negated1, PARENT_STATE(on)) ;

		ADD_SUB_STATE(operand1, PARENT_STATE(on)) ;
			ADD_SUB_STATE(zero1, PARENT_STATE(operand1)) ;
			ADD_SUB_STATE(int1, PARENT_STATE(operand1)) ;
			ADD_SUB_STATE(frac1, PARENT_STATE(operand1)) ;

		ADD_SUB_STATE(error, PARENT_STATE(on)) ;

		ADD_SUB_STATE(opEntered, PARENT_STATE(on)) ;

		ADD_SUB_STATE(negated2, PARENT_STATE(on)) ;

		ADD_SUB_STATE(operand2, PARENT_STATE(on)) ;
			ADD_SUB_STATE(zero2, PARENT_STATE(operand2)) ;
			ADD_SUB_STATE(int2, PARENT_STATE(operand2)) ;
			ADD_SUB_STATE(frac2, PARENT_STATE(operand2)) ;
END_STATE_MACHINE_DEFINITION() ;


STATE_MACHINE_CONSTRUCTOR()
{
	self->result = 0 ;
}


STATE_MACHINE_DESTRUCTOR()
{
	(void)self ;	/* Nothing to do here */
}


DEFINE_TOP_STATE()
{
	INITIAL_TRANSITION(TO(begin),																	NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(on)
{
	INITIAL_TRANSITION(TO(ready),																NO_ACTION) ;

	TRANSITION_ON(CLEAR,		UNCONDITIONALLY,						TO(on),					NO_ACTION) ;
	TRANSITION_ON(OFF,			UNCONDITIONALLY,						TO(STATE_MACHINE_EXIT),	NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(ready)
{
	INITIAL_TRANSITION(TO(zero1),																NO_ACTION) ;

	TRANSITION_ON(OPERATION,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(result)
{
}
END_DEFINE_STATE()


DEFINE_STATE(begin)
{
	/* This will cause a loop in the state machine, but for testing purposes, it tests a couple of cases */
	INITIAL_TRANSITION(TO(on),																	NO_ACTION) ;

	TRANSITION_ON(OPERATION,	IF(EVENT_IS(keyEvent_t)->key == '-'),	TO(negated1),			NO_ACTION) ;
	TRANSITION_ON(DIGIT_0,		UNCONDITIONALLY,						TO(zero1),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int1),				NO_ACTION) ;
	TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac1),				NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(negated1)
{
	TRANSITION_ON(CLEAR_ENTRY,	UNCONDITIONALLY,						TO(begin),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_0,		UNCONDITIONALLY,						TO(zero1),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int1),				NO_ACTION) ;
	TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac1),				NO_ACTION) ;
	CONSUME_EVENT_IF(OPERATION,	IF(EVENT_IS(keyEvent_t)->key == '-'),							NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(operand1)
{
	TRANSITION_ON(CLEAR_ENTRY,	UNCONDITIONALLY,						TO(ready),				NO_ACTION) ;
	TRANSITION_ON(OPERATION,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(zero1)
{
	INITIAL_TRANSITION(TO(zero2),																NO_ACTION) ;
	CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int1),				NO_ACTION) ;
	TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac1),				NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(int1)
{
	TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac1),				NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(frac1)
{
	CONSUME_EVENT(POINT,																		NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(error)
{
	INITIAL_TRANSITION(TO(frac2),																NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(opEntered)
{
	TRANSITION_ON(OPERATION,	IF(EVENT_IS(keyEvent_t)->key == '-'),	TO(negated2),			NO_ACTION) ;
	TRANSITION_ON(DIGIT_0,		UNCONDITIONALLY,						TO(zero2),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int2),				NO_ACTION) ;
	TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac2),				NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(negated2)
{
	TRANSITION_ON(CLEAR_ENTRY,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;
	TRANSITION_ON(DIGIT_0,		UNCONDITIONALLY,						TO(zero2),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int2),				NO_ACTION) ;
	TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac2),				NO_ACTION) ;
	CONSUME_EVENT_IF(OPERATION,	IF(EVENT_IS(keyEvent_t)->key == '-'),							NO_ACTION) ;
}
END_DEFINE_STATE()


uint8_t doCalculation(	uint8_t type)
{
	switch(type)
	{
		case '+': { return true ; }
		case '-': { return true ; }
		case '*': { return true ; }
		case '/': { return true ; }
		default:  { return false ; }
	}
}


DEFINE_STATE(operand2)
{
	TRANSITION_ON(CLEAR_ENTRY,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;

	HANDLE_STATE_EVENTS
	{
		EVENT(OPERATION)
		EVENT(EQUALS)
		{
			uint8_t goodCalc = doCalculation(EVENT_IS(keyEvent_t)->key) ;

			if(goodCalc)
			{
				TRANSITION_ON(OPERATION,	UNCONDITIONALLY,			TO(opEntered),			NO_ACTION) ;
				TRANSITION_ON(EQUALS,		UNCONDITIONALLY,			TO(result),				NO_ACTION) ;
			}
			else
			{
				TRANSITION_TO(error, NO_ACTION) ;
			}
		}
		EVENT_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_STATE(zero2)
{
	INITIAL_TRANSITION(TO(negated1),															NO_ACTION) ;
	CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,	UNCONDITIONALLY,						TO(int2),				NO_ACTION) ;
	TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac2),				NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(int2)
{
	TRANSITION_ON(POINT,		UNCONDITIONALLY,						TO(frac2),				NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(frac2)
{
	CONSUME_EVENT(POINT,																		NO_ACTION) ;
}
END_DEFINE_STATE()
