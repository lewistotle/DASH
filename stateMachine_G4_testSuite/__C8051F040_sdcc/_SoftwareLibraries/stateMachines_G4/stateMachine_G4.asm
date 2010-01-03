;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sat Jan 02 19:24:46 2010
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
	.ds 1
_iterateStateMachine_sloc2_1_0:
	.ds 3
_iterateStateMachine_sloc3_1_0:
	.ds 3
_iterateStateMachine_sloc4_1_0:
	.ds 3
_iterateStateMachine_sloc5_1_0:
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:157: stateMachine_stateResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:162: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:165: if(state->type == CHOICE_PSUEDOSTATE)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:167: response = ((stateMachine_choiceStateHandler_t)(state->handler))(sm) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:171: if(event == &enterEvent)
	mov	a,r2
	cjne	a,#_enterEvent,00102$
	mov	a,r3
	cjne	a,#(_enterEvent >> 8),00102$
	mov	a,r4
	cjne	a,#0x00,00102$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:173: sm->mostRecentlyEnteredState = state ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:175: if(event == &exitEvent)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:177: if(state->type == STATE_WITH_SHALLOW_HISTORY)
	mov	a,#0x02
	cjne	a,_callStateHandler_sloc1_1_0,00135$
	sjmp	00136$
00135$:
	ljmp	00106$
00136$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:181: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyExitedState ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:183: else if(state->type == STATE_WITH_DEEP_HISTORY)
	mov	a,#0x03
	cjne	a,_callStateHandler_sloc1_1_0,00137$
	sjmp	00138$
00137$:
	ljmp	00107$
