/*
 * stateMachine_G3.h
 *
 *  Created on: Jul 20, 2009
 *      Author: jlewis
 */

#ifndef STATEMACHINE_G3_H_
#define STATEMACHINE_G3_H_

#ifdef __CDT_PARSER__
#define __reentrant
#endif


#if defined(__TS7800__) || defined(__TMS320C28X__)
	#define __reentrant
#endif


#include <stdint.h>
typedef uint16_t			substate_t ;

typedef void	(* call_state_type)(uint16_t subState) ;


enum {
		SUBSTATE_GET_INFO,
		SUBSTATE_ENTRY,
		SUBSTATE_DO,
		SUBSTATE_TIMEOUT,
		SUBSTATE_EXIT,
		IMMEDIATE_CHANGE_FLAG
	 } ;


#ifdef __TS7800__
	#include <sys/time.h>

	static struct timeval	currentTime ;
	static double			stateEntryTime ;

	#define TIME_IN_STATE_INIT_HELPER()		{ gettimeofday(&currentTime, NULL) ; stateEntryTime = ((double)currentTime.tv_sec) + ((double)currentTime.tv_usec / 1000000.0) ; }
	#define TIME_IN_STATE_ENTRY_HELPER()	{ gettimeofday(&currentTime, NULL) ; stateEntryTime = ((double)currentTime.tv_sec) + ((double)currentTime.tv_usec / 1000000.0) ; }
	#define TIME_IN_STATE_HELPER()			{ gettimeofday(&currentTime, NULL) ; millisecondsInState = ((((double)currentTime.tv_sec) + ((double)currentTime.tv_usec / 1000000.0)) - stateEntryTime) * 1000.0 ; }
#else
	#define TIME_IN_STATE_INIT_HELPER()
	#define TIME_IN_STATE_ENTRY_HELPER()
	#define TIME_IN_STATE_HELPER()
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

	#define STATE_RESET_TIMEOUT_COUNTER()		millisecondsInState = 0 ; stateTimeoutProcessed = false ; TIME_IN_STATE_ENTRY_HELPER()

	#define STATE_INCREMENT_TIMEOUT_COUNTER()	millisecondsInState++ ;

	#if configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_BASED

		#ifdef configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_REGISTRY_FUNCTION
			void configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_REGISTRY_FUNCTION(millisecondTimerType* pointerToIncrement) ;

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




#if configSTATE_MACHINE_DEBUGGING_ENABLED
	// Note that this function is not static. It should be defined once, and only once,
	// somewhere in the code if this functionality is to be used.

	void outputStateMachineDebugData_G3(	call_state_type state, unsigned char subState, char* stateName, unsigned long millisecondsInState, uint16_t stateTimeoutForced) ;
#else
	#define outputStateMachineDebugData_G3(a, b, c, d, e)
#endif




#define ENUMERATE_STATES(			iterationModes)	iterationModes

static uint16_t					stateMachineInitialized = false ;
static uint16_t					stateRetryCount ;
static uint16_t					stateTimeoutEnabled ;
static uint16_t					stateTimeoutProcessed ;
static uint16_t					immediateChangePending ;
static millisecondTimerType		stateTimeoutPeriod ;
static uint16_t					stateTimeoutForced ;


