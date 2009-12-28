;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Mon Dec 28 03:35:58 2009
;--------------------------------------------------------
	.module stateMachine_G4
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _callStateHandler
	.globl _responseTypes
	.globl _eventTypes
	.globl _callStateHandler_PARM_3
	.globl _callStateHandler_PARM_2
	.globl _stateMachines
	.globl _allocateStateMachineMemory
	.globl _deallocateStateMachineMemory
	.globl _registerStateMachine
	.globl _unregisterStateMachine
	.globl _iterateAllStateMachines
	.globl _iterateStateMachine
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_callStateHandler_sloc0_1_0:
	.ds 3
_callStateHandler_sloc1_1_0:
	.ds 3
_iterateStateMachine_sloc0_1_0:
	.ds 3
_iterateStateMachine_sloc1_1_0:
	.ds 3
_iterateStateMachine_sloc2_1_0:
	.ds 3
_iterateStateMachine_sloc3_1_0:
	.ds 3
_iterateStateMachine_sloc4_1_0:
	.ds 3
_iterateStateMachine_sloc5_1_0:
	.ds 3
_iterateStateMachine_sloc6_1_0:
	.ds 3
_iterateStateMachine_sloc7_1_0:
	.ds 3
_iterateStateMachine_sloc8_1_0:
	.ds 1
_iterateStateMachine_sloc9_1_0:
	.ds 3
_iterateStateMachine_sloc10_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_stateMachines::
	.ds 150
_allocateStateMachineMemory_sizeInBytes_1_1:
	.ds 2
_deallocateStateMachineMemory_instance_1_1:
	.ds 3
_registerStateMachine_sm_1_1:
	.ds 3
_unregisterStateMachine_sm_1_1:
	.ds 3
_callStateHandler_PARM_2:
	.ds 3
_callStateHandler_PARM_3:
	.ds 3
_callStateHandler_sm_1_1:
	.ds 3
_iterateStateMachine_sm_1_1:
	.ds 3
_iterateStateMachine_initialTransitionEvent_1_1:
	.ds 1
_iterateStateMachine_enterEvent_1_1:
	.ds 1
_iterateStateMachine_exitEvent_1_1:
	.ds 1
_iterateStateMachine_iterationMax_1_1:
	.ds 2
_iterateStateMachine_stateBeingProcessed_2_3:
	.ds 3
_iterateStateMachine_sourceHierarchy_4_13:
	.ds 48
_iterateStateMachine_sourceIndex_4_13:
	.ds 1
_iterateStateMachine_targetHierarchy_4_13:
	.ds 48
_iterateStateMachine_targetIndex_4_13:
	.ds 1
_iterateStateMachine_LCA_4_13:
	.ds 3
_iterateStateMachine_entryIndex_4_13:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_eventTypes::
	.ds 12
_responseTypes::
	.ds 9
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'iterateStateMachine'
;------------------------------------------------------------
;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
;sloc7                     Allocated with name '_iterateStateMachine_sloc7_1_0'
;sloc8                     Allocated with name '_iterateStateMachine_sloc8_1_0'
;sloc9                     Allocated with name '_iterateStateMachine_sloc9_1_0'
;sloc10                    Allocated with name '_iterateStateMachine_sloc10_1_0'
;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
;action                    Allocated with name '_iterateStateMachine_action_2_3'
;source                    Allocated with name '_iterateStateMachine_source_3_8'
;target                    Allocated with name '_iterateStateMachine_target_3_8'
;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_13'
;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_13'
;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_13'
;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_13'
;LCA                       Allocated with name '_iterateStateMachine_LCA_4_13'
;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_13'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_13'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_15'
;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_21'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:136: static event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
	mov	dptr,#_iterateStateMachine_initialTransitionEvent_1_1
	mov	a,#0x02
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:137: static event_t	enterEvent				= { SUBSTATE_ENTRY } ;
	mov	dptr,#_iterateStateMachine_enterEvent_1_1
	mov	a,#0x01
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:138: static event_t	exitEvent				= { SUBSTATE_EXIT } ;
	mov	dptr,#_iterateStateMachine_exitEvent_1_1
	mov	a,#0x03
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: static int iterationMax = 10 ;
	mov	dptr,#_iterateStateMachine_iterationMax_1_1
	mov	a,#0x0A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'allocateStateMachineMemory'
