;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Wed Dec 30 22:11:48 2009
;--------------------------------------------------------
	.module sm_test_timeBomb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _updateDisplay
	.globl _timeBomb_getEventQueueDepth
	.globl _timeBomb_constructor
	.globl _timeBomb_destructor
	.globl _timeBomb_getMachineSize
	.globl _timeBomb_constructor2
	.globl _timeBomb_destructor2
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
_timeBomb_constructor_sloc0_1_0:
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
_timeBomb_constructor_base_1_1:
	.ds 3
_timeBomb_destructor_self_1_1:
	.ds 3
_timeBomb_constructor2_self_1_1:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_timeBomb_name:
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
;Allocation info for local variables in function 'timeBomb_getEventQueueDepth'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_timeBomb.c:28: SET_EVENT_QUEUE_DEPTH(config_tbEVENT_QUEUE_DEPTH) ;
;	-----------------------------------------
;	 function timeBomb_getEventQueueDepth
;	-----------------------------------------
_timeBomb_getEventQueueDepth:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dptr,#0x0010
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_constructor'
;------------------------------------------------------------
;sloc0                     Allocated with name '_timeBomb_constructor_sloc0_1_0'
;base                      Allocated with name '_timeBomb_constructor_base_1_1'
;------------------------------------------------------------
;	../sm_test_timeBomb.c:36: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function timeBomb_constructor
;	-----------------------------------------
_timeBomb_constructor:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_timeBomb_constructor_base_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_timeBomb_constructor_base_1_1
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
	mov	a,#_timeBomb_TOP
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_TOP >> 8)
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
	mov	a,#_timeBomb_TOP
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_TOP >> 8)
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
	mov	_timeBomb_constructor_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_timeBomb_constructor_sloc0_1_0 + 1),a
	mov	(_timeBomb_constructor_sloc0_1_0 + 2),r4
	mov	dptr,#_timeBomb_name
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,_timeBomb_constructor_sloc0_1_0
	mov	dph,(_timeBomb_constructor_sloc0_1_0 + 1)
	mov	b,(_timeBomb_constructor_sloc0_1_0 + 2)
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
	ljmp	_timeBomb_constructor2
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_destructor'
;------------------------------------------------------------
;self                      Allocated with name '_timeBomb_destructor_self_1_1'
;------------------------------------------------------------
;	../sm_test_timeBomb.c:36: 
;	-----------------------------------------
;	 function timeBomb_destructor
;	-----------------------------------------
_timeBomb_destructor:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_timeBomb_destructor_self_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_timeBomb_destructor_self_1_1
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
	ljmp	_timeBomb_destructor2
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_getMachineSize'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_timeBomb.c:36: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function timeBomb_getMachineSize
;	-----------------------------------------
_timeBomb_getMachineSize:
	mov	dptr,#0x0018
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_constructor2'
;------------------------------------------------------------
;self                      Allocated with name '_timeBomb_constructor2_self_1_1'
;------------------------------------------------------------
;	../sm_test_timeBomb.c:39: STATE_MACHINE_CONSTRUCTOR()
;	-----------------------------------------
;	 function timeBomb_constructor2
;	-----------------------------------------
_timeBomb_constructor2:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_timeBomb_constructor2_self_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	../sm_test_timeBomb.c:41: self->timeout			= 0 ;
	mov	dptr,#_timeBomb_constructor2_self_1_1
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
;	../sm_test_timeBomb.c:42: self->codeBeingEntered	= 0 ;
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
;	../sm_test_timeBomb.c:43: self->disarmCode		= 0 ;
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
;Allocation info for local variables in function 'timeBomb_destructor2'
;------------------------------------------------------------
;self                      Allocated with name '_timeBomb_destructor2_self_1_1'
;------------------------------------------------------------
;	../sm_test_timeBomb.c:47: STATE_MACHINE_DESTRUCTOR()
;	-----------------------------------------
;	 function timeBomb_destructor2
;	-----------------------------------------
_timeBomb_destructor2:
;	../sm_test_timeBomb.c:49: (void)self ;	/* Nothing to do here */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'updateDisplay'
;------------------------------------------------------------
;value                     Allocated with name '_updateDisplay_value_1_1'
;------------------------------------------------------------
;	../sm_test_timeBomb.c:53: void updateDisplay(	uint8_t value)
;	-----------------------------------------
;	 function updateDisplay
;	-----------------------------------------
_updateDisplay:
;	../sm_test_timeBomb.c:55: (void)value ;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_TOP_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_timeBomb.c:59: DEFINE_TOP_STATE()
;	-----------------------------------------
;	 function timeBomb_TOP_handler
;	-----------------------------------------
_timeBomb_TOP_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_timeBomb.c:61: INITIAL_TRANSITION(TO(setting), ACTION(self->timeout = INIT_TIMEOUT)) ;
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
	mov	a,#0x15
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
	mov	a,#0x1E
	lcall	__gptrput
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
	mov	a,#_timeBomb_setting
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_setting >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00106$
00102$:
;	../sm_test_timeBomb.c:63: HANDLE_STATE_EVENTS
	cjne	r5,#0x03,00105$
