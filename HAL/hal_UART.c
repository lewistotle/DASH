#include "hal.h"
#include "hal_UART.h"

#include "hal_UART_config.h"

#include <stdio.h>
//#include <time.h>

#define RECEIVE_ENABLED false

#ifndef RECEIVE_ENABLED
	#define RECEIVE_ENABLED	1
#endif


bool IsEmpty(hal_UART_queue_t* Q)
{
	return Q->Size == 0 ;
}

bool IsFull(hal_UART_queue_t* Q)
{
	return Q->Size == Q->Capacity ;
}

static int16_t Succ(int16_t Value, hal_UART_queue_t* Q)
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
	hal_UART_info_internal_t*	UART_internals = (hal_UART_info_internal_t*)hal_UART_info ;

	if(hal_UART_init_projectSpecific(hal_UART_info))
	{
		hal_UART_queue_t*	Q ;

		UART_internals->initialized						= true ;
		UART_internals->atLeastOneCharacterHasBeenSent	= false ;
		UART_internals->lineReady						= false ;

#if 1
#warning FIX THIS!!!
#else
		if(UART_internals->transmitQueue.Array)
		{
			Q = &(UART_internals->transmitQueue) ;

			Q->Size		= 0 ;
			Q->Front	= 1 ;
			Q->Rear		= 0 ;
		}
		else
		{
			// This is an error condition. I can't let things move forward with the UART
			// if there isn't a transmit buffer. It's not fatal to the program, though,
			// so just mark the UART is not initialized and move on.

			UART_internals->initialized = false ;
		}
#endif
		Q = &(UART_internals->receiveQueue) ;

		Q->Size		= 0 ;
		Q->Front	= 1 ;
		Q->Rear		= 0 ;
	}

	return UART_internals->initialized ;
}

// MUST NOT TAKE LONGER THAN 750 uS TO EXECUTE EACH ITERATION

void hal_UART_core(	hal_UART_info_t* hal_UART_info)
{
	hal_UART_info_internal_t*	UART_internals = (hal_UART_info_internal_t*)hal_UART_info ;

	if(UART_internals->initialized)
	{
		hal_UART_queue_t*	Q ;

		hal_UART_core_projectSpecific(hal_UART_info) ;

#if RECEIVE_ENABLED
		Q = hal_UART_info->receiveQueue ;

		if(hal_UART_isReceiveReady_projectSpecific(hal_UART_info))
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

		Q = &(UART_internals->transmitQueue) ;

		if(		(!IsEmpty(Q))
			&&	((!UART_internals->atLeastOneCharacterHasBeenSent) || (UART_internals->atLeastOneCharacterHasBeenSent && hal_UART_isTransmitterReady_projectSpecific(hal_UART_info)) )
			)
		{
			uint8_t byteToSend = Q->Array[Q->Front] ;

			Q->Size-- ;
			Q->Front = Succ(Q->Front, Q) ;

			hal_UART_clearSentFlag_projectSpecific(hal_UART_info) ;	// clear it and send the next character

			hal_UART_sendchar_projectSpecific(hal_UART_info, byteToSend) ;
		}
	}
}


bool hal_UART_puts(	hal_UART_info_t* hal_UART_info, const char* stringToSend)
{
	hal_UART_info_internal_t*	UART_internals	= (hal_UART_info_internal_t*)hal_UART_info ;
	bool						returnValue		= false ;

	if(UART_internals->initialized)
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
	hal_UART_info_internal_t*	UART_internals = (hal_UART_info_internal_t*)hal_UART_info ;

	if(UART_internals->initialized)
	{
		hal_UART_queue_t*	Q = &(UART_internals->transmitQueue) ;

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
	return hal_UART_isReceiveReady_projectSpecific(hal_UART_info) ;
}


uint8_t hal_UART_getchar(	hal_UART_info_t* hal_UART_info)
{
	(void)hal_UART_info ;

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
	(void)hal_UART_info ;

#if RECEIVE_ENABLED
	return *hal_UART_info->lineReady ;
#else
	return false ;
#endif
}


char* hal_UART_gets(	hal_UART_info_t* hal_UART_info, uint8_t* destination, uint16_t maxBufferLength)
{
	(void)hal_UART_info ;
	(void)destination ;
	(void)maxBufferLength ;

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

				return (char*)buffer ;	// cast to retain compatibility with the stdc function gets()
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