;------------------------------------------------------------
;sizeInBytes               Allocated with name '_allocateStateMachineMemory_sizeInBytes_1_1'
;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:32: stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes)
;	-----------------------------------------
;	 function allocateStateMachineMemory
;	-----------------------------------------
_allocateStateMachineMemory:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:34: stateMachine_t*	instance = malloc(sizeInBytes) ;
	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
	mov	r6,#0x00
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: if(instance)
	mov	a,r4
	orl	a,r5
	orl	a,r6
	jz	00102$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:38: memset((char*)instance, 0, sizeInBytes) ;
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar4
	push	ar5
	push	ar6
	lcall	_memset
	pop	ar6
	pop	ar5
	pop	ar4
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:41: return instance ;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'deallocateStateMachineMemory'
;------------------------------------------------------------
;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:45: void deallocateStateMachineMemory(				stateMachine_t* instance)
;	-----------------------------------------
;	 function deallocateStateMachineMemory
;	-----------------------------------------
_deallocateStateMachineMemory:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: if(instance != 0)
	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jz	00103$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: free((char*)instance) ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ljmp	_free
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'registerStateMachine'
;------------------------------------------------------------
;sm                        Allocated with name '_registerStateMachine_sm_1_1'
;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:54: bool registerStateMachine(			stateMachine_t* sm)
;	-----------------------------------------
;	 function registerStateMachine
;	-----------------------------------------
_registerStateMachine:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_registerStateMachine_sm_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:56: if(sm)
	mov	dptr,#_registerStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jz	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:60: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r2,#0x00
00105$:
	cjne	r2,#0x32,00116$
00116$:
	jnc	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:62: if(stateMachines[statetMachineIndex] == NULL)
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_stateMachines
	mov	r3,a
	clr	a
	addc	a,#(_stateMachines >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r5,#0x00,00107$
	cjne	r6,#0x00,00107$
	cjne	r7,#0x00,00107$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:64: stateMachines[statetMachineIndex] = sm ;
	mov	dptr,#_registerStateMachine_sm_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:66: return true ;
	setb	c
	ret
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:60: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r2
	sjmp	00105$
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:71: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unregisterStateMachine'
;------------------------------------------------------------
;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: bool unregisterStateMachine(		stateMachine_t* sm)
;	-----------------------------------------
;	 function unregisterStateMachine
;	-----------------------------------------
_unregisterStateMachine:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_unregisterStateMachine_sm_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:76: if(sm)
	mov	dptr,#_unregisterStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jz	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r5,#0x00
00105$:
	cjne	r5,#0x32,00116$
00116$:
	jnc	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:82: if(stateMachines[statetMachineIndex] == sm)
	mov	a,r5
	mov	b,#0x03
	mul	ab
	add	a,#_stateMachines
	mov	r6,a
	clr	a
	addc	a,#(_stateMachines >> 8)
	mov	r7,a
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r0
	cjne	a,ar2,00118$
	mov	a,r1
	cjne	a,ar3,00118$
	mov	a,r5
	cjne	a,ar4,00118$
	sjmp	00119$
00118$:
	pop	ar5
	sjmp	00107$
00119$:
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:84: stateMachines[statetMachineIndex] = NULL ;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:86: return true ;
	setb	c
	ret
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r5
	sjmp	00105$
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:91: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iterateAllStateMachines'
;------------------------------------------------------------
;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:95: void iterateAllStateMachines(	void)
;	-----------------------------------------
;	 function iterateAllStateMachines
;	-----------------------------------------
_iterateAllStateMachines:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:99: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r2,#0x00
00103$:
	cjne	r2,#0x32,00113$
00113$:
	jnc	00107$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:101: if(stateMachines[statetMachineIndex] != NULL)
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_stateMachines
	mov	dpl,a
	clr	a
	addc	a,#(_stateMachines >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r3,#0x00,00115$
	cjne	r4,#0x00,00115$
	cjne	r5,#0x00,00115$
	sjmp	00105$
