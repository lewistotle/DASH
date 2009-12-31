;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Wed Dec 30 22:11:49 2009
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
;	../sm_test_toaster.c:29: SET_EVENT_QUEUE_DEPTH(config_toastEVENT_QUEUE_DEPTH) ;
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
;	../sm_test_toaster.c:45: END_STATE_MACHINE_DEFINITION() ;
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
	mov	a,#0x03
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
;	../sm_test_toaster.c:45: 
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
;Allocation info for local variables in function 'toaster_getMachineSize'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:45: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function toaster_getMachineSize
;	-----------------------------------------
_toaster_getMachineSize:
	mov	dptr,#0x0018
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_constructor2'
;------------------------------------------------------------
;self                      Allocated with name '_toaster_constructor2_self_1_1'
;------------------------------------------------------------
;	../sm_test_toaster.c:48: STATE_MACHINE_CONSTRUCTOR()
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
;	../sm_test_toaster.c:50: self->cookingTime_hours		= 0 ;
	mov	dptr,#_toaster_constructor2_self_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x15
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
;	../sm_test_toaster.c:51: self->cookingTime_minutes	= 0 ;
	mov	a,#0x16
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
;	../sm_test_toaster.c:52: self->cookingTime_seconds	= 0 ;
	mov	a,#0x17
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
;	../sm_test_toaster.c:56: STATE_MACHINE_DESTRUCTOR()
;	-----------------------------------------
;	 function toaster_destructor2
;	-----------------------------------------
_toaster_destructor2:
;	../sm_test_toaster.c:58: (void)self ;	/* Nothing to do here */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'heaterOn'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:62: void heaterOn(	void)
;	-----------------------------------------
;	 function heaterOn
;	-----------------------------------------
_heaterOn:
;	../sm_test_toaster.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'heaterOff'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:67: void heaterOff(	void)
;	-----------------------------------------
;	 function heaterOff
;	-----------------------------------------
_heaterOff:
;	../sm_test_toaster.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lampOn'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:71: void lampOn(	void)
;	-----------------------------------------
;	 function lampOn
;	-----------------------------------------
_lampOn:
;	../sm_test_toaster.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lampOff'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_toaster.c:75: void lampOff(	void)
;	-----------------------------------------
;	 function lampOff
;	-----------------------------------------
_lampOff:
;	../sm_test_toaster.c:77: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_TOP_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_toaster.c:80: DEFINE_TOP_STATE()
;	-----------------------------------------
;	 function toaster_TOP_handler
;	-----------------------------------------
_toaster_TOP_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_toaster.c:82: self->cookingTime_hours		= 0 ;
	mov	a,#0x15
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
;	../sm_test_toaster.c:83: self->cookingTime_minutes	= 0 ;
	mov	a,#0x16
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
;	../sm_test_toaster.c:84: self->cookingTime_seconds	= 0 ;
	mov	a,#0x17
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
;	../sm_test_toaster.c:86: INITIAL_TRANSITION(TO(doorClosed),						NO_ACTION) ;
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
	mov	a,#0x09
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
;	../sm_test_toaster.c:88: END_DEFINE_STATE()
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
;------------------------------------------------------------
;	../sm_test_toaster.c:91: DEFINE_STATE(doorClosed)
;	-----------------------------------------
;	 function toaster_doorClosed_handler
;	-----------------------------------------
_toaster_doorClosed_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_toaster.c:93: INITIAL_TRANSITION(TO(off),								NO_ACTION) ;
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
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
;	../sm_test_toaster.c:95: TRANSITION_ON(BAKE,		UNCONDITIONALLY, TO(baking),	NO_ACTION) ;
	cjne	r5,#0x04,00104$
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
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
00104$:
;	../sm_test_toaster.c:96: TRANSITION_ON(TOAST,	UNCONDITIONALLY, TO(toasting),	NO_ACTION) ;
	cjne	r5,#0x05,00107$
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
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
00107$:
;	../sm_test_toaster.c:97: TRANSITION_ON(OFF,		UNCONDITIONALLY, TO(off),		NO_ACTION) ;
	cjne	r5,#0x06,00110$
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
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
00110$:
;	../sm_test_toaster.c:98: TRANSITION_ON(OPEN,		UNCONDITIONALLY, TO(off),		NO_ACTION) ;
	cjne	r5,#0x07,00113$
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
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
00113$:
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
	mov	r5,a
	cjne	r5,#0x01,00102$
	push	ar2
	push	ar3
	push	ar4
	lcall	_heaterOn
	pop	ar4
	pop	ar3
	pop	ar2
00102$:
;	../sm_test_toaster.c:106: ON_EXIT(	heaterOff()) ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x01,00104$
	lcall	_heaterOff
00104$:
;	../sm_test_toaster.c:108: END_DEFINE_STATE()
	mov	dpl,#0x00
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
;	../sm_test_toaster.c:126: END_DEFINE_STATE()
	mov	dpl,#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'toaster_doorOpen_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_toaster.c:129: DEFINE_STATE(doorOpen)
;	-----------------------------------------
;	 function toaster_doorOpen_handler
;	-----------------------------------------
_toaster_doorOpen_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_toaster.c:134: ON_ENTRY(	lampOn()) ;
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
	mov	r5,a
	cjne	r5,#0x01,00102$
	push	ar2
	push	ar3
	push	ar4
	lcall	_lampOn
	pop	ar4
	pop	ar3
	pop	ar2
00102$:
;	../sm_test_toaster.c:135: ON_EXIT(	lampOff()) ;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x01,00104$
	lcall	_lampOff
00104$:
;	../sm_test_toaster.c:139: END_DEFINE_STATE()
	mov	dpl,#0x00
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
	.db #0x00
	.byte _toaster_doorClosed_handler,(_toaster_doorClosed_handler >> 8)
	.byte _str_2,(_str_2 >> 8),#0x80
_toaster_heating:
	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
	.db #0x00
	.byte _toaster_heating_handler,(_toaster_heating_handler >> 8)
	.byte _str_3,(_str_3 >> 8),#0x80
_toaster_baking:
	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
	.db #0x00
	.byte _toaster_baking_handler,(_toaster_baking_handler >> 8)
	.byte _str_4,(_str_4 >> 8),#0x80
_toaster_toasting:
	.byte _toaster_doorClosed,(_toaster_doorClosed >> 8),#0x80
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
