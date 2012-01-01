#include "hal.h"
#include "hal_UART.h"

#include "hal_UART_config.h"

#include <stdio.h>
#include <time.h>

#ifndef RECEIVE_ENABLED
	#define RECEIVE_ENABLED	1
#endif


uint8_t IsEmpty(hal_UART_queue_t* Q)
{
	return Q->Size == 0 ;
}

uint8_t IsFull(hal_UART_queue_t* Q)
{
	return Q->Size == Q->Capacity ;
}

static unsigned short Succ(unsigned short Value, hal_UART_queue_t* Q)
{
	if(++Value == Q->Capacity)
	{
		Value = 0 ;
	}

	return Value ;
}


#if FreeRTOS_ENABLED
void hal_UART(void *pvParameters)
{
	/* The parameters are not used. */
	(void)pvParameters ;

	hal_UART_init() ;

	while(1)
	{
		hal_UART_core() ;

		vTaskDelay(1000) ;
	}
}
#endif


bool hal_UART_init(	hal_UART_info_t* hal_UART_info)
{
	if(!*hal_UART_info->initialized)
	{
		hal_UART_queue_t*	Q ;

		Q = hal_UART_info->transmitQueue ;

		Q->Size		= 0 ;
		Q->Front	= 1 ;
		Q->Rear		= 0 ;

#if RECEIVE_ENABLED
		Q = hal_UART_info->receiveQueue ;

		Q->Size		= 0 ;
		Q->Front	= 1 ;
		Q->Rear		= 0 ;

		hal_UART_info->lineReady = false ;
#endif

		*hal_UART_info->initialized = hal_UART_init_projectSpecific(hal_UART_info) ;
	}

	return *hal_UART_info->initialized ;
}

// MUST NOT TAKE LONGER THAN 750 uS TO EXECUTE EACH ITERATION

void hal_UART_core(	hal_UART_info_t* hal_UART_info)
{
	if(hal_UART_info->channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		hal_UART_queue_t*	Q ;

#if RECEIVE_ENABLED
		Q = hal_UART_info->receiveQueue ;

		if(hal_UART_isCharacterInReceiveBuffer_projectSpecific(hal_UART_info))
		{
			if(!IsFull(Q))
			{
				char	charReceived = hal_UART_getchar_projectSpecific(hal_UART_info) ;

				Q->Size++ ;
				Q->Rear = Succ(Q->Rear, Q) ;
				Q->Array[Q->Rear] = charReceived ;

				if(charReceived < ' ')
				{
					*hal_UART_info->lineReady = true ;
					hal_UART_sendchar_projectSpecific(hal_UART_info, '\n') ;
					hal_UART_sendchar_projectSpecific(hal_UART_info, '\r') ;
				}


			}

			hal_UART_clearCharacterReceivedFlag_projectSpecific(hal_UART_info) ;
		}
#endif
		Q = hal_UART_info->transmitQueue ;

		if((!IsEmpty(Q)) && (hal_UART_isTransmitterReadyForChar_projectSpecific(hal_UART_info)))
		{
			uint8_t byteToSend = Q->Array[Q->Front] ;

			Q->Size-- ;
			Q->Front = Succ(Q->Front, Q) ;

			hal_UART_clearCharacterTransmittedFlag_projectSpecific(hal_UART_info) ;	// clear it and send the next character

			hal_UART_sendchar_projectSpecific(hal_UART_info, byteToSend) ;
		}
	}
}


bool hal_UART_puts(	hal_UART_info_t* hal_UART_info, const uint8_t* stringToSend)
{
	bool returnValue = false ;

	if(hal_UART_info->channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		uint8_t* myBuffer = (uint8_t*)stringToSend ;

		while(*myBuffer)
		{
			if((*myBuffer) == '\n')
			{
				if(!hal_UART_putchar(hal_UART_info, '\r'))
				{
					break ;
				}
			}

			if(!hal_UART_putchar(hal_UART_info, *myBuffer++))
			{
				break ;
			}
		}

		returnValue = true ;
	}

	return returnValue ;
}


bool hal_UART_putchar(	hal_UART_info_t* hal_UART_info, uint8_t charToSend)
{
	if(hal_UART_info->channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		hal_UART_queue_t*	Q = hal_UART_info->transmitQueue ;

		if(!IsFull(Q))
		{
			Q->Size++ ;
			Q->Rear = Succ(Q->Rear, Q) ;
			Q->Array[Q->Rear] = charToSend ;

			return true ;
		}
	}

	// If I get here, something didn't work so return failure

	return false ;
}


bool		hal_UART_hasCharBeenSent(								hal_UART_info_t* hal_UART_info)
{
	return hal_UART_hasCharBeenSent_projectSpecific(hal_UART_info) ;
}


bool		hal_UART_hasCharBeenReceived(							hal_UART_info_t* hal_UART_info)
{
	return hal_UART_isCharacterInReceiveBuffer_projectSpecific(hal_UART_info) ;
}


uint8_t hal_UART_getchar(	hal_UART_info_t* hal_UART_info)
{
#if RECEIVE_ENABLED
	if(hal_UART_info->channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		hal_UART_queue_t*	Q = hal_UART_info->receiveQueue ;

		if(!IsEmpty(Q))
		{
			uint8_t byteReceived = Q->Array[Q->Front] ;

			Q->Size-- ;
			Q->Front = Succ(Q->Front, Q) ;

			return byteReceived ;
		}
	}
#endif

	return -1 ;
}


bool hal_UART_isLineReady(	hal_UART_info_t* hal_UART_info)
{
#if RECEIVE_ENABLED
	return *hal_UART_info->lineReady ;
#else
	return false ;
#endif
}


uint8_t* hal_UART_gets(	hal_UART_info_t* hal_UART_info, uint8_t* destination, uint16_t maxBufferLength)
{
#if RECEIVE_ENABLED
	uint8_t* buffer = NULL ;

	if(hal_UART_info->channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		unsigned short charsReturned = 0 ;

		while(charsReturned < maxBufferLength)
		{
			destination[charsReturned++] = 0 ;
		}

		charsReturned = 0 ;

		while(charsReturned < maxBufferLength)
		{
			char latestCharInBuffer = hal_UART_getchar(hal_UART_info) ;

			if(latestCharInBuffer < ' ')
			{
				hal_UART_queue_t*	Q = hal_UART_info->receiveQueue ;

				Q->Size		= 0 ;
				Q->Front	= 1 ;
				Q->Rear		= 0 ;

				*hal_UART_info->lineReady = false ;

				return buffer ;
			}

			destination[charsReturned] = latestCharInBuffer ;

			charsReturned++ ;
		}
	}
#endif

	return 0 ;
}


void hal_UART_shutdown(	hal_UART_info_t* hal_UART_info)
{
	hal_UART_shutdown_projectSpecific(hal_UART_info) ;
}