00115$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:103: iterateStateMachine(stateMachines[statetMachineIndex]) ;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_iterateStateMachine
	pop	ar2
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:99: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r2
	sjmp	00103$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'callStateHandler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_callStateHandler_sloc0_1_0'
;sloc1                     Allocated with name '_callStateHandler_sloc1_1_0'
;state                     Allocated with name '_callStateHandler_PARM_2'
;event                     Allocated with name '_callStateHandler_PARM_3'
;sm                        Allocated with name '_callStateHandler_sm_1_1'
;response                  Allocated with name '_callStateHandler_response_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
;	-----------------------------------------
;	 function callStateHandler
;	-----------------------------------------
_callStateHandler:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_callStateHandler_sm_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:117: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
	mov	dptr,#_callStateHandler_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	clr	c
	mov	a,#0x03
	subb	a,r5
	cpl	c
	clr	a
	rlc	a
	mov	r6,a
	jz	00105$
	mov	a,r5
	mov	b,#0x03
	mul	ab
	add	a,#_eventTypes
	mov	dpl,a
	clr	a
	addc	a,#(_eventTypes >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_callStateHandler_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_callStateHandler_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_callStateHandler_sloc0_1_0 + 2),a
	sjmp	00106$
00105$:
	mov	_callStateHandler_sloc0_1_0,#__str_1
	mov	(_callStateHandler_sloc0_1_0 + 1),#(__str_1 >> 8)
	mov	(_callStateHandler_sloc0_1_0 + 2),#0x80
