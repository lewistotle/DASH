
#ifndef _STATE_MACHINE_H_
#define _STATE_MACHINE_H_

typedef void	(*call_state_type)(void) ;

#define NO_ITERATOR_PRE_OR_POST_PROCESSING			static void END_ENUMERATE_STATES_SKIN_PRE(STATE_MACHINE_NAME)(void) { }	\
													static void END_ENUMERATE_STATES_SKIN_POST(STATE_MACHINE_NAME)(void) { }

#define ITERATOR_PRE_PROCESSING_ONLY				static void END_ENUMERATE_STATES_SKIN_PRE(STATE_MACHINE_NAME)(void) ;		\
													static void END_ENUMERATE_STATES_SKIN_POST(STATE_MACHINE_NAME)(void) { }

#define ITERATOR_POST_PROCESSING_ONLY				static void END_ENUMERATE_STATES_SKIN_PRE(STATE_MACHINE_NAME)(void) { }	\
													static void END_ENUMERATE_STATES_SKIN_POST(STATE_MACHINE_NAME)(void)

#define ITERATOR_PRE_AND_POST_PROCESSING			static void END_ENUMERATE_STATES_SKIN_PRE(STATE_MACHINE_NAME)(void) ;		\
													static void END_ENUMERATE_STATES_SKIN_POST(STATE_MACHINE_NAME)(void) ;


#define ENUMERATE_STATES(			iterationModes)	iterationModes ;

uint8_t	stateMachineInitialized = false ;

#define END_ENUMERATE_STATES(		)				static void END_ENUMERATE_STATES_SKIN(STATE_MACHINE_NAME)(void)	\
													{																	\
														if(!stateMachineInitialized)									\
														{																\
															stateMachineInitialized = true ;							\
															STATE_MACHINE_SETUP_MILLISECOND_TICK ;						\
														}																\
														END_ENUMERATE_STATES_SKIN_PRE(	STATE_MACHINE_NAME)() ;			\
														if(currentState) { currentState() ;	}							\
														END_ENUMERATE_STATES_SKIN_POST(	STATE_MACHINE_NAME)() ;			\
													}

#define END_ENUMERATE_STATES_SKIN(	sm)				END_ENUMERATE_STATES_GUTS(sm)
#define END_ENUMERATE_STATES_SKIN_PRE(	sm)			END_ENUMERATE_STATES_GUTS_PRE(sm)
#define END_ENUMERATE_STATES_SKIN_POST(	sm)			END_ENUMERATE_STATES_GUTS_POST(sm)

#define END_ENUMERATE_STATES_GUTS(	sm)				stIt_iterator_##sm
#define END_ENUMERATE_STATES_GUTS_PRE(	sm)			stIt_pre_iterator_##sm
#define END_ENUMERATE_STATES_GUTS_POST(	sm)			stIt_post_iterator_##sm




#define DEFINE_ITERATOR_PRE_PROCESS(		)		DEFINE_ITERATOR_SKIN_PRE(STATE_MACHINE_NAME)
#define DEFINE_ITERATOR_POST_PROCESS(		)		DEFINE_ITERATOR_SKIN_POST(STATE_MACHINE_NAME)

#define DEFINE_ITERATOR_SKIN_PRE(	sm)				DEFINE_ITERATOR_GUTS_PRE(sm)
#define DEFINE_ITERATOR_SKIN_POST(	sm)				DEFINE_ITERATOR_GUTS_POST(sm)

#define DEFINE_ITERATOR_GUTS_PRE(	sm)				static void stIt_pre_iterator_##sm (void) {
#define DEFINE_ITERATOR_GUTS_POST(	sm)				static void stIt_post_iterator_##sm (void) {

#define END_ITERATOR_PRE_PROCESS()					}
#define END_ITERATOR_POST_PROCESS()					}

char* currentStateName = "unknown" ;

#define GET_STATE(				newStateName)		GET_STATE_SKIN(STATE_MACHINE_NAME, newStateName)

#define GET_STATE_SKIN(			sm, newStateName)	GET_STATE_GUTS(sm, newStateName)

#define GET_STATE_GUTS(			sm, newStateName)	stFn##_##sm##_##newStateName

#define DECLARE_INITIAL_STATE(	newStateName)		static void GET_STATE(newStateName)(void) ;						\
													static call_state_type	previousState = 0 ;							\
													static call_state_type currentState = GET_STATE(newStateName) ;		\
													static call_state_type	nextState = GET_STATE(newStateName) ;

#define DECLARE_STATE(			newStateName)		static void GET_STATE(newStateName)(void) ;

#define DEFINE_STATE(			newStateName)		DEFINE_STATE_SKIN(STATE_MACHINE_NAME, newStateName)

#define DEFINE_STATE_SKIN(		sm, newStateName)	DEFINE_STATE_GUTS(sm, newStateName)

