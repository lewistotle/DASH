#ifndef _STATE_MACHINE_H_
#define _STATE_MACHINE_H_

// A couple of states that all state machines MUST have. Others will be defined in the specific
// instance of the state machine. The first two enums in each state machine must be the two below

enum {
		STATE_UNKNOWN = 0,
		STATE_INIT
	 } ;

enum {
		SUBSTATE_ENTRY = 0,
		SUBSTATE_DO,
		SUBSTATE_TIMEOUT,
		SUBSTATE_EXIT,
		SUBSTATE_GET_INFO,
		IMMEDIATE_CHANGE_FLAG
	 } ;


// Normally putting a variable is a header file isn't done, but it's ok in this case
// since each state machine will have it's own source file.

static uint16_t	stateMachineID ;
static uint16_t	previousState ;
static uint16_t	currentState ;
static uint16_t	nextState ;




#if configSTATE_MACHINE_DEBUGGING_ENABLED
	// Note that this function is not static. It should be defined once, and only once,
	// somewhere in the code if this functionality is to be used.

	void outputStateMachineDebugData(	uint16_t machineID, uint16_t state, uint16_t subState) ;
#else
	#define outputStateMachineDebugData(a, b, c)
#endif




#if configSTATE_MACHINE_TIMEOUTS_ENABLED
	#if		configSTATE_MACHINE_USE_SHORT_FOR_MILLISECOND_TIMER
		typedef uint16_t	millisecondTimerType ;
	#elif	configSTATE_MACHINE_USE_LONG_FOR_MILLISECOND_TIMER
		typedef uint32_t	millisecondTimerType ;
	
	#else
		#error No type given for millisecondInState variable
	#endif

	static millisecondTimerType					millisecondsInState ;

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




#define STATE_ENTRY_ACTION						if(currentState != previousState)														\
												{																						\
													outputStateMachineDebugData(stateMachineID, currentState, SUBSTATE_ENTRY) ;			\

													// app code goes here

#define STATE_DO_ACTION_EXCLUSIVE					previousState = currentState ;														\
												}																						\
												else if(nextState == currentState)														\
												{																						\
													outputStateMachineDebugData(stateMachineID, currentState, SUBSTATE_DO) ;			\

													// app code goes here

#if configSTATE_MACHINE_TIMEOUTS_ENABLED
	#define STATE_TIMEOUT_ACTION_ms(to)				}																					\
													if(millisecondsInState >= to)														\
													{																					\
														STATE_RESET_TIMEOUT_COUNTER() ;													\
														outputStateMachineDebugData(stateMachineID, currentState, SUBSTATE_TIMEOUT) ;	\

														// app code goes here
#endif

#define STATE_EXIT_ACTION_EXCLUSIVE				}																						\
												else if(nextState != currentState)														\
												{																						\
													outputStateMachineDebugData(stateMachineID, currentState, SUBSTATE_EXIT) ;

													// app code goes here

#define STATE_END									currentState = nextState ;															\
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





#define ITERATE_STATE_MACHINE()					iterateStateMachine() ;

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

#define CHANGE_STATE_TO(newState)				nextState = newState


#define STATE_MACHINE_GET_PREVIOUS_STATE()		previousState
#define STATE_MACHINE_GET_CURRENT_STATE()		currentState
#define STATE_MACHINE_GET_NEXT_STATE()			nextState


#endif /* _STATE_MACHINE_H_ */
