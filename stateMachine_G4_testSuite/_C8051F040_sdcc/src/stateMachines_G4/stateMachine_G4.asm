;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Mon Dec 28 11:39:26 2009
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
	.ds 3
_iterateStateMachine_sloc9_1_0:
	.ds 3
_iterateStateMachine_sloc10_1_0:
	.ds 3
_iterateStateMachine_sloc11_1_0:
	.ds 1
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
_iterateStateMachine_forceTransition_1_1:
	.ds 1
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
_iterateStateMachine_eventToProcess_2_3:
	.ds 3
_iterateStateMachine_stateBeingProcessed_2_3:
	.ds 3
_iterateStateMachine_sourceHierarchy_4_15:
	.ds 48
_iterateStateMachine_sourceIndex_4_15:
	.ds 1
_iterateStateMachine_targetHierarchy_4_15:
	.ds 48
_iterateStateMachine_targetIndex_4_15:
	.ds 1
_iterateStateMachine_LCA_4_15:
	.ds 3
_iterateStateMachine_entryIndex_4_15:
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
;sloc11                    Allocated with name '_iterateStateMachine_sloc11_1_0'
;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
;action                    Allocated with name '_iterateStateMachine_action_2_3'
;source                    Allocated with name '_iterateStateMachine_source_3_10'
;target                    Allocated with name '_iterateStateMachine_target_3_10'
;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_15'
;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_15'
;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_15'
;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_15'
;LCA                       Allocated with name '_iterateStateMachine_LCA_4_15'
;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_15'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_15'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_17'
;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_23'
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:140: static int iterationMax = 10 ;
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
;sloc11                    Allocated with name '_iterateStateMachine_sloc11_1_0'
;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
;action                    Allocated with name '_iterateStateMachine_action_2_3'
;source                    Allocated with name '_iterateStateMachine_source_3_10'
;target                    Allocated with name '_iterateStateMachine_target_3_10'
;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_15'
;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_15'
;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_15'
;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_15'
;LCA                       Allocated with name '_iterateStateMachine_LCA_4_15'
;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_15'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_15'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_17'
;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_23'
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: bool			forceTransition			= false ;
	clr	_iterateStateMachine_forceTransition_1_1
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:142: printf("\titerating %s\n", sm->stateMachineName) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:146: if(!sm->stateMachineInitialized)
	mov	a,#0x13
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
	jz	00201$
	ljmp	00174$
