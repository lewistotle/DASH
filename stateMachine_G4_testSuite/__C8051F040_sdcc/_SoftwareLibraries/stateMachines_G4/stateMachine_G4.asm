;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sat Jan 02 19:57:10 2010
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
	.globl _deallocateStateMachineMemory_PARM_2
	.globl _allocateStateMachineMemory_PARM_2
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
_allocateStateMachineMemory_sloc0_1_0:
	.ds 2
_allocateStateMachineMemory_sloc1_1_0:
	.ds 3
_callStateHandler_sloc0_1_0:
	.ds 3
_callStateHandler_sloc1_1_0:
	.ds 1
_callStateHandler_sloc2_1_0:
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
_allocateStateMachineMemory_PARM_2:
	.ds 2
_allocateStateMachineMemory_eventQueueDepth_1_1:
	.ds 2
_deallocateStateMachineMemory_PARM_2:
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
_callStateHandler_response_1_1:
	.ds 1
_iterateStateMachine_sm_1_1:
	.ds 3
_iterateStateMachine_eventToProcess_2_3:
	.ds 3
_iterateStateMachine_stateBeingProcessed_2_3:
	.ds 3
_iterateStateMachine_action_2_3:
	.ds 1
_iterateStateMachine_sourceHierarchy_4_19:
	.ds 48
_iterateStateMachine_sourceIndex_4_19:
	.ds 1
_iterateStateMachine_targetHierarchy_4_19:
	.ds 48
_iterateStateMachine_targetIndex_4_19:
	.ds 1
_iterateStateMachine_LCA_4_19:
	.ds 3
_iterateStateMachine_entryIndex_4_19:
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
	.ds 18
_responseTypes::
	.ds 12
_initialTransitionEvent:
	.ds 1
_jumpToHistoryEvent:
	.ds 1
_doEvent:
	.ds 1
_enterEvent:
	.ds 1
_exitEvent:
	.ds 1
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
;sloc0                     Allocated with name '_allocateStateMachineMemory_sloc0_1_0'
;sloc1                     Allocated with name '_allocateStateMachineMemory_sloc1_1_0'
;constructor               Allocated with name '_allocateStateMachineMemory_PARM_2'
;eventQueueDepth           Allocated with name '_allocateStateMachineMemory_eventQueueDepth_1_1'
;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
;eventQueue                Allocated with name '_allocateStateMachineMemory_eventQueue_2_2'
;typesOfEventsToDefer      Allocated with name '_allocateStateMachineMemory_typesOfEventsToDefer_3_3'
;deferredEventQueue        Allocated with name '_allocateStateMachineMemory_deferredEventQueue_4_4'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: stateMachine_t* allocateStateMachineMemory(		uint16_t eventQueueDepth,
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
	mov	dptr,#_allocateStateMachineMemory_eventQueueDepth_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:39: stateMachine_t*	instance = malloc(sizeof(stateMachine_t)) ;
	mov	dptr,#0x002B
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	mov	r4,#0x00
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:41: if(instance)
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jnz	00115$
	ljmp	00108$
00115$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:45: memset((char*)instance, 0, sizeof(stateMachine_t)) ;
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x2B
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_memset
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: eventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
	mov	dptr,#_allocateStateMachineMemory_eventQueueDepth_1_1
	movx	a,@dptr
	mov	_allocateStateMachineMemory_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_allocateStateMachineMemory_sloc0_1_0 + 1),a
	mov	dptr,#__mulint_PARM_2
	mov	a,_allocateStateMachineMemory_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc0_1_0 + 1)
	movx	@dptr,a
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r7,dpl
	mov  r0,dph
	push	ar7
	push	ar0
	lcall	_malloc
	mov	r1,dpl
	mov	r5,dph
	pop	ar0
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	mov	_allocateStateMachineMemory_sloc1_1_0,r1
	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r5
	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: if(eventQueue)
	mov	a,_allocateStateMachineMemory_sloc1_1_0
	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	jnz	00116$
	ljmp	00108$
00116$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:53: memset((char*)eventQueue, 0, eventQueueDepth * sizeof(event_t*)) ;
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	push	ar0
	lcall	_memset
	pop	ar0
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:54: eventQueue_initialize(&instance->eventQueue, eventQueue, eventQueueDepth) ;
	mov	a,#0x0B
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar1,r4
	mov	dptr,#_eventQueue_initialize_PARM_2
	mov	a,_allocateStateMachineMemory_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_eventQueue_initialize_PARM_3
	mov	a,_allocateStateMachineMemory_sloc0_1_0
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	push	ar0
	lcall	_eventQueue_initialize
	pop	ar0
	pop	ar7
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:56: typesOfEventsToDefer = (eventType_t*)malloc(eventQueueDepth * sizeof(eventType_t*)) ;
	mov	dpl,r7
	mov	dph,r0
	push	ar7
	push	ar0
	lcall	_malloc
	mov	r5,dpl
	mov	r6,dph
	pop	ar0
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	mov	_allocateStateMachineMemory_sloc1_1_0,r5
	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r6
	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:58: if(typesOfEventsToDefer)
	mov	a,_allocateStateMachineMemory_sloc1_1_0
	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	jnz	00117$
	ljmp	00108$
