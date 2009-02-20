#ifndef _STATE_MACHINE_H_
#define _STATE_MACHINE_H_

#warning ************************** Put this into a proper header file **************************
void addTickCounter(	unsigned short* pointerToIncrement) ;

// A couple of states that all state machines MUST have. Others will be defined in the specific
// instance of the state machine. The first two enums in each state machine must be the two below

enum {	
		STATE_UNKNOWN,
		STATE_MACHINE_INIT
	 } ;

enum {
		SUBSTATE_ENTRY,
		SUBSTATE_DO,
		SUBSTATE_TIMEOUT,
		SUBSTATE_EXIT
	 } ;


// Normally putting a variable is a header file isn't done, but it's ok in this case
// since each state machine will have it's own source file.

static xdata unsigned short	millisecondsInState ;
static xdata unsigned char	previousState ;
static xdata unsigned char	currentState ;
static xdata unsigned char	nextState ;

#if STATE_MACHINE_DEBUGGING_ENABLED
	void outputStateMachineDebugData(	unsigned char subState) ;
#else
	#define outputStateMachineDebugData(a)
#endif


#define STATE_MACHINE_INIT()			previousState	= STATE_UNKNOWN ;		\
										currentState	= STATE_MACHINE_INIT ;	\
										nextState		= STATE_MACHINE_INIT ;	\
										addTickCounter(&millisecondsInState) ;


#define STATE_RESET_TIMEOUT_COUNTER()	millisecondsInState = 0

#define STATE_CHANGE_CLEANUP()			if(previousState != currentState) { STATE_RESET_TIMEOUT_COUNTER() ; }




#define STATE_ENTRY_ACTION				if(currentState != previousState)					\
										{													\
											outputStateMachineDebugData(SUBSTATE_ENTRY) ;	\

											// app code goes here

#define STATE_DO_ACTION						previousState = currentState ;					\
										}													\
										else if(nextState == currentState)					\
										{													\
											outputStateMachineDebugData(SUBSTATE_DO) ;		\

											// app code goes here

#define STATE_TIMEOUT_ACTION_ms(to)		}													\
										if(millisecondsInState >= to)						\
										{													\
											STATE_RESET_TIMEOUT_COUNTER() ;					\
											outputStateMachineDebugData(SUBSTATE_TIMEOUT) ;	\

											// app code goes here

#define STATE_EXIT_ACTION				}													\
										else if(nextState != currentState)					\
										{													\
											outputStateMachineDebugData(SUBSTATE_EXIT) ;

											// app code goes here

#define STATE_END							currentState = nextState ;						\
										}

static void iterateStateMachine(		void) ;

#define ITERATE_STATE_MACHINE()			iterateStateMachine() ;

#define STATE_MACHINE_ITERATOR()		void iterateStateMachine(	void)

#define STATE_MACHINE_SWITCH()			STATE_CHANGE_CLEANUP() ; switch(currentState)

#define DEFAULT_STATE_MACHINE_CASE		default:											\
										{													\
											previousState	= STATE_UNKNOWN ;				\
											currentState	= STATE_MACHINE_INIT ;			\
											nextState		= STATE_MACHINE_INIT ;			\
										}

#define STATE_MACHINE_HANDLER(state)	handler_##state()

#define STATE_MACHINE_HANDLER_FUNCTION(state)	static void handler_##state(	void)

#define CHANGE_STATE_TO(newState)		nextState = newState


#define STATE_MACHINE_GET_PREVIOUS_STATE()		previousState
#define STATE_MACHINE_GET_CURRENT_STATE()		currentState
#define STATE_MACHINE_GET_NEXT_STATE()			nextState


#endif /* _STATE_MACHINE_H_ */
