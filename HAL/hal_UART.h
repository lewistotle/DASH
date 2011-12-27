#ifndef _DASH_HAL_UART_H_
#define _DASH_HAL_UART_H_

#ifdef __cplusplus
extern "C"
{
#endif

//#define DEBUG_PRINT_ENABLED

#if FreeRTOS_ENABLED
	void task_UART(	void *pvParameters) ;
#endif

#define	include_task_UART_init			true
#define	include_task_UART_core			true
#define	include_task_UART_shutdown		false

#ifndef include_task_UART_init
	#define	include_task_UART_init			true
#endif
#ifndef include_task_UART_core
	#define	include_task_UART_core			true
#endif
#ifndef include_task_UART_shutdown
	#define	include_task_UART_shutdown		false
#endif

#if include_task_UART_init
	void task_UART_init(	unsigned char channelNumber) ;
#else
	#define task_UART_init(	n)
#endif

#if include_task_UART_core
	void task_UART_core(	unsigned char channelNumber) ;
	void task_CMD_process(unsigned char channelNumber);
#else
	#define task_UART_core(	n)
#endif

#if include_task_UART_shutdown
	void task_UART_shutdown(	unsigned char channelNumber) ;
#else
	#define task_UART_shutdown(	n)
#endif

#ifndef configUART_ENABLED
	#define configUART_ENABLED
#endif

extern void ServiceDog(void);

extern char UARTtempBuffer[] ;

#ifdef configUART_ENABLED
	bool task_UART_putchar(		unsigned char channelNumber, char charToSend) ;
	void task_UART_puts(		unsigned char channelNumber, const char* buffer) ;

	char task_UART_getchar(		unsigned char channelNumber) ;
	char* task_UART_gets(		unsigned char channelNumber, char* destination, unsigned short maxBufferLength) ;

	bool task_UART_isLineReady(	unsigned char channelNumber) ;
	bool task_CMD_compare(char * cmd, unsigned char index);
	uint16_t task_CMD_parse(char* cmd, unsigned char index);

#else
	#define task_UART_putchar(		a, b)		true
	#define task_UART_puts(			a, b)
	#define task_UART_getchar(		a)			0x00
	#define task_UART_gets(			a, b, c)
	#define task_UART_isLineReady(	a)			false
#endif

#ifdef DEBUG_PRINT_ENABLED
	#define DEBUG_PRINT_0(format)					{ sprintf(UARTtempBuffer, format) ;						task_UART_puts(0, UARTtempBuffer) ; }
	#define DEBUG_PRINT_1(format, a)				{ sprintf(UARTtempBuffer, format, a) ;					task_UART_puts(0, UARTtempBuffer) ; }
	#define DEBUG_PRINT_2(format, a, b)				{ sprintf(UARTtempBuffer, format, a, b) ;				task_UART_puts(0, UARTtempBuffer) ; }
	#define DEBUG_PRINT_3(format, a, b, c)			{ sprintf(UARTtempBuffer, format, a, b, c) ;			task_UART_puts(0, UARTtempBuffer) ; }
	#define DEBUG_PRINT_4(format, a, b, c, d)		{ sprintf(UARTtempBuffer, format, a, b, c, d) ;			task_UART_puts(0, UARTtempBuffer) ; }
	#define DEBUG_PRINT_5(format, a, b, c, d, e)	{ sprintf(UARTtempBuffer, format, a, b, c, d, e) ;		task_UART_puts(0, UARTtempBuffer) ; }
	#define DEBUG_PRINT_6(format, a, b, c, d, e, f)	{ sprintf(UARTtempBuffer, format, a, b, c, d, e, f) ;	task_UART_puts(0, UARTtempBuffer) ; }
	#define DEBUG_PRINT_CAN(header, packet)			{ task_UART_puts(0, header) ;							task_CAN_dumpPacket(&packet) ;		}
	void	DEBUG_PRINT_TIME(char* header, char* format, char* trailer) ;
#else
	#define DEBUG_PRINT_0(format)
	#define DEBUG_PRINT_1(format, a)
	#define DEBUG_PRINT_2(format, a, b)
	#define DEBUG_PRINT_3(format, a, b, c)
	#define DEBUG_PRINT_4(format, a, b, c, d)
	#define DEBUG_PRINT_5(format, a, b, c, d, e)
	#define DEBUG_PRINT_6(format, a, b, c, d, e, f)

	#define DEBUG_PRINT_CAN(header, packet)

	void	DEBUG_PRINT_TIME(char* header, char* format, char* trailer) ;
#endif

#ifdef __cplusplus
}
#endif

#endif /* _TASK_UART_H_ */