00117$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:62: instance->maxDepthOfEventsToDeferList		= eventQueueDepth ;
	mov	a,#0x12
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar1,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r1
	mov	a,_allocateStateMachineMemory_sloc0_1_0
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:63: instance->currentDepthOfEventsToDeferList	= 0 ;
	mov	a,#0x13
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar1,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r1
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:64: instance->typesOfEventsToDefer				= typesOfEventsToDefer ;
	mov	a,#0x14
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar1,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r1
	mov	a,_allocateStateMachineMemory_sloc1_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:66: deferredEventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
	mov	dpl,r7
	mov	dph,r0
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	push	ar0
	lcall	_malloc
	mov	r5,dpl
	mov	r6,dph
	pop	ar0
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	mov	_allocateStateMachineMemory_sloc1_1_0,r5
	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r6
	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:68: if(deferredEventQueue)
	mov	a,_allocateStateMachineMemory_sloc1_1_0
	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	jz	00108$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:70: memset((char*)deferredEventQueue, 0, eventQueueDepth * sizeof(event_t*)) ;
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	push	ar2
	push	ar3
	push	ar4
	lcall	_memset
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:71: eventQueue_initialize(&instance->deferredEventQueue, deferredEventQueue, eventQueueDepth) ;
	mov	a,#0x17
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r0,a
	mov	ar5,r4
	mov	dptr,#_eventQueue_initialize_PARM_2
	mov	a,_allocateStateMachineMemory_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_eventQueue_initialize_PARM_3
	mov	a,_allocateStateMachineMemory_sloc0_1_0
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r0
	mov	b,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_eventQueue_initialize
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:73: constructor(instance) ;
	push	ar2
	push	ar3
	push	ar4
	mov	a,#00119$
	push	acc
	mov	a,#(00119$ >> 8)
	push	acc
	mov	dptr,#_allocateStateMachineMemory_PARM_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
00119$:
	pop	ar4
	pop	ar3
	pop	ar2
