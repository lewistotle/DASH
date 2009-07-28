/*
 * stateMachine_G3.h
 *
 *  Created on: Jul 20, 2009
 *      Author: jlewis
 */

#ifndef STATEMACHINE_G3_H_
#define STATEMACHINE_G3_H_


#include <stdint.h>
typedef uint8_t			substate_t ;

typedef void	(*call_state_type)(uint8_t subState) ;


enum {
		SUBSTATE_GET_INFO,
		SUBSTATE_ENTRY,
		SUBSTATE_DO,
		SUBSTATE_TIMEOUT,
		SUBSTATE_EXIT
	 } ;


#if configSTATE_MACHINE_DEBUGGING_ENABLED
	// Note that this function is not static. It should be defined once, and only once,
	// somewhere in the code if this functionality is to be used.

	void outputStateMachineDebugData_G3(	unsigned char machineID, call_state_type state, unsigned char subState, char* stateName) ;
#else
	#define outputStateMachineDebugData_G3(a, b, c, d)
#endif


#if configSTATE_MACHINE_TIMEOUTS_ENABLED
	#if		configSTATE_MACHINE_USE_SHORT_FOR_MILLISECOND_TIMER
		typedef unsigned short	millisecondTimerType ;
	#elif	configSTATE_MACHINE_USE_LONG_FOR_MILLISECOND_TIMER
		typedef unsigned long	millisecondTimerType ;
	#else
		#error No type given for millisecondInState variable
	#endif

	static millisecondTimerType	millisecondsInState ;

	#define STATE_MACHINE_TIME_IN_STATE_ms		millisecondsInState

	#define STATE_RESET_TIMEOUT_COUNTER()		millisecondsInState = 0

	#define STATE_INCREMENT_TIMEOUT_COUNTER()	millisecondsInState++ ;

	#if configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_BASED

		#ifdef configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_REGISTRY_FUNCTION
			#define STATE_MACHINE_SETUP_MILLISECOND_TICK	configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_REGISTRY_FUNCTION(&millisecondsInState)
		#else
			#error State machine configured to use variable registry function, but none defined
		#endif

	#elif configSTATE_MACHINE_TIME_IN_STATE_CALLBACK_BASED

		static void incrementMillisecondsInState(	void)
		{
			millisecondsInState++ ;
		}

		#ifdef configSTATE_MACHINE_TIME_IN_STATE_CALLBACK_REGISTRY_FUNCTION
			#define STATE_MACHINE_SETUP_MILLISECOND_TICK	configSTATE_MACHINE_TIME_IN_STATE_CALLBACK_REGISTRY_FUNCTION(incrementMillisecondsInState)
		#else
			#error State machine configured to use increment callback function, but none defined
		#endif

	#else

		#error State machine timeouts are enabled but no mechanism to determine time has been enabled.

	#endif
#else
	#define STATE_RESET_TIMEOUT_COUNTER()

	#define STATE_INCREMENT_TIMEOUT_COUNTER()

	#define STATE_MACHINE_SETUP_MILLISECOND_TICK
#endif


#define NO_ITERATOR_PRE_OR_POST_PROCESSING			static void STATE_MACHINE_ITERATOR_SKIN_PRE(STATE_MACHINE_NAME)(void) { }	\
													static void STATE_MACHINE_ITERATOR_SKIN_POST(STATE_MACHINE_NAME)(void) { }

#define ITERATOR_PRE_PROCESSING_ONLY				static void STATE_MACHINE_ITERATOR_SKIN_PRE(STATE_MACHINE_NAME)(void) ;	\
													static void STATE_MACHINE_ITERATOR_SKIN_POST(STATE_MACHINE_NAME)(void) { }

#define ITERATOR_POST_PROCESSING_ONLY				static void STATE_MACHINE_ITERATOR_SKIN_PRE(STATE_MACHINE_NAME)(void) { }	\
													static void STATE_MACHINE_ITERATOR_SKIN_POST(STATE_MACHINE_NAME)(void)

