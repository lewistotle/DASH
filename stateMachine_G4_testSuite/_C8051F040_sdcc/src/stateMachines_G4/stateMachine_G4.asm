;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Wed Dec 30 19:46:44 2009
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
	.globl _allocateStateMachineMemory_PARM_3
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
_allocateStateMachineMemory_sloc2_1_0:
	.ds 2
_allocateStateMachineMemory_sloc3_1_0:
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
_allocateStateMachineMemory_PARM_3:
	.ds 2
_allocateStateMachineMemory_sizeInBytes_1_1:
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
_iterateStateMachine_sm_1_1:
	.ds 3
_iterateStateMachine_initialTransitionEvent_1_1:
	.ds 1
_iterateStateMachine_enterEvent_1_1:
	.ds 1
_iterateStateMachine_exitEvent_1_1:
	.ds 1
_iterateStateMachine_eventToProcess_2_3:
	.ds 3
_iterateStateMachine_stateBeingProcessed_2_3:
	.ds 3
_iterateStateMachine_sourceHierarchy_4_14:
	.ds 48
_iterateStateMachine_sourceIndex_4_14:
	.ds 1
_iterateStateMachine_targetHierarchy_4_14:
	.ds 48
_iterateStateMachine_targetIndex_4_14:
	.ds 1
_iterateStateMachine_entryIndex_4_14:
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
;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
;action                    Allocated with name '_iterateStateMachine_action_2_3'
;source                    Allocated with name '_iterateStateMachine_source_3_9'
;target                    Allocated with name '_iterateStateMachine_target_3_9'
;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_14'
;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_14'
;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_14'
;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_14'
;LCA                       Allocated with name '_iterateStateMachine_LCA_4_14'
;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_14'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_14'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_16'
;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_22'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:158: static event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
	mov	dptr,#_iterateStateMachine_initialTransitionEvent_1_1
	mov	a,#0x02
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:159: static event_t	enterEvent				= { SUBSTATE_ENTRY } ;
	mov	dptr,#_iterateStateMachine_enterEvent_1_1
	mov	a,#0x01
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:160: static event_t	exitEvent				= { SUBSTATE_EXIT } ;
	mov	dptr,#_iterateStateMachine_exitEvent_1_1
	mov	a,#0x03
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
;sloc0                     Allocated with name '_allocateStateMachineMemory_sloc0_1_0'
;sloc1                     Allocated with name '_allocateStateMachineMemory_sloc1_1_0'
;sloc2                     Allocated with name '_allocateStateMachineMemory_sloc2_1_0'
;sloc3                     Allocated with name '_allocateStateMachineMemory_sloc3_1_0'
;eventQueueDepth           Allocated with name '_allocateStateMachineMemory_PARM_2'
;constructor               Allocated with name '_allocateStateMachineMemory_PARM_3'
;sizeInBytes               Allocated with name '_allocateStateMachineMemory_sizeInBytes_1_1'
;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
;eventQueue                Allocated with name '_allocateStateMachineMemory_eventQueue_2_2'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:32: stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes,
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: stateMachine_t*	instance = malloc(sizeInBytes) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:38: if(instance)
	mov	a,r4
	orl	a,r5
	orl	a,r6
	jnz	00109$
	ljmp	00104$
00109$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:40: event_t** eventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
	push	ar2
	push	ar3
	mov	dptr,#_allocateStateMachineMemory_PARM_2
	movx	a,@dptr
	mov	_allocateStateMachineMemory_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_allocateStateMachineMemory_sloc2_1_0 + 1),a
	mov	dptr,#__mulint_PARM_2
	mov	a,_allocateStateMachineMemory_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc2_1_0 + 1)
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	__mulint
	mov	_allocateStateMachineMemory_sloc0_1_0,dpl
	mov	(_allocateStateMachineMemory_sloc0_1_0 + 1),dph
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,_allocateStateMachineMemory_sloc0_1_0
	mov	dph,(_allocateStateMachineMemory_sloc0_1_0 + 1)
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_malloc
	mov	r1,dpl
	mov	r2,dph
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	mov	_allocateStateMachineMemory_sloc1_1_0,r1
	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r2
	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:42: if(eventQueue)
	pop	ar3
	pop	ar2
	mov	a,_allocateStateMachineMemory_sloc1_1_0
	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	jnz	00110$
	ljmp	00104$
