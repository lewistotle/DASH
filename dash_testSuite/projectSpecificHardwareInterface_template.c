#include "config.h"
#include "gpio.h"
#include "ioMapping.h"
#include "HardwareAbstractionLayer.h"

#include "CAN.h"
#include "stateMachine.h"
#include "task_systemMonitor.h"


/*****************************************************************************
 *                              clock interfaces
 *****************************************************************************/

bool dash_hal_SYSTEM_clockInit_projectSpecific(					void)
{
	return false ;
}


bool dash_hal_SYSTEM_systemTimerInit_projectSpecific(			void)
{
	return false ;
}


void dash_hal_SYSTEM_systemTimerTick_ISR(						void)
{
}

/*****************************************************************************
 *                              GPIO interfaces
 *****************************************************************************/

bool				dash_hal_GPIO_init_projectSpecific(				void)
{
	return false ;
}


GPIO_PIN_LEVEL		dash_hal_GPIO_getOutputLevel_projectSpecific(	pinID_t pinID)
{
	return GPIO_UNDEFINED ;
}


void				dash_hal_GPIO_setOutputLevel_projectSpecific(	pinID_t pinID, GPIO_PIN_LEVEL newLevel)
{
}


GPIO_PIN_LEVEL		dash_hal_GPIO_getInputLevel_projectSpecific(	pinID_t pinID)
{
	return GPIO_UNDEFINED ;
}


GPIO_PULLUP_STATUS	dash_hal_GPIO_getPullupState_projectSpecific(	pinID_t pinID)
{
	return GPIO_PULLUP_UNDEFINED ;
}


void				dash_hal_GPIO_setPullupState_projectSpecific(	pinID_t pinID, GPIO_PULLUP_STATUS newStatus)
{
}


GPIO_PIN_DIRECTION	dash_hal_GPIO_getPinDirection_projectSpecific(	pinID_t pinID)
{
	return GPIO_DIRECTION_UNDEFINED ;
}


void				dash_hal_GPIO_setPinDirection_projectSpecific(	pinID_t pinID, GPIO_PIN_DIRECTION newDirection)
{
}


void				dash_hal_GPIO_pinLevel_ISR(						void)
{
}


void				dash_hal_GPIO_pinLevelChange_ISR(				void)
{
}

/*****************************************************************************
 *                              UART interfaces
 *****************************************************************************/

void task_UART_init_projectSpecific(							unsigned char channelNumber)
{
}


bool task_UART_isCharacterInReceiveBuffer_projectSpecific(		unsigned char channelNumber)
{
	return false ;
}


char task_UART_getCharFromReceiveBuffer_projectSpecific(		unsigned char channelNumber)
{
	return 0 ;
}


void task_UART_clearCharacterReceivedFlag_projectSpecific(		unsigned char channelNumber)
{
}


void task_UART_sendchar_projectSpecific(						unsigned char channelNumber, char charToSend)
{
}


bool task_UART_isTransmitterReadyForChar_projectSpecific(		unsigned char channelNumber)
{
	return true ;
}


void task_UART_clearCharacterTransmittedFlag_projectSpecific(	unsigned char channelNumber)
{
}


/*****************************************************************************
 *                               PWM interfaces
 *****************************************************************************/


void pwm_init_projectSpecific(								unsigned char channelNumber)
{
}


void pwm_incrementDutyCycle_projectSpecific(				unsigned char channelNumber)
{
}


void pwm_decrementDutyCycle_projectSpecific(				unsigned char channelNumber)
{
}


uint8_t pwm_getDutyCycle_projectSpecific(					unsigned char channelNumber)
{
	return 0 ;
}


void pwm_setDutyCycle_projectSpecific(						unsigned char channelNumber, uint8_t newDutyCycle)
{
}


void pwm_adjustDutyCycle_projectSpecific(					unsigned char channelNumber, int8_t dutyCycleAdjustment)
{
}


void pwm_setDutyCycleAsPercentage_projectSpecific(			unsigned char channelNumber, unsigned char newDutyCycle)
{
}


unsigned char pwm_getDutyCycleAsPercentage_projectSpecific(	unsigned char channelNumber)
{
	return 0 ;
}


/*****************************************************************************
 *                               PWM interfaces
 *****************************************************************************/


static void prvSetupSystemClock(	void)
{
}


static void prvSetupTimerInterrupt(	void)
{
}


/*****************************************************************************
 *                              1-wire interfaces
 *****************************************************************************/


void owRaiseError(int something)
{
	(void)something ;
}


// Pause for exactly 'tick' number of ticks = 0.25us
void tickDelay(int tick) // Implementation is platform specific
{
}