#define ITERATOR_PRE_AND_POST_PROCESSING			static void STATE_MACHINE_ITERATOR_SKIN_PRE(STATE_MACHINE_NAME)(void) ;	\
													static void STATE_MACHINE_ITERATOR_SKIN_POST(STATE_MACHINE_NAME)(void) ;


#define ENUMERATE_STATES(			iterationModes)	iterationModes

static uint8_t					stateMachineInitialized = false ;
static uint8_t					stateTimeoutEnabled ;
static uint8_t					stateTimeoutProcessed ;
static uint8_t					immediateChangePending ;
static millisecondTimerType		stateTimeoutPeriod ;
static char*					currentStateName = "unknown" ;



#define END_ENUMERATE_STATES(		)				static void STATE_MACHINE_ITERATOR_SKIN(STATE_MACHINE_NAME)(void)													\
													{																													\
														if(!stateMachineInitialized)																					\
														{																												\
															stateMachineInitialized = true ;																			\
															STATE_MACHINE_SETUP_MILLISECOND_TICK ;																		\
														}																												\
														STATE_MACHINE_ITERATOR_SKIN_PRE(	STATE_MACHINE_NAME)() ;														\
														do																												\
														{																												\
															if(currentState != previousState)																			\
															{																											\
																stateTimeoutEnabled		= false ;																		\
																stateTimeoutProcessed	= false ;																		\
																millisecondsInState		= 0 ;																			\
																outputStateMachineDebugData_G3(STATE_MACHINE_ID, currentState, SUBSTATE_ENTRY, currentStateName) ;			\
																currentState(SUBSTATE_ENTRY) ;																			\
																previousState = currentState ;																			\
															}																											\
															else if(stateTimeoutEnabled && (millisecondsInState >= stateTimeoutPeriod) && (!stateTimeoutProcessed))		\
															{																											\
																outputStateMachineDebugData_G3(STATE_MACHINE_ID, currentState, SUBSTATE_TIMEOUT, currentStateName) ;		\
																currentState(SUBSTATE_TIMEOUT) ;																		\
															}																											\
															else if(nextState == currentState)																			\
															{																											\
																immediateChangePending = false ;																		\
																outputStateMachineDebugData_G3(STATE_MACHINE_ID, currentState, SUBSTATE_DO, currentStateName) ;			\
																currentState(SUBSTATE_DO) ;																				\
															}																											\
															else if(nextState != currentState)																			\
															{																											\
																outputStateMachineDebugData_G3(STATE_MACHINE_ID, currentState, SUBSTATE_EXIT, currentStateName) ;			\
																currentState(SUBSTATE_EXIT) ;																			\
																currentState = nextState ;																				\
															}																											\
															if(immediateChangePending) { sprintf(buffer, "\tIMMEDIATE ") ; task_UART_puts(0, buffer) ; }	\
														} while(immediateChangePending) ;																				\
														STATE_MACHINE_ITERATOR_SKIN_POST(	STATE_MACHINE_NAME)() ;														\
													}

#define STATE_MACHINE_ITERATOR_SKIN(		sm)		STATE_MACHINE_ITERATOR_GUTS(sm)
#define STATE_MACHINE_ITERATOR_SKIN_PRE(	sm)		STATE_MACHINE_ITERATOR_GUTS_PRE(sm)
#define STATE_MACHINE_ITERATOR_SKIN_POST(	sm)		STATE_MACHINE_ITERATOR_GUTS_POST(sm)

#define STATE_MACHINE_ITERATOR_GUTS(		sm)		stIt_iterator_##sm
#define STATE_MACHINE_ITERATOR_GUTS_PRE(	sm)		stIt_pre_iterator_##sm
#define STATE_MACHINE_ITERATOR_GUTS_POST(	sm)		stIt_post_iterator_##sm




#define DEFINE_ITERATOR_PRE_PROCESS(		)		DEFINE_ITERATOR_SKIN_PRE(STATE_MACHINE_NAME)
#define DEFINE_ITERATOR_POST_PROCESS(		)		DEFINE_ITERATOR_SKIN_POST(STATE_MACHINE_NAME)

