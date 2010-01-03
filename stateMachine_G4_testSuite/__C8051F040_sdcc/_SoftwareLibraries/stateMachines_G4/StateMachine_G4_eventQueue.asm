;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sat Jan 02 19:24:45 2010
;--------------------------------------------------------
	.module StateMachine_G4_eventQueue
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _postEventToStateMachine_PARM_2
	.globl _removeFromDeferredTypeList_PARM_2
	.globl _isEventTypeDeferred_PARM_2
	.globl _addToDeferredTypeList_PARM_2
	.globl _eventQueue_insert_PARM_2
	.globl _nextLocationFromPoint_PARM_2
	.globl _eventQueue_initialize_PARM_3
	.globl _eventQueue_initialize_PARM_2
	.globl _eventQueue_initialize
	.globl _eventQueue_isEmpty
	.globl _eventQueue_isFull
	.globl _eventQueue_insert
	.globl _eventQueue_remove
	.globl _addToDeferredTypeList
	.globl _isEventTypeDeferred
	.globl _removeFromDeferredTypeList
	.globl _postEventToStateMachine
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
_eventQueue_remove_sloc0_1_0:
	.ds 3
_eventQueue_remove_sloc1_1_0:
	.ds 1
_eventQueue_remove_sloc2_1_0:
	.ds 3
_removeFromDeferredTypeList_sloc0_1_0:
	.ds 1
_removeFromDeferredTypeList_sloc1_1_0:
	.ds 1
_removeFromDeferredTypeList_sloc2_1_0:
	.ds 3
_removeFromDeferredTypeList_sloc3_1_0:
	.ds 3
_removeFromDeferredTypeList_sloc4_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_addToDeferredTypeList_sloc0_1_0::
	.ds 3
	.area	OSEG    (OVR,DATA)
_isEventTypeDeferred_sloc0_1_0::
	.ds 3
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
_removeFromDeferredTypeList_found_2_2:
	.ds 1
_postEventToStateMachine_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_eventQueue_initialize_PARM_2:
	.ds 3
_eventQueue_initialize_PARM_3:
	.ds 1
_eventQueue_initialize_Q_1_1:
	.ds 3
_eventQueue_isEmpty_Q_1_1:
	.ds 3
_eventQueue_isFull_Q_1_1:
	.ds 3
_nextLocationFromPoint_PARM_2:
	.ds 1
_nextLocationFromPoint_Q_1_1:
	.ds 3
_eventQueue_insert_PARM_2:
	.ds 3
_eventQueue_insert_Q_1_1:
	.ds 3
_eventQueue_remove_Q_1_1:
	.ds 3
_addToDeferredTypeList_PARM_2:
	.ds 1
_addToDeferredTypeList_sm_1_1:
	.ds 3
_isEventTypeDeferred_PARM_2:
	.ds 1
_isEventTypeDeferred_sm_1_1:
	.ds 3
_removeFromDeferredTypeList_PARM_2:
	.ds 1
_removeFromDeferredTypeList_sm_1_1:
	.ds 3
_removeFromDeferredTypeList_i_2_2:
	.ds 1
_removeFromDeferredTypeList_currentEvent_3_5:
	.ds 3
_postEventToStateMachine_PARM_2:
	.ds 3
_postEventToStateMachine_sm_1_1:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'eventQueue_initialize'
;------------------------------------------------------------
;storage                   Allocated with name '_eventQueue_initialize_PARM_2'
;maxEntriesInQueue         Allocated with name '_eventQueue_initialize_PARM_3'
;Q                         Allocated with name '_eventQueue_initialize_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:14: bool eventQueue_initialize(	eventQueue_t* Q, event_t** storage, eventQueueIndex_t maxEntriesInQueue)
;	-----------------------------------------
;	 function eventQueue_initialize
;	-----------------------------------------
_eventQueue_initialize:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_eventQueue_initialize_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:16: Q->Capacity	= maxEntriesInQueue ;
	mov	dptr,#_eventQueue_initialize_Q_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_eventQueue_initialize_PARM_3
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:17: Q->Size		= 0 ;
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
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:18: Q->Front	= 1 ;
	mov	a,#0x01
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:19: Q->Rear		= 0 ;
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
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:20: Q->Array	= storage ;
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_eventQueue_initialize_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:22: return true ;
	setb	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eventQueue_isEmpty'
