;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Wed Dec 30 22:11:49 2009
;--------------------------------------------------------
	.module StateMachine_G4_eventQueue
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PriorityInsert_PARM_2
	.globl _NormalInsert_PARM_2
	.globl _nextLocationFromPoint_PARM_2
	.globl _initializeEventQueue_PARM_3
	.globl _initializeEventQueue_PARM_2
	.globl _initializeEventQueue
	.globl _clearQueue
	.globl _isEmpty
	.globl _isFull
	.globl _NormalInsert
	.globl _PriorityInsert
	.globl _Remove
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
_Remove_sloc0_1_0:
	.ds 3
_Remove_sloc1_1_0:
	.ds 1
_Remove_sloc2_1_0:
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
_initializeEventQueue_PARM_2:
	.ds 3
_initializeEventQueue_PARM_3:
	.ds 1
_initializeEventQueue_Q_1_1:
	.ds 3
_clearQueue_Q_1_1:
	.ds 3
_isEmpty_Q_1_1:
	.ds 3
_isFull_Q_1_1:
	.ds 3
_nextLocationFromPoint_PARM_2:
	.ds 1
_nextLocationFromPoint_Q_1_1:
	.ds 3
_NormalInsert_PARM_2:
	.ds 3
_NormalInsert_Q_1_1:
	.ds 3
_PriorityInsert_PARM_2:
	.ds 3
_PriorityInsert_Q_1_1:
	.ds 3
_Remove_Q_1_1:
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
;Allocation info for local variables in function 'initializeEventQueue'
;------------------------------------------------------------
;storage                   Allocated with name '_initializeEventQueue_PARM_2'
;maxEntriesInQueue         Allocated with name '_initializeEventQueue_PARM_3'
;Q                         Allocated with name '_initializeEventQueue_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:14: bool initializeEventQueue(	eventQueue_t* Q, event_t** storage, uint8_t maxEntriesInQueue)
;	-----------------------------------------
;	 function initializeEventQueue
;	-----------------------------------------
_initializeEventQueue:
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
	mov	dptr,#_initializeEventQueue_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:16: Q->Capacity	= maxEntriesInQueue ;
	mov	dptr,#_initializeEventQueue_Q_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_initializeEventQueue_PARM_3
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
	mov	dptr,#_initializeEventQueue_PARM_2
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
;Allocation info for local variables in function 'clearQueue'
;------------------------------------------------------------
;Q                         Allocated with name '_clearQueue_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:26: void clearQueue(			eventQueue_t* Q)
;	-----------------------------------------
;	 function clearQueue
;	-----------------------------------------
_clearQueue:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_clearQueue_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:28: Q->Size		= 0 ;
	mov	dptr,#_clearQueue_Q_1_1
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
	clr	a
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:29: Q->Front	= 1 ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:30: Q->Rear		= 0 ;
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'isEmpty'
;------------------------------------------------------------
;Q                         Allocated with name '_isEmpty_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:34: uint8_t isEmpty(			eventQueue_t* Q)
;	-----------------------------------------
;	 function isEmpty
;	-----------------------------------------
_isEmpty:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_isEmpty_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:36: return Q->Size == 0 ;
	mov	dptr,#_isEmpty_Q_1_1
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
;Allocation info for local variables in function 'isFull'
;------------------------------------------------------------
;Q                         Allocated with name '_isFull_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:40: uint8_t isFull(				eventQueue_t* Q)
;	-----------------------------------------
;	 function isFull
;	-----------------------------------------
_isFull:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_isFull_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:42: return Q->Size == Q->Capacity ;
	mov	dptr,#_isFull_Q_1_1
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:46: static uint8_t nextLocationFromPoint(	eventQueue_t* Q, uint8_t location)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:48: if(++location == Q->Capacity)
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:50: location = 0 ;
	mov	dptr,#_nextLocationFromPoint_PARM_2
	clr	a
	movx	@dptr,a
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:53: return location ;
	mov	dptr,#_nextLocationFromPoint_PARM_2
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'NormalInsert'
;------------------------------------------------------------
;event                     Allocated with name '_NormalInsert_PARM_2'
;Q                         Allocated with name '_NormalInsert_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:59: bool NormalInsert(			eventQueue_t* Q, event_t* event)
;	-----------------------------------------
;	 function NormalInsert
;	-----------------------------------------
_NormalInsert:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_NormalInsert_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:61: if(!isFull(Q))
	mov	dptr,#_NormalInsert_Q_1_1
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
	lcall	_isFull
	mov	a,dpl
	jz	00110$
	ljmp	00102$
