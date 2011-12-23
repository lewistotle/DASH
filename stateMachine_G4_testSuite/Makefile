CC				= gcc
CFLAGS			= -O3 -I.. -g
OUT_DIR			= __linux
OBJS			= main.o projectSpecificHardwareInterface_cygwin_and_TS7800.o sm_test_calculator.o sm_test_fourLevelTest.o sm_test_timeBomb.o sm_test_toaster.o stateMachine_G4.o stateMachine_G4_eventQueue.o
OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


dash			: $(OUT_OBJS)
					$(CC) $(CFLAGS) $^ -o $@

$(OUT_DIR)/stateMachine_G4.o : ../stateMachine_G4.c
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/stateMachine_G4_eventQueue.o : ../stateMachine_G4_eventQueue.c
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/%.o	: %.c
					$(CC) $(CFLAGS) -c $< -o $@

clean			:
					rm -rf dash $(OUT_DIR)/*.o