00108$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:79: return instance ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'deallocateStateMachineMemory'
;------------------------------------------------------------
;destructor                Allocated with name '_deallocateStateMachineMemory_PARM_2'
;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:83: void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachine_destructor_t destructor)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:85: if(instance != 0)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:87: destructor(instance) ;
	mov	a,#00107$
	push	acc
	mov	a,#(00107$ >> 8)
	push	acc
	mov	dptr,#_deallocateStateMachineMemory_PARM_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:89: free((char*)instance) ;
	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
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
	ljmp	_free
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'registerStateMachine'
;------------------------------------------------------------
;sm                        Allocated with name '_registerStateMachine_sm_1_1'
;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:94: bool registerStateMachine(			stateMachine_t* sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:96: if(sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r2,#0x00
00105$:
	cjne	r2,#0x32,00116$
00116$:
	jnc	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:102: if(stateMachines[statetMachineIndex] == NULL)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:104: stateMachines[statetMachineIndex] = sm ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:106: return true ;
	setb	c
	ret
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r2
	sjmp	00105$
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:111: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unregisterStateMachine'
;------------------------------------------------------------
;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:114: bool unregisterStateMachine(		stateMachine_t* sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:116: if(sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:120: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r5,#0x00
00105$:
	cjne	r5,#0x32,00116$
00116$:
	jnc	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:122: if(stateMachines[statetMachineIndex] == sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:124: stateMachines[statetMachineIndex] = NULL ;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:126: return true ;
	setb	c
	ret
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:120: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r5
	sjmp	00105$
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:131: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iterateAllStateMachines'
;------------------------------------------------------------
;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:135: void iterateAllStateMachines(	void)
;	-----------------------------------------
;	 function iterateAllStateMachines
;	-----------------------------------------
_iterateAllStateMachines:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r2,#0x00
00103$:
	cjne	r2,#0x32,00113$
00113$:
	jnc	00107$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:141: if(stateMachines[statetMachineIndex] != NULL)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:143: iterateStateMachine(stateMachines[statetMachineIndex]) ;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_iterateStateMachine
	pop	ar2
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r2
	sjmp	00103$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'callStateHandler'
;------------------------------------------------------------
;sloc0                     Allocated with name '_callStateHandler_sloc0_1_0'
;sloc1                     Allocated with name '_callStateHandler_sloc1_1_0'
;sloc2                     Allocated with name '_callStateHandler_sloc2_1_0'
;state                     Allocated with name '_callStateHandler_PARM_2'
;event                     Allocated with name '_callStateHandler_PARM_3'
;sm                        Allocated with name '_callStateHandler_sm_1_1'
;response                  Allocated with name '_callStateHandler_response_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:158: stateMachine_stateResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:163: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
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
	mov	a,#0x05
	subb	a,r5
	cpl	c
	clr	a
	rlc	a
	mov	r6,a
	jz	00117$
	mov	a,r5
	mov	b,#0x03
	mul	ab
	add	a,#_eventTypes
	mov	dpl,a
	clr	a
	addc	a,#(_eventTypes >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	sjmp	00118$
00117$:
	mov	r5,#__str_1
	mov	r6,#(__str_1 >> 8)
	mov	r7,#0x80
00118$:
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_callStateHandler_PARM_2
	movx	a,@dptr
	mov	_callStateHandler_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_callStateHandler_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_callStateHandler_sloc0_1_0 + 2),a
	mov	a,#0x06
	add	a,_callStateHandler_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_callStateHandler_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar2
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:166: if(state->type == CHOICE_PSUEDOSTATE)
	mov	a,#0x03
	add	a,_callStateHandler_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_callStateHandler_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_callStateHandler_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_callStateHandler_sloc1_1_0,a
	mov	a,#0x01
	cjne	a,_callStateHandler_sloc1_1_0,00128$
	sjmp	00129$
00128$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00111$
00129$:
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:168: response = ((stateMachine_choiceStateHandler_t)(state->handler))(sm) ;
	mov	a,#0x04
	add	a,_callStateHandler_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_callStateHandler_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_callStateHandler_sloc0_1_0 + 2)
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
	push	ar6
	mov	a,#00130$
	push	acc
	mov	a,#(00130$ >> 8)
	push	acc
	push	ar5
	push	ar6
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	ret
00130$:
	mov	r5,dpl
	pop	ar6
	mov	dptr,#_callStateHandler_response_1_1
	mov	a,r5
	movx	@dptr,a
	ljmp	00112$
00111$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:172: if(event == &enterEvent)
	mov	a,r2
	cjne	a,#_enterEvent,00102$
	mov	a,r3
	cjne	a,#(_enterEvent >> 8),00102$
	mov	a,r4
	cjne	a,#0x00,00102$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: sm->mostRecentlyEnteredState = state ;
	mov	dptr,#_callStateHandler_sm_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x25
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_callStateHandler_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_callStateHandler_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_callStateHandler_sloc0_1_0 + 2)
	lcall	__gptrput
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:176: if(event == &exitEvent)
	mov	a,r2
	cjne	a,#_exitEvent,00133$
	mov	a,r3
	cjne	a,#(_exitEvent >> 8),00133$
	mov	a,r4
	cjne	a,#0x00,00133$
	sjmp	00134$
00133$:
	ljmp	00109$
00134$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:178: if(state->type == STATE_WITH_SHALLOW_HISTORY)
	mov	a,#0x02
	cjne	a,_callStateHandler_sloc1_1_0,00135$
	sjmp	00136$
00135$:
	ljmp	00106$
00136$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:182: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyExitedState ;
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_callStateHandler_sm_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x22
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_callStateHandler_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_callStateHandler_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_callStateHandler_sloc2_1_0 + 2),a
	mov	a,#0x09
	add	a,_callStateHandler_sloc0_1_0
	mov	r3,a
	clr	a
	addc	a,(_callStateHandler_sloc0_1_0 + 1)
	mov	r4,a
	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,r2
	add	a,_callStateHandler_sloc2_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_callStateHandler_sloc2_1_0 + 1)
	mov	r3,a
	mov	r4,(_callStateHandler_sloc2_1_0 + 2)
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00107$
00106$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:184: else if(state->type == STATE_WITH_DEEP_HISTORY)
	mov	a,#0x03
	cjne	a,_callStateHandler_sloc1_1_0,00137$
	sjmp	00138$
00137$:
	ljmp	00107$
00138$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:188: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_callStateHandler_sm_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x22
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_callStateHandler_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_callStateHandler_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_callStateHandler_sloc2_1_0 + 2),a
	mov	a,#0x09
	add	a,_callStateHandler_sloc0_1_0
	mov	r3,a
	clr	a
	addc	a,(_callStateHandler_sloc0_1_0 + 1)
	mov	r4,a
	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,r2
	add	a,_callStateHandler_sloc2_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_callStateHandler_sloc2_1_0 + 1)
	mov	r3,a
	mov	r4,(_callStateHandler_sloc2_1_0 + 2)
	mov	a,#0x25
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:212: return response ;
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:188: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:191: sm->mostRecentlyExitedState = (void*)state ;
	mov	dptr,#_callStateHandler_sm_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x28
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_callStateHandler_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_callStateHandler_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_callStateHandler_sloc0_1_0 + 2)
	lcall	__gptrput