00110$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:63: Q->Size++ ;
	mov	dptr,#_NormalInsert_Q_1_1
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:64: Q->Rear = nextLocationFromPoint(Q, Q->Rear) ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:65: Q->Array[Q->Rear] = event ;
	mov	dptr,#_NormalInsert_Q_1_1
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
	mov	b,#0x03
	mul	ab
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,b
	mov	r6,a
	mov	dptr,#_NormalInsert_PARM_2
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:67: printf("\t\t\tPosting event type: %s\n", event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,#0x03
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:69: return true ;
	setb	c
	ret
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:73: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PriorityInsert'
;------------------------------------------------------------
;event                     Allocated with name '_PriorityInsert_PARM_2'
;Q                         Allocated with name '_PriorityInsert_Q_1_1'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:78: bool PriorityInsert(		eventQueue_t* Q, event_t* event)
;	-----------------------------------------
;	 function PriorityInsert
;	-----------------------------------------
_PriorityInsert:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_PriorityInsert_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:80: if(!isFull(Q))
	mov	dptr,#_PriorityInsert_Q_1_1
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
	lcall	_isFull
	mov	a,dpl
	jz	00111$
	ljmp	00105$
00111$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:82: Q->Size++ ;
	mov	dptr,#_PriorityInsert_Q_1_1
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:83: if(Q->Front == 0)
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
	lcall	__gptrget
	mov	r0,a
	jnz	00102$
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:85: Q->Front = Q->Capacity - 1 ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	dec	r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	sjmp	00103$
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:89: Q->Front-- ;
	dec	r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
00103$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:92: Q->Array[Q->Front] = event ;
	mov	dptr,#_PriorityInsert_Q_1_1
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
	inc	r2
	cjne	r2,#0x00,00113$
	inc	r3
00113$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	b,#0x03
	mul	ab
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,b
	mov	r6,a
	mov	dptr,#_PriorityInsert_PARM_2
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:94: return true ;
	setb	c
	ret
00105$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:98: return false ;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Remove'
;------------------------------------------------------------
;sloc0                     Allocated with name '_Remove_sloc0_1_0'
;sloc1                     Allocated with name '_Remove_sloc1_1_0'
;sloc2                     Allocated with name '_Remove_sloc2_1_0'
;Q                         Allocated with name '_Remove_Q_1_1'
;eventReceived             Allocated with name '_Remove_eventReceived_2_2'
;------------------------------------------------------------
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:103: event_t* Remove(			eventQueue_t* Q)
;	-----------------------------------------
;	 function Remove
;	-----------------------------------------
_Remove:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_Remove_Q_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:105: if(!isEmpty(Q))
	mov	dptr,#_Remove_Q_1_1
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
	lcall	_isEmpty
	mov	a,dpl
	jz	00107$
	ljmp	00102$
00107$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:107: event_t* eventReceived = Q->Array[Q->Front] ;
	mov	dptr,#_Remove_Q_1_1
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
	mov	_Remove_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_Remove_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_Remove_sloc0_1_0 + 2),a
	mov	a,#0x01
	add	a,r2
	mov	_Remove_sloc2_1_0,a
	clr	a
	addc	a,r3
	mov	(_Remove_sloc2_1_0 + 1),a
	mov	(_Remove_sloc2_1_0 + 2),r4
	mov	dpl,_Remove_sloc2_1_0
	mov	dph,(_Remove_sloc2_1_0 + 1)
	mov	b,(_Remove_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	_Remove_sloc1_1_0,a
	mov	b,#0x03
	mul	ab
	add	a,_Remove_sloc0_1_0
	mov	r7,a
	mov	a,(_Remove_sloc0_1_0 + 1)
	addc	a,b
	mov	r6,a
	mov	r5,(_Remove_sloc0_1_0 + 2)
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	_Remove_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_Remove_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_Remove_sloc0_1_0 + 2),a
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:109: Q->Size-- ;
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
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:110: Q->Front = nextLocationFromPoint(Q, Q->Front) ;
	mov	dptr,#_nextLocationFromPoint_PARM_2
	mov	a,_Remove_sloc1_1_0
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_nextLocationFromPoint
	mov	r2,dpl
	mov	dpl,_Remove_sloc2_1_0
	mov	dph,(_Remove_sloc2_1_0 + 1)
	mov	b,(_Remove_sloc2_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:112: return eventReceived ;
	mov	dpl,_Remove_sloc0_1_0
	mov	dph,(_Remove_sloc0_1_0 + 1)
	mov	b,(_Remove_sloc0_1_0 + 2)
	ret
00102$:
;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:116: return (event_t*)0 ;
	mov	dptr,#0x0000
	mov	b,#0x00
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
