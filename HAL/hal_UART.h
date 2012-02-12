#ifndef _DASH_HAL_UART_H_
#define _DASH_HAL_UART_H_

#include <stdbool.h>
#include <stdint.h>

#if !defined(__c8051f040__) && !defined(__xdata)
	#define __xdata
#endif

#ifdef __cplusplus
extern "C"
{
#endif

/*
 * UART
 */

typedef void __xdata	hal_UART_info_t ;

typedef struct
{
	uint8_t*	Array ;
	int16_t		Capacity ;
	int16_t		Size ;
	int16_t		Front ;
	int16_t		Rear ;
} hal_UART_queue_t ;

typedef struct
{
	uint8_t				channelNumber ;
	uint8_t				initialized ;
	uint8_t				atLeastOneCharacterHasBeenSent ;
	uint8_t				lineReady ;
	hal_UART_queue_t	transmitQueue ;
	hal_UART_queue_t	receiveQueue ;
	void*				deviceSpecificData ;
} hal_UART_info_internal_t ;

bool		hal_UART_init(											hal_UART_info_t* hal_UART_info) ;
void		hal_UART_core(											hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_puts(											hal_UART_info_t* hal_UART_info, const char* stringToSend) ;
bool		hal_UART_putchar(										hal_UART_info_t* hal_UART_info, uint8_t charToSend) ;
bool		hal_UART_hasCharBeenSent(								hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_hasCharBeenReceived(							hal_UART_info_t* hal_UART_info) ;
uint8_t		hal_UART_getchar(										hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_isLineReady(									hal_UART_info_t* hal_UART_info) ;
char*		hal_UART_gets(											hal_UART_info_t* hal_UART_info, uint8_t* destination, uint16_t maxBufferLength) ;
void		hal_UART_shutdown(										hal_UART_info_t* hal_UART_info) ;

bool		hal_UART_init_projectSpecific(							hal_UART_info_t* hal_UART_info) ;
void		hal_UART_core_projectSpecific(							hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_isTransmitterReadyForChar_projectSpecific(		hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_sendchar_projectSpecific(						hal_UART_info_t* hal_UART_info, uint8_t charToSend) ;
bool		hal_UART_hasCharBeenSent_projectSpecific(				hal_UART_info_t* hal_UART_info) ;
void		hal_UART_clearCharacterTransmittedFlag_projectSpecific(	hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_isCharacterInReceiveBuffer_projectSpecific(	hal_UART_info_t* hal_UART_info) ;
uint8_t		hal_UART_getchar_projectSpecific(						hal_UART_info_t* hal_UART_info) ;
void		hal_UART_clearCharacterReceivedFlag_projectSpecific(	hal_UART_info_t* hal_UART_info) ;
void		hal_UART_shutdown_projectSpecific(						hal_UART_info_t* hal_UART_info) ;

#ifdef __cplusplus
}
#endif

#endif /* _TASK_UART_H_ */
