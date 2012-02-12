PATH			:= $(PATH):./cross/arm-none-linux-gnueabi/bin/
OUTFILE			= dash_arm
CC			= arm-none-linux-gnueabi-gcc
CFLAGS			= -O3 -Wall -I. -I../../ -I../../HAL -g -static -mcpu=arm9 -D__TS7800__
OUT_DIR			= .
OBJS			= main.o projectSpecificHardwareInterface_linux.o hal.o hal_UART.o stateMachine_G4.o stateMachine_G4_eventQueue.o sm_test_calculator.o sm_test_fourLevelTest.o sm_test_timeBomb.o sm_test_toaster.o
OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


$(OUTFILE)		: $(OUT_OBJS)
					$(CC) $(CFLAGS) -pthread *.o -o $@
					cp dash_arm /var/www

$(OUT_DIR)/hal.o : ../../HAL/hal.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/hal_UART.o : ../../HAL/hal_UART.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4.o : ../../stateMachine_G4.c ../../HAL/*.h 
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4_eventQueue.o : ../../stateMachine_G4_eventQueue.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/%.o	: ../%.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

clean			:
					rm -rf $(OUTFILE) $(OUT_DIR)/*.o