;------------------------------------------------------------
;Q                         Allocated with name '_eventQueue_isEmpty_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:26: uint8_t eventQueue_isEmpty(	eventQueue_t* Q)
;	-----------------------------------------
;	 function eventQueue_isEmpty
;	-----------------------------------------
_eventQueue_isEmpty:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_eventQueue_isEmpty_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:28: return Q->Size == 0 ;
	mov	dptr,#_eventQueue_isEmpty_Q_1_1
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
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	clr	a
	cjne	r2,#0x00,00103$
	inc	a
00103$:
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eventQueue_isFull'
;------------------------------------------------------------
;Q                         Allocated with name '_eventQueue_isFull_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:32: uint8_t eventQueue_isFull(	eventQueue_t* Q)
;	-----------------------------------------
;	 function eventQueue_isFull
;	-----------------------------------------
_eventQueue_isFull:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_eventQueue_isFull_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:34: return Q->Size == Q->Capacity ;
	mov	dptr,#_eventQueue_isFull_Q_1_1
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,r5
	cjne	a,ar2,00103$
	mov	a,#0x01
	sjmp	00104$
00103$:
	clr	a
00104$:
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nextLocationFromPoint'
;------------------------------------------------------------
;location                  Allocated with name '_nextLocationFromPoint_PARM_2'
;Q                         Allocated with name '_nextLocationFromPoint_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:38: static eventQueueIndex_t nextLocationFromPoint(	eventQueue_t* Q, eventQueueIndex_t location)
;	-----------------------------------------
;	 function nextLocationFromPoint
;	-----------------------------------------
_nextLocationFromPoint:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_nextLocationFromPoint_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:40: if(++location == Q->Capacity)
	mov	dptr,#_nextLocationFromPoint_PARM_2
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	mov	dptr,#_nextLocationFromPoint_Q_1_1
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
	mov	dptr,#_nextLocationFromPoint_PARM_2
	movx	a,@dptr
	mov	r3,a
	cjne	a,ar2,00102$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:42: location = 0 ;
	mov	dptr,#_nextLocationFromPoint_PARM_2
	clr	a
	movx	@dptr,a
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:45: return location ;
	mov	dptr,#_nextLocationFromPoint_PARM_2
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eventQueue_insert'
;------------------------------------------------------------
;event                     Allocated with name '_eventQueue_insert_PARM_2'
;Q                         Allocated with name '_eventQueue_insert_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:51: bool eventQueue_insert(		eventQueue_t* Q, event_t* event)
;	-----------------------------------------
;	 function eventQueue_insert
;	-----------------------------------------
_eventQueue_insert:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_eventQueue_insert_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:53: if(!eventQueue_isFull(Q))
	mov	dptr,#_eventQueue_insert_Q_1_1
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
	lcall	_eventQueue_isFull
	mov	a,dpl
	jz	00110$
	ljmp	00102$
00110$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:55: Q->Size++ ;
	mov	dptr,#_eventQueue_insert_Q_1_1
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
	mov	r0,a
	inc	r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:56: Q->Rear = nextLocationFromPoint(Q, Q->Rear) ;
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
	mov	dptr,#_nextLocationFromPoint_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar5
	push	ar6
	push	ar7
	lcall	_nextLocationFromPoint
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:57: Q->Array[Q->Rear] = event ;
	mov	dptr,#_eventQueue_insert_Q_1_1
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
	mov	a,#0x02
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
	clr	F0
	mov	b,#0x03
	mov	a,r2
	jnb	acc.7,00111$
	cpl	F0
	cpl	a
	inc	a
00111$:
	mul	ab
	jnb	F0,00112$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00112$:
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,b
	mov	r6,a
	mov	dptr,#_eventQueue_insert_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:59: printf("\t\t\tPosting event type: %s\n", event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,#0x05
	subb	a,r2
	cpl	c
	clr	a
	rlc	a
	mov	r3,a
	jz	00106$
	mov	a,r2
	mov	b,#0x03
	mul	ab
	add	a,#_eventTypes
	mov	dpl,a
	mov	a,#(_eventTypes >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	sjmp	00107$
00106$:
	mov	r2,#__str_1
	mov	r3,#(__str_1 >> 8)
	mov	r4,#0x80