// 'tick' values
int A,B2,C,D,E,F,G,H,I,J;
//-----------------------------------------------------------------------------
// Set the 1-Wire timing to 'standard' (standard=1) or 'overdrive' (standard=0).
//
void SetSpeed(int standard)
{
	// Adjust tick values depending on speed
	if (standard)
	{
		// Standard Speed
		A = 6 * 4;
		B2 = 64 * 4;
		C = 60 * 4;
		D = 10 * 4;
		E = 9 * 4;
		F = 55 * 4;
		G = 1 * 4;
		H = 480 * 4;
		I = 70 * 4;
		J = 410 * 4;
	}
	else
	{
		// Overdrive Speed
		A = 1.5 * 4;
		B2 = 7.5 * 4;
		C = 7.5 * 4;
		D = 2.5 * 4;
		E = 0.75 * 4;
		F = 7 * 4;
		G = 2.5 * 4;
		H = 70 * 4;
		I = 8.5 * 4;
		J = 40 * 4;
	}
}


//--------------------------------------------------------------------------
// Reset all of the devices on the 1-Wire Net and return the result.
//
// 'portnum'    - number 0 to MAX_PORTNUM-1.  This number is provided to
//                indicate the symbolic port number.
//
// Returns: TRUE(1):  presense pulse(s) detected, device(s) reset
//          FALSE(0): no presense pulses detected
//
SMALLINT owTouchReset(int portnum)
{
	int result;

	(void)portnum ;

	tickDelay(G);
	gpio_outputLow(ioMapping_1_WIRE_COMMUNICATION) ; // Drives DQ low
	tickDelay(H);
	gpio_outputHigh(ioMapping_1_WIRE_COMMUNICATION) ; // Releases the bus
	tickDelay(I);
	result = gpio_getInputLevel(ioMapping_1_WIRE_COMMUNICATION) ; // Sample for presence pulse from slave
	tickDelay(J); // Complete the reset sequence recovery
	return result; // Return sample presence
}


//--------------------------------------------------------------------------
// Send 1 bit of communication to the 1-Wire Net and return the
// result 1 bit read from the 1-Wire Net.  The parameter 'sendbit'
// least significant bit is used and the least significant bit
// of the result is the return bit.
//
// 'portnum'    - number 0 to MAX_PORTNUM-1.  This number is provided to
//                indicate the symbolic port number.
// 'sendbit'    - the least significant bit is the bit to send
//
// Returns: 0:   0 bit read from sendbit
//          1:   1 bit read from sendbit
//
SMALLINT owTouchBit(int portnum, SMALLINT sendbit)
{
	unsigned char result;
	(void)portnum ;

	if(sendbit)
	{
		gpio_outputHigh(ioMapping_1_WIRE_COMMUNICATION) ;
	}
	else
	{
		gpio_outputLow(ioMapping_1_WIRE_COMMUNICATION) ;
	}

	// sample result @ 15 us.
	result = gpio_getInputLevel(ioMapping_1_WIRE_COMMUNICATION) ;

	// sample result @ 15 us.
	tickDelay(F) ;

	// timeslot done.
	gpio_outputHigh(ioMapping_1_WIRE_COMMUNICATION) ;
	tickDelay(D) ;

	return result;
}


//--------------------------------------------------------------------------
// Send 8 bits of communication to the 1-Wire Net and return the
// result 8 bits read from the 1-Wire Net.  The parameter 'sendbyte'
// least significant 8 bits are used and the least significant 8 bits
// of the result is the return byte.
//
// 'portnum'    - number 0 to MAX_PORTNUM-1.  This number is provided to
//                indicate the symbolic port number.
// 'sendbyte'   - 8 bits to send (least significant byte)
//
// Returns:  8 bytes read from sendbyte
//
SMALLINT owTouchByte(int portnum, SMALLINT sendbyte)
{
	uchar i;
	uchar result = 0;

	(void)portnum ;

	for (i = 0; i < 8; i++)
	{
		result |= (owTouchBit(portnum,sendbyte & 1) << i);
		sendbyte >>= 1;
	}

	return result;
}


//--------------------------------------------------------------------------
// Send 8 bits of communication to the 1-Wire Net and verify that the
// 8 bits read from the 1-Wire Net is the same (write operation).
// The parameter 'sendbyte' least significant 8 bits are used.
//
// 'portnum'    - number 0 to MAX_PORTNUM-1.  This number is provided to
//                indicate the symbolic port number.
// 'sendbyte'   - 8 bits to send (least significant byte)
//
// Returns:  TRUE: bytes written and echo was the same
//           FALSE: echo was not the same
//
SMALLINT owWriteByte(int portnum, SMALLINT sendbyte)
{
   return (owTouchByte(portnum,sendbyte) == sendbyte) ? TRUE : FALSE;
}