00106$:
	mov	dptr,#_callStateHandler_PARM_2
	movx	a,@dptr
	mov	_callStateHandler_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_callStateHandler_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_callStateHandler_sloc1_1_0 + 2),a
	mov	a,#0x06
	add	a,_callStateHandler_sloc1_1_0
	mov	r6,a
	clr	a
	addc	a,(_callStateHandler_sloc1_1_0 + 1)
	mov	r7,a
	mov	r5,(_callStateHandler_sloc1_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	_callStateHandler_sloc0_1_0
	push	(_callStateHandler_sloc0_1_0 + 1)
	push	(_callStateHandler_sloc0_1_0 + 2)
	push	ar6
	push	ar7
	push	ar5
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:119: response = ((callStateHandler_t)(state->handler))(sm, event) ;
	mov	a,#0x04
	add	a,_callStateHandler_sloc1_1_0
	mov	r5,a
	clr	a
	addc	a,(_callStateHandler_sloc1_1_0 + 1)
	mov	r6,a
	mov	r7,(_callStateHandler_sloc1_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_callStateHandler_sm_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	push	ar5
	push	ar6
	push	ar2
	push	ar3
	push	ar4
	mov	a,#00111$
	push	acc
	mov	a,#(00111$ >> 8)
	push	acc
	push	ar5
	push	ar6
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	ret
00111$:
	mov	r2,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:121: printf("response: %s ", responseTypes[response]) ;
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_responseTypes
	mov	dpl,a
	clr	a
	addc	a,#(_responseTypes >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:123: if(response == TRANSITION)
	cjne	r2,#0x02,00102$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:125: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
	mov	dptr,#_callStateHandler_sm_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x09
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar2
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:128: printf("\n") ;
	push	ar2
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:130: return response ;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iterateStateMachine'
;------------------------------------------------------------
;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
;sloc7                     Allocated with name '_iterateStateMachine_sloc7_1_0'
;sloc8                     Allocated with name '_iterateStateMachine_sloc8_1_0'
;sloc9                     Allocated with name '_iterateStateMachine_sloc9_1_0'
;sloc10                    Allocated with name '_iterateStateMachine_sloc10_1_0'
;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
;action                    Allocated with name '_iterateStateMachine_action_2_3'
;source                    Allocated with name '_iterateStateMachine_source_3_8'
;target                    Allocated with name '_iterateStateMachine_target_3_8'
;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_13'
;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_13'
;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_13'
;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_13'
;LCA                       Allocated with name '_iterateStateMachine_LCA_4_13'
;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_13'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_13'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_15'
;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_21'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:134: void iterateStateMachine(	stateMachine_t* sm)
;	-----------------------------------------
;	 function iterateStateMachine
;	-----------------------------------------
_iterateStateMachine:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:141: printf("\titerating %s\n", sm->stateMachineName) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:145: if(!sm->stateMachineInitialized)
	mov	a,#0x13
	add	a,r2
	mov	_iterateStateMachine_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrget
	jz	00196$
	ljmp	00169$
00196$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:147: printf("\t\tinitializing...\n") ;
	push	ar2
	push	ar3
	push	ar4
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:149: NormalInsert(&sm->eventQueue, &enterEvent) ;
	mov	a,#0x0C
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar5,r4
	mov	dptr,#_NormalInsert_PARM_2
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_NormalInsert
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:150: NormalInsert(&sm->eventQueue, &initialTransitionEvent) ;
	mov	a,#0x0C
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#_NormalInsert_PARM_2
	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar2
	push	ar3
	push	ar4
	lcall	_NormalInsert
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:152: sm->currentState			= (state_t*)sm->topState ;
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	r4,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:153: sm->stateMachineInitialized	= true ;
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:158: while(!isEmpty(&sm->eventQueue))
00169$:
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc7_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc7_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc7_1_0 + 2),a
	mov	r5,_iterateStateMachine_sloc7_1_0
	mov	r6,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	r7,(_iterateStateMachine_sloc7_1_0 + 2)
	mov	a,#0x09
	add	a,_iterateStateMachine_sloc7_1_0
	mov	_iterateStateMachine_sloc0_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	mov	(_iterateStateMachine_sloc0_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
	mov	_iterateStateMachine_sloc1_1_0,_iterateStateMachine_sloc7_1_0
	mov	(_iterateStateMachine_sloc1_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
	mov	_iterateStateMachine_sloc2_1_0,_iterateStateMachine_sloc7_1_0
	mov	(_iterateStateMachine_sloc2_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc7_1_0
	mov	_iterateStateMachine_sloc3_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	mov	(_iterateStateMachine_sloc3_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc7_1_0
	mov	(_iterateStateMachine_sloc4_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
	mov	_iterateStateMachine_sloc5_1_0,_iterateStateMachine_sloc7_1_0
	mov	(_iterateStateMachine_sloc5_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
00155$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x0C
	add	a,_iterateStateMachine_sloc7_1_0
	mov	r0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	r1,a
	mov	r5,(_iterateStateMachine_sloc7_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar5
	push	ar6
	push	ar7
	lcall	_isEmpty
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00197$
	ljmp	00157$
00197$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:160: event_t*				eventToProcess		= Remove(&sm->eventQueue) ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x0C
	add	a,_iterateStateMachine_sloc7_1_0
	mov	r0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	r1,a
	mov	r5,(_iterateStateMachine_sloc7_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar5
	push	ar6
	push	ar7
	lcall	_Remove
	mov	_iterateStateMachine_sloc6_1_0,dpl
	mov	(_iterateStateMachine_sloc6_1_0 + 1),dph
	mov	(_iterateStateMachine_sloc6_1_0 + 2),b
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:161: state_t*				stateBeingProcessed	= sm->currentState ;
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:164: sm->nextState = (state_t*)0 ;	// just a little housecleaning
	mov	a,#0x09
	add	a,_iterateStateMachine_sloc7_1_0
	mov	r5,a
	clr	a
	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	r6,a
	mov	r7,(_iterateStateMachine_sloc7_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:166: if(iterationMax-- == 0)
	mov	dptr,#_iterateStateMachine_iterationMax_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,#0xff
	mov	r7,a
	mov	a,r6
	addc	a,#0xff
	mov	r0,a
	mov	dptr,#_iterateStateMachine_iterationMax_1_1
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	a,r5
	orl	a,r6
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00198$
	ljmp	00157$
00198$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:171: printf("\t\tProcessing event...\n") ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:183: do
00109$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:185: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,_iterateStateMachine_sloc6_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	mov	_iterateStateMachine_sloc8_1_0,dpl
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,_iterateStateMachine_sloc8_1_0
	jz	00199$
	ljmp	00111$
00199$:
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	lcall	__gptrget
	mov  r2,a
	add	a,#0xff - 0x03
	jc	00200$
	ljmp	00111$
00200$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:189: stateBeingProcessed = stateBeingProcessed->parent ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:191: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jz	00160$
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	sjmp	00161$
00160$:
	mov	r2,#__str_9
	mov	r3,#(__str_9 >> 8)
	mov	r4,#0x80
00161$:
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jz	00202$
	ljmp	00109$
00202$:
00111$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:204: if(action == TRANSITION)
	mov	a,#0x02
	cjne	a,_iterateStateMachine_sloc8_1_0,00203$
	sjmp	00204$
00203$:
	ljmp	00155$
00204$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:206: state_t*	source	= sm->currentState ;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:207: state_t*	target	= sm->nextState ;
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc9_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc9_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc9_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:213: if(source == target)
	mov	a,_iterateStateMachine_sloc9_1_0
	cjne	a,_iterateStateMachine_sloc6_1_0,00205$
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00205$
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00205$
	sjmp	00206$
00205$:
	ljmp	00151$
00206$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:215: printf("\t\t\t\tSelf transition.\n") ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:219: callStateHandler(sm, source, &exitEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc6_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:220: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc10_1_0
	mov	r6,a
	clr	a
	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
	mov	r7,a
	mov	r5,(_iterateStateMachine_sloc10_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,_iterateStateMachine_sloc9_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:221: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc9_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc10_1_0
	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00152$
00151$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:223: else if(source == (state_t*)(target->parent))
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_iterateStateMachine_sloc9_1_0
	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r0
	cjne	a,_iterateStateMachine_sloc6_1_0,00207$
	mov	a,r1
	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00207$
	mov	a,r2
	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00207$
	sjmp	00208$
00207$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00148$
00208$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:225: printf("\t\t\t\tTransition to direct child.\n") ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:230: sm->currentState = target ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_iterateStateMachine_sloc9_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc9_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00152$
00148$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:233: else if((state_t*)(source->parent) == (state_t*)(target->parent))
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc10_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
	mov	dpl,_iterateStateMachine_sloc9_1_0
	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r3
	cjne	a,_iterateStateMachine_sloc10_1_0,00209$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00209$
	mov	a,r2
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00209$
	sjmp	00210$
00209$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00145$
00210$:
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: printf("\t\t\t\tTransition to direct peer.\n") ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_12
	push	acc
	mov	a,#(__str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:240: callStateHandler(sm, source, &exitEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc6_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:241: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc10_1_0
	mov	r6,a
	clr	a
	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
	mov	r7,a
	mov	r5,(_iterateStateMachine_sloc10_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,_iterateStateMachine_sloc9_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:242: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc9_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc10_1_0
	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00152$
00145$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:244: else if((state_t*)(source->parent) == target)
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r0
	cjne	a,_iterateStateMachine_sloc9_1_0,00211$
	mov	a,r1
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00211$
	mov	a,r2
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00211$
	sjmp	00212$
00211$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00142$
00212$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:246: printf("\t\t\t\tTransition to direct parent.\n") ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_13
	push	acc
	mov	a,#(__str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:252: sm->currentState = target ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_iterateStateMachine_sloc9_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:253: callStateHandler(sm, source, &exitEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc6_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00152$
00142$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:267: printf("\t\t\t\tScanning source hierarchy...\n") ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:270: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_13
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:271: stateBeingProcessed	= source ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc6_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:273: do
	mov	r2,#0x00
00117$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
	push	ar5
	push	ar6
	push	ar7
	mov	ar3,r2
	inc	r2
	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_13
	mov	r3,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
	mov	r4,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
	mov	dpl,r3
	mov	dph,r4
	mov	a,_iterateStateMachine_sloc10_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:277: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc10_1_0
	mov	r3,a
	clr	a
	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
	mov	r4,a
	mov	r0,(_iterateStateMachine_sloc10_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	ar1,r2
	mov	r5,#0x00
	dec	r1
	cjne	r1,#0xff,00213$
	dec	r5
00213$:
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar3
	push	ar4
	push	ar0
	push	ar1
	push	ar5
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:279: if(stateBeingProcessed == target)
	mov	a,_iterateStateMachine_sloc9_1_0
	cjne	a,_iterateStateMachine_sloc10_1_0,00214$
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00214$
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00214$
	sjmp	00215$
00214$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00116$
00215$:
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:283: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:285: sourceIndex-- ;
	mov	a,r2
	dec	a
	mov	r3,a
	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:287: while(exitIndex < sourceIndex)
	mov	_iterateStateMachine_sloc8_1_0,r3
	mov	r4,#0x00
00112$:
	clr	c
	mov	a,r4
	subb	a,_iterateStateMachine_sloc8_1_0
	jc	00216$
	ljmp	00114$
00216$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:289: printf("\t\t\t\t") ;
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:291: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_13
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:293: exitIndex++ ;
	inc	r4
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00112$
00114$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:296: sm->currentState = target ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc1_1_0
	mov	r3,a
	clr	a
	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	r4,a
	mov	r0,(_iterateStateMachine_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	mov	a,_iterateStateMachine_sloc9_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:298: break ;
	sjmp	00119$
00116$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:301: stateBeingProcessed = stateBeingProcessed->parent ;
	mov	dpl,_iterateStateMachine_sloc10_1_0
	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:302: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r3
	orl	a,r4
	orl	a,r0
	jz	00217$
	ljmp	00117$
00217$:
00119$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:304: if(sm->currentState != target)
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,_iterateStateMachine_sloc9_1_0,00218$
	mov	a,r3
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00218$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00218$
	ljmp	00129$
00218$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:306: printf("\t\t\t\tScanning target hierarchy...\n") ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_18
	push	acc
	mov	a,#(__str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:308: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_13
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:309: stateBeingProcessed	= target ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc9_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:311: do
	mov	r2,#0x00
00125$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:313: targetHierarchy[targetIndex] = stateBeingProcessed ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_13
	mov	r3,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
	mov	r4,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
	mov	dpl,r3
	mov	dph,r4
	mov	a,_iterateStateMachine_sloc10_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:315: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc10_1_0
	mov	r3,a
	clr	a
	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
	mov	r4,a
	mov	r0,(_iterateStateMachine_sloc10_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	ar1,r2
	mov	r5,#0x00
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	ar3
	push	ar4
	push	ar0
	push	ar1
	push	ar5
	mov	a,#__str_19
	push	acc
	mov	a,#(__str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:317: if(stateBeingProcessed == source)
	mov	a,_iterateStateMachine_sloc6_1_0
	cjne	a,_iterateStateMachine_sloc10_1_0,00219$
	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00219$
	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00219$
	sjmp	00220$
00219$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00124$
00220$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:319: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
	mov	a,#__str_20
	push	acc
	mov	a,#(__str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:321: while(targetIndex--)
	mov	dptr,#_iterateStateMachine_targetIndex_4_13
	movx	a,@dptr
	mov	r3,a
00120$:
	mov	ar4,r3
	dec	r3
	mov	a,r4
	jnz	00221$
	ljmp	00192$
00221$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:323: printf("\t\t\t\t") ;
	push	ar5
	push	ar6
	push	ar7
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:324: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_13
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r0
	mov	b,r1
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00120$
00192$:
	mov	dptr,#_iterateStateMachine_targetIndex_4_13
	mov	a,r3
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:327: sm->currentState = target ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc2_1_0
	mov	r3,a
	clr	a
	addc	a,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	r4,a
	mov	r0,(_iterateStateMachine_sloc2_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	mov	a,_iterateStateMachine_sloc9_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:329: break ;
	sjmp	00129$
00124$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:332: targetIndex++ ;
	inc	r2
	mov	dptr,#_iterateStateMachine_targetIndex_4_13
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:333: stateBeingProcessed = stateBeingProcessed->parent ;
	mov	dpl,_iterateStateMachine_sloc10_1_0
	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r3
	orl	a,r4
	orl	a,r0
	jz	00222$
	ljmp	00125$
00222$:
00129$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:337: if(sm->currentState != target)
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,_iterateStateMachine_sloc9_1_0,00223$
	mov	a,r3
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00223$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00223$
	ljmp	00152$
00223$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:341: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
	push	ar5
	push	ar6
	push	ar7
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_21
	push	acc
	mov	a,#(__str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: LCA			= 0 ;
	mov	dptr,#_iterateStateMachine_LCA_4_13
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:343: entryIndex	= targetIndex - 1 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_13
	movx	a,@dptr
	mov	r2,a
	dec	r2
	mov	dptr,#_iterateStateMachine_entryIndex_4_13
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:344: exitIndex	= sourceIndex - 1 ;
	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
	movx	a,@dptr
	mov	r3,a
	dec	r3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
	mov	ar4,r3
	mov	r0,#0x00
	mov	ar1,r2
	mov	r5,#0x00
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	push	ar0
	push	ar1
	push	ar5
	mov	a,#__str_22
	push	acc
	mov	a,#(__str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
	mov	r4,#0x00
00130$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_13
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_iterateStateMachine_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_13
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r0
	cjne	a,_iterateStateMachine_sloc10_1_0,00224$
	mov	a,r1
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00224$
	mov	a,r5
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00224$
	sjmp	00225$
00224$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00193$
00225$:
	pop	ar7
	pop	ar6
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:349: LCA = sourceHierarchy[exitIndex] ;
	push	ar6
	push	ar7
	mov	dptr,#_iterateStateMachine_LCA_4_13
	mov	a,_iterateStateMachine_sloc10_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:351: entryIndex-- ;
	dec	r2
	mov	dptr,#_iterateStateMachine_entryIndex_4_13
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: exitIndex-- ;
	dec	r3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:354: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
	mov	dptr,#_iterateStateMachine_LCA_4_13
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x06
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar5
	mov	a,#__str_23
	push	acc
	mov	a,#(__str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:356: LCAindex++ ;
	inc	r4
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00130$
00193$:
	mov	dptr,#_iterateStateMachine_entryIndex_4_13
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:359: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_iterateStateMachine_LCA_4_13
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,#0x06
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r0
	mov	r0,a
	mov	dpl,r4
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc9_1_0
	mov	r5,a
	clr	a
	addc	a,(_iterateStateMachine_sloc9_1_0 + 1)
	mov	r6,a
	mov	r7,(_iterateStateMachine_sloc9_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_iterateStateMachine_sloc10_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc6_1_0
	mov	r5,a
	clr	a
	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	r6,a
	mov	r7,(_iterateStateMachine_sloc6_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	push	ar0
	push	ar1
	push	_iterateStateMachine_sloc10_1_0
	push	(_iterateStateMachine_sloc10_1_0 + 1)
	push	(_iterateStateMachine_sloc10_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_24
	push	acc
	mov	a,#(__str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:360: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
	mov	ar4,r3
	mov	r5,#0x00
	mov	r6,#0x00
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar2
	push	ar6
	mov	a,#__str_22
	push	acc
	mov	a,#(__str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:362: sourceIndex	= exitIndex + 1 ;
	mov	a,r3
	inc	a
	mov	_iterateStateMachine_sloc10_1_0,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:365: while(exitIndex < sourceIndex)
	mov	r2,_iterateStateMachine_sloc10_1_0
	mov	r3,#0x00
00133$:
	clr	c
	mov	a,r3
	subb	a,r2
	jc	00226$
	ljmp	00135$
00226$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:367: printf("\t\t\t\t") ;
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:369: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_13
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r0
	mov	b,r1
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:371: exitIndex++ ;
	inc	r3
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00133$
00135$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:374: targetIndex = entryIndex + 1 ;
	mov	dptr,#_iterateStateMachine_entryIndex_4_13
	movx	a,@dptr
	mov	r2,a
	inc	r2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: while(targetIndex--)
00136$:
	mov	ar3,r2
	dec	r2
	mov	a,r3
	jnz	00227$
	ljmp	00138$
00227$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:378: printf("\t\t\t\t") ;
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:379: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_13
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00136$
00138$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:382: sm->currentState = target ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc4_1_0
	mov	r2,a
	clr	a
	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	r3,a
	mov	r4,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_iterateStateMachine_sloc9_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrput
00152$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:390: NormalInsert(&sm->eventQueue, &initialTransitionEvent) ;
	mov	a,#0x0C
	add	a,_iterateStateMachine_sloc5_1_0
	mov	r2,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	r3,a
	mov	r4,(_iterateStateMachine_sloc5_1_0 + 2)
	mov	dptr,#_NormalInsert_PARM_2
	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar5
	push	ar6
	push	ar7
	lcall	_NormalInsert
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00155$
00157$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
	mov	a,#__str_25
	push	acc
	mov	a,#(__str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Calling state: %s, event: %s, "
	.db 0x00
__str_1:
	.ascii "<USER_EVENT>"
	.db 0x00
__str_2:
	.ascii "response: %s "
	.db 0x00
__str_3:
	.ascii "to %s "
	.db 0x00
__str_4:
	.db 0x0A
	.db 0x00
__str_5:
	.db 0x09
	.ascii "iterating %s"
	.db 0x0A
	.db 0x00
__str_6:
	.db 0x09
	.db 0x09
	.ascii "initializing..."
	.db 0x0A
	.db 0x00
__str_7:
	.db 0x09
	.db 0x09
	.ascii "Processing event..."
	.db 0x0A
	.db 0x00
__str_8:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "moving to parent: %s"
	.db 0x0A
	.db 0x00
__str_9:
	.ascii "<root>"
	.db 0x00
__str_10:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Self transition."
	.db 0x0A
	.db 0x00
__str_11:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Transition to direct child."
	.db 0x0A
	.db 0x00
__str_12:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Transition to direct peer."
	.db 0x0A
	.db 0x00
__str_13:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Transition to direct parent."
	.db 0x0A
	.db 0x00
__str_14:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Scanning source hierarchy..."
	.db 0x0A
	.db 0x00
__str_15:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "sourceHierarchy[%d] = %s"
	.db 0x0A
	.db 0x00
__str_16:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Found target as ancestor of source"
	.db 0x0A
	.db 0x00
__str_17:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x00
__str_18:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Scanning target hierarchy..."
	.db 0x0A
	.db 0x00
__str_19:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "targetHierarchy[%d] = %s"
	.db 0x0A
	.db 0x00
__str_20:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Found source as ancestor of target"
	.db 0x0A
	.db 0x00
__str_21:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Still haven't found relationship. Scanning for LCA..."
	.db 0x0A
	.db 0x00
__str_22:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "entryIndex = %d, exitIndex = %d"
	.db 0x0A
	.db 0x00
__str_23:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Current LCA candidate: %s"
	.db 0x0A
	.db 0x00
__str_24:
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "LCA of %s and %s is: %s"
	.db 0x0A
	.db 0x00
__str_25:
	.db 0x09
	.db 0x09
	.ascii "Event queue empty."
	.db 0x0A
	.db 0x00
__str_26:
	.ascii "SUBSTATE_GET_INFO"
	.db 0x00
__str_27:
	.ascii "SUBSTATE_ENTRY"
	.db 0x00
__str_28:
	.ascii "SUBSTATE_INITIAL_TRANSITION"
	.db 0x00
__str_29:
	.ascii "SUBSTATE_EXIT"
	.db 0x00
__str_30:
	.ascii "IGNORED"
	.db 0x00
__str_31:
	.ascii "HANDLED"
	.db 0x00
__str_32:
	.ascii "TRANSITION"
	.db 0x00
	.area XINIT   (CODE)
__xinit__eventTypes:
	.byte __str_26,(__str_26 >> 8),#0x80
	.byte __str_27,(__str_27 >> 8),#0x80
	.byte __str_28,(__str_28 >> 8),#0x80
	.byte __str_29,(__str_29 >> 8),#0x80
__xinit__responseTypes:
	.byte __str_30,(__str_30 >> 8),#0x80
	.byte __str_31,(__str_31 >> 8),#0x80
	.byte __str_32,(__str_32 >> 8),#0x80
	.area CABS    (ABS,CODE)