00110$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:44: initializeEventQueue(&instance->eventQueue, eventQueue, eventQueueDepth) ;
	mov	a,#0x0C
	add	a,r4
	mov	_allocateStateMachineMemory_sloc3_1_0,a
	clr	a
	addc	a,r5
	mov	(_allocateStateMachineMemory_sloc3_1_0 + 1),a
	mov	(_allocateStateMachineMemory_sloc3_1_0 + 2),r6
	mov	r7,_allocateStateMachineMemory_sloc2_1_0
	mov	dptr,#_initializeEventQueue_PARM_2
	mov	a,_allocateStateMachineMemory_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_initializeEventQueue_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,_allocateStateMachineMemory_sloc3_1_0
	mov	dph,(_allocateStateMachineMemory_sloc3_1_0 + 1)
	mov	b,(_allocateStateMachineMemory_sloc3_1_0 + 2)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_initializeEventQueue
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:46: memset((char*)instance,		0, sizeInBytes) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: memset((char*)eventQueue,	0, eventQueueDepth * sizeof(event_t*)) ;
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,_allocateStateMachineMemory_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_allocateStateMachineMemory_sloc0_1_0 + 1)
	movx	@dptr,a
	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
	lcall	_memset
	pop	ar6
	pop	ar5
	pop	ar4
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: constructor(instance) ;
	push	ar4
	push	ar5
	push	ar6
	mov	a,#00111$
	push	acc
	mov	a,#(00111$ >> 8)
	push	acc
	mov	dptr,#_allocateStateMachineMemory_PARM_3
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
00111$:
	pop	ar6
	pop	ar5
	pop	ar4
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:53: return instance ;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'deallocateStateMachineMemory'
;------------------------------------------------------------
;destructor                Allocated with name '_deallocateStateMachineMemory_PARM_2'
;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:57: void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachineDestructor_t destructor)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:59: if(instance != 0)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:61: destructor(instance) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:63: free((char*)instance) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:68: bool registerStateMachine(			stateMachine_t* sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:70: if(sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r2,#0x00
00105$:
	cjne	r2,#0x32,00116$
00116$:
	jnc	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:76: if(stateMachines[statetMachineIndex] == NULL)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:78: stateMachines[statetMachineIndex] = sm ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: return true ;
	setb	c
	ret
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r2
	sjmp	00105$
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:85: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unregisterStateMachine'
;------------------------------------------------------------
;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:88: bool unregisterStateMachine(		stateMachine_t* sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:90: if(sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:94: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r5,#0x00
00105$:
	cjne	r5,#0x32,00116$
00116$:
	jnc	00104$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:96: if(stateMachines[statetMachineIndex] == sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:98: stateMachines[statetMachineIndex] = NULL ;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: return true ;
	setb	c
	ret
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:94: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r5
	sjmp	00105$
00104$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:105: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iterateAllStateMachines'
;------------------------------------------------------------
;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:109: void iterateAllStateMachines(	void)
;	-----------------------------------------
;	 function iterateAllStateMachines
;	-----------------------------------------
_iterateAllStateMachines:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	mov	r2,#0x00
00103$:
	cjne	r2,#0x32,00113$
00113$:
	jnc	00107$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:115: if(stateMachines[statetMachineIndex] != NULL)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:117: iterateStateMachine(stateMachines[statetMachineIndex]) ;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_iterateStateMachine
	pop	ar2
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	inc	r2
	sjmp	00103$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'callStateHandler'
;------------------------------------------------------------
;state                     Allocated with name '_callStateHandler_PARM_2'
;event                     Allocated with name '_callStateHandler_PARM_3'
;sm                        Allocated with name '_callStateHandler_sm_1_1'
;response                  Allocated with name '_callStateHandler_response_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:127: stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:135: response = ((callStateHandler_t)(state->handler))(sm, event) ;
	mov	dptr,#_callStateHandler_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x04
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
	mov	dptr,#_callStateHandler_sm_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar3
	mov	dptr,#_callStateHandler_PARM_3
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#00103$
	push	acc
	mov	a,#(00103$ >> 8)
	push	acc
	push	ar2
	push	ar3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
00103$:
	mov	r2,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:152: return response ;
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
;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
;action                    Allocated with name '_iterateStateMachine_action_2_3'
;source                    Allocated with name '_iterateStateMachine_source_3_9'
;target                    Allocated with name '_iterateStateMachine_target_3_9'
;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_14'
;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_14'
;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_14'
;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_14'
;LCA                       Allocated with name '_iterateStateMachine_LCA_4_14'
;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_14'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_14'
;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_16'
;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_22'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:156: void iterateStateMachine(	stateMachine_t* sm)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:168: if(!sm->stateMachineInitialized)
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
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00192$
	ljmp	00102$
00192$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: sm->currentState = (state_t*)sm->topState ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:176: callStateHandler(sm, sm->currentState, &enterEvent) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:178: sm->stateMachineInitialized	= true ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:179: sm->forceTransition			= true ;
	mov	a,#0x14
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:184: if((!isEmpty(&sm->eventQueue)) || (sm->forceTransition))
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x0C
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
	lcall	_isEmpty
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00156$
	mov	a,#0x14
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00194$
	ret
00194$:
00156$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: state_t*				stateBeingProcessed	= sm->currentState ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:190: if(sm->forceTransition)
	mov	a,#0x14
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:192: sm->forceTransition	= false ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:193: eventToProcess		= &initialTransitionEvent ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:197: eventToProcess = Remove(&sm->eventQueue) ; ;
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_Remove
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x09
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:212: do
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:214: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
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
	push	ar2
	push	ar3
	push	ar4
	lcall	_callStateHandler
	mov	_iterateStateMachine_sloc0_1_0,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:216: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_iterateStateMachine_sloc0_1_0
	jnz	00112$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov  r5,a
	add	a,#0xff - 0x03
	jnc	00112$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:218: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: } while(stateBeingProcessed) ;
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
	jz	00198$
	ljmp	00110$
00198$:
00112$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:233: if(action == TRANSITION)
	mov	a,#0x02
	cjne	a,_iterateStateMachine_sloc0_1_0,00199$
	sjmp	00200$
00199$:
	ret
00200$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: state_t*	source	= sm->currentState ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a,r2
	mov	_iterateStateMachine_sloc1_1_0,a
	clr	a
	addc	a,r3
	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
	mov	(_iterateStateMachine_sloc1_1_0 + 2),r4
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: state_t*	target	= sm->nextState ;
	mov	a,#0x09
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
	mov	_iterateStateMachine_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc2_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:240: if(source == target)
	mov	a,_iterateStateMachine_sloc2_1_0
	cjne	a,_iterateStateMachine_sloc0_1_0,00201$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00201$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00201$
	sjmp	00202$
00201$:
	ljmp	00152$
00202$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:248: callStateHandler(sm, source, &exitEvent) ;
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
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:249: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc3_1_0
	mov	r6,a
	clr	a
	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	r7,a
	mov	r5,(_iterateStateMachine_sloc3_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:250: callStateHandler(sm, target, &enterEvent) ;
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
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc3_1_0
	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
	lcall	_callStateHandler
	ljmp	00153$
00152$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:252: else if(source == (state_t*)(target->parent))
	mov	dpl,_iterateStateMachine_sloc2_1_0
	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	cjne	a,_iterateStateMachine_sloc0_1_0,00149$
	mov	a,r6
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00149$
	mov	a,r7
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00149$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:261: sm->currentState = target ;
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:262: callStateHandler(sm, target, &enterEvent) ;
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
	ljmp	00153$
00149$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:264: else if((state_t*)(source->parent) == (state_t*)(target->parent))
	mov	dpl,_iterateStateMachine_sloc0_1_0
	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_iterateStateMachine_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
	mov	a,r5
	cjne	a,_iterateStateMachine_sloc3_1_0,00205$
	mov	a,r6
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00205$
	mov	a,r7
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00205$
	sjmp	00206$
00205$:
	ljmp	00146$
00206$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:273: callStateHandler(sm, source, &exitEvent) ;
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
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:274: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	a,#0x06
	add	a,_iterateStateMachine_sloc4_1_0
	mov	r0,a
	clr	a
	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	r1,a
	mov	r5,(_iterateStateMachine_sloc4_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: callStateHandler(sm, target, &enterEvent) ;
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
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	lcall	_callStateHandler
	ljmp	00153$
00146$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:277: else if((state_t*)(source->parent) == target)
	mov	a,_iterateStateMachine_sloc2_1_0
	cjne	a,_iterateStateMachine_sloc3_1_0,00143$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00143$
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00143$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:287: sm->currentState = target ;
	mov	dpl,_iterateStateMachine_sloc1_1_0
	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:288: callStateHandler(sm, source, &exitEvent) ;
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
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_callStateHandler
	ljmp	00153$
00143$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:307: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_14
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:308: stateBeingProcessed	= source ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:310: do
	mov	r2,#0x00
00118$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:312: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
	mov	ar3,r2
	inc	r2
	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_14
	mov	r3,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:318: if(stateBeingProcessed == target)
	mov	a,r5
	cjne	a,_iterateStateMachine_sloc2_1_0,00209$
	mov	a,r6
	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00209$
	mov	a,r7
	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00209$
	sjmp	00210$
00209$:
	ljmp	00117$
00210$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:326: sourceIndex-- ;
	mov	a,r2
	dec	a
	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:328: while(exitIndex < sourceIndex)
	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
	movx	a,@dptr
	mov	r3,a
	mov	r4,#0x00
00113$:
	clr	c
	mov	a,r4
	subb	a,r3
	jnc	00115$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
	push	ar3
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	a,r4
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_14
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
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
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	push	ar3
	push	ar4
	lcall	_callStateHandler
	pop	ar4
	pop	ar3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:336: exitIndex++ ;
	inc	r4
	pop	ar3
	sjmp	00113$
00115$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:339: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:341: break ;
	sjmp	00120$
00117$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:344: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: } while(stateBeingProcessed) ;
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
	jz	00212$
	ljmp	00118$
00212$:
00120$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: if(sm->currentState != target)
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r2
	cjne	a,_iterateStateMachine_sloc2_1_0,00213$
	mov	a,r3
	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00213$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00213$
	ljmp	00130$
00213$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:353: targetIndex			= 0 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_14
	clr	a
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:354: stateBeingProcessed	= target ;
	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
	mov	a,_iterateStateMachine_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:356: do
	mov	r2,#0x00
00126$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:358: targetHierarchy[targetIndex] = stateBeingProcessed ;
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_14
	mov	r3,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: if(stateBeingProcessed == source)
	mov	a,r5
	cjne	a,_iterateStateMachine_sloc0_1_0,00214$
	mov	a,r6
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00214$
	mov	a,r7
	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00214$
	sjmp	00215$
00214$:
	ljmp	00125$
00215$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:370: while(targetIndex--)
	mov	dptr,#_iterateStateMachine_targetIndex_4_14
	movx	a,@dptr
	mov	r3,a
00121$:
	mov	ar4,r3
	dec	r3
	mov	a,r4
	jz	00188$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:375: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	_iterateStateMachine_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_targetHierarchy_4_14
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
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
	mov	a,#_iterateStateMachine_enterEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,_iterateStateMachine_sloc4_1_0
	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
	push	ar3
	lcall	_callStateHandler
	pop	ar3
	pop	ar3
	sjmp	00121$
00188$:
	mov	dptr,#_iterateStateMachine_targetIndex_4_14
	mov	a,r3
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:378: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,#0x06
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r0
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:380: break ;
	sjmp	00130$
00125$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:383: targetIndex++ ;
	inc	r2
	mov	dptr,#_iterateStateMachine_targetIndex_4_14
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:384: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:385: } while(stateBeingProcessed) ;
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
	jz	00217$
	ljmp	00126$
00217$:
00130$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:388: if(sm->currentState != target)
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,r2
	cjne	a,_iterateStateMachine_sloc2_1_0,00218$
	mov	a,r3
	cjne	a,(_iterateStateMachine_sloc2_1_0 + 1),00218$
	mov	a,r4
	cjne	a,(_iterateStateMachine_sloc2_1_0 + 2),00218$
	ljmp	00153$
00218$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:396: entryIndex	= targetIndex - 1 ;
	mov	dptr,#_iterateStateMachine_targetIndex_4_14
	movx	a,@dptr
	mov	r2,a
	dec	r2
	mov	dptr,#_iterateStateMachine_entryIndex_4_14
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:397: exitIndex	= sourceIndex - 1 ;
	mov	dptr,#_iterateStateMachine_sourceIndex_4_14
	movx	a,@dptr
	mov	r3,a
	dec	r3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:402: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
	mov	r4,#0x00
00131$:
	push	ar4
	mov	a,r3
	mov	b,#0x03
	mul	ab
	add	a,#_iterateStateMachine_sourceHierarchy_4_14
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
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
	add	a,#_iterateStateMachine_targetHierarchy_4_14
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
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
	cjne	a,ar0,00219$
	mov	a,r6
	cjne	a,ar1,00219$
	mov	a,r7
	cjne	a,ar4,00219$
	sjmp	00220$
00219$:
	pop	ar4
	sjmp	00189$
00220$:
	pop	ar4
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:406: entryIndex-- ;
	dec	r2
	mov	dptr,#_iterateStateMachine_entryIndex_4_14
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:407: exitIndex-- ;
	dec	r3
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:413: LCAindex++ ;
	inc	r4
	sjmp	00131$
00189$:
	mov	dptr,#_iterateStateMachine_entryIndex_4_14
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:421: sourceIndex	= exitIndex + 1 ;
	mov	a,r3
	inc	a
	mov	r2,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:424: while(exitIndex < sourceIndex)
	mov	r3,#0x00
00134$:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	00136$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:430: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
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
	add	a,#_iterateStateMachine_sourceHierarchy_4_14
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_sourceHierarchy_4_14 >> 8)
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
	mov	a,#_iterateStateMachine_exitEvent_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar2
	push	ar3
	lcall	_callStateHandler
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:432: exitIndex++ ;
	inc	r3
	sjmp	00134$
00136$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:435: targetIndex = entryIndex + 1 ;
	mov	dptr,#_iterateStateMachine_entryIndex_4_14
	movx	a,@dptr
	mov	r2,a
	inc	r2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:437: while(targetIndex--)
00137$:
	mov	ar3,r2
	dec	r2
	mov	a,r3
	jz	00139$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:442: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
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
	add	a,#_iterateStateMachine_targetHierarchy_4_14
	mov	dpl,a
	clr	a
	addc	a,#(_iterateStateMachine_targetHierarchy_4_14 >> 8)
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
	mov	b,r5
	push	ar2
	lcall	_callStateHandler
	pop	ar2
	sjmp	00137$
00139$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:445: sm->currentState = target ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
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
	mov	a,_iterateStateMachine_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
	lcall	__gptrput
00153$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:453: sm->forceTransition = true ;
	mov	dptr,#_iterateStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x14
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	ljmp	__gptrput
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "SUBSTATE_GET_INFO"
	.db 0x00
__str_1:
	.ascii "SUBSTATE_ENTRY"
	.db 0x00
__str_2:
	.ascii "SUBSTATE_INITIAL_TRANSITION"
	.db 0x00
__str_3:
	.ascii "SUBSTATE_EXIT"
	.db 0x00
__str_4:
	.ascii "IGNORED"
	.db 0x00
__str_5:
	.ascii "HANDLED"
	.db 0x00
__str_6:
	.ascii "TRANSITION"
	.db 0x00
	.area XINIT   (CODE)
__xinit__eventTypes:
	.byte __str_0,(__str_0 >> 8),#0x80
	.byte __str_1,(__str_1 >> 8),#0x80
	.byte __str_2,(__str_2 >> 8),#0x80
	.byte __str_3,(__str_3 >> 8),#0x80
__xinit__responseTypes:
	.byte __str_4,(__str_4 >> 8),#0x80
	.byte __str_5,(__str_5 >> 8),#0x80
	.byte __str_6,(__str_6 >> 8),#0x80
	.area CABS    (ABS,CODE)