00109$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:194: response = ((stateMachine_callStateHandler_t)(state->handler))(sm, event) ;
	mov	a,#0x04
	add	a,_callStateHandler_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_callStateHandler_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_callStateHandler_sloc0_1_0 + 2)
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
	push	ar6
	push	ar2
	push	ar3
	push	ar4
	mov	a,#00139$
	push	acc
	mov	a,#(00139$ >> 8)
	push	acc
	push	ar5
	push	ar6
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	ret
00139$:
	mov	r5,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	mov	dptr,#_callStateHandler_response_1_1
	mov	a,r5
	movx	@dptr,a
00112$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:198: printf("response: %s ", responseTypes[response]) ;
	mov	dptr,#_callStateHandler_response_1_1
	movx	a,@dptr
	mov	r2,a
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:201: if(response == TRANSITION)
	cjne	r2,#0x02,00114$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:204: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
	mov	dptr,#_callStateHandler_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x08
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
	push	ar2
	push	ar3
	push	ar4
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
00114$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:209: printf("\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:212: return response ;
	mov	dptr,#_callStateHandler_response_1_1
	movx	a,@dptr
	mov	dpl,a
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
;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
;action                    Allocated with name '_iterateStateMachine_action_1_1'
;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
;action                    Allocated with name '_iterateStateMachine_action_2_3'
;nextState                 Allocated with name '_iterateStateMachine_nextState_4_11'
;source                    Allocated with name '_iterateStateMachine_source_3_14'
;target                    Allocated with name '_iterateStateMachine_target_3_14'
;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_19'
;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_19'
;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_19'
;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_19'
;LCA                       Allocated with name '_iterateStateMachine_LCA_4_19'
;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_19'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_19'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_21'
;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_27'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:216: void iterateStateMachine(	stateMachine_t* sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:221: printf("\titerating %s\n", sm->stateMachineName) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:228: if(!sm->stateMachineInitialized)
	mov	a,#0x1E
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
	jz	00214$
	ljmp	00102$
00214$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: printf("\t\tinitializing...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:234: sm->currentState = (state_t*)sm->topState ;
	mov	a,#0x05
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: callStateHandler(sm, sm->currentState, &enterEvent) ;
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
	mov	a,#_enterEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_enterEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:238: sm->stateMachineInitialized	= true ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x1E
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:239: sm->forceTransition			= true ;
	mov	a,#0x1F
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
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:244: if((!eventQueue_isEmpty(&sm->eventQueue)) || (sm->forceTransition))
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x0B
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar2
	push	ar3
	push	ar4
	lcall	_eventQueue_isEmpty
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00168$
	mov	a,#0x1F
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
	jnz	00216$
	ljmp	00169$
00216$:
00168$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:247: state_t*						stateBeingProcessed	= sm->currentState ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc0_1_0
	mov	_iterateStateMachine_sloc1_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:250: if(sm->forceTransition)
	mov	a,#0x1F
	add	a,_iterateStateMachine_sloc0_1_0
	mov	_iterateStateMachine_sloc1_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	__gptrget
	jz	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:252: sm->forceTransition	= false ;
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:253: eventToProcess		= &initialTransitionEvent ;
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	mov	a,#_initialTransitionEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_initialTransitionEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	sjmp	00105$
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:257: eventToProcess = eventQueue_remove(&sm->eventQueue) ; ;
	mov	a,#0x0B
	add	a,_iterateStateMachine_sloc0_1_0
	mov	_iterateStateMachine_sloc1_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	_eventQueue_remove
	mov	_iterateStateMachine_sloc1_1_0,dpl
	mov	(_iterateStateMachine_sloc1_1_0 + 1),dph
	mov	(_iterateStateMachine_sloc1_1_0 + 2),b
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	mov	a,_iterateStateMachine_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
	movx	@dptr,a
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:260: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
	mov	a,#0x08
	add	a,_iterateStateMachine_sloc1_1_0
	mov	_iterateStateMachine_sloc1_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:263: printf("\t\tProcessing event...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:273: do
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
00110$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc2_1_0 + 2),a
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,_iterateStateMachine_sloc3_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	_callStateHandler
	mov	r0,dpl
	mov	dptr,#_iterateStateMachine_action_2_3
	mov	a,r0
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:277: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
	mov	a,r0
	jz	00218$
	ljmp	00186$
00218$:
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	__gptrget
	mov  r0,a
	add	a,#0xff - 0x05
	jc	00219$
	ljmp	00186$
00219$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:279: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc3_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:282: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc3_1_0
	orl	a,(_iterateStateMachine_sloc3_1_0 + 1)
	orl	a,(_iterateStateMachine_sloc3_1_0 + 2)
	jz	00174$
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc3_1_0
	mov	_iterateStateMachine_sloc3_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	sjmp	00175$
00174$:
	mov	_iterateStateMachine_sloc3_1_0,#__str_9
	mov	(_iterateStateMachine_sloc3_1_0 + 1),#(__str_9 >> 8)
	mov	(_iterateStateMachine_sloc3_1_0 + 2),#0x80
00175$:
	push	_iterateStateMachine_sloc3_1_0
	push	(_iterateStateMachine_sloc3_1_0 + 1)
	push	(_iterateStateMachine_sloc3_1_0 + 2)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:292: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc3_1_0
	orl	a,(_iterateStateMachine_sloc3_1_0 + 1)
	orl	a,(_iterateStateMachine_sloc3_1_0 + 2)
	jz	00221$
	ljmp	00110$
00221$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:294: while(action == TRANSITION_TO_HISTORY)
00186$:
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	a,#0x08
	add	a,_iterateStateMachine_sloc3_1_0
	mov	_iterateStateMachine_sloc2_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc3_1_0 + 2)
	mov	_iterateStateMachine_sloc1_1_0,_iterateStateMachine_sloc3_1_0
	mov	(_iterateStateMachine_sloc1_1_0 + 1),(_iterateStateMachine_sloc3_1_0 + 1)
	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc3_1_0 + 2)
	mov	a,#0x22
	add	a,_iterateStateMachine_sloc3_1_0
	mov	_iterateStateMachine_sloc3_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
