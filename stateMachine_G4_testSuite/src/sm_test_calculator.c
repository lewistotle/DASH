/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"

#include "sm_test_calculator.h"

#define STATE_MACHINE_NAME			calculator
#define configEVENT_QUEUE_DEPTH		16


DECLARE_STATE_MACHINE_VARIABLES()
	PARENT_CLASS(stateMachine_t) ;

	uint32_t	result ;
END_STATE_MACHINE_VARIABLES()


DEFINE_STATE_MACHINE() ;
	ADD_SUB_STATE(TOP, on) ;
		ADD_SUB_STATE(on, ready) ;
			ADD_SUB_STATE(ready, result) ;
			ADD_SUB_STATE(ready, begin) ;

		ADD_SUB_STATE(on, negated1) ;

		ADD_SUB_STATE(on, operand1) ;
			ADD_SUB_STATE(operand1, zero1) ;
			ADD_SUB_STATE(operand1, int1) ;
			ADD_SUB_STATE(operand1, frac1) ;

		ADD_SUB_STATE(on, error) ;

		ADD_SUB_STATE(on, opEntered) ;

		ADD_SUB_STATE(on, negated2) ;

		ADD_SUB_STATE(on, operand2) ;
			ADD_SUB_STATE(operand2, zero2) ;
			ADD_SUB_STATE(operand2, int2) ;
			ADD_SUB_STATE(operand2, frac2) ;
END_STATE_MACHINE_DEFINITION() ;


CREATE_STATE_MACHINE_INSTANCE()
{
	static event_t*	eventQueue[configEVENT_QUEUE_DEPTH] ;

	initializeEventQueue(&calculatorMachine.parent.eventQueue, &eventQueue[0], configEVENT_QUEUE_DEPTH) ;

	calculatorMachine.parent.currentState = &calculator_TOP ;

	return (stateMachine_t*)&calculatorMachine ;
}


DESTROY_STATE_MACHINE_INSTANCE()
{
	// Nothing to do here since I am only working with a static instance
}


DEFINE_TOP_STATE()
{
	INITIAL_TRANSITION(TO(on),																	NO_ACTION) ;
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
	INITIAL_TRANSITION(TO(begin),																NO_ACTION) ;

	TRANSITION_ON(OPERATION,	UNCONDITIONALLY,						TO(opEntered),			NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(result)
{
}
END_DEFINE_STATE()


DEFINE_STATE(begin)
{
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


bool doCalculation(	uint8_t type)
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
			bool goodCalc = doCalculation(EVENT_IS(keyEvent_t)->key) ;

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
