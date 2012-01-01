/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "config.h"

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"

#include "sm_globalEvents.h"
#include "sm_test_calculator.h"



#define STATE_MACHINE_NAME calculator

DEFINE_STATE_MACHINE() ;
	DECLARE_MEMORY_REQUIREMENTS()
	{
		DECLARE_EVENT_QUEUE_DEPTH(5) ;

		START_MEMORY_POOL_DECLARATIONS()
		{
			DECLARE_EVENT_MEMORY_POOL(3, keyEvent_t),
			DECLARE_EVENT_MEMORY_POOL(2, event_t)
		}
		END_MEMORY_POOL_DECLARATIONS()
	}
	END_MEMORY_REQUIREMENTS()

	DECLARE_STATE_MACHINE_VARIABLES() ;
		int32_t		signBeingEntered ;
		int32_t		integerBeingEntered ;
		int32_t		fractionBeingEntered ;
		float		operand1 ;
		float		operand2 ;
	END_STATE_MACHINE_VARIABLES() ;

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
	static const char*	eventNames[] =	{	"CLEAR",
											"CLEAR_ENTRY",
											"DIGIT_0",
											"DIGIT_1_9",
											"POINT",
											"OPERATION",
											"EQUALS",
											"OFF"
										} ;

	SET_EVENT_NAMES(eventNames) ;
	DISABLE_DEBUGGING_OUTPUT_FOR_TRANSITIONS() ;
	ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY() ;
	ENABLE_MACHINE_OUTPUT_DISPLAY() ;
	DISABLE_MACHINE_DEBUGGING_DISPLAY() ;

	self->signBeingEntered		= 1 ;
	self->integerBeingEntered	= 0 ;
	self->fractionBeingEntered	= 0 ;
	self->operand1				= 0.0 ;
	self->operand2				= 0.0 ;
}


STATE_MACHINE_DESTRUCTOR()
{
	(void)self ;	/* Nothing to do here */
}


DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()
{
	printf("%c: ", ((keyEvent_t*)event)->key) ;
}
END_EXTERNAL_EVENT_DEBUGGING_DISPLAY()


DEFINE_MACHINE_OUTPUT_DISPLAY()
{
	char output[50] ;

	sprintf(output, "% ld.%ld", (long int)(self->integerBeingEntered * self->signBeingEntered), (long int)(self->fractionBeingEntered)) ;

	if(self->fractionBeingEntered == 0)
	{
		output[strchr(output, '.') - output] = 0 ;
	}

	output[10] = 0 ;

	printf("\n[%10s] ", output) ;
}
END_MACHINE_OUTPUT_DISPLAY()


DEFINE_MACHINE_DEBUGGING_DISPLAY()
{
	char output[50] ;

	sprintf(output, "% ld.%ld", (long int)(self->integerBeingEntered * self->signBeingEntered), (long int)(self->fractionBeingEntered)) ;

	if(self->fractionBeingEntered == 0)
	{
		output[strchr(output, '.') - output] = 0 ;
	}

	output[10] = 0 ;

	printf("\n[%10s] ", output) ;
}
END_MACHINE_DEBUGGING_DISPLAY()


STATE_MACHINE_FATAL_ERROR_HANDLER()
{
}


void addDigitToIntegralPortion(	calculatorMachine_t* self, event_t* event)
{
	if(self->integerBeingEntered < 100000000UL)
	{
		self->integerBeingEntered	= (self->integerBeingEntered * 10.0)
									+ (CAST_EVENT(keyEvent_t)->key - '0') ;
	}

	DUMP_MACHINE_OUTPUT() ;
}


void addDigitToFractionalPortion(	calculatorMachine_t* self, event_t* event)
{
	self->fractionBeingEntered	= (self->fractionBeingEntered * 10.0)
								+ (CAST_EVENT(keyEvent_t)->key - '0') ;

	DUMP_MACHINE_OUTPUT() ;
}


void clearEntry(					calculatorMachine_t* sm)
{
	sm->signBeingEntered		= 1 ;
	sm->integerBeingEntered		= 0 ;
	sm->fractionBeingEntered	= 0 ;
}