#define DEFINE_STATE_GUTS( 		sm, newStateName)	static void GET_STATE(newStateName)(void)							\
													{																	\
														currentStateName = "stFn_" #sm "_" #newStateName ;				\
														{


#define END_STATE()										}																\
													}


#define PREVIOUS_STATE(			)					previousState
#define NEXT_STATE(				)					nextState


// A couple of states that all state machines MUST have. Others will be defined in the specific
// instance of the state machine. The first two enums in each state machine must be the two below

enum {
		STATE_UNKNOWN,
		STATE_INIT
	 } ;

enum {
		SUBSTATE_ENTRY,
		SUBSTATE_DO,
		SUBSTATE_TIMEOUT,
		SUBSTATE_EXIT
	 } ;


// Normally putting a variable is a header file isn't done, but it's ok in this case
// since each state machine will have it's own source file.

static unsigned char	stateMachineID ;
//static call_state_type	previousState ;
//static call_state_type	currentState ;
//static call_state_type	nextState ;




#if configSTATE_MACHINE_DEBUGGING_ENABLED
	// Note that this function is not static. It should be defined once, and only once,
	// somewhere in the code if this functionality is to be used.

	void outputStateMachineDebugData(	unsigned char machineID, call_state_type state, unsigned char subState, char* stateName) ;
#else
	#define outputStateMachineDebugData(a, b, c, d)
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




#define STATE_MACHINE_INIT(newMachineID)		stateMachineID	= newMachineID ;		\
												previousState	= STATE_UNKNOWN ;		\
												currentState	= STATE_INIT ;			\
												nextState		= STATE_INIT ;			\
												STATE_MACHINE_SETUP_MILLISECOND_TICK ;


#define STATE_CHANGE_CLEANUP()					if(previousState != currentState) { STATE_RESET_TIMEOUT_COUNTER() ; }




#define STATE_ENTRY_ACTION						if(currentState != previousState)																			\
												{																											\
													outputStateMachineDebugData(STATE_MACHINE_ID, currentState, SUBSTATE_ENTRY, currentStateName) ;			\

													// app code goes here

#define STATE_DO_ACTION_EXCLUSIVE					previousState = currentState ;																			\
												}																											\
												else if(nextState == currentState)																			\
												{																											\
													outputStateMachineDebugData(STATE_MACHINE_ID, currentState, SUBSTATE_DO, currentStateName) ;			\

													// app code goes here

#if configSTATE_MACHINE_TIMEOUTS_ENABLED
	#define STATE_TIMEOUT_ACTION_ms(to)				}																										\
													if(millisecondsInState >= to)																			\
													{																										\
														STATE_RESET_TIMEOUT_COUNTER() ;																		\
														outputStateMachineDebugData(STATE_MACHINE_ID, currentState, SUBSTATE_TIMEOUT, currentStateName) ;	\

														// app code goes here
#endif

#define STATE_EXIT_ACTION_EXCLUSIVE				}																											\
												else if(nextState != currentState)																			\
												{																											\
													outputStateMachineDebugData(STATE_MACHINE_ID, currentState, SUBSTATE_EXIT, currentStateName) ;

													// app code goes here

#define STATE_END									currentState = nextState ;																				\
												}





#define STATE_DO_ACTION_IMMEDIATE					previousState = currentState ;														\
												}																						\
												if(nextState == currentState)															\
												{																						\
													outputStateMachineDebugData(stateMachineID, currentState, SUBSTATE_DO) ;			\

#define STATE_EXIT_ACTION_IMMEDIATE				}																						\
												if(nextState != currentState)															\
												{																						\
													outputStateMachineDebugData(stateMachineID, currentState, SUBSTATE_EXIT) ;


#if configSTATE_MACHINE_ACTIONS_ARE_IMMEDIATE_BY_DEFAULT
	#define STATE_DO_ACTION						STATE_DO_ACTION_IMMEDIATE
	#define STATE_EXIT_ACTION					STATE_EXIT_ACTION_IMMEDIATE
#else
	#define STATE_DO_ACTION						STATE_DO_ACTION_EXCLUSIVE
	#define STATE_EXIT_ACTION					STATE_EXIT_ACTION_EXCLUSIVE
#endif





//#define ITERATE_STATE_MACHINE()					iterateStateMachine() ;
#define ITERATE_STATE_MACHINE()					END_ENUMERATE_STATES_SKIN(STATE_MACHINE_NAME)()


#define STATE_MACHINE_ITERATOR()				static void iterateStateMachine(	void)

// declare prototype
STATE_MACHINE_ITERATOR() ;

#define STATE_MACHINE_SWITCH()					STATE_CHANGE_CLEANUP() ; switch(currentState)

#define DEFAULT_STATE_MACHINE_CASE				default:											\
												{													\
													/*previousState	= STATE_UNKNOWN ;*/				\
													currentState	= STATE_UNKNOWN ;				\
													/*nextState		= STATE_MACHINE_INIT ;*/		\
												}

#define STATE_MACHINE_HANDLER(state)			handler_##state()

#define STATE_MACHINE_HANDLER_FUNCTION(state)	static void handler_##state(	void)

#define CHANGE_STATE_TO(newState)				nextState = &GET_STATE(newState)


#define STATE_MACHINE_GET_PREVIOUS_STATE()		previousState
#define STATE_MACHINE_GET_CURRENT_STATE()		currentState
#define STATE_MACHINE_GET_NEXT_STATE()			nextState


#endif /* _STATE_MACHINE_H_ */