#define END_ENUMERATE_STATES(		)				static void STATE_MACHINE_ITERATOR_SKIN(STATE_MACHINE_NAME)(void)														\
													{																														\
														if(!stateMachineInitialized)																						\
														{																													\
															stateMachineInitialized = true ;																				\
															stateRetryCount			= 0 ;																					\
															STATE_MACHINE_SETUP_MILLISECOND_TICK ;																			\
															TIME_IN_STATE_INIT_HELPER() ;																					\
														}																													\
														STATE_MACHINE_ITERATOR_SKIN_PRE(	STATE_MACHINE_NAME)() ;															\
														do																													\
														{																													\
															if(currentState != previousState)																				\
															{																												\
																currentState(SUBSTATE_GET_INFO) ;																			\
																stateTimeoutEnabled		= false ;																			\
																stateTimeoutProcessed	= false ;																			\
																stateTimeoutForced		= false ;																			\
																TIME_IN_STATE_ENTRY_HELPER() ;																				\
																millisecondsInState		= 0 ;																				\
																/*outputStateMachineDebugData_G3(currentState, SUBSTATE_ENTRY, currentStateName, millisecondsInState, stateTimeoutForced) ;*/		\
																currentState(SUBSTATE_ENTRY) ;																				\
																previousState = currentState ;																				\
															}																												\
															else if(stateTimeoutEnabled && (stateTimeoutForced || (millisecondsInState >= stateTimeoutPeriod)) && (!stateTimeoutProcessed))			\
															{																												\
																/*outputStateMachineDebugData_G3(currentState, SUBSTATE_TIMEOUT, currentStateName, millisecondsInState, stateTimeoutForced) ;*/		\
																currentState(SUBSTATE_TIMEOUT) ;																			\
																stateTimeoutForced = false ;																				\
															}																												\
															else if(nextState == currentState)																				\
															{																												\
																immediateChangePending = false ;																			\
																TIME_IN_STATE_HELPER() ;																					\
																/*outputStateMachineDebugData_G3(currentState, SUBSTATE_DO, currentStateName, millisecondsInState, stateTimeoutForced) ;*/			\
																currentState(SUBSTATE_DO) ;																					\
															}																												\
															else if(nextState != currentState)																				\
															{																												\
																/*outputStateMachineDebugData_G3(currentState, SUBSTATE_EXIT, currentStateName, millisecondsInState, stateTimeoutForced) ;*/		\
																currentState(SUBSTATE_EXIT) ;																				\
																currentState = nextState ;																					\
																stateRetryCount = 0 ;																						\
															}																												\
															if(immediateChangePending)																						\
															{																												\
																/*outputStateMachineDebugData_G3(currentState, IMMEDIATE_CHANGE_FLAG, currentStateName, millisecondsInState, stateTimeoutForced) ;*/\
															}																												\
														} while(immediateChangePending) ;																					\
														STATE_MACHINE_ITERATOR_SKIN_POST(	STATE_MACHINE_NAME)() ;															\
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

#define DECLARE_INITIAL_STATE(	newStateName)		static void GET_STATE(newStateName)(uint16_t subState) ;					\
													/*static call_state_type	callingState		= 0 ;*/						\
													static call_state_type	previousState		= 0 ;						\
													static call_state_type	currentState		= GET_STATE(newStateName) ;	\
													static call_state_type	nextState			= GET_STATE(newStateName) /*;*/	\
													/*static char*			currentStateName	= "" # newStateName*/

#define DECLARE_STATE(			newStateName)		static void GET_STATE(newStateName)(uint16_t subState)

#define DEFINE_STATE(			newStateName)		DEFINE_STATE_SKIN(STATE_MACHINE_NAME, newStateName)

#define DEFINE_STATE_SKIN(		sm, newStateName)	DEFINE_STATE_GUTS(sm, newStateName)

#define DEFINE_STATE_GUTS( 		sm, newStateName)	static void GET_STATE(newStateName)(uint16_t subState) __reentrant				\
													{																	\
														/*currentStateName = "stFn_" #sm "_" #newStateName ;*/				\
														if(subState > SUBSTATE_GET_INFO)								\
														{
															// state code goes here
#define END_STATE()										}																\
													}


#define PREVIOUS_STATE(			)					previousState
#define NEXT_STATE(				)					nextState







#define CHANGE_STATE_TO(newState)					/*callingState = currentState ;*/ nextState = &GET_STATE(newState) ;

#if configSTATE_MACHINE_FORCE_IMMEDIATE_CHANGES_TO_QUEUED
	#define IMMEDIATE_CHANGE_STATE_TO(newState)		/*callingState = currentState ;*/ nextState = &GET_STATE(newState) ;
#else
	#define IMMEDIATE_CHANGE_STATE_TO(newState)		/*callingState = currentState ;*/ nextState = &GET_STATE(newState) ; immediateChangePending = true ;
#endif

#define RETRY_STATE(mx, bs)							stateRetryCount++ ;					\
													if(stateRetryCount < mx)			\
													{									\
														/*previousState = callingState ;*/	\
													}									\
													else								\
													{									\
														CHANGE_STATE_TO(bs) ;			\
													}





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
												{									\
													stateTimeoutProcessed = true ;
#define STATE_TIMEOUT_ACTION_END				}


#define STATE_EXIT_ACTION_START					if(subState == SUBSTATE_EXIT)		\
												{
#define STATE_EXIT_ACTION_END					}


#define FORCE_EARLY_TIMEOUT()					stateTimeoutForced = true ;


#endif /* STATEMACHINE_G3_H_ */