//--------------------------------------------------------------------------
// Send 8 bits of read communication to the 1-Wire Net and and return the
// result 8 bits read from the 1-Wire Net.
//
// 'portnum'    - number 0 to MAX_PORTNUM-1.  This number is provided to
//                indicate the symbolic port number.
//
// Returns:  8 bytes read from 1-Wire Net
//
SMALLINT owReadByte(int portnum)
{
   return owTouchByte(portnum,0xFF);
}

//--------------------------------------------------------------------------
// Set the 1-Wire Net communucation speed.
//
// 'portnum'    - number 0 to MAX_PORTNUM-1.  This number is provided to
//                indicate the symbolic port number.
// 'new_speed'  - new speed defined as
//                MODE_NORMAL     0x00
//                MODE_OVERDRIVE  0x01
//
// Returns:  current 1-Wire Net speed
//
SMALLINT owSpeed(int portnum, SMALLINT new_speed)
{
	(void)portnum ;
	(void)new_speed ;

	// not supported

	return 0 ;
}

//--------------------------------------------------------------------------
// Set the 1-Wire Net line level.  The values for NewLevel are
// as follows:
//
// 'portnum'    - number 0 to MAX_PORTNUM-1.  This number is provided to
//                indicate the symbolic port number.
// 'new_level'  - new level defined as
//                MODE_NORMAL     0x00
//                MODE_STRONG5    0x02
//                MODE_PROGRAM    0x04
//                MODE_BREAK      0x08
//
// Returns:  current 1-Wire Net level
//
SMALLINT owLevel(int portnum, SMALLINT new_level)
{
	(void)portnum ;
	(void)new_level ;

	// not supported

	return 0 ;
}

//--------------------------------------------------------------------------
// This procedure creates a fixed 480 microseconds 12 volt pulse
// on the 1-Wire Net for programming EPROM iButtons.
//
// 'portnum'    - number 0 to MAX_PORTNUM-1.  This number is provided to
//                indicate the symbolic port number.
//
// Returns:  TRUE  successful
//           FALSE program voltage not available
//
SMALLINT owProgramPulse(int portnum)
{
	(void)portnum ;

	// not supported

	return 0;
}

//--------------------------------------------------------------------------
//  Description:
//     Delay for at least 'len' ms
//
void msDelay(int len)
{
}

//--------------------------------------------------------------------------
// Get the current millisecond tick count.  Does not have to represent
// an actual time, it just needs to be an incrementing timer.
//
long msGettick(void)
{
	static ulong counter = 0 ;

	return counter++ ;
}


/*****************************************************************************
 *                                CAN interfaces
 *****************************************************************************/


void task_CAN_init_projectSpecific(					unsigned char channelNumber)
{
	CAN_init() ;
}


void task_CAN_core_projectSpecific(					unsigned char channelNumber)
{
	(void)channelNumber ;
}


void task_CAN_shutdown_projectSpecific(				unsigned char channelNumber)
{
	(void)channelNumber ;
}


void CAN_init_projectSpecific(						void)
{
}


void CAN_start_projectSpecific(						void)
{
}


bool CAN_isTransmitterReadyToSend_projectSpecific(	void)
{
	return true ;
}


void CAN_transmitData_projectSpecific(				CAN_ID_TYPE packetID, void* packetData, unsigned char dataPacketSize)
{
}


bool CAN_hasTransmitPacketBeenSent_projectSpecific(	void)
{
	return true ;
}


void CAN_receiveData_projectSpecific(				CAN_ID_TYPE* packetID, void* packetData, unsigned char dataPacketSize)
{
}


void CAN_ISR_hook_projectSpecific(					void)
{
}




////////////////////////////////////////////////////////////////////////////////
//Interrupt Service Routines
////////////////////////////////////////////////////////////////////////////////
void vTimer2ISR( void )
{
	unsigned char i ;
//	gpio_outputToggle(PORT2_3) ;

#if configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_BASED
	for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
	{
		if(tickCounterToIncrement[i])
		{
			*tickCounterToIncrement[i] += 1 ;
		}
	}
#endif
#if configSTATE_MACHINE_TIME_IN_STATE_CALLBACK_BASED
#endif

	taskSwitcherTickHook() ;

	/* PPPPP - clear interrupt flag here */ ;
}

void CAN_ISR(void)
{
	CAN_ISR_hook() ;
}


void comparator0_ISR_hook(				void) ;
void comparator2_ISR_hook(				void) ;

void comparator0_ISR (void)
{
	comparator0_ISR_hook() ;
}


void comparator2_ISR (void)
{
	comparator2_ISR_hook() ;
}