00107$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:61: return true ;
	setb	c
	ret
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:65: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eventQueue_remove'
;------------------------------------------------------------
;sloc0                     Allocated with name '_eventQueue_remove_sloc0_1_0'
;sloc1                     Allocated with name '_eventQueue_remove_sloc1_1_0'
;sloc2                     Allocated with name '_eventQueue_remove_sloc2_1_0'
;Q                         Allocated with name '_eventQueue_remove_Q_1_1'
;eventReceived             Allocated with name '_eventQueue_remove_eventReceived_2_2'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:70: event_t* eventQueue_remove(	eventQueue_t* Q)
;	-----------------------------------------
;	 function eventQueue_remove
;	-----------------------------------------
_eventQueue_remove:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_eventQueue_remove_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:72: if(!eventQueue_isEmpty(Q))
	mov	dptr,#_eventQueue_remove_Q_1_1
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
	lcall	_eventQueue_isEmpty
	mov	a,dpl
	jz	00107$
	ljmp	00102$
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:74: event_t* eventReceived = Q->Array[Q->Front] ;
	mov	dptr,#_eventQueue_remove_Q_1_1
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
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_eventQueue_remove_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_eventQueue_remove_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_eventQueue_remove_sloc0_1_0 + 2),a
	mov	a,#0x01
	add	a,r2
	mov	_eventQueue_remove_sloc2_1_0,a
	clr	a
	addc	a,r3
	mov	(_eventQueue_remove_sloc2_1_0 + 1),a
	mov	(_eventQueue_remove_sloc2_1_0 + 2),r4
	mov	dpl,_eventQueue_remove_sloc2_1_0
	mov	dph,(_eventQueue_remove_sloc2_1_0 + 1)
	mov	b,(_eventQueue_remove_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_eventQueue_remove_sloc1_1_0,a
	clr	F0
	mov	b,#0x03
	mov	a,_eventQueue_remove_sloc1_1_0
	jnb	acc.7,00108$
	cpl	F0
	cpl	a
	inc	a
00108$:
	mul	ab
	jnb	F0,00109$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00109$:
	add	a,_eventQueue_remove_sloc0_1_0
	mov	r7,a
	mov	a,(_eventQueue_remove_sloc0_1_0 + 1)
	addc	a,b
	mov	r6,a
	mov	r5,(_eventQueue_remove_sloc0_1_0 + 2)
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	_eventQueue_remove_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_eventQueue_remove_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_eventQueue_remove_sloc0_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:76: Q->Size-- ;
	mov	a,#0x03
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
	mov	r6,a
	dec	r6
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:77: Q->Front = nextLocationFromPoint(Q, Q->Front) ;
	mov	dptr,#_nextLocationFromPoint_PARM_2
	mov	a,_eventQueue_remove_sloc1_1_0
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_nextLocationFromPoint
	mov	r2,dpl
	mov	dpl,_eventQueue_remove_sloc2_1_0
	mov	dph,(_eventQueue_remove_sloc2_1_0 + 1)
	mov	b,(_eventQueue_remove_sloc2_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:79: return eventReceived ;
	mov	dpl,_eventQueue_remove_sloc0_1_0
	mov	dph,(_eventQueue_remove_sloc0_1_0 + 1)
	mov	b,(_eventQueue_remove_sloc0_1_0 + 2)
	ret
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:83: return (event_t*)0 ;
	mov	dptr,#0x0000
	mov	b,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'addToDeferredTypeList'
;------------------------------------------------------------
;eventTypeToDefer          Allocated with name '_addToDeferredTypeList_PARM_2'
;sm                        Allocated with name '_addToDeferredTypeList_sm_1_1'
;sloc0                     Allocated with name '_addToDeferredTypeList_sloc0_1_0'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:88: void addToDeferredTypeList(			stateMachine_t* sm, eventType_t	eventTypeToDefer)
;	-----------------------------------------
;	 function addToDeferredTypeList
;	-----------------------------------------
_addToDeferredTypeList:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_addToDeferredTypeList_sm_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:90: if(sm->currentDepthOfEventsToDeferList < sm->maxDepthOfEventsToDeferList)
	mov	dptr,#_addToDeferredTypeList_sm_1_1
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
	mov	_addToDeferredTypeList_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_addToDeferredTypeList_sloc0_1_0 + 1),a
	mov	(_addToDeferredTypeList_sloc0_1_0 + 2),r4
	mov	dpl,_addToDeferredTypeList_sloc0_1_0
	mov	dph,(_addToDeferredTypeList_sloc0_1_0 + 1)
	mov	b,(_addToDeferredTypeList_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x12
	add	a,r2
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	clr	c
	mov	a,r0
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:92: sm->typesOfEventsToDefer[sm->currentDepthOfEventsToDeferList] = eventTypeToDefer ;
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r0
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_addToDeferredTypeList_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:94: sm->currentDepthOfEventsToDeferList++ ;
	inc	r0
	mov	dpl,_addToDeferredTypeList_sloc0_1_0
	mov	dph,(_addToDeferredTypeList_sloc0_1_0 + 1)
	mov	b,(_addToDeferredTypeList_sloc0_1_0 + 2)
	mov	a,r0
	ljmp	__gptrput
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isEventTypeDeferred'
;------------------------------------------------------------
;eventTypeToCheck          Allocated with name '_isEventTypeDeferred_PARM_2'
;sm                        Allocated with name '_isEventTypeDeferred_sm_1_1'
;i                         Allocated with name '_isEventTypeDeferred_i_1_1'
;sloc0                     Allocated with name '_isEventTypeDeferred_sloc0_1_0'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:99: bool isEventTypeDeferred(			stateMachine_t* sm, eventType_t	eventTypeToCheck)
;	-----------------------------------------
;	 function isEventTypeDeferred
;	-----------------------------------------
_isEventTypeDeferred:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_isEventTypeDeferred_sm_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:103: for( i = 0 ; i < sm->currentDepthOfEventsToDeferList ; i++ )
	mov	dptr,#_isEventTypeDeferred_PARM_2
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_isEventTypeDeferred_sm_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x13
	add	a,r3
	mov	_isEventTypeDeferred_sloc0_1_0,a
	clr	a
	addc	a,r4
	mov	(_isEventTypeDeferred_sloc0_1_0 + 1),a
	mov	(_isEventTypeDeferred_sloc0_1_0 + 2),r5
	mov	r1,#0x00
00103$:
	push	ar2
	mov	ar2,r1
	mov	r6,#0x00
	mov	dpl,_isEventTypeDeferred_sloc0_1_0
	mov	dph,(_isEventTypeDeferred_sloc0_1_0 + 1)
	mov	b,(_isEventTypeDeferred_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,r7
	mov	a,r6
	xrl	a,#0x80
	mov	b,r0
	xrl	b,#0x80
	subb	a,b
	pop	ar2
	jnc	00106$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:105: if(sm->typesOfEventsToDefer[i] == eventTypeToCheck)
	mov	a,#0x14
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	a,r1
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	cjne	a,ar2,00105$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:107: return true ;
	setb	c
	ret
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:103: for( i = 0 ; i < sm->currentDepthOfEventsToDeferList ; i++ )
	inc	r1
	sjmp	00103$
00106$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:111: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'removeFromDeferredTypeList'
;------------------------------------------------------------
;sloc0                     Allocated with name '_removeFromDeferredTypeList_sloc0_1_0'
;sloc1                     Allocated with name '_removeFromDeferredTypeList_sloc1_1_0'
;sloc2                     Allocated with name '_removeFromDeferredTypeList_sloc2_1_0'
;sloc3                     Allocated with name '_removeFromDeferredTypeList_sloc3_1_0'
;sloc4                     Allocated with name '_removeFromDeferredTypeList_sloc4_1_0'
;eventTypeToUnDefer        Allocated with name '_removeFromDeferredTypeList_PARM_2'
;sm                        Allocated with name '_removeFromDeferredTypeList_sm_1_1'
;i                         Allocated with name '_removeFromDeferredTypeList_i_2_2'
;firstEvent                Allocated with name '_removeFromDeferredTypeList_firstEvent_3_5'
;currentEvent              Allocated with name '_removeFromDeferredTypeList_currentEvent_3_5'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:115: void removeFromDeferredTypeList(	stateMachine_t* sm, eventType_t	eventTypeToUnDefer)
;	-----------------------------------------
;	 function removeFromDeferredTypeList
;	-----------------------------------------
_removeFromDeferredTypeList:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:117: if(sm->currentDepthOfEventsToDeferList > 0)
	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
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
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00136$
	ret
00136$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:119: bool				found = false ;
	clr	_removeFromDeferredTypeList_found_2_2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:122: for( i = (sm->currentDepthOfEventsToDeferList - 1) ; i >= 0 ; i-- )
	dec	r2
	mov	dptr,#_removeFromDeferredTypeList_i_2_2
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_removeFromDeferredTypeList_PARM_2
	movx	a,@dptr
	mov	_removeFromDeferredTypeList_sloc1_1_0,a
00103$:
	mov	a,r2
	jb	acc.7,00106$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:124: if(sm->typesOfEventsToDefer[i] == eventTypeToUnDefer)
	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x14
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r0,a
	mov	ar1,r6
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
	mov	a,r2
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r0
	mov	r0,a
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	cjne	a,_removeFromDeferredTypeList_sloc1_1_0,00105$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:126: found = true ;
	setb	_removeFromDeferredTypeList_found_2_2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:128: sm->currentDepthOfEventsToDeferList-- ;
	mov	a,#0x13
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	dec	r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:130: break ;
	sjmp	00106$
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:122: for( i = (sm->currentDepthOfEventsToDeferList - 1) ; i >= 0 ; i-- )
	dec	r2
	mov	dptr,#_removeFromDeferredTypeList_i_2_2
	mov	a,r2
	movx	@dptr,a
	sjmp	00103$
00106$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:134: if(found)
	jb	_removeFromDeferredTypeList_found_2_2,00140$
	ret
00140$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:139: for( i = i ; i < sm->currentDepthOfEventsToDeferList ; i++ )
	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x13
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dptr,#_removeFromDeferredTypeList_i_2_2
	movx	a,@dptr
	mov	r1,a
00119$:
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_removeFromDeferredTypeList_sloc0_1_0,a
	clr	c
	mov	a,r1
	xrl	a,#0x80
	mov	b,_removeFromDeferredTypeList_sloc0_1_0
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:141: sm->typesOfEventsToDefer[i] = sm->typesOfEventsToDefer[i + 1] ;
	push	ar6
	push	ar7
	push	ar0
	mov	a,#0x14
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar0,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	_removeFromDeferredTypeList_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_removeFromDeferredTypeList_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_removeFromDeferredTypeList_sloc2_1_0 + 2),a
	mov	a,r1
	add	a,_removeFromDeferredTypeList_sloc2_1_0
	mov	_removeFromDeferredTypeList_sloc3_1_0,a
	clr	a
	addc	a,(_removeFromDeferredTypeList_sloc2_1_0 + 1)
	mov	(_removeFromDeferredTypeList_sloc3_1_0 + 1),a
	mov	(_removeFromDeferredTypeList_sloc3_1_0 + 2),(_removeFromDeferredTypeList_sloc2_1_0 + 2)
	mov	a,r1
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r3,a
	inc	r0
	cjne	r0,#0x00,00142$
	inc	r3
00142$:
	mov	a,r0
	add	a,_removeFromDeferredTypeList_sloc2_1_0
	mov	r0,a
	mov	a,r3
	addc	a,(_removeFromDeferredTypeList_sloc2_1_0 + 1)
	mov	r3,a
	mov	r6,(_removeFromDeferredTypeList_sloc2_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r6
	lcall	__gptrget
	mov	dpl,_removeFromDeferredTypeList_sloc3_1_0
	mov	dph,(_removeFromDeferredTypeList_sloc3_1_0 + 1)
	mov	b,(_removeFromDeferredTypeList_sloc3_1_0 + 2)
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:139: for( i = i ; i < sm->currentDepthOfEventsToDeferList ; i++ )
	inc	r1
	pop	ar0
	pop	ar7
	pop	ar6
	ljmp	00119$
00122$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:144: sm->typesOfEventsToDefer[sm->currentDepthOfEventsToDeferList] = 0 ;
	mov	a,#0x14
	add	a,r2
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_removeFromDeferredTypeList_sloc0_1_0
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:155: currentEvent	= eventQueue_remove(&sm->deferredEventQueue) ;
	mov	a,#0x17
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_eventQueue_remove
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	dptr,#_removeFromDeferredTypeList_currentEvent_3_5
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:158: while(currentEvent)
	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_removeFromDeferredTypeList_sloc3_1_0,r5
	mov	(_removeFromDeferredTypeList_sloc3_1_0 + 1),r6
	mov	(_removeFromDeferredTypeList_sloc3_1_0 + 2),r7
	mov	_removeFromDeferredTypeList_sloc2_1_0,r5
	mov	(_removeFromDeferredTypeList_sloc2_1_0 + 1),r6
	mov	(_removeFromDeferredTypeList_sloc2_1_0 + 2),r7
00112$:
	mov	dptr,#_removeFromDeferredTypeList_currentEvent_3_5
	movx	a,@dptr
	mov	_removeFromDeferredTypeList_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_removeFromDeferredTypeList_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_removeFromDeferredTypeList_sloc4_1_0 + 2),a
	mov	a,_removeFromDeferredTypeList_sloc4_1_0
	orl	a,(_removeFromDeferredTypeList_sloc4_1_0 + 1)
	orl	a,(_removeFromDeferredTypeList_sloc4_1_0 + 2)
	jnz	00143$
	ret
00143$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:168: if(currentEvent->eventType == eventTypeToUnDefer)
	mov	dpl,_removeFromDeferredTypeList_sloc4_1_0
	mov	dph,(_removeFromDeferredTypeList_sloc4_1_0 + 1)
	mov	b,(_removeFromDeferredTypeList_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	cjne	a,_removeFromDeferredTypeList_sloc1_1_0,00108$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:170: eventQueue_insert(&sm->eventQueue, currentEvent) ;
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x0B
	add	a,_removeFromDeferredTypeList_sloc3_1_0
	mov	r0,a
	clr	a
	addc	a,(_removeFromDeferredTypeList_sloc3_1_0 + 1)
	mov	r1,a
	mov	r2,(_removeFromDeferredTypeList_sloc3_1_0 + 2)
	mov	dptr,#_eventQueue_insert_PARM_2
	mov	a,_removeFromDeferredTypeList_sloc4_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_removeFromDeferredTypeList_sloc4_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_removeFromDeferredTypeList_sloc4_1_0 + 2)
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_eventQueue_insert
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00109$
00108$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:174: eventQueue_insert(&sm->deferredEventQueue, currentEvent) ;
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x17
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dptr,#_eventQueue_insert_PARM_2
	mov	a,_removeFromDeferredTypeList_sloc4_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_removeFromDeferredTypeList_sloc4_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_removeFromDeferredTypeList_sloc4_1_0 + 2)
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_eventQueue_insert
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:187: break ;
	pop	ar4
	pop	ar3
	pop	ar2
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:174: eventQueue_insert(&sm->deferredEventQueue, currentEvent) ;
00109$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:183: currentEvent = eventQueue_remove(&sm->deferredEventQueue) ;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x17
	add	a,_removeFromDeferredTypeList_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(_removeFromDeferredTypeList_sloc2_1_0 + 1)
	mov	r1,a
	mov	r5,(_removeFromDeferredTypeList_sloc2_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_eventQueue_remove
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dptr,#_removeFromDeferredTypeList_currentEvent_3_5
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:185: if(currentEvent == firstEvent)
	mov	a,r5
	cjne	a,ar2,00146$
	mov	a,r6
	cjne	a,ar3,00146$
	mov	a,r7
	cjne	a,ar4,00146$
	sjmp	00147$
00146$:
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00112$
00147$:
	pop	ar7
	pop	ar6
	pop	ar5
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:187: break ;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'postEventToStateMachine'
;------------------------------------------------------------
;event                     Allocated with name '_postEventToStateMachine_PARM_2'
;sm                        Allocated with name '_postEventToStateMachine_sm_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:195: bool postEventToStateMachine(			stateMachine_t* sm, event_t* event)
;	-----------------------------------------
;	 function postEventToStateMachine
;	-----------------------------------------
_postEventToStateMachine:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_postEventToStateMachine_sm_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:197: if(isEventTypeDeferred(sm, event->eventType))
	mov	dptr,#_postEventToStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_postEventToStateMachine_PARM_2
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
	mov	dptr,#_isEventTypeDeferred_PARM_2
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar5
	push	ar6
	push	ar7
	lcall	_isEventTypeDeferred
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00102$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:199: return eventQueue_insert(&sm->deferredEventQueue, event) ;
	mov	dptr,#_postEventToStateMachine_sm_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x17
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_eventQueue_insert_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_eventQueue_insert
	mov  _postEventToStateMachine_sloc0_1_0,c
	ret
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:203: return eventQueue_insert(&sm->eventQueue, event) ;
	mov	dptr,#_postEventToStateMachine_sm_1_1
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
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_eventQueue_insert_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_eventQueue_insert
	mov  _postEventToStateMachine_sloc0_1_0,c
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "Posting event type: %s"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "<USER_EVENT>"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