;	../sm_test_timeBomb.c:69: EXIT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:71: HANDLE_STATE_EVENTS_DONE
	sjmp	00106$
00105$:
;	../sm_test_timeBomb.c:73: END_DEFINE_STATE()
	mov	dpl,#0x00
00106$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_setting_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_timeBomb.c:76: DEFINE_STATE(setting)
;	-----------------------------------------
;	 function timeBomb_setting_handler
;	-----------------------------------------
_timeBomb_setting_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_timeBomb.c:78: TRANSITION_ON(ARM, UNCONDITIONALLY, TO(timing), ACTION(self->codeBeingEntered = 0)) ;
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
	cjne	r5,#0x06,00102$
	mov	r0,_bp
	inc	r0
	mov	a,#0x16
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
	clr	a
	lcall	__gptrput
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
	mov	a,#_timeBomb_timing
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_timing >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00112$
00102$:
;	../sm_test_timeBomb.c:80: HANDLE_STATE_EVENTS
	cjne	r5,#0x04,00121$
	sjmp	00104$
00121$:
;	../sm_test_timeBomb.c:82: EVENT(UP)
	cjne	r5,#0x05,00111$
	sjmp	00107$
00104$:
;	../sm_test_timeBomb.c:84: if(self->timeout < 60)
	mov	r0,_bp
	inc	r0
	mov	a,#0x15
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
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x3C,00123$
00123$:
	jnc	00106$
;	../sm_test_timeBomb.c:86: self->timeout++ ;
	inc	r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	../sm_test_timeBomb.c:88: updateDisplay(self->timeout) ;
	mov	dpl,r5
	lcall	_updateDisplay
00106$:
;	../sm_test_timeBomb.c:91: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:93: EVENT(DOWN)
	sjmp	00112$
00107$:
;	../sm_test_timeBomb.c:95: if(self->timeout > 1)
	mov	r0,_bp
	inc	r0
	mov	a,#0x15
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
	lcall	__gptrget
	mov  r5,a
	add	a,#0xff - 0x01
	jnc	00109$
;	../sm_test_timeBomb.c:97: self->timeout-- ;
	dec	r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	../sm_test_timeBomb.c:99: updateDisplay(self->timeout) ;
	mov	dpl,r5
	lcall	_updateDisplay
00109$:
;	../sm_test_timeBomb.c:102: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:104: HANDLE_STATE_EVENTS_DONE
	sjmp	00112$
00111$:
;	../sm_test_timeBomb.c:106: END_DEFINE_STATE()
	mov	dpl,#0x00
00112$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_timing_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_timeBomb.c:109: DEFINE_STATE(timing)
;	-----------------------------------------
;	 function timeBomb_timing_handler
;	-----------------------------------------
_timeBomb_timing_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_timeBomb.c:111: TRANSITION_ON(ARM, IF(self->codeBeingEntered == self->disarmCode), TO(setting), ACTION(updateDisplay(self->timeout))) ;
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
	cjne	r5,#0x06,00119$
	sjmp	00120$
00119$:
	ljmp	00102$
00120$:
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	a,#0x16
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x17
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r5
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r5,a
	mov	a,r6
	cjne	a,ar5,00121$
	sjmp	00122$
00121$:
	pop	ar5
	sjmp	00102$
00122$:
	pop	ar5
	mov	r0,_bp
	inc	r0
	mov	a,#0x15
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
	lcall	__gptrget
	mov	dpl,a
	lcall	_updateDisplay
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
	mov	a,#_timeBomb_setting
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_setting >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00111$
00102$:
;	../sm_test_timeBomb.c:113: HANDLE_STATE_EVENTS
	cjne	r5,#0x04,00123$
	sjmp	00104$
