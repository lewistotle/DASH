OUTFILE			= dash_windows_minGW.exe
CC				= i586-mingw32msvc-gcc
CFLAGS			= -D__MINGW__ -O3 -Wall -I. -I../../ -I../../HAL -g -static
OUT_DIR			= .
OBJS			= main.o projectSpecificHardwareInterface_minGW.o hal.o hal_UART.o dash.o dash_eventQueue.o sm_test_calculator.o sm_test_fourLevelTest.o sm_test_timeBomb.o sm_test_toaster.o
OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


$(OUTFILE)		: $(OUT_OBJS)
					$(CC) $(CFLAGS) *.o libpthreadGC2.a -o $@
					cp $(OUTFILE) /var/www/dash_builds

$(OUT_DIR)/hal.o : ../../HAL/hal.c ../../HAL/*.h
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
					rm -rf $(OUTFILE) $(OUT_DIR)/*.o

