#ifndef _HAL_H_
#define _HAL_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stdbool.h>
#include <stdint.h>


#if   defined(__AVR_ATmega644P__)
#elif defined(__c8051f040__)
	#define portENTER_CRITICAL()		_asm		\
										push	ACC	\
										push	IE	\
										_endasm;	\
										EA = 0;

	#define portEXIT_CRITICAL()			_asm			\
										pop		ACC		\
										_endasm;		\
										ACC &= 0x80;	\
										IE |= ACC;		\
										_asm			\
										pop		ACC		\
										_endasm;

	#define portDISABLE_INTERRUPTS()	EA = 0;
	#define portENABLE_INTERRUPTS()		EA = 1;
	/* Macro to clear the timer 2 interrupt flag. */
	#define portCLEAR_INTERRUPT_FLAG()	TMR2CN &= ~0x80;

	#define portSET_REGISTER_GROUP(page)				\
	{													\
		char SFRPAGE_SAVE = SFRPAGE ;					\
		SFRPAGE = page ;

	#define portRESTORE_REGISTER_GROUP()				\
		SFRPAGE = SFRPAGE_SAVE ;						\
	}
#elif defined(__TS7800__)
	#include <pthread.h>

//	extern pthread_mutex_t	hal_mutex ;

	#define portENTER_CRITICAL()			/*pthread_mutex_lock(&hal_mutex)*/
	#define portEXIT_CRITICAL()				/*pthread_mutex_unlock(&hal_mutex)*/

	#define portDISABLE_INTERRUPTS()		/*pthread_mutex_lock(&hal_mutex)*/
	#define portENABLE_INTERRUPTS()			/*pthread_mutex_unlock(&hal_mutex)*/
#elif defined(__cygwin__)
	#warning Implement these

	#define portENTER_CRITICAL()
	#define portEXIT_CRITICAL()

	#define portDISABLE_INTERRUPTS()
	#define portENABLE_INTERRUPTS()
#elif defined(__linux__)
	#include <pthread.h>

	extern pthread_mutex_t	hal_mutex ;

	#define portENTER_CRITICAL()			pthread_mutex_lock(&hal_mutex)
	#define portEXIT_CRITICAL()				pthread_mutex_unlock(&hal_mutex)

	#define portDISABLE_INTERRUPTS()		pthread_mutex_lock(&hal_mutex)
	#define portENABLE_INTERRUPTS()			pthread_mutex_unlock(&hal_mutex)
#elif defined(__TMS320F28___)
	#define portENTER_CRITICAL()
	#define portEXIT_CRITICAL()

	#define portDISABLE_INTERRUPTS()		DINT
	#define portENABLE_INTERRUPTS()			EINT ; ERTM
#elif defined(__AVR__)
	#warning Implement these

	#define portENTER_CRITICAL()
	#define portEXIT_CRITICAL()

	#define portDISABLE_INTERRUPTS()		DINT
	#define portENABLE_INTERRUPTS()			EINT ; ERTM
#else
	#error dashHAL
#endif



#if !defined(portENTER_CRITICAL)
	#error portENTER_CRITICAL() not defined for this processor
#endif

#if !defined(portEXIT_CRITICAL)
	#error portEXIT_CRITICAL() not defined for this processor
#endif

#if !defined(portDISABLE_INTERRUPTS)
	#error portDISABLE_INTERRUPTS() not defined for this processor
#endif

#if !defined(portENABLE_INTERRUPTS)
	#error portENABLE_INTERRUPTS() not defined for this processor
#endif



bool hal_SYSTEM_clockInit_projectSpecific(						void) ;
bool hal_SYSTEM_systemTimerInit_projectSpecific(				void) ;
void hal_SYSTEM_systemTimerTick_ISR(							void) ;




typedef uint8_t pinID_t ;
enum { GPIO_LOW = 0, GPIO_HIGH, GPIO_FLOAT, GPIO_UNDEFINED } ;
enum { GPIO_PULLUP_ENABLED = false, GPIO_PULLUP_DISABLED, GPIO_PULLUP_UNDEFINED } ;
enum { GPIO_INPUT = 0, GPIO_OUTPUT, GPIO_TRISTATE, GPIO_DIRECTION_UNDEFINED } ;

typedef int8_t	GPIO_PIN_LEVEL ;
typedef int8_t	GPIO_PULLUP_STATUS ;
typedef int8_t	GPIO_PIN_DIRECTION ;

bool				hal_GPIO_init_projectSpecific(				void) ;
GPIO_PIN_LEVEL		hal_GPIO_getOutputLevel_projectSpecific(	pinID_t pinID) ;
void				hal_GPIO_setOutputLevel_projectSpecific(	pinID_t pinID, GPIO_PIN_LEVEL newLevel) ;
GPIO_PIN_LEVEL		hal_GPIO_getInputLevel_projectSpecific(		pinID_t pinID) ;
GPIO_PULLUP_STATUS	hal_GPIO_getPullupState_projectSpecific(	pinID_t pinID) ;
void				hal_GPIO_setPullupState_projectSpecific(	pinID_t pinID, GPIO_PULLUP_STATUS newStatus) ;
GPIO_PIN_DIRECTION	hal_GPIO_getPinDirection_projectSpecific(	pinID_t pinID) ;
void				hal_GPIO_setPinDirection_projectSpecific(	pinID_t pinID, GPIO_PIN_DIRECTION newDirection) ;
void				hal_GPIO_pinLevel_ISR(						void) ;
void				hal_GPIO_pinLevelChange_ISR(				void) ;