00123$:
	cjne	r5,#0x05,00124$
	sjmp	00105$
00124$:
	cjne	r5,#0x07,00125$
	sjmp	00106$
00125$:
	ljmp	00110$
;	../sm_test_timeBomb.c:115: EVENT(UP)
00104$:
;	../sm_test_timeBomb.c:117: self->codeBeingEntered <<= 1 ;
	mov	r0,_bp
	inc	r0
	mov	a,#0x16
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
	lcall	__gptrget
	add	a,acc
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../sm_test_timeBomb.c:118: self->codeBeingEntered |= 1 ;
	orl	ar5,#0x01
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	../sm_test_timeBomb.c:120: EVENT_HANDLED
	mov	dpl,#0x01
	ljmp	00111$
;	../sm_test_timeBomb.c:122: EVENT(DOWN)
00105$:
;	../sm_test_timeBomb.c:124: self->codeBeingEntered <<= 1 ;
	mov	r0,_bp
	inc	r0
	mov	a,#0x16
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
	lcall	__gptrget
	add	a,acc
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../sm_test_timeBomb.c:126: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:128: EVENT(TICK)
	sjmp	00111$
00106$:
;	../sm_test_timeBomb.c:130: self->timeout-- ;
	mov	r0,_bp
	inc	r0
	mov	a,#0x15
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
	lcall	__gptrget
	mov	r5,a
	dec	r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	../sm_test_timeBomb.c:132: updateDisplay(self->timeout) ;
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_updateDisplay
	pop	ar4
	pop	ar3
	pop	ar2
;	../sm_test_timeBomb.c:134: TRANSITION_IF(self->timeout == 0, TO(BOOM), NO_ACTION)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00108$
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
	mov	a,#_timeBomb_BOOM
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_BOOM >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00111$
00108$:
;	../sm_test_timeBomb.c:136: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:138: HANDLE_STATE_EVENTS_DONE
	sjmp	00111$
00110$:
;	../sm_test_timeBomb.c:140: END_DEFINE_STATE()
	mov	dpl,#0x00
00111$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_BOOM_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_timeBomb.c:143: DEFINE_STATE(BOOM)
;	-----------------------------------------
;	 function timeBomb_BOOM_handler
;	-----------------------------------------
_timeBomb_BOOM_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_timeBomb.c:145: HANDLE_STATE_EVENTS
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
	cjne	r5,#0x01,00103$
;	../sm_test_timeBomb.c:151: TRANSITION_TO(STATE_MACHINE_EXIT, NO_ACTION) ;
	mov	a,#0x09
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_timeBomb_TOP
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_TOP >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
;	../sm_test_timeBomb.c:155: HANDLE_STATE_EVENTS_DONE
	sjmp	00104$
00103$:
;	../sm_test_timeBomb.c:157: END_DEFINE_STATE()
	mov	dpl,#0x00
00104$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_timeBomb_TOP:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.db #0x00
	.byte _timeBomb_TOP_handler,(_timeBomb_TOP_handler >> 8)
	.byte _str_1,(_str_1 >> 8),#0x80
_timeBomb_setting:
	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
	.db #0x00
	.byte _timeBomb_setting_handler,(_timeBomb_setting_handler >> 8)
	.byte _str_2,(_str_2 >> 8),#0x80
_timeBomb_timing:
	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
	.db #0x00
	.byte _timeBomb_timing_handler,(_timeBomb_timing_handler >> 8)
	.byte _str_3,(_str_3 >> 8),#0x80
_timeBomb_BOOM:
	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
	.db #0x00
	.byte _timeBomb_BOOM_handler,(_timeBomb_BOOM_handler >> 8)
	.byte _str_4,(_str_4 >> 8),#0x80
__str_0:
	.ascii "timeBomb"
	.db 0x00
_str_1:
	.ascii "timeBomb_TOP"
	.db 0x00
_str_2:
	.ascii "timeBomb_setting"
	.db 0x00
_str_3:
	.ascii "timeBomb_timing"
	.db 0x00
_str_4:
	.ascii "timeBomb_BOOM"
	.db 0x00
	.area XINIT   (CODE)
__xinit__timeBomb_name:
	.byte __str_0,(__str_0 >> 8),#0x80
	.area CABS    (ABS,CODE)