DEFINE_TOP_STATE()
{
	INITIAL_TRANSITION(TO(on),																	NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(on)
{
	INITIAL_TRANSITION(TO(ready),																NO_ACTION) ;

	TRANSITION_ON(CLEAR,												TO(on),					NO_ACTION) ;
	TRANSITION_ON(OFF,													TO(STATE_MACHINE_EXIT),	NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(ready)
{
	INITIAL_TRANSITION(TO(begin),																NO_ACTION) ;

	TRANSITION_ON(OPERATION,											TO(opEntered),			NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(result)
{
}
END_DEFINE_STATE()


DEFINE_STATE(begin)
{
	TRANSITION_ON_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),	TO(negated1),			NO_ACTION) ;
	TRANSITION_ON(DIGIT_0,												TO(zero1),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,											TO(int1),				addDigitToIntegralPortion(self, event)) ;
	TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;

	HANDLE_STATE_EVENTS
	{
		ENTER
		{
			clearEntry(self) ;
			self->operand1	= 0.0 ;
			self->operand2	= 0.0 ;
		}
		ENTER_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_STATE(negated1)
{
	ON_ENTRY(																					self->signBeingEntered *= -1) ;
	TRANSITION_ON(CLEAR_ENTRY,											TO(begin),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_0,												TO(zero1),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,											TO(int1),				addDigitToIntegralPortion(self, event)) ;
	TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
	CONSUME_EVENT_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),							self->signBeingEntered *= -1) ;
}
END_DEFINE_STATE()


DEFINE_STATE(operand1)
{
	TRANSITION_ON(CLEAR_ENTRY,											TO(ready),				NO_ACTION) ;
	TRANSITION_ON(OPERATION,											TO(opEntered),			NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(zero1)
{
	CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,											TO(int1),				addDigitToIntegralPortion(self, event)) ;
	TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(int1)
{
	TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;

	ON_EVENT(DIGIT_1_9, addDigitToIntegralPortion(self, event)) ;
}
END_DEFINE_STATE()


DEFINE_STATE(frac1)
{
	CONSUME_EVENT(POINT,																		NO_ACTION) ;

	ON_EVENT(DIGIT_0,	addDigitToFractionalPortion(self, event)) ;
	ON_EVENT(DIGIT_1_9, addDigitToFractionalPortion(self, event)) ;
}
END_DEFINE_STATE()


DEFINE_STATE(error)
{
}
END_DEFINE_STATE()


DEFINE_STATE(opEntered)
{
	TRANSITION_ON_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),	TO(negated2),			NO_ACTION) ;
	TRANSITION_ON(DIGIT_0,												TO(zero2),				clearEntry(self)) ;
	TRANSITION_ON(DIGIT_1_9,											TO(int2),				clearEntry(self) ; addDigitToIntegralPortion(self, event)) ;
	TRANSITION_ON(POINT,												TO(frac2),				clearEntry(self)) ;

	HANDLE_STATE_EVENTS
	{
		ENTER
		{
			char	output[50] ;

			sprintf(output,
					"%ld.%ld",
					(long int)(self->integerBeingEntered * self->signBeingEntered),
					(long int)(self->fractionBeingEntered)) ;

			self->operand1 = atof(output) ;
		}
		ENTER_HANDLED
	}
	HANDLE_STATE_EVENTS_DONE
}
END_DEFINE_STATE()


DEFINE_STATE(negated2)
{
	ON_ENTRY(																					self->signBeingEntered *= -1) ;
	TRANSITION_ON(CLEAR_ENTRY,											TO(opEntered),			clearEntry(self)) ;
	TRANSITION_ON(DIGIT_0,												TO(zero2),				NO_ACTION) ;
	TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
	TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
	CONSUME_EVENT_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),							self->signBeingEntered *= -1) ;
}
END_DEFINE_STATE()


uint8_t doCalculation(	calculatorMachine_t* sm, event_t* event)
{
	bool	success ;
	char	output[50] ;
	float	result ;

	sprintf(output,
			"%ld.%ld",
			(long int)(sm->integerBeingEntered * sm->signBeingEntered),
			(long int)(sm->fractionBeingEntered)) ;

	sm->operand2 = atof(output) ;
#if 0
	printf("   %f %c %f = ", sm->operand1, CAST_EVENT(keyEvent_t)->key, sm->operand2) ;
#endif
	switch(CAST_EVENT(keyEvent_t)->key)
	{
		case '+': { result = sm->operand1 + sm->operand2 ;	success = true ;	break ; }
		case '-': { result = sm->operand1 - sm->operand2 ;	success = true ;	break ; }
		case '*': { result = sm->operand1 * sm->operand2 ;	success = true ;	break ; }
		case '/': { result = sm->operand1 / sm->operand2 ;	success = true ;	break ; }
		case '=': { result = sm->operand1 + sm->operand2 ;	success = true ;	break ; }
		default:  { success = false ; }
	}

	if(success)
	{
		sprintf(output, "%10f", result) ;

#if 0
		printf("%f (%s)", result, output) ;
#endif

		sm->signBeingEntered		= result >= 0 ? 1 : -1 ;
		sm->integerBeingEntered		= abs(atoi(output)) ;
		sm->fractionBeingEntered	= atoi(strchr(output, '.') + 1) ;
	}

#if 0
	printf("   %ld, %ld, %ld   ", sm->signBeingEntered, sm->fractionBeingEntered, sm->integerBeingEntered) ;
#endif

	return success ;
}


DEFINE_STATE(operand2)
{
	TRANSITION_ON(CLEAR_ENTRY,											TO(opEntered),			clearEntry(self)) ;

	HANDLE_STATE_EVENTS
	{
		EVENT(OPERATION)
		EVENT(EQUALS)
		{
			uint8_t goodCalc = doCalculation(self, event) ;

			if(goodCalc)
			{
				TRANSITION_ON(OPERATION,								TO(opEntered),			NO_ACTION) ;
				TRANSITION_ON(EQUALS,									TO(result),				NO_ACTION) ;
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
	TRANSITION_ON(DIGIT_1_9,											TO(int2),				addDigitToIntegralPortion(self, event)) ;
	TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
}
END_DEFINE_STATE()


DEFINE_STATE(int2)
{
	TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;

	ON_EVENT(DIGIT_1_9, addDigitToIntegralPortion(self, event)) ;
}
END_DEFINE_STATE()


DEFINE_STATE(frac2)
{
	CONSUME_EVENT(POINT,																		NO_ACTION) ;

	ON_EVENT(DIGIT_0,	addDigitToFractionalPortion(self, event)) ;
	ON_EVENT(DIGIT_1_9,	addDigitToFractionalPortion(self, event)) ;
}
END_DEFINE_STATE()
