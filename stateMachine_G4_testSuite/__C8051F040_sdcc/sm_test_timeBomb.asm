;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sat Jan 02 19:24:44 2010
;--------------------------------------------------------
	.module sm_test_timeBomb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _goBOOM
	.globl _updateDisplay
	.globl _timeBomb_getEventQueueDepth
	.globl _timeBomb_constructor
	.globl _timeBomb_destructor
	.globl _timeBomb_getHistoryQueueDepth
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
;Allocation info for local variables in function 'timeBomb_getHistoryQueueDepth'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_timeBomb.c:36: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function timeBomb_getHistoryQueueDepth
;	-----------------------------------------
_timeBomb_getHistoryQueueDepth:
	mov	dptr,#0x001E
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_getMachineSize'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_timeBomb.c:36: 
;	-----------------------------------------
;	 function timeBomb_getMachineSize
;	-----------------------------------------
_timeBomb_getMachineSize:
	mov	dptr,#0x002E
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
;	../sm_test_timeBomb.c:42: self->codeBeingEntered	= 0 ;
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
;	../sm_test_timeBomb.c:43: self->disarmCode		= 0 ;
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
;Allocation info for local variables in function 'goBOOM'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_timeBomb.c:59: void goBOOM(		void)
;	-----------------------------------------
;	 function goBOOM
;	-----------------------------------------
_goBOOM:
;	../sm_test_timeBomb.c:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_TOP_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_timeBomb.c:64: DEFINE_TOP_STATE()
;	-----------------------------------------
;	 function timeBomb_TOP_handler
;	-----------------------------------------
_timeBomb_TOP_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_timeBomb.c:66: INITIAL_TRANSITION(TO(setting), ACTION(self->timeout = INIT_TIMEOUT)) ;
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
	mov	a,#0x2B
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
;	../sm_test_timeBomb.c:68: HANDLE_STATE_EVENTS
	cjne	r5,#0x05,00105$
;	../sm_test_timeBomb.c:74: EXIT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:76: HANDLE_STATE_EVENTS_DONE
	sjmp	00106$
00105$:
;	../sm_test_timeBomb.c:78: END_DEFINE_STATE()
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
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_timeBomb.c:81: DEFINE_STATE(setting)
;	-----------------------------------------
;	 function timeBomb_setting_handler
;	-----------------------------------------
_timeBomb_setting_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_timeBomb.c:83: TRANSITION_ON(ARM, TO(timing), ACTION(self->codeBeingEntered = 0)) ;
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
	cjne	r5,#0x08,00102$
	mov	r0,_bp
	inc	r0
	mov	a,#0x2C
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
	mov	a,#_timeBomb_timing
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_timing >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00111$
00102$:
;	../sm_test_timeBomb.c:85: HANDLE_STATE_EVENTS
	cjne	r5,#0x06,00120$
	sjmp	00103$
00120$:
;	../sm_test_timeBomb.c:87: EVENT(UP)
	cjne	r5,#0x07,00110$
	sjmp	00106$
00103$:
;	../sm_test_timeBomb.c:89: if(self->timeout < 60)
	mov	r0,_bp
	inc	r0
	mov	a,#0x2B
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
	cjne	r5,#0x3C,00122$
00122$:
	jnc	00105$
;	../sm_test_timeBomb.c:91: self->timeout++ ;
	inc	r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	../sm_test_timeBomb.c:93: updateDisplay(self->timeout) ;
	mov	dpl,r5
	lcall	_updateDisplay
00105$:
;	../sm_test_timeBomb.c:96: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:98: EVENT(DOWN)
	sjmp	00111$
00106$:
;	../sm_test_timeBomb.c:100: if(self->timeout > 1)
	mov	r0,_bp
	inc	r0
	mov	a,#0x2B
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
	jnc	00108$
;	../sm_test_timeBomb.c:102: self->timeout-- ;
	dec	r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	../sm_test_timeBomb.c:104: updateDisplay(self->timeout) ;
	mov	dpl,r5
	lcall	_updateDisplay
00108$:
;	../sm_test_timeBomb.c:107: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:109: HANDLE_STATE_EVENTS_DONE
	sjmp	00111$
