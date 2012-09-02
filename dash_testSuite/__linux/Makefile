CC			= gcc
CFLAGS			= -D__linux__ -O3 -Wall -I. -I../../ -I../../HAL -g
OUT_DIR			= ./
OBJS			= main.o projectSpecificHardwareInterface_linux.o sm_test_calculator.o sm_test_fourLevelTest.o sm_test_timeBomb.o sm_test_toaster.o dash.o dash_eventQueue.o hal_UART.o hal.o
OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


dash_linux			: $(OUT_OBJS)
					$(CC) $(CFLAGS) -lpthread *.o -o $@

$(OUT_DIR)/hal.o	 : ../../HAL/hal.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/hal_UART.o : ../../HAL/hal_UART.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/dash.o : ../../dash.c ../../HAL/*.h 
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/dash_eventQueue.o : ../../dash_eventQueue.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/%.o	: ../%.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

clean			:
					rm -rf dash_linux $(OUT_DIR)/*.o