00120$:
	mov	dptr,#_iterateStateMachine_action_2_3
	movx	a,@dptr
	mov	r0,a
	cjne	r0,#0x03,00222$
	sjmp	00223$
00222$:
	ljmp	00122$
00223$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:296: if(		(((state_t*)(sm->nextState))->type != STATE_WITH_SHALLOW_HISTORY)
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
	mov	a,#0x03
	add	a,_iterateStateMachine_sloc0_1_0
	mov	_iterateStateMachine_sloc0_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x02,00224$
	sjmp	00117$
00224$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:297: &&	(((state_t*)(sm->nextState))->type != STATE_WITH_DEEP_HISTORY))
	cjne	r0,#0x03,00225$
	sjmp	00226$
00225$:
	ljmp	00122$
00226$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:303: break ;
00117$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:307: state_t* nextState = sm->historicalMarkers[((state_with_history_t*)(sm->nextState))->historyMarkerIndex] ;
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
	mov	a,#0x08
	add	a,_iterateStateMachine_sloc1_1_0
	mov	_iterateStateMachine_sloc4_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc1_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,#0x09
	add	a,_iterateStateMachine_sloc5_1_0
	mov	_iterateStateMachine_sloc5_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	mov	a,r0
	add	a,_iterateStateMachine_sloc0_1_0
	mov	_iterateStateMachine_sloc5_1_0,a
	mov	a,r1
	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:312: if(nextState != (void*)0)
	clr	a
	cjne	a,_iterateStateMachine_sloc5_1_0,00227$
	clr	a
	cjne	a,(_iterateStateMachine_sloc5_1_0 + 1),00227$
	clr	a
	cjne	a,(_iterateStateMachine_sloc5_1_0 + 2),00227$
	sjmp	00114$
00227$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:319: sm->nextState = nextState ;
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	a,_iterateStateMachine_sloc5_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	__gptrput
	sjmp	00118$
00114$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: action = callStateHandler(sm, (state_t*)(sm->nextState), &jumpToHistoryEvent) ;
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc5_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_jumpToHistoryEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_jumpToHistoryEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	_callStateHandler
00118$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: action = TRANSITION ;
	mov	dptr,#_iterateStateMachine_action_2_3
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00120$
00122$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: if(action == TRANSITION)
	mov	dptr,#_iterateStateMachine_action_2_3
	movx	a,@dptr
	mov	r0,a
	cjne	r0,#0x02,00228$
	sjmp	00229$
00228$:
	ljmp	00170$
00229$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: state_t*	source	= sm->currentState ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc5_1_0
	mov	_iterateStateMachine_sloc4_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc5_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:348: state_t*	target	= sm->nextState ;
	mov	a,#0x08
	add	a,_iterateStateMachine_sloc5_1_0
	mov	_iterateStateMachine_sloc2_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc5_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc2_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: if(source == target)
	mov	a,_iterateStateMachine_sloc2_1_0
	cjne	a,_iterateStateMachine_sloc3_1_0,00230$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00230$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00230$
	sjmp	00231$
00230$:
	ljmp	00162$
