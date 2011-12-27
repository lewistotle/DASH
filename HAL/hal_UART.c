#include "hal.h"
#include "hal_UART.h"

#include "hal_UART_config.h"

#include <stdio.h>
#include <time.h>


char	UARTtempBuffer[HAL_UART_TRANSMIT_BUFFER_SIZE] ;
char* command_str;
uint16_t data0 ;
uint16_t data1 ;
//static char rxbuffer[20];

typedef struct
{
	uint16_t	Capacity ;
	uint16_t	Front ;
	uint16_t	Rear ;
	uint16_t	Size ;
	uint8_t*	Array ;
} QUEUE_TYPE ;

static uint8_t	transmitBuffer[HAL_UART_NUMBER_OF_UARTS][HAL_UART_TRANSMIT_BUFFER_SIZE + 1] ;
#if RECEIVE_ENABLED
	static uint8_t	receiveBuffer[HAL_UART_NUMBER_OF_UARTS][HAL_UART_RECEIVE_BUFFER_SIZE + 1] ;
#endif

static QUEUE_TYPE		transmitBuffers[HAL_UART_NUMBER_OF_UARTS] ;
#if RECEIVE_ENABLED
	static QUEUE_TYPE		receiveBuffers[HAL_UART_NUMBER_OF_UARTS] ;
	static bool				lineReady[HAL_UART_NUMBER_OF_UARTS] ;
#endif

#if defined(__c8051f040__) || defined(__TMS320C28X__)
#if defined(__c8051f040__)
void putchar(char c)
#elif defined(__TMS320C28X__)
int putchar(int c)
#endif
{
	if(c == '\n')
	{
		hal_UART_putchar(0, '\r') ;
	}

	hal_UART_putchar(0, c) ;

#if defined(__TMS320C28X__)
	return c ;
#endif
}
#endif

uint8_t IsEmpty(QUEUE_TYPE* Q)
{
	return Q->Size == 0 ;
}

uint8_t IsFull(QUEUE_TYPE* Q)
{
	return Q->Size == Q->Capacity ;
}

static unsigned short Succ(unsigned short Value, QUEUE_TYPE* Q)
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


bool hal_UART_init(	uint8_t channelNumber)
{
	static bool	UART_1initialized = false ;

	bool returnValue = false ;

	if(!UART_1initialized)
	{
		UART_1initialized = true ;

		QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;

		Q->Capacity	= HAL_UART_TRANSMIT_BUFFER_SIZE ;
		Q->Size		= 0 ;
		Q->Front	= 1 ;
		Q->Rear		= 0 ;
		Q->Array	= transmitBuffer[0] ;

#if RECEIVE_ENABLED
		Q = &receiveBuffers[channelNumber] ;

		Q->Capacity	= HAL_UART_RECEIVE_BUFFER_SIZE ;
		Q->Size		= 0 ;
		Q->Front	= 1 ;
		Q->Rear		= 0 ;
		Q->Array	= receiveBuffer[0] ;

		lineReady[channelNumber]	= false ;
#endif

		returnValue = hal_UART_init_projectSpecific(channelNumber) ;
	}

	return returnValue ;
}

// MUST NOT TAKE LONGER THAN 750 uS TO EXECUTE EACH ITERATION

void hal_UART_core(	uint8_t channelNumber)
{
	if(channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		QUEUE_TYPE*	Q ;

#if RECEIVE_ENABLED
		Q = &receiveBuffers[channelNumber] ;

		if(hal_UART_isCharacterInReceiveBuffer_projectSpecific(channelNumber))
		{
			if(!IsFull(Q))
			{
				char	charReceived = hal_UART_getCharFromReceiveBuffer_projectSpecific(channelNumber) ;

				Q->Size++ ;
				Q->Rear = Succ(Q->Rear, Q) ;
				Q->Array[Q->Rear] = charReceived ;

				hal_UART_sendchar_projectSpecific(channelNumber, charReceived) ;

				if(charReceived < ' ')
				{
					lineReady[channelNumber] = true ;
					hal_UART_sendchar_projectSpecific(channelNumber, '\n') ;
					hal_UART_sendchar_projectSpecific(channelNumber, '\r') ;
				}


			}

			hal_UART_clearCharacterReceivedFlag_projectSpecific(channelNumber) ;
		}
#endif
		Q = &transmitBuffers[channelNumber] ;

		if((!IsEmpty(Q)) && (hal_UART_isTransmitterReadyForChar_projectSpecific(0)))
		{
			uint8_t byteToSend = Q->Array[Q->Front] ;

			Q->Size-- ;
			Q->Front = Succ(Q->Front, Q) ;

			hal_UART_clearCharacterTransmittedFlag_projectSpecific(channelNumber) ;	// clear it and send the next character

			hal_UART_sendchar_projectSpecific(channelNumber, byteToSend) ;
		}
	}
}


void hal_UART_shutdown(	uint8_t channelNumber)
{
	hal_UART_shutdown_projectSpecific(channelNumber) ;
}

bool hal_UART_putchar(	uint8_t channelNumber, uint8_t charToSend)
{
	if(channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;

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


bool hal_UART_puts(	uint8_t channelNumber, const char* stringToSend)
{
	bool returnValue = false ;

	if(channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		uint8_t* myBuffer = (uint8_t*)transmitBuffer[channelNumber] ;

		while(*myBuffer)
		{
			if((*myBuffer) == '\n')
			{
				if(!hal_UART_putchar(channelNumber, '\r'))
				{
					break ;
				}
			}

			if(!hal_UART_putchar(channelNumber, *myBuffer++))
			{
				break ;
			}
		}

		returnValue = true ;
	}

	return returnValue ;
}


uint8_t hal_UART_getchar(	uint8_t channelNumber)
{
#if RECEIVE_ENABLED
	if(channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;

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


char* hal_UART_gets(	uint8_t channelNumber, char* destination, unsigned short maxBufferLength)
{
#if RECEIVE_ENABLED
	char* buffer = NULL ;

	if(channelNumber < HAL_UART_NUMBER_OF_UARTS)
	{
		unsigned short charsReturned = 0 ;

		while(charsReturned < maxBufferLength)
		{
			destination[charsReturned++] = 0 ;
		}

		charsReturned = 0 ;

		while(charsReturned < maxBufferLength)
		{
			char latestCharInBuffer = hal_UART_getchar(channelNumber) ;

			if(latestCharInBuffer < ' ')
			{
				QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;

				Q->Capacity	= HAL_UART_RECEIVE_BUFFER_SIZE ;
				Q->Size		= 0 ;
				Q->Front	= 1 ;
				Q->Rear		= 0 ;
				Q->Array	= receiveBuffer[0] ;

				lineReady[channelNumber] = false ;

				return buffer ;
			}

			destination[charsReturned] = latestCharInBuffer ;

			charsReturned++ ;
		}
	}
#endif

	return 0 ;
}


bool hal_UART_isLineReady(	uint8_t channelNumber)
{
#if RECEIVE_ENABLED
	return lineReady[channelNumber] ;
#else
	return false ;
#endif
}