00110$:
;	../sm_test_timeBomb.c:111: END_DEFINE_STATE()
	mov	dpl,#0x00
00111$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_timing_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_timeBomb.c:114: DEFINE_STATE(timing)
;	-----------------------------------------
;	 function timeBomb_timing_handler
;	-----------------------------------------
_timeBomb_timing_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_timeBomb.c:116: TRANSITION_ON_IF(ARM, self->codeBeingEntered == self->disarmCode, TO(setting), ACTION(updateDisplay(self->timeout))) ;
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
	cjne	r5,#0x08,00116$
	sjmp	00117$
00116$:
	ljmp	00102$
00117$:
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	a,#0x2C
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
	mov	a,#0x2D
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
	cjne	a,ar5,00118$
	sjmp	00119$
00118$:
	pop	ar5
	sjmp	00102$
00119$:
	pop	ar5
	mov	r0,_bp
	inc	r0
	mov	a,#0x2B
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
	mov	a,#_timeBomb_setting
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_setting >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00109$
00102$:
;	../sm_test_timeBomb.c:118: HANDLE_STATE_EVENTS
	cjne	r5,#0x06,00120$
	sjmp	00104$
00120$:
	cjne	r5,#0x07,00121$
	sjmp	00105$
00121$:
	cjne	r5,#0x09,00122$
	sjmp	00106$
00122$:
	ljmp	00108$
;	../sm_test_timeBomb.c:120: EVENT(UP)
00104$:
;	../sm_test_timeBomb.c:122: self->codeBeingEntered <<= 1 ;
	mov	r0,_bp
	inc	r0
	mov	a,#0x2C
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
;	../sm_test_timeBomb.c:123: self->codeBeingEntered |= 1 ;
	orl	ar5,#0x01
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	../sm_test_timeBomb.c:125: EVENT_HANDLED
	mov	dpl,#0x01
	ljmp	00109$
;	../sm_test_timeBomb.c:127: EVENT(DOWN)
00105$:
;	../sm_test_timeBomb.c:129: self->codeBeingEntered <<= 1 ;
	mov	r0,_bp
	inc	r0
	mov	a,#0x2C
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
;	../sm_test_timeBomb.c:131: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_timeBomb.c:133: EVENT(TICK)
	sjmp	00109$
00106$:
;	../sm_test_timeBomb.c:135: self->timeout-- ;
	mov	r0,_bp
	inc	r0
	mov	a,#0x2B
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
;	../sm_test_timeBomb.c:137: TRANSITION_TO(isTimeToGoBoom, updateDisplay(self->timeout)) ;
	mov	dpl,r5
	lcall	_updateDisplay
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
	mov	a,#_timeBomb_isTimeToGoBoom
	lcall	__gptrput
	inc	dptr
	mov	a,#(_timeBomb_isTimeToGoBoom >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
;	../sm_test_timeBomb.c:141: HANDLE_STATE_EVENTS_DONE
	sjmp	00109$
00108$:
;	../sm_test_timeBomb.c:143: END_DEFINE_STATE()
	mov	dpl,#0x00
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timeBomb_isTimeToGoBoom_handler'
;------------------------------------------------------------
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_timeBomb.c:146: DEFINE_CHOICE_PSEUDO_STATE(	isTimeToGoBoom,
;	-----------------------------------------
;	 function timeBomb_isTimeToGoBoom_handler
;	-----------------------------------------
_timeBomb_isTimeToGoBoom_handler:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
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
	lcall	__gptrget
	jnz	00102$
	push	ar2
	push	ar3
	push	ar4
	lcall	_goBOOM
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,#0x08
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
	sjmp	00103$
00102$:
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
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
00103$:
	mov	dpl,#0x02
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
_timeBomb_isTimeToGoBoom:
	.byte _timeBomb_TOP,(_timeBomb_TOP >> 8),#0x80
	.db #0x01
	.byte _timeBomb_isTimeToGoBoom_handler,(_timeBomb_isTimeToGoBoom_handler >> 8)
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
	.ascii "timeBomb_isTimeToGoBoom"
	.db 0x00
	.area XINIT   (CODE)
__xinit__timeBomb_name:
	.byte __str_0,(__str_0 >> 8),#0x80
	.area CABS    (ABS,CODE)
