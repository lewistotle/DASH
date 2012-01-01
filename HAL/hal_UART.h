#ifndef _DASH_HAL_UART_H_
#define _DASH_HAL_UART_H_

#include <stdbool.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

/*
 * UART
 */

typedef struct
{
	uint8_t*	Array ;
	uint16_t	Capacity ;
	uint16_t	Front ;
	uint16_t	Rear ;
	uint16_t	Size ;
} hal_UART_queue_t ;

typedef struct hal_UART_info_ps_t
{
	uint8_t				channelNumber ;
#ifdef __c8051f040__
	uint8_t*			initialized ;
	uint8_t*			lineReady ;
#else
	bool*				initialized ;
	bool*				lineReady ;
#endif
	hal_UART_queue_t*	transmitQueue ;
	hal_UART_queue_t*	receiveQueue ;
	bool				(*init_projectSpecific)								(struct hal_UART_info_ps_t* hal_UART_info) ;
	void				(*core_projectSpecific)								(struct hal_UART_info_ps_t* hal_UART_info) ;
	bool				(*isTransmitterReadyForChar_projectSpecific)		(struct hal_UART_info_ps_t* hal_UART_info) ;
	bool				(*sendchar_projectSpecific)							(struct hal_UART_info_ps_t* hal_UART_info, uint8_t charToSend) ;
	bool				(*hasCharBeenSent_projectSpecific)					(struct hal_UART_info_ps_t* hal_UART_info) ;
	void				(*clearCharacterTransmittedFlag_projectSpecific)	(struct hal_UART_info_ps_t* hal_UART_info) ;
	bool				(*isCharacterInReceiveBuffer_projectSpecific)		(struct hal_UART_info_ps_t* hal_UART_info) ;
	uint8_t				(*getchar_projectSpecific)							(struct hal_UART_info_ps_t* hal_UART_info) ;
	void				(*clearCharacterReceivedFlag_projectSpecific)		(struct hal_UART_info_ps_t* hal_UART_info) ;
	void				(*shutdown_projectSpecific)							(struct hal_UART_info_ps_t* hal_UART_info) ;
	void*				deviceSpecificData ;
} hal_UART_info_t ;

bool		hal_UART_init(											hal_UART_info_t* hal_UART_info) ;
void		hal_UART_core(											hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_puts(											hal_UART_info_t* hal_UART_info, const uint8_t* stringToSend) ;
bool		hal_UART_putchar(										hal_UART_info_t* hal_UART_info, uint8_t charToSend) ;
bool		hal_UART_hasCharBeenSent(								hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_hasCharBeenReceived(							hal_UART_info_t* hal_UART_info) ;
uint8_t		hal_UART_getchar(										hal_UART_info_t* hal_UART_info) ;
bool		hal_UART_isLineReady(									hal_UART_info_t* hal_UART_info) ;
uint8_t*	hal_UART_gets(											hal_UART_info_t* hal_UART_info, uint8_t* destination, uint16_t maxBufferLength) ;
void		hal_UART_shutdown(										hal_UART_info_t* hal_UART_info) ;

bool		hal_UART_init_projectSpecific(							struct hal_UART_info_ps_t* hal_UART_info) ;
void		hal_UART_core_projectSpecific(							struct hal_UART_info_ps_t* hal_UART_info) ;
bool		hal_UART_isTransmitterReadyForChar_projectSpecific(		struct hal_UART_info_ps_t* hal_UART_info) ;
bool		hal_UART_sendchar_projectSpecific(						struct hal_UART_info_ps_t* hal_UART_info, uint8_t charToSend) ;
bool		hal_UART_hasCharBeenSent_projectSpecific(				struct hal_UART_info_ps_t* hal_UART_info) ;
void		hal_UART_clearCharacterTransmittedFlag_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info) ;
bool		hal_UART_isCharacterInReceiveBuffer_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info) ;
uint8_t		hal_UART_getchar_projectSpecific(						struct hal_UART_info_ps_t* hal_UART_info) ;
void		hal_UART_clearCharacterReceivedFlag_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info) ;
void		hal_UART_shutdown_projectSpecific(						struct hal_UART_info_ps_t* hal_UART_info) ;

#ifdef __cplusplus
}
#endif

#endif /* _TASK_UART_H_ */