#include "hal_UART.h"




























#if 0

// Define hardware interface here...



void pwm_init_projectSpecific(									unsigned char channelNumber) ;
void pwm_incrementDutyCycle_projectSpecific(					unsigned char channelNumber) ;
void pwm_decrementDutyCycle_projectSpecific(					unsigned char channelNumber) ;
uint16_t pwm_getDutyCycle_projectSpecific(						unsigned char channelNumber) ;
void pwm_setDutyCycle_projectSpecific(							unsigned char channelNumber, uint16_t newDutyCycle) ;
void pwm_setDutyCycle_direct_access_projectSpecific(			unsigned char channelNumber, uint16_t directDutyCycle) ;
void pwm_adjustDutyCycle_projectSpecific(						unsigned char channelNumber, int16_t dutyCycleAdjustment) ;
void pwm_setDutyCycleAsPercentage_projectSpecific(				unsigned char channelNumber, unsigned char newDutyCycle) ;
unsigned char pwm_getDutyCycleAsPercentage_projectSpecific(		unsigned char channelNumber) ;


void task_UART_init_projectSpecific(							unsigned char channelNumber) ;
void task_UART_Init_0_projectSpecific(							void) ;
void task_UART_Init_1_projectSpecific(							void) ;
bool task_UART_isCharacterInReceiveBuffer_projectSpecific(		unsigned char channelNumber) ;
char task_UART_getCharFromReceiveBuffer_projectSpecific(		unsigned char channelNumber) ;
void task_UART_clearCharacterReceivedFlag_projectSpecific(		unsigned char channelNumber) ;
bool task_UART_isTransmitterReadyForChar_projectSpecific(		unsigned char channelNumber) ;
void task_UART_sendchar_projectSpecific(						unsigned char channelNumber, char charToSend) ;
void task_UART_clearCharacterTransmittedFlag_projectSpecific(	unsigned char channelNumber) ;
void task_UART_shutdown_projectSpecific(						unsigned char channelNumber) ;


typedef uint16_t	ADC_CHANNEL_TYPE ;
typedef uint16_t	ADC_DATA_TYPE ;

void adc_init_projectSpecific(uint16_t ADC_usage) ;
uint16_t adc_read_projectSpecific(void) ;
void adc_selectChannel_projectSpecific(ADC_CHANNEL_TYPE channel) ;
uint16_t getADCrawValue_projectSpecific(uint16_t channelID) ;

uint16_t lcd_getPinFor_getLCD_DB7(							void) ;
uint16_t lcd_getPinFor_getLCD_DB6(							void) ;
uint16_t lcd_getPinFor_getLCD_DB5(							void) ;
uint16_t lcd_getPinFor_getLCD_DB4(							void) ;
uint16_t lcd_getPinFor_getLCD_E(							void) ;
uint16_t lcd_getPinFor_getLCD_RS(							void) ;
uint16_t lcd_getPinFor_getLCD_RW(							void) ;
uint16_t lcd_getPinFor_getLCD_POWER(						void) ;

void taskSwitcherTickHook(										void) ;


#ifndef __TS7800__
	#include "1wire.h"

	// exportable link-level functions
	SMALLINT owTouchReset(int);
	SMALLINT owTouchBit(int,SMALLINT);
	SMALLINT owTouchByte(int,SMALLINT);
	SMALLINT owWriteByte(int,SMALLINT);
	SMALLINT owReadByte(int);
	SMALLINT owSpeed(int,SMALLINT);
	SMALLINT owLevel(int,SMALLINT);
	SMALLINT owProgramPulse(int);
	void msDelay(int);
	long msGettick(void);
#endif

#include "CAN.h"

void CAN_init_projectSpecific(                      void) ;
void CAN_start_projectSpecific(						void) ;
bool CAN_isTransmitterReadyToSend_projectSpecific(	void) ;
void CAN_transmitData_projectSpecific(				CAN_ID_TYPE packetID, void* packetData, unsigned char dataPacketSize) ;
bool CAN_hasTransmitPacketBeenSent_projectSpecific( void);
void CAN_receiveData_projectSpecific(				CAN_ID_TYPE* packetID, void* packetData, unsigned char dataPacketSize) ;
void CAN_ISR_hook_projectSpecific(					void) ;
void CAN_ISR_hook_packetReceived(					void) ;
void CAN_ISR_hook_packetTransmitted(				void) ;
void CAN_ISR_hook_packetACKerror(					void) ;
void CAN_ISR_hook_packetCRCerror(					void) ;
void CAN_ISR_hook_packetError(						void) ;


enum HSM_HAL_PUBLISHABLE_EVENT_TAGS
{
	HSM_HAL_CAN_SEND_PACKET					= 0xE0,
	HSM_HAL_ISR_CAN_PACKET_TRANSMITTED,
	HSM_HAL_ISR_CAN_PACKET_RECEIVED,
	HSM_HAL_CAN_COLLISION,
	HSM_HAL_CAN_CRC_ERROR,
	HSM_HAL_CAN_DRIVER_OPEN_FAIL
} ;
#endif




#ifdef __cplusplus
}
#endif

#endif /* _HAL_H_ */
