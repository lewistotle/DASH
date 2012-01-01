CC				= avr-gcc
CFLAGS			= -I. -I../../ -I../../HAL -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega8515 -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c 
OUT_DIR			= ./
OBJS			= main.o projectSpecificHardwareInterface_linux.o sm_test_calculator.o sm_test_fourLevelTest.o sm_test_timeBomb.o sm_test_toaster.o stateMachine_G4.o stateMachine_G4_eventQueue.o hal_UART.o
OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


dash_avr		: $(OUT_OBJS)
					$(CC) $(CFLAGS) *.o -o $@

$(OUT_DIR)/hal_UART.o : ../../HAL/hal_UART.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4.o : ../../stateMachine_G4.c ../../HAL/*.h 
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4_eventQueue.o : ../../stateMachine_G4_eventQueue.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/%.o	: ../%.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

clean			:
					rm -rf dash_linux $(OUT_DIR)/*.o

