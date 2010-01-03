;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sat Jan 02 19:24:44 2010
;--------------------------------------------------------
	.module sm_test_toaster
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _lampOff
	.globl _lampOn
	.globl _heaterOff
	.globl _heaterOn
	.globl _toaster_getEventQueueDepth
	.globl _toaster_constructor
	.globl _toaster_destructor
	.globl _toaster_getHistoryQueueDepth
	.globl _toaster_getMachineSize
	.globl _toaster_constructor2
	.globl _toaster_destructor2
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
_toaster_constructor_sloc0_1_0:
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
_toaster_constructor_base_1_1:
	.ds 3
_toaster_destructor_self_1_1:
	.ds 3
_toaster_constructor2_self_1_1:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_toaster_name:
	.ds 3
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
;Allocation info for local variables in function 'toaster_getEventQueueDepth'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:26: SET_EVENT_QUEUE_DEPTH(config_toastEVENT_QUEUE_DEPTH) ;
;	-----------------------------------------
;	 function toaster_getEventQueueDepth
;	-----------------------------------------
_toaster_getEventQueueDepth:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dptr,#0x0008
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_constructor'
;------------------------------------------------------------
;sloc0                     Allocated with name '_toaster_constructor_sloc0_1_0'
;base                      Allocated with name '_toaster_constructor_base_1_1'
;------------------------------------------------------------
;	../sm_test_toaster.c:40: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function toaster_constructor
;	-----------------------------------------
_toaster_constructor:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_toaster_constructor_base_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_toaster_constructor_base_1_1
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
	mov	a,#_toaster_TOP
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_TOP >> 8)
	lcall	__gptrput
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
	mov	a,#_toaster_TOP
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_TOP >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	a,#0x02
	add	a,r2
	mov	_toaster_constructor_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_toaster_constructor_sloc0_1_0 + 1),a
	mov	(_toaster_constructor_sloc0_1_0 + 2),r4
	mov	dptr,#_toaster_name
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,_toaster_constructor_sloc0_1_0
	mov	dph,(_toaster_constructor_sloc0_1_0 + 1)
	mov	b,(_toaster_constructor_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ljmp	_toaster_constructor2
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_destructor'
;------------------------------------------------------------
;self                      Allocated with name '_toaster_destructor_self_1_1'
;------------------------------------------------------------
;	../sm_test_toaster.c:40: 
;	-----------------------------------------
;	 function toaster_destructor
;	-----------------------------------------
_toaster_destructor:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_toaster_destructor_self_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_toaster_destructor_self_1_1
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
	ljmp	_toaster_destructor2
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_getHistoryQueueDepth'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:40: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function toaster_getHistoryQueueDepth
;	-----------------------------------------
_toaster_getHistoryQueueDepth:
	mov	dptr,#0x0030
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_getMachineSize'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:40: 
;	-----------------------------------------
;	 function toaster_getMachineSize
;	-----------------------------------------
_toaster_getMachineSize:
	mov	dptr,#0x002E
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_constructor2'
;------------------------------------------------------------
;self                      Allocated with name '_toaster_constructor2_self_1_1'
;------------------------------------------------------------
;	../sm_test_toaster.c:43: STATE_MACHINE_CONSTRUCTOR()
;	-----------------------------------------
;	 function toaster_constructor2
;	-----------------------------------------
_toaster_constructor2:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_toaster_constructor2_self_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	../sm_test_toaster.c:45: self->cookingTime_hours		= 0 ;
	mov	dptr,#_toaster_constructor2_self_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x2B
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
;	../sm_test_toaster.c:46: self->cookingTime_minutes	= 0 ;
	mov	a,#0x2C
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
;	../sm_test_toaster.c:47: self->cookingTime_seconds	= 0 ;
	mov	a,#0x2D
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
;Allocation info for local variables in function 'toaster_destructor2'
;------------------------------------------------------------
;self                      Allocated with name '_toaster_destructor2_self_1_1'
;------------------------------------------------------------
;	../sm_test_toaster.c:51: STATE_MACHINE_DESTRUCTOR()
;	-----------------------------------------
;	 function toaster_destructor2
;	-----------------------------------------
_toaster_destructor2:
;	../sm_test_toaster.c:53: (void)self ;	/* Nothing to do here */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'heaterOn'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:57: void heaterOn(	void)
;	-----------------------------------------
;	 function heaterOn
;	-----------------------------------------
_heaterOn:
;	../sm_test_toaster.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'heaterOff'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:62: void heaterOff(	void)
;	-----------------------------------------
;	 function heaterOff
;	-----------------------------------------
_heaterOff:
;	../sm_test_toaster.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lampOn'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:67: void lampOn(	void)
;	-----------------------------------------
;	 function lampOn
;	-----------------------------------------
_lampOn:
;	../sm_test_toaster.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lampOff'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:72: void lampOff(	void)
;	-----------------------------------------
;	 function lampOff
;	-----------------------------------------
_lampOff:
;	../sm_test_toaster.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_TOP_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_toaster.c:77: DEFINE_TOP_STATE()
;	-----------------------------------------
;	 function toaster_TOP_handler
;	-----------------------------------------
_toaster_TOP_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_toaster.c:79: self->cookingTime_hours		= 0 ;
	mov	a,#0x2B
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
;	../sm_test_toaster.c:80: self->cookingTime_minutes	= 0 ;
	mov	a,#0x2C
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
;	../sm_test_toaster.c:81: self->cookingTime_seconds	= 0 ;
	mov	a,#0x2D
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
;	../sm_test_toaster.c:83: INITIAL_TRANSITION(TO(doorClosed),						NO_ACTION) ;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x02,00102$
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_toaster_doorClosed
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_doorClosed >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00103$
00102$:
;	../sm_test_toaster.c:85: END_DEFINE_STATE()
	mov	dpl,#0x00
00103$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_doorClosed_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_toaster.c:88: DEFINE_STATE(doorClosed)
;	-----------------------------------------
;	 function toaster_doorClosed_handler
;	-----------------------------------------
_toaster_doorClosed_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_toaster.c:90: SET_HISTORY_DEFAULT_STATE(off,							NO_ACTION) ;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	clr	a
	cjne	r5,#0x03,00124$
	inc	a
00124$:
	mov	r6,a
	jz	00102$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r7,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r7
	mov	dph,r2
	mov	b,r3
	mov	a,#_toaster_off
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_off >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00115$
00102$:
;	../sm_test_toaster.c:91: SET_HISTORY_DEFAULT_STATE(HISTORY_OF(off),				NO_ACTION) ;
	mov	a,r6
	jz	00104$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_toaster_off
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_off >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x03
	ljmp	00115$
00104$:
;	../sm_test_toaster.c:93: INITIAL_TRANSITION(TO(off),								NO_ACTION) ;
	cjne	r5,#0x02,00106$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_toaster_off
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_off >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00115$
00106$:
;	../sm_test_toaster.c:95: TRANSITION_ON(BAKE,		TO(baking),	NO_ACTION) ;
	cjne	r5,#0x06,00108$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_toaster_baking
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_baking >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00115$
00108$:
;	../sm_test_toaster.c:96: TRANSITION_ON(TOAST,	TO(toasting),	NO_ACTION) ;
	cjne	r5,#0x07,00110$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_toaster_toasting
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_toasting >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00115$
00110$:
;	../sm_test_toaster.c:97: TRANSITION_ON(OFF,		TO(off),		NO_ACTION) ;
	cjne	r5,#0x08,00112$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_toaster_off
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_off >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00115$
00112$:
;	../sm_test_toaster.c:98: TRANSITION_ON(OPEN,		TO(off),		NO_ACTION) ;
	cjne	r5,#0x09,00114$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_toaster_off
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_off >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00115$
00114$:
;	../sm_test_toaster.c:100: END_DEFINE_STATE()
	mov	dpl,#0x00
00115$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_heating_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_toaster.c:103: DEFINE_STATE(heating)
;	-----------------------------------------
;	 function toaster_heating_handler
;	-----------------------------------------
_toaster_heating_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_toaster.c:105: ON_ENTRY(	heaterOn()) ;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x01,00102$
	lcall	_heaterOn
	mov	dpl,#0x01
	sjmp	00105$
00102$:
;	../sm_test_toaster.c:106: ON_EXIT(	heaterOff()) ;
	cjne	r2,#0x05,00104$
	lcall	_heaterOff
	mov	dpl,#0x01
	sjmp	00105$
00104$:
;	../sm_test_toaster.c:108: END_DEFINE_STATE()
	mov	dpl,#0x00
00105$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_baking_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_toaster.c:111: DEFINE_STATE(baking)
;	-----------------------------------------
;	 function toaster_baking_handler
;	-----------------------------------------
_toaster_baking_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_toaster.c:114: END_DEFINE_STATE()
	mov	dpl,#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_toasting_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_toaster.c:117: DEFINE_STATE(toasting)
;	-----------------------------------------
;	 function toaster_toasting_handler
;	-----------------------------------------
_toaster_toasting_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_toaster.c:120: END_DEFINE_STATE()
	mov	dpl,#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_off_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_toaster.c:123: DEFINE_STATE(off)
;	-----------------------------------------
;	 function toaster_off_handler
;	-----------------------------------------
_toaster_off_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_toaster.c:125: heaterOff() ;
	lcall	_heaterOff
;	../sm_test_toaster.c:126: lampOff() ;
	lcall	_lampOff
;	../sm_test_toaster.c:128: END_DEFINE_STATE()
	mov	dpl,#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_doorOpen_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;sloc0                     Allocated to stack - offset 1
;------------------------------------------------------------
;	../sm_test_toaster.c:131: DEFINE_STATE(doorOpen)
;	-----------------------------------------
;	 function toaster_doorOpen_handler
;	-----------------------------------------
_toaster_doorOpen_handler:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_toaster.c:133: DEFER_EVENT(BAKE) ;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x01,00104$
	mov	dptr,#_addToDeferredTypeList_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_addToDeferredTypeList
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00105$
00104$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x05,00105$
	mov	dptr,#_removeFromDeferredTypeList_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_removeFromDeferredTypeList
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00105$:
;	../sm_test_toaster.c:134: DEFER_EVENT(TOAST) ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x01,00109$
	mov	dptr,#_addToDeferredTypeList_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_addToDeferredTypeList
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00110$
00109$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x05,00110$
	mov	dptr,#_removeFromDeferredTypeList_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_removeFromDeferredTypeList
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00110$:
;	../sm_test_toaster.c:136: ON_ENTRY(	lampOn()) ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x01,00112$
	lcall	_lampOn
	mov	dpl,#0x01
	sjmp	00117$
00112$:
;	../sm_test_toaster.c:137: ON_EXIT(	lampOff()) ;
	cjne	r5,#0x05,00114$
	lcall	_lampOff
	mov	dpl,#0x01
	sjmp	00117$
00114$:
;	../sm_test_toaster.c:139: TRANSITION_ON(CLOSE,	HISTORY_OF(doorClosed),		NO_ACTION) ;
	cjne	r5,#0x0A,00116$
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_toaster_doorClosed
	lcall	__gptrput
	inc	dptr
	mov	a,#(_toaster_doorClosed >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x03
	sjmp	00117$
00116$:
;	../sm_test_toaster.c:141: END_DEFINE_STATE()
	mov	dpl,#0x00
00117$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_toaster_TOP:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.db #0x00
	.byte _toaster_TOP_handler,(_toaster_TOP_handler >> 8)
	.byte _str_1,(_str_1 >> 8),#0x80
_toaster_doorClosed:
	.byte _toaster_TOP,(_toaster_TOP >> 8),#0x80
	.db #0x03
	.byte _toaster_doorClosed_handler,(_toaster_doorClosed_handler >> 8)
	.byte _str_2,(_str_2 >> 8),#0x80
	.byte #0x04,#0x00
_toaster_heating:
	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
	.db #0x00
	.byte _toaster_heating_handler,(_toaster_heating_handler >> 8)
	.byte _str_3,(_str_3 >> 8),#0x80
_toaster_baking:
	.byte _toaster_heating,(_toaster_heating >> 8),#0x80
	.db #0x00
	.byte _toaster_baking_handler,(_toaster_baking_handler >> 8)
	.byte _str_4,(_str_4 >> 8),#0x80
_toaster_toasting:
	.byte _toaster_heating,(_toaster_heating >> 8),#0x80
	.db #0x00
	.byte _toaster_toasting_handler,(_toaster_toasting_handler >> 8)
	.byte _str_5,(_str_5 >> 8),#0x80
_toaster_off:
	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
	.db #0x00
	.byte _toaster_off_handler,(_toaster_off_handler >> 8)
	.byte _str_6,(_str_6 >> 8),#0x80
_toaster_doorOpen:
	.byte _toaster_TOP,(_toaster_TOP >> 8),#0x80
	.db #0x00
	.byte _toaster_doorOpen_handler,(_toaster_doorOpen_handler >> 8)
	.byte _str_7,(_str_7 >> 8),#0x80
__str_0:
	.ascii "toaster"
	.db 0x00
_str_1:
	.ascii "toaster_TOP"
	.db 0x00
_str_2:
	.ascii "toaster_doorClosed"
	.db 0x00
_str_3:
	.ascii "toaster_heating"
	.db 0x00
_str_4:
	.ascii "toaster_baking"
	.db 0x00
_str_5:
	.ascii "toaster_toasting"
	.db 0x00
_str_6:
	.ascii "toaster_off"
	.db 0x00
_str_7:
	.ascii "toaster_doorOpen"
	.db 0x00
	.area XINIT   (CODE)
__xinit__toaster_name:
	.byte __str_0,(__str_0 >> 8),#0x80
	.area CABS    (ABS,CODE)