00231$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:355: printf("\t\t\t\tSelf transition.\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:360: callStateHandler(sm, source, &exitEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc3_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_exitEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_exitEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:361: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc1_1_0
	mov	_iterateStateMachine_sloc0_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	mov	(_iterateStateMachine_sloc0_1_0 + 2),(_iterateStateMachine_sloc1_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:362: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_enterEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_enterEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	_callStateHandler
	ljmp	00163$
00162$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: else if(source == (state_t*)(target->parent))
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc1_1_0
	cjne	a,_iterateStateMachine_sloc3_1_0,00159$
	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00159$
	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00159$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:367: printf("\t\t\t\tTransition to direct child.\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:373: sm->currentState = target ;
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:374: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_enterEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_enterEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	_callStateHandler
	ljmp	00163$
00159$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: else if((state_t*)(source->parent) == (state_t*)(target->parent))
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc1_1_0
	cjne	a,_iterateStateMachine_sloc0_1_0,00234$
	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00234$
	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00234$
	sjmp	00235$
00234$:
	ljmp	00156$
00235$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:379: printf("\t\t\t\tTransition to direct peer.\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:385: callStateHandler(sm, source, &exitEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc3_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_exitEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_exitEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:386: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc1_1_0
	mov	_iterateStateMachine_sloc6_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	mov	(_iterateStateMachine_sloc6_1_0 + 2),(_iterateStateMachine_sloc1_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:387: callStateHandler(sm, target, &enterEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_enterEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_enterEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	_callStateHandler
	ljmp	00163$
00156$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:389: else if((state_t*)(source->parent) == target)
	mov	a,_iterateStateMachine_sloc2_1_0
	cjne	a,_iterateStateMachine_sloc0_1_0,00153$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00153$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00153$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:392: printf("\t\t\t\tTransition to direct parent.\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: sm->currentState = target ;
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:400: callStateHandler(sm, source, &exitEvent) ;
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc3_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_exitEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_exitEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	_callStateHandler
	ljmp	00163$
00153$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:415: printf("\t\t\t\tScanning source hierarchy...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:419: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:420: stateBeingProcessed	= source ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc3_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:422: do
	mov	_iterateStateMachine_sloc6_1_0,#0x00
00128$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:424: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
	mov	r1,_iterateStateMachine_sloc6_1_0
	inc	_iterateStateMachine_sloc6_1_0
	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
	mov	a,_iterateStateMachine_sloc6_1_0
	movx	@dptr,a
	mov	a,r1
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_19
	mov	r1,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
	mov	r0,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	dpl,r1
	mov	dph,r0
	mov	a,_iterateStateMachine_sloc5_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:427: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc5_1_0
	mov	_iterateStateMachine_sloc4_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc5_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	r0,_iterateStateMachine_sloc6_1_0
	mov	r1,#0x00
	dec	r0
	cjne	r0,#0xff,00238$
	dec	r1
00238$:
	push	_iterateStateMachine_sloc4_1_0
	push	(_iterateStateMachine_sloc4_1_0 + 1)
	push	(_iterateStateMachine_sloc4_1_0 + 2)
	push	ar0
	push	ar1
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:430: if(stateBeingProcessed == target)
	mov	a,_iterateStateMachine_sloc2_1_0
	cjne	a,_iterateStateMachine_sloc5_1_0,00239$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc5_1_0 + 1),00239$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc5_1_0 + 2),00239$
	sjmp	00240$
00239$:
	ljmp	00127$
00240$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:435: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:438: sourceIndex-- ;
	mov	a,_iterateStateMachine_sloc6_1_0
	dec	a
	mov	r0,a
	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:440: while(exitIndex < sourceIndex)
	mov	_iterateStateMachine_sloc4_1_0,#0x00
00123$:
	clr	c
	mov	a,_iterateStateMachine_sloc4_1_0
	subb	a,r0
	jnc	00125$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:443: printf("\t\t\t\t") ;
	push	ar0
	push	ar0
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:446: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc4_1_0
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_exitEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_exitEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	_callStateHandler
	pop	ar0
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:448: exitIndex++ ;
	inc	_iterateStateMachine_sloc4_1_0
	pop	ar0
	sjmp	00123$
00125$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:451: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc4_1_0
	mov	_iterateStateMachine_sloc4_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:453: break ;
	sjmp	00130$
00127$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:456: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc5_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:457: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc5_1_0
	orl	a,(_iterateStateMachine_sloc5_1_0 + 1)
	orl	a,(_iterateStateMachine_sloc5_1_0 + 2)
	jz	00242$
	ljmp	00128$
00242$:
00130$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:459: if(sm->currentState != target)
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc6_1_0
	mov	_iterateStateMachine_sloc6_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc2_1_0
	cjne	a,_iterateStateMachine_sloc6_1_0,00243$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00243$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00243$
	ljmp	00140$
00243$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:462: printf("\t\t\t\tScanning target hierarchy...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:465: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:466: stateBeingProcessed	= target ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:468: do
	mov	_iterateStateMachine_sloc6_1_0,#0x00
00136$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:470: targetHierarchy[targetIndex] = stateBeingProcessed ;
	mov	a,_iterateStateMachine_sloc6_1_0
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_19
	mov	r1,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
	mov	r0,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	dpl,r1
	mov	dph,r0
	mov	a,_iterateStateMachine_sloc5_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:473: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc5_1_0
	mov	_iterateStateMachine_sloc4_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc5_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	r0,_iterateStateMachine_sloc6_1_0
	mov	r1,#0x00
	push	_iterateStateMachine_sloc4_1_0
	push	(_iterateStateMachine_sloc4_1_0 + 1)
	push	(_iterateStateMachine_sloc4_1_0 + 2)
	push	ar0
	push	ar1
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:476: if(stateBeingProcessed == source)
	mov	a,_iterateStateMachine_sloc3_1_0
	cjne	a,_iterateStateMachine_sloc5_1_0,00244$
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc5_1_0 + 1),00244$
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc5_1_0 + 2),00244$
	sjmp	00245$
00244$:
	ljmp	00135$
00245$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:479: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:482: while(targetIndex--)
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	movx	a,@dptr
	mov	_iterateStateMachine_sloc4_1_0,a
00131$:
	mov	r1,_iterateStateMachine_sloc4_1_0
	dec	_iterateStateMachine_sloc4_1_0
	mov	a,r1
	jz	00210$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:485: printf("\t\t\t\t") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:487: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc4_1_0
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_enterEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_enterEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	_callStateHandler
	sjmp	00131$
00210$:
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	mov	a,_iterateStateMachine_sloc4_1_0
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:490: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc4_1_0
	mov	_iterateStateMachine_sloc4_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:492: break ;
	sjmp	00140$
00135$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:495: targetIndex++ ;
	inc	_iterateStateMachine_sloc6_1_0
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	mov	a,_iterateStateMachine_sloc6_1_0
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:496: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc5_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:497: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc5_1_0
	orl	a,(_iterateStateMachine_sloc5_1_0 + 1)
	orl	a,(_iterateStateMachine_sloc5_1_0 + 2)
	jz	00247$
	ljmp	00136$
00247$:
00140$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:500: if(sm->currentState != target)
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc6_1_0
	mov	_iterateStateMachine_sloc6_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc2_1_0
	cjne	a,_iterateStateMachine_sloc6_1_0,00248$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00248$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00248$
	ljmp	00163$
00248$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:505: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:507: LCA			= 0 ;
	mov	dptr,#_iterateStateMachine_LCA_4_19
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:508: entryIndex	= targetIndex - 1 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	movx	a,@dptr
	dec	a
	mov	_iterateStateMachine_sloc5_1_0,a
	mov	dptr,#_iterateStateMachine_entryIndex_4_19
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:509: exitIndex	= sourceIndex - 1 ;
	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
	movx	a,@dptr
	dec	a
	mov	_iterateStateMachine_sloc6_1_0,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:511: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc6_1_0
	mov	(_iterateStateMachine_sloc4_1_0 + 1),#0x00
	mov	r0,_iterateStateMachine_sloc5_1_0
	mov	r1,#0x00
	push	_iterateStateMachine_sloc4_1_0
	push	(_iterateStateMachine_sloc4_1_0 + 1)
	push	ar0
	push	ar1
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:514: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc5_1_0
	mov	_iterateStateMachine_sloc0_1_0,_iterateStateMachine_sloc6_1_0
	mov	_iterateStateMachine_sloc6_1_0,#0x00
00141$:
	mov	a,_iterateStateMachine_sloc0_1_0
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc4_1_0
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_iterateStateMachine_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc1_1_0
	cjne	a,_iterateStateMachine_sloc5_1_0,00211$
	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc5_1_0 + 1),00211$
	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc5_1_0 + 2),00211$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:516: LCA = sourceHierarchy[exitIndex] ;
	mov	dptr,#_iterateStateMachine_LCA_4_19
	mov	a,_iterateStateMachine_sloc5_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:518: entryIndex-- ;
	dec	_iterateStateMachine_sloc4_1_0
	mov	dptr,#_iterateStateMachine_entryIndex_4_19
	mov	a,_iterateStateMachine_sloc4_1_0
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:519: exitIndex-- ;
	dec	_iterateStateMachine_sloc0_1_0
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:522: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
	mov	dptr,#_iterateStateMachine_LCA_4_19
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc5_1_0
	mov	_iterateStateMachine_sloc5_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	push	_iterateStateMachine_sloc5_1_0
	push	(_iterateStateMachine_sloc5_1_0 + 1)
	push	(_iterateStateMachine_sloc5_1_0 + 2)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:525: LCAindex++ ;
	inc	_iterateStateMachine_sloc6_1_0
	ljmp	00141$
00211$:
	mov	dptr,#_iterateStateMachine_entryIndex_4_19
	mov	a,_iterateStateMachine_sloc4_1_0
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:529: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
	mov	dptr,#_iterateStateMachine_LCA_4_19
	movx	a,@dptr
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc6_1_0
	mov	_iterateStateMachine_sloc6_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc2_1_0
	mov	_iterateStateMachine_sloc5_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc2_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc3_1_0
	mov	_iterateStateMachine_sloc3_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	push	_iterateStateMachine_sloc6_1_0
	push	(_iterateStateMachine_sloc6_1_0 + 1)
	push	(_iterateStateMachine_sloc6_1_0 + 2)
	push	_iterateStateMachine_sloc5_1_0
	push	(_iterateStateMachine_sloc5_1_0 + 1)
	push	(_iterateStateMachine_sloc5_1_0 + 2)
	push	_iterateStateMachine_sloc3_1_0
	push	(_iterateStateMachine_sloc3_1_0 + 1)
	push	(_iterateStateMachine_sloc3_1_0 + 2)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:530: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
	mov	_iterateStateMachine_sloc6_1_0,_iterateStateMachine_sloc0_1_0
	mov	(_iterateStateMachine_sloc6_1_0 + 1),#0x00
	mov	r0,_iterateStateMachine_sloc4_1_0
	mov	r1,#0x00
	push	_iterateStateMachine_sloc6_1_0
	push	(_iterateStateMachine_sloc6_1_0 + 1)
	push	ar0
	push	ar1
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:533: sourceIndex	= exitIndex + 1 ;
	mov	a,_iterateStateMachine_sloc0_1_0
	inc	a
	mov	r0,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:536: while(exitIndex < sourceIndex)
	mov	_iterateStateMachine_sloc6_1_0,#0x00
00144$:
	clr	c
	mov	a,_iterateStateMachine_sloc6_1_0
	subb	a,r0
	jnc	00146$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:539: printf("\t\t\t\t") ;
	push	ar0
	push	ar0
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:542: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc6_1_0
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc4_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc4_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc4_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_exitEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_exitEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	_callStateHandler
	pop	ar0
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:544: exitIndex++ ;
	inc	_iterateStateMachine_sloc6_1_0
	pop	ar0
	sjmp	00144$
00146$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:547: targetIndex = entryIndex + 1 ;
	mov	dptr,#_iterateStateMachine_entryIndex_4_19
	movx	a,@dptr
	mov	r0,a
	inc	r0
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:549: while(targetIndex--)
	mov	_iterateStateMachine_sloc6_1_0,r0
00147$:
	mov	r1,_iterateStateMachine_sloc6_1_0
	dec	_iterateStateMachine_sloc6_1_0
	mov	a,r1
	jz	00149$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:552: printf("\t\t\t\t") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:554: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,_iterateStateMachine_sloc6_1_0
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,_iterateStateMachine_sloc4_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc4_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc4_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_callStateHandler_PARM_3
	mov	a,#_enterEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_enterEvent >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	_callStateHandler
	sjmp	00147$
00149$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:557: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
	mov	a,#0x05
	add	a,_iterateStateMachine_sloc6_1_0
	mov	_iterateStateMachine_sloc6_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
00163$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:565: sm->forceTransition = true ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
	mov	a,#0x1F
	add	a,_iterateStateMachine_sloc6_1_0
	mov	_iterateStateMachine_sloc6_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
	mov	dpl,_iterateStateMachine_sloc6_1_0
	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	sjmp	00170$
00169$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:570: action = callStateHandler(sm, (state_t*)(sm->currentState), &doEvent) ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x05
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar5,r4
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
	mov	a,#_doEvent
	movx	@dptr,a
	inc	dptr
	mov	a,#(_doEvent >> 8)
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
	lcall	_callStateHandler
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:572: if(action == TRANSITION)
	cjne	r2,#0x02,00253$
	sjmp	00254$
00253$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00170$
00254$:
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:574: sm->forceTransition = true ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00170$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:579: printf("\t\tEvent queue empty.\n") ;
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
	.ascii "SUBSTATE_JUMP_TO_HISTORY_DEFAULT"
	.db 0x00
__str_30:
	.ascii "SUBSTATE_DO"
	.db 0x00
__str_31:
	.ascii "SUBSTATE_EXIT"
	.db 0x00
__str_32:
	.ascii "IGNORED"
	.db 0x00
__str_33:
	.ascii "HANDLED"
	.db 0x00
__str_34:
	.ascii "TRANSITION"
	.db 0x00
__str_35:
	.ascii "TRANSITION_TO_HISTORY"
	.db 0x00
	.area XINIT   (CODE)
__xinit__eventTypes:
	.byte __str_26,(__str_26 >> 8),#0x80
	.byte __str_27,(__str_27 >> 8),#0x80
	.byte __str_28,(__str_28 >> 8),#0x80
	.byte __str_29,(__str_29 >> 8),#0x80
	.byte __str_30,(__str_30 >> 8),#0x80
	.byte __str_31,(__str_31 >> 8),#0x80
__xinit__responseTypes:
	.byte __str_32,(__str_32 >> 8),#0x80
	.byte __str_33,(__str_33 >> 8),#0x80
	.byte __str_34,(__str_34 >> 8),#0x80
	.byte __str_35,(__str_35 >> 8),#0x80
__xinit__initialTransitionEvent:
	.db #0x02
__xinit__jumpToHistoryEvent:
	.db #0x03
__xinit__doEvent:
	.db #0x04
__xinit__enterEvent:
	.db #0x01
__xinit__exitEvent:
	.db #0x05
	.area CABS    (ABS,CODE)