00138$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:211: return response ;
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:190: sm->mostRecentlyExitedState = (void*)state ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:193: response = ((stateMachine_callStateHandler_t)(state->handler))(sm, event) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:197: printf("response: %s ", responseTypes[response]) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: if(response == TRANSITION)
	cjne	r2,#0x02,00114$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:203: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:208: printf("\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:211: return response ;
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
;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:215: void iterateStateMachine(	stateMachine_t* sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:218: printf("\titerating %s\n", sm->stateMachineName) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:225: if(!sm->stateMachineInitialized)
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
	jz	00210$
	ljmp	00102$
00210$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:228: printf("\t\tinitializing...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: sm->currentState = (state_t*)sm->topState ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:233: callStateHandler(sm, sm->currentState, &enterEvent) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: sm->stateMachineInitialized	= true ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: sm->forceTransition			= true ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:241: if((!eventQueue_isEmpty(&sm->eventQueue)) || (sm->forceTransition))
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
	jz	00166$
	mov	a,#0x1F
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00212$
	ljmp	00167$
00212$:
00166$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:244: state_t*						stateBeingProcessed	= sm->currentState ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x05
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
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:247: if(sm->forceTransition)
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
	jz	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:249: sm->forceTransition	= false ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:250: eventToProcess		= &initialTransitionEvent ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:254: eventToProcess = eventQueue_remove(&sm->eventQueue) ; ;
	mov	a,#0x0B
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_eventQueue_remove
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:257: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
	mov	dptr,#_iterateStateMachine_sm_1_1
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
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:260: printf("\t\tProcessing event...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:270: do
	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00110$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:272: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
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
	mov	a,_iterateStateMachine_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
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
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar3
	push	ar4
	lcall	_callStateHandler
	mov	r2,dpl
	pop	ar4
	pop	ar3
	mov	dptr,#_iterateStateMachine_action_2_3
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:274: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
	mov	a,r2
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00214$
	ljmp	00183$
00214$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov  r5,a
	add	a,#0xff - 0x05
	jc	00215$
	ljmp	00183$
00215$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:276: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:279: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	orl	a,r7
	jz	00171$
	mov	a,#0x06
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
	sjmp	00172$
00171$:
	mov	r5,#__str_9
	mov	r6,#(__str_9 >> 8)
	mov	r7,#0x80
00172$:
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:289: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	orl	a,r7
	jz	00217$
	ljmp	00110$
00217$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:291: while(action == TRANSITION_TO_HISTORY)
00183$:
	mov	dptr,#_iterateStateMachine_sm_1_1
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
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	_iterateStateMachine_sloc0_1_0,r2
	mov	(_iterateStateMachine_sloc0_1_0 + 1),r3
	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
	mov	a,#0x22
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
00120$:
	mov	dptr,#_iterateStateMachine_action_2_3
	movx	a,@dptr
	mov	r0,a
	cjne	r0,#0x03,00218$
	sjmp	00219$
00218$:
	ljmp	00122$
00219$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:293: if(		(((state_t*)(sm->nextState))->type != STATE_WITH_SHALLOW_HISTORY)
	push	ar2
	push	ar3
	push	ar4
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
	mov	a,#0x03
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_iterateStateMachine_sloc1_1_0,a
	mov	a,#0x02
	cjne	a,_iterateStateMachine_sloc1_1_0,00220$
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00117$
00220$:
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:294: &&	(((state_t*)(sm->nextState))->type != STATE_WITH_DEEP_HISTORY))
	mov	a,#0x03
	cjne	a,_iterateStateMachine_sloc1_1_0,00221$
	sjmp	00222$
00221$:
	ljmp	00122$
00222$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:300: break ;
00117$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:304: state_t* nextState = sm->historicalMarkers[((state_with_history_t*)(sm->nextState))->historyMarkerIndex] ;
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	a,#0x08
	add	a,_iterateStateMachine_sloc0_1_0
	mov	_iterateStateMachine_sloc2_1_0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x09
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	add	a,_iterateStateMachine_sloc3_1_0
	mov	r5,a
	mov	a,r6
	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	r6,a
	mov	r7,(_iterateStateMachine_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:309: if(nextState != (void*)0)
	clr	a
	cjne	a,_iterateStateMachine_sloc3_1_0,00223$
	clr	a
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00223$
	clr	a
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00223$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00114$
00223$:
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:316: sm->nextState = nextState ;
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	mov	a,_iterateStateMachine_sloc3_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrput
	sjmp	00118$
00114$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:331: action = callStateHandler(sm, (state_t*)(sm->nextState), &jumpToHistoryEvent) ;
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
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
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_callStateHandler
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:567: printf("\t\tEvent queue empty.\n") ;
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:331: action = callStateHandler(sm, (state_t*)(sm->nextState), &jumpToHistoryEvent) ;
00118$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:339: action = TRANSITION ;
	mov	dptr,#_iterateStateMachine_action_2_3
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00120$
00122$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: if(action == TRANSITION)
	mov	dptr,#_iterateStateMachine_action_2_3
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x02,00224$
	sjmp	00225$
00224$:
	ljmp	00167$
00225$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:344: state_t*	source	= sm->currentState ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x05
	add	a,r2
	mov	_iterateStateMachine_sloc2_1_0,a
	clr	a
	addc	a,r3
	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
	mov	(_iterateStateMachine_sloc2_1_0 + 2),r4
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: state_t*	target	= sm->nextState ;
	mov	a,#0x08
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
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:349: if(source == target)
	mov	a,_iterateStateMachine_sloc0_1_0
	cjne	a,_iterateStateMachine_sloc3_1_0,00226$
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00226$
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00226$
	sjmp	00227$
00226$:
	ljmp	00162$
00227$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: printf("\t\t\t\tSelf transition.\n") ;
	push	ar2
	push	ar3
	push	ar4
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
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:357: callStateHandler(sm, source, &exitEvent) ;
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:358: sm->currentState = target ;
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
	mov	r6,a
	clr	a
	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	r7,a
	mov	r5,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,_iterateStateMachine_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:359: callStateHandler(sm, target, &enterEvent) ;
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
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	lcall	_callStateHandler
	ljmp	00163$
00162$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:361: else if(source == (state_t*)(target->parent))
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	cjne	a,_iterateStateMachine_sloc3_1_0,00159$
	mov	a,r6
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00159$
	mov	a,r7
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00159$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: printf("\t\t\t\tTransition to direct child.\n") ;
	push	ar2
	push	ar3
	push	ar4
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
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:370: sm->currentState = target ;
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	mov	a,_iterateStateMachine_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:371: callStateHandler(sm, target, &enterEvent) ;
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
	ljmp	00163$
00159$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:373: else if((state_t*)(source->parent) == (state_t*)(target->parent))
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	a,r5
	cjne	a,_iterateStateMachine_sloc4_1_0,00230$
	mov	a,r6
	cjne	a,(_iterateStateMachine_sloc4_1_0 + 1),00230$
	mov	a,r7
	cjne	a,(_iterateStateMachine_sloc4_1_0 + 2),00230$
	sjmp	00231$
00230$:
	ljmp	00156$
00231$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: printf("\t\t\t\tTransition to direct peer.\n") ;
	push	ar2
	push	ar3
	push	ar4
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
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:382: callStateHandler(sm, source, &exitEvent) ;
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:383: sm->currentState = target ;
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
	mov	r0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	r1,a
	mov	r5,(_iterateStateMachine_sloc5_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,_iterateStateMachine_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:384: callStateHandler(sm, target, &enterEvent) ;
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
	mov	dpl,_iterateStateMachine_sloc5_1_0
	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
	lcall	_callStateHandler
	ljmp	00163$
00156$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:386: else if((state_t*)(source->parent) == target)
	mov	a,_iterateStateMachine_sloc0_1_0
	cjne	a,_iterateStateMachine_sloc4_1_0,00153$
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc4_1_0 + 1),00153$
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc4_1_0 + 2),00153$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:389: printf("\t\t\t\tTransition to direct parent.\n") ;
	push	ar2
	push	ar3
	push	ar4
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
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:396: sm->currentState = target ;
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	mov	a,_iterateStateMachine_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:397: callStateHandler(sm, source, &exitEvent) ;
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
	ljmp	00163$
00153$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:412: printf("\t\t\t\tScanning source hierarchy...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:416: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:417: stateBeingProcessed	= source ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc3_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:419: do
	mov	r2,#0x00
00128$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:421: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
	mov	ar3,r2
	inc	r2
	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_19
	mov	r3,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
	mov	r4,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:424: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
	mov	a,#0x06
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar0,r7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	ar1,r2
	mov	r3,#0x00
	dec	r1
	cjne	r1,#0xff,00234$
	dec	r3
00234$:
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	_iterateStateMachine_sloc5_1_0
	push	(_iterateStateMachine_sloc5_1_0 + 1)
	push	(_iterateStateMachine_sloc5_1_0 + 2)
	push	ar1
	push	ar3
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:427: if(stateBeingProcessed == target)
	mov	a,r5
	cjne	a,_iterateStateMachine_sloc0_1_0,00235$
	mov	a,r6
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00235$
	mov	a,r7
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00235$
	sjmp	00236$
00235$:
	ljmp	00127$
00236$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:432: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
	push	ar2
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
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:435: sourceIndex-- ;
	mov	a,r2
	dec	a
	mov	r3,a
	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:437: while(exitIndex < sourceIndex)
	mov	r4,#0x00
00123$:
	clr	c
	mov	a,r4
	subb	a,r3
	jnc	00125$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:440: printf("\t\t\t\t") ;
	push	ar3
	push	ar3
	push	ar4
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
	pop	ar4
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:443: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,r4
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
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
	push	ar3
	push	ar4
	lcall	_callStateHandler
	pop	ar4
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:445: exitIndex++ ;
	inc	r4
	pop	ar3
	sjmp	00123$
00125$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:448: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,#0x05
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	mov	a,_iterateStateMachine_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:450: break ;
	sjmp	00130$
00127$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:453: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
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
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:454: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	orl	a,r5
	jz	00238$
	ljmp	00128$
00238$:
00130$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:456: if(sm->currentState != target)
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x05
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
	mov	a,r2
	cjne	a,_iterateStateMachine_sloc0_1_0,00239$
	mov	a,r3
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00239$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00239$
	ljmp	00140$
00239$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:459: printf("\t\t\t\tScanning target hierarchy...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:462: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:463: stateBeingProcessed	= target ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:465: do
	mov	r2,#0x00
00136$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:467: targetHierarchy[targetIndex] = stateBeingProcessed ;
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_19
	mov	r3,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
	mov	r4,a
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:470: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
	mov	a,#0x06
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar0,r7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	lcall	__gptrget
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	ar1,r2
	mov	r3,#0x00
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	push	_iterateStateMachine_sloc5_1_0
	push	(_iterateStateMachine_sloc5_1_0 + 1)
	push	(_iterateStateMachine_sloc5_1_0 + 2)
	push	ar1
	push	ar3
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:473: if(stateBeingProcessed == source)
	mov	a,r5
	cjne	a,_iterateStateMachine_sloc3_1_0,00240$
	mov	a,r6
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00240$
	mov	a,r7
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00240$
	sjmp	00241$
00240$:
	ljmp	00135$
00241$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:476: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:479: while(targetIndex--)
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	movx	a,@dptr
	mov	r3,a
00131$:
	mov	ar4,r3
	dec	r3
	mov	a,r4
	jz	00206$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:482: printf("\t\t\t\t") ;
	push	ar3
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
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:484: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
	mov	dph,a
	push	ar3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r0
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
	push	ar3
	lcall	_callStateHandler
	pop	ar3
	pop	ar3
	sjmp	00131$
00206$:
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	mov	a,r3
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:487: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,#0x05
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	mov	a,_iterateStateMachine_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:489: break ;
	sjmp	00140$
00135$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:492: targetIndex++ ;
	inc	r2
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:493: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
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
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:494: } while(stateBeingProcessed) ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	orl	a,r4
	orl	a,r5
	jz	00243$
	ljmp	00136$
00243$:
00140$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:497: if(sm->currentState != target)
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x05
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
	mov	a,r2
	cjne	a,_iterateStateMachine_sloc0_1_0,00244$
	mov	a,r3
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00244$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00244$
	ljmp	00163$
00244$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:502: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:504: LCA			= 0 ;
	mov	dptr,#_iterateStateMachine_LCA_4_19
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:505: entryIndex	= targetIndex - 1 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_19
	movx	a,@dptr
	mov	r2,a
	dec	r2
	mov	dptr,#_iterateStateMachine_entryIndex_4_19
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:506: exitIndex	= sourceIndex - 1 ;
	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
	movx	a,@dptr
	mov	r3,a
	dec	r3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:508: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
	mov	ar4,r3
	mov	r5,#0x00
	mov	ar6,r2
	mov	r7,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:511: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
	mov	r4,#0x00
00141$:
	push	ar4
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	cjne	a,ar0,00245$
	mov	a,r6
	cjne	a,ar1,00245$
	mov	a,r7
	cjne	a,ar4,00245$
	sjmp	00246$
00245$:
	pop	ar4
	sjmp	00207$
00246$:
	pop	ar4
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:513: LCA = sourceHierarchy[exitIndex] ;
	mov	dptr,#_iterateStateMachine_LCA_4_19
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:515: entryIndex-- ;
	dec	r2
	mov	dptr,#_iterateStateMachine_entryIndex_4_19
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:516: exitIndex-- ;
	dec	r3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:519: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
	mov	dptr,#_iterateStateMachine_LCA_4_19
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:522: LCAindex++ ;
	inc	r4
	ljmp	00141$
00207$:
	mov	dptr,#_iterateStateMachine_entryIndex_4_19
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:526: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
	mov	dptr,#_iterateStateMachine_LCA_4_19
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x06
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc0_1_0
	mov	r7,a
	clr	a
	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	r0,a
	mov	r1,(_iterateStateMachine_sloc0_1_0 + 2)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
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
	mov	r7,a
	clr	a
	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	r0,a
	mov	r1,(_iterateStateMachine_sloc3_1_0 + 2)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	_iterateStateMachine_sloc5_1_0
	push	(_iterateStateMachine_sloc5_1_0 + 1)
	push	(_iterateStateMachine_sloc5_1_0 + 2)
	push	ar7
	push	ar0
	push	ar1
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
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:527: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
	mov	ar4,r3
	mov	r5,#0x00
	mov	r6,#0x00
	push	ar3
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
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:530: sourceIndex	= exitIndex + 1 ;
	mov	a,r3
	inc	a
	mov	r2,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:533: while(exitIndex < sourceIndex)
	mov	r3,#0x00
00144$:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	00146$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:536: printf("\t\t\t\t") ;
	push	ar2
	push	ar3
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
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:539: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar3
	lcall	_callStateHandler
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:541: exitIndex++ ;
	inc	r3
	sjmp	00144$
00146$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:544: targetIndex = entryIndex + 1 ;
	mov	dptr,#_iterateStateMachine_entryIndex_4_19
	movx	a,@dptr
	mov	r2,a
	inc	r2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:546: while(targetIndex--)
00147$:
	mov	ar3,r2
	dec	r2
	mov	a,r3
	jz	00149$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:549: printf("\t\t\t\t") ;
	push	ar2
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
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:551: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_19
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#_callStateHandler_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
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
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_callStateHandler
	pop	ar2
	sjmp	00147$
00149$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:554: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x05
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_iterateStateMachine_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrput
00163$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:562: sm->forceTransition = true ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
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
00167$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:567: printf("\t\tEvent queue empty.\n") ;
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
__xinit__enterEvent:
	.db #0x01
__xinit__exitEvent:
	.db #0x05
	.area CABS    (ABS,CODE)