#define DEFINE_ITERATOR_SKIN_PRE(	sm)				DEFINE_ITERATOR_GUTS_PRE(sm)
#define DEFINE_ITERATOR_SKIN_POST(	sm)				DEFINE_ITERATOR_GUTS_POST(sm)

#define DEFINE_ITERATOR_GUTS_PRE(	sm)				static void stIt_pre_iterator_##sm (void) {
#define DEFINE_ITERATOR_GUTS_POST(	sm)				static void stIt_post_iterator_##sm (void) {

#define END_ITERATOR_PRE_PROCESS()					}
#define END_ITERATOR_POST_PROCESS()					}

#define GET_STATE(				newStateName)		GET_STATE_SKIN(STATE_MACHINE_NAME, newStateName)

#define GET_STATE_SKIN(			sm, newStateName)	GET_STATE_GUTS(sm, newStateName)

#define GET_STATE_GUTS(			sm, newStateName)	stFn##_##sm##_##newStateName

#define DECLARE_INITIAL_STATE(	newStateName)		static void GET_STATE(newStateName)(uint8_t subState) ;			\
													static call_state_type	previousState	= 0 ;						\
													static call_state_type currentState		= GET_STATE(newStateName) ;	\
													static call_state_type	nextState		= GET_STATE(newStateName)

#define DECLARE_STATE(			newStateName)		static void GET_STATE(newStateName)(uint8_t subState)

#define DEFINE_STATE(			newStateName)		DEFINE_STATE_SKIN(STATE_MACHINE_NAME, newStateName)

#define DEFINE_STATE_SKIN(		sm, newStateName)	DEFINE_STATE_GUTS(sm, newStateName)

#define DEFINE_STATE_GUTS( 		sm, newStateName)	static void GET_STATE(newStateName)(uint8_t subState)				\
													{																	\
														currentStateName = "stFn_" #sm "_" #newStateName ;				\
														if(subState > SUBSTATE_GET_INFO)								\
														{
															// state code goes here
#define END_STATE()										}																\
													}


#define PREVIOUS_STATE(			)					previousState
#define NEXT_STATE(				)					nextState







#define CHANGE_STATE_TO(newState)					nextState = &GET_STATE(newState)

#if configSTATE_MACHINE_FORCE_IMMEDIATE_CHANGES_TO_QUEUED
	#define IMMEDIATE_CHANGE_STATE_TO(newState)		nextState = &GET_STATE(newState) ;
#else
	#define IMMEDIATE_CHANGE_STATE_TO(newState)		nextState = &GET_STATE(newState) ; immediateChangePending = true ;
#endif







#define ITERATE_STATE_MACHINE(sm)				STATE_MACHINE_ITERATOR_SKIN(sm)()








#define STATE_MACHINE_GET_PREVIOUS_STATE()		previousState
#define STATE_MACHINE_GET_CURRENT_STATE()		currentState
#define STATE_MACHINE_GET_NEXT_STATE()			nextState




#define NO_STATE_SUB_ACTIONS()					(void)subState ;

#define STATE_ENTRY_ACTION_START				if(subState == SUBSTATE_ENTRY)		\
												{
#define STATE_ENTRY_ACTION_END					}


#define STATE_DO_ACTION_START					if(subState == SUBSTATE_DO)			\
												{
#define STATE_DO_ACTION_END						}

#define STATE_TIMEOUT_ACTION_START(to)			if(!stateTimeoutEnabled)			\
												{									\
													stateTimeoutPeriod	= to ;		\
													stateTimeoutEnabled = true ;	\
												}									\
												if(subState == SUBSTATE_TIMEOUT)	\
												{
#define STATE_TIMEOUT_ACTION_END					stateTimeoutProcessed = true ;	\
												}


#define STATE_EXIT_ACTION_START					if(subState == SUBSTATE_EXIT)		\
												{
#define STATE_EXIT_ACTION_END					}


#define FORCE_EARLY_TIMEOUT()					millisecondsInState = stateTimeoutPeriod + 1 ;


#endif /* STATEMACHINE_G3_H_ */