00201$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:148: printf("\t\tinitializing...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:150: sm->currentState = (state_t*)sm->topState ;
	mov	a,#0x06
	add	a,r2
	mov	_iterateStateMachine_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	r5,#0x80
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:152: callStateHandler(sm, sm->currentState, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:154: sm->stateMachineInitialized = true ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x13
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:156: forceTransition = true ;
	setb	_iterateStateMachine_forceTransition_1_1
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:161: while((!isEmpty(&sm->eventQueue)) || (forceTransition))
00174$:
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc8_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc8_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc8_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc8_1_0
	mov	r5,a
	clr	a
	addc	a,(_iterateStateMachine_sloc8_1_0 + 1)
	mov	r6,a
	mov	r7,(_iterateStateMachine_sloc8_1_0 + 2)
	mov	_iterateStateMachine_sloc0_1_0,_iterateStateMachine_sloc8_1_0
	mov	(_iterateStateMachine_sloc0_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
	mov	(_iterateStateMachine_sloc0_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
	mov	_iterateStateMachine_sloc1_1_0,_iterateStateMachine_sloc8_1_0
	mov	(_iterateStateMachine_sloc1_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
	mov	_iterateStateMachine_sloc2_1_0,_iterateStateMachine_sloc8_1_0
	mov	(_iterateStateMachine_sloc2_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
	mov	a,#0x09
	add	a,_iterateStateMachine_sloc8_1_0
	mov	_iterateStateMachine_sloc3_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc8_1_0 + 1)
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	mov	(_iterateStateMachine_sloc3_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc8_1_0
	mov	(_iterateStateMachine_sloc4_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
	mov	_iterateStateMachine_sloc5_1_0,_iterateStateMachine_sloc8_1_0
	mov	(_iterateStateMachine_sloc5_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
	mov	_iterateStateMachine_sloc6_1_0,_iterateStateMachine_sloc8_1_0
	mov	(_iterateStateMachine_sloc6_1_0 + 1),(_iterateStateMachine_sloc8_1_0 + 1)
	mov	(_iterateStateMachine_sloc6_1_0 + 2),(_iterateStateMachine_sloc8_1_0 + 2)
00159$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x0C
	add	a,_iterateStateMachine_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	r1,a
	mov	r5,(_iterateStateMachine_sloc1_1_0 + 2)
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
	jz	00160$
	jb	_iterateStateMachine_forceTransition_1_1,00203$
	ljmp	00161$
00203$:
00160$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:164: state_t*				stateBeingProcessed	= sm->currentState ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:167: if(forceTransition)
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:169: forceTransition = false ;
	jbc	_iterateStateMachine_forceTransition_1_1,00204$
	sjmp	00104$
00204$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:170: eventToProcess = &initialTransitionEvent ;
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	sjmp	00105$
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: eventToProcess = Remove(&sm->eventQueue) ; ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x0C
	add	a,_iterateStateMachine_sloc8_1_0
	mov	r0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc8_1_0 + 1)
	mov	r1,a
	mov	r5,(_iterateStateMachine_sloc8_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	_Remove
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: printf("\t\tEvent queue empty.\n") ;
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: eventToProcess = Remove(&sm->eventQueue) ; ;
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:177: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x09
	add	a,_iterateStateMachine_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	r1,a
	mov	r5,(_iterateStateMachine_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:179: if(iterationMax-- == 0)
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
	jnz	00205$
	ljmp	00161$
00205$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:184: printf("\t\tProcessing event...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:192: do
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc7_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc7_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc7_1_0 + 2),a
00112$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:194: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
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
	mov	_iterateStateMachine_sloc9_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc9_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc9_1_0 + 2),a
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
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
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	mov	_iterateStateMachine_sloc9_1_0,dpl
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:196: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,_iterateStateMachine_sloc9_1_0
	jz	00206$
	ljmp	00114$
00206$:
	mov	dpl,_iterateStateMachine_sloc7_1_0
	mov	dph,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrget
	mov  r2,a
	add	a,#0xff - 0x03
	jc	00207$
	ljmp	00114$
00207$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:198: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
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
	jz	00164$
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
	sjmp	00165$
00164$:
	mov	r2,#__str_9
	mov	r3,#(__str_9 >> 8)
	mov	r4,#0x80
00165$:
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:209: } while(stateBeingProcessed) ;
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
	jz	00209$
	ljmp	00112$
00209$:
00114$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:211: if(action == TRANSITION)
	mov	a,#0x02
	cjne	a,_iterateStateMachine_sloc9_1_0,00210$
	sjmp	00211$
00210$:
	ljmp	00159$
00211$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:213: state_t*	source	= sm->currentState ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	r3,a
	mov	r4,(_iterateStateMachine_sloc2_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_iterateStateMachine_sloc9_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc9_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc9_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:214: state_t*	target	= sm->nextState ;
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc7_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc7_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc7_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:218: if(source == target)
	mov	a,_iterateStateMachine_sloc7_1_0
	cjne	a,_iterateStateMachine_sloc9_1_0,00212$
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00212$
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00212$
	sjmp	00213$
00212$:
	ljmp	00154$
00213$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:220: printf("\t\t\t\tSelf transition.\n") ;
	push	ar5
	push	ar6
	push	ar7
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:224: callStateHandler(sm, source, &exitEvent) ;
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
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:225: sm->currentState = target ;
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
	mov	a,_iterateStateMachine_sloc7_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:226: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc7_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
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
	ljmp	00155$
00154$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:228: else if(source == (state_t*)(target->parent))
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_iterateStateMachine_sloc7_1_0
	mov	dph,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r0
	cjne	a,_iterateStateMachine_sloc9_1_0,00214$
	mov	a,r1
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00214$
	mov	a,r2
	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00214$
	sjmp	00215$
00214$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00151$
00215$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:230: printf("\t\t\t\tTransition to direct child.\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: sm->currentState = target ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_iterateStateMachine_sloc7_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc7_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
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
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00155$
00151$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:238: else if((state_t*)(source->parent) == (state_t*)(target->parent))
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_iterateStateMachine_sloc9_1_0
	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc10_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
	mov	dpl,_iterateStateMachine_sloc7_1_0
	mov	dph,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r3
	cjne	a,_iterateStateMachine_sloc10_1_0,00216$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00216$
	mov	a,r2
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00216$
	sjmp	00217$
00216$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00148$
00217$:
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:240: printf("\t\t\t\tTransition to direct peer.\n") ;
	push	ar5
	push	ar6
	push	ar7
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:245: callStateHandler(sm, source, &exitEvent) ;
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
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:246: sm->currentState = target ;
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
	mov	a,_iterateStateMachine_sloc7_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:247: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc7_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
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
	ljmp	00155$
00148$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:249: else if((state_t*)(source->parent) == target)
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
	cjne	a,_iterateStateMachine_sloc7_1_0,00218$
	mov	a,r1
	cjne	a,(_iterateStateMachine_sloc7_1_0 + 1),00218$
	mov	a,r2
	cjne	a,(_iterateStateMachine_sloc7_1_0 + 2),00218$
	sjmp	00219$
00218$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00145$
00219$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:251: printf("\t\t\t\tTransition to direct parent.\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:257: sm->currentState = target ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_iterateStateMachine_sloc7_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:258: callStateHandler(sm, source, &exitEvent) ;
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
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00155$
00145$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:272: printf("\t\t\t\tScanning source hierarchy...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_15
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:276: stateBeingProcessed	= source ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc9_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:278: do
	mov	r2,#0x00
00120$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:280: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
	push	ar5
	push	ar6
	push	ar7
	mov	ar3,r2
	inc	r2
	mov	dptr,#_iterateStateMachine_sourceIndex_4_15
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_15
	mov	r3,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_15 >> 8)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:282: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
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
	cjne	r1,#0xff,00220$
	dec	r5
00220$:
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:284: if(stateBeingProcessed == target)
	mov	a,_iterateStateMachine_sloc7_1_0
	cjne	a,_iterateStateMachine_sloc10_1_0,00221$
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00221$
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00221$
	sjmp	00222$
00221$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00119$
00222$:
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:288: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:290: sourceIndex-- ;
	mov	a,r2
	dec	a
	mov	r3,a
	mov	dptr,#_iterateStateMachine_sourceIndex_4_15
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:292: while(exitIndex < sourceIndex)
	mov	_iterateStateMachine_sloc11_1_0,r3
	mov	r4,#0x00
00115$:
	clr	c
	mov	a,r4
	subb	a,_iterateStateMachine_sloc11_1_0
	jc	00223$
	ljmp	00117$
00223$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:294: printf("\t\t\t\t") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:296: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
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
	add	a,#_iterateStateMachine_sourceHierarchy_4_15
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_15 >> 8)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:298: exitIndex++ ;
	inc	r4
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00115$
00117$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:301: sm->currentState = target ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc4_1_0
	mov	r3,a
	clr	a
	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	r4,a
	mov	r0,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	mov	a,_iterateStateMachine_sloc7_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:303: break ;
	sjmp	00122$
00119$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:306: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:307: } while(stateBeingProcessed) ;
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
	jz	00224$
	ljmp	00120$
00224$:
00122$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:309: if(sm->currentState != target)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,_iterateStateMachine_sloc7_1_0,00225$
	mov	a,r3
	cjne	a,(_iterateStateMachine_sloc7_1_0 + 1),00225$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc7_1_0 + 2),00225$
	ljmp	00132$
00225$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:311: printf("\t\t\t\tScanning target hierarchy...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:313: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_15
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:314: stateBeingProcessed	= target ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc7_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:316: do
	mov	r2,#0x00
00128$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:318: targetHierarchy[targetIndex] = stateBeingProcessed ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_15
	mov	r3,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_15 >> 8)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:320: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:322: if(stateBeingProcessed == source)
	mov	a,_iterateStateMachine_sloc9_1_0
	cjne	a,_iterateStateMachine_sloc10_1_0,00226$
	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00226$
	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00226$
	sjmp	00227$
00226$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00127$
00227$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:324: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:326: while(targetIndex--)
	mov	dptr,#_iterateStateMachine_targetIndex_4_15
	movx	a,@dptr
	mov	r3,a
00123$:
	mov	ar4,r3
	dec	r3
	mov	a,r4
	jnz	00228$
	ljmp	00197$
00228$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:328: printf("\t\t\t\t") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:329: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
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
	add	a,#_iterateStateMachine_targetHierarchy_4_15
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_15 >> 8)
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
	ljmp	00123$
00197$:
	mov	dptr,#_iterateStateMachine_targetIndex_4_15
	mov	a,r3
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:332: sm->currentState = target ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc5_1_0
	mov	r3,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	r4,a
	mov	r0,(_iterateStateMachine_sloc5_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	mov	a,_iterateStateMachine_sloc7_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: break ;
	sjmp	00132$
00127$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:337: targetIndex++ ;
	inc	r2
	mov	dptr,#_iterateStateMachine_targetIndex_4_15
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:338: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:339: } while(stateBeingProcessed) ;
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
	jz	00229$
	ljmp	00128$
00229$:
00132$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: if(sm->currentState != target)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,_iterateStateMachine_sloc7_1_0,00230$
	mov	a,r3
	cjne	a,(_iterateStateMachine_sloc7_1_0 + 1),00230$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc7_1_0 + 2),00230$
	ljmp	00155$
00230$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:346: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: LCA			= 0 ;
	mov	dptr,#_iterateStateMachine_LCA_4_15
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:348: entryIndex	= targetIndex - 1 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_15
	movx	a,@dptr
	mov	r2,a
	dec	r2
	mov	dptr,#_iterateStateMachine_entryIndex_4_15
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:349: exitIndex	= sourceIndex - 1 ;
	mov	dptr,#_iterateStateMachine_sourceIndex_4_15
	movx	a,@dptr
	mov	r3,a
	dec	r3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:350: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: printf("\t\tEvent queue empty.\n") ;
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
	mov	r4,#0x00
00133$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_15
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_15 >> 8)
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
	add	a,#_iterateStateMachine_targetHierarchy_4_15
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_15 >> 8)
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
	cjne	a,_iterateStateMachine_sloc10_1_0,00231$
	mov	a,r1
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00231$
	mov	a,r5
	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00231$
	sjmp	00232$
00231$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00198$
00232$:
	pop	ar7
	pop	ar6
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:354: LCA = sourceHierarchy[exitIndex] ;
	push	ar6
	push	ar7
	mov	dptr,#_iterateStateMachine_LCA_4_15
	mov	a,_iterateStateMachine_sloc10_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:356: entryIndex-- ;
	dec	r2
	mov	dptr,#_iterateStateMachine_entryIndex_4_15
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:357: exitIndex-- ;
	dec	r3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:359: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
	mov	dptr,#_iterateStateMachine_LCA_4_15
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:361: LCAindex++ ;
	inc	r4
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00133$
00198$:
	mov	dptr,#_iterateStateMachine_entryIndex_4_15
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_iterateStateMachine_LCA_4_15
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
	add	a,_iterateStateMachine_sloc7_1_0
	mov	r5,a
	clr	a
	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
	mov	r6,a
	mov	r7,(_iterateStateMachine_sloc7_1_0 + 2)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:365: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:367: sourceIndex	= exitIndex + 1 ;
	mov	a,r3
	inc	a
	mov	_iterateStateMachine_sloc11_1_0,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: printf("\t\tEvent queue empty.\n") ;
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:370: while(exitIndex < sourceIndex)
	mov	r2,_iterateStateMachine_sloc11_1_0
	mov	r3,#0x00
00136$:
	clr	c
	mov	a,r3
	subb	a,r2
	jc	00233$
	ljmp	00138$
00233$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:372: printf("\t\t\t\t") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:374: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
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
	add	a,#_iterateStateMachine_sourceHierarchy_4_15
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_15 >> 8)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: exitIndex++ ;
	inc	r3
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00136$
00138$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:379: targetIndex = entryIndex + 1 ;
	mov	dptr,#_iterateStateMachine_entryIndex_4_15
	movx	a,@dptr
	mov	r2,a
	inc	r2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:381: while(targetIndex--)
00139$:
	mov	ar3,r2
	dec	r2
	mov	a,r3
	jnz	00234$
	ljmp	00141$
00234$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:383: printf("\t\t\t\t") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:384: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
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
	add	a,#_iterateStateMachine_targetHierarchy_4_15
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_15 >> 8)
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
	ljmp	00139$
00141$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:387: sm->currentState = target ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc6_1_0
	mov	r2,a
	clr	a
	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	r3,a
	mov	r4,(_iterateStateMachine_sloc6_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_iterateStateMachine_sloc7_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc7_1_0 + 2)
	lcall	__gptrput
00155$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:395: forceTransition = true ;
	setb	_iterateStateMachine_forceTransition_1_1
	ljmp	00159$
00161$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: printf("\t\tEvent queue empty.\n") ;
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
