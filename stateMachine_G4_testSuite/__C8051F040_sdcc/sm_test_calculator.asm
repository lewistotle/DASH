;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sat Jan 02 19:24:43 2010
;--------------------------------------------------------
	.module sm_test_calculator
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _doCalculation
	.globl _calculator_getEventQueueDepth
	.globl _calculator_constructor
	.globl _calculator_destructor
	.globl _calculator_getHistoryQueueDepth
	.globl _calculator_getMachineSize
	.globl _calculator_constructor2
	.globl _calculator_destructor2
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
_calculator_constructor_sloc0_1_0:
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
_calculator_constructor_base_1_1:
	.ds 3
_calculator_destructor_self_1_1:
	.ds 3
_calculator_constructor2_self_1_1:
	.ds 3
_doCalculation_type_1_1:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_calculator_name:
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
;Allocation info for local variables in function 'calculator_getEventQueueDepth'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_calculator.c:23: SET_EVENT_QUEUE_DEPTH(config_CalcEVENT_QUEUE_DEPTH) ;
;	-----------------------------------------
;	 function calculator_getEventQueueDepth
;	-----------------------------------------
_calculator_getEventQueueDepth:
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
;Allocation info for local variables in function 'calculator_constructor'
;------------------------------------------------------------
;sloc0                     Allocated with name '_calculator_constructor_sloc0_1_0'
;base                      Allocated with name '_calculator_constructor_base_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:47: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function calculator_constructor
;	-----------------------------------------
_calculator_constructor:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_calculator_constructor_base_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_calculator_constructor_base_1_1
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
	mov	a,#_calculator_TOP
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_TOP >> 8)
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
	mov	a,#_calculator_TOP
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_TOP >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	a,#0x02
	add	a,r2
	mov	_calculator_constructor_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_calculator_constructor_sloc0_1_0 + 1),a
	mov	(_calculator_constructor_sloc0_1_0 + 2),r4
	mov	dptr,#_calculator_name
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,_calculator_constructor_sloc0_1_0
	mov	dph,(_calculator_constructor_sloc0_1_0 + 1)
	mov	b,(_calculator_constructor_sloc0_1_0 + 2)
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
	ljmp	_calculator_constructor2
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_destructor'
;------------------------------------------------------------
;self                      Allocated with name '_calculator_destructor_self_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:47: 
;	-----------------------------------------
;	 function calculator_destructor
;	-----------------------------------------
_calculator_destructor:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_calculator_destructor_self_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#_calculator_destructor_self_1_1
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
	ljmp	_calculator_destructor2
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_getHistoryQueueDepth'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_calculator.c:47: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function calculator_getHistoryQueueDepth
;	-----------------------------------------
_calculator_getHistoryQueueDepth:
	mov	dptr,#0x004E
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_getMachineSize'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_calculator.c:47: 
;	-----------------------------------------
;	 function calculator_getMachineSize
;	-----------------------------------------
_calculator_getMachineSize:
	mov	dptr,#0x002F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_constructor2'
;------------------------------------------------------------
;self                      Allocated with name '_calculator_constructor2_self_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:50: STATE_MACHINE_CONSTRUCTOR()
;	-----------------------------------------
;	 function calculator_constructor2
;	-----------------------------------------
_calculator_constructor2:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_calculator_constructor2_self_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	../sm_test_calculator.c:52: self->result = 0 ;
	mov	dptr,#_calculator_constructor2_self_1_1
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
	inc	dptr
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_destructor2'
;------------------------------------------------------------
;self                      Allocated with name '_calculator_destructor2_self_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:56: STATE_MACHINE_DESTRUCTOR()
;	-----------------------------------------
;	 function calculator_destructor2
;	-----------------------------------------
_calculator_destructor2:
;	../sm_test_calculator.c:58: (void)self ;	/* Nothing to do here */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_TOP_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:62: DEFINE_TOP_STATE()
;	-----------------------------------------
;	 function calculator_TOP_handler
;	-----------------------------------------
_calculator_TOP_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:64: INITIAL_TRANSITION(TO(begin),																	NO_ACTION) ;
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
	mov	a,#_calculator_begin
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_begin >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00103$
00102$:
;	../sm_test_calculator.c:66: END_DEFINE_STATE()
	mov	dpl,#0x00
00103$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_on_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:69: DEFINE_STATE(on)
;	-----------------------------------------
;	 function calculator_on_handler
;	-----------------------------------------
_calculator_on_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:71: INITIAL_TRANSITION(TO(ready),																NO_ACTION) ;
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
	mov	a,#0x08
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
	mov	a,#_calculator_ready
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_ready >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00107$
00102$:
;	../sm_test_calculator.c:73: TRANSITION_ON(CLEAR,												TO(on),					NO_ACTION) ;
	cjne	r5,#0x06,00104$
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
	mov	a,#_calculator_on
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_on >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00107$
00104$:
;	../sm_test_calculator.c:74: TRANSITION_ON(OFF,													TO(STATE_MACHINE_EXIT),	NO_ACTION) ;
	cjne	r5,#0x0D,00106$
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
	mov	a,#_calculator_TOP
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_TOP >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00107$
00106$:
;	../sm_test_calculator.c:76: END_DEFINE_STATE()
	mov	dpl,#0x00
00107$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_ready_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:79: DEFINE_STATE(ready)
;	-----------------------------------------
;	 function calculator_ready_handler
;	-----------------------------------------
_calculator_ready_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:81: INITIAL_TRANSITION(TO(zero1),																NO_ACTION) ;
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
	mov	a,#0x08
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
	mov	a,#_calculator_zero1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_zero1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00105$
00102$:
;	../sm_test_calculator.c:83: TRANSITION_ON(OPERATION,											TO(opEntered),			NO_ACTION) ;
	cjne	r5,#0x0B,00104$
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
	mov	a,#_calculator_opEntered
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_opEntered >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00105$
00104$:
;	../sm_test_calculator.c:85: END_DEFINE_STATE()
	mov	dpl,#0x00
00105$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_result_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:88: DEFINE_STATE(result)
;	-----------------------------------------
;	 function calculator_result_handler
;	-----------------------------------------
_calculator_result_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_calculator.c:91: END_DEFINE_STATE()
	mov	dpl,#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_begin_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;sloc0                     Allocated to stack - offset 9
;------------------------------------------------------------
;	../sm_test_calculator.c:94: DEFINE_STATE(begin)
;	-----------------------------------------
;	 function calculator_begin_handler
;	-----------------------------------------
_calculator_begin_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:97: INITIAL_TRANSITION(TO(on),																	NO_ACTION) ;
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
	mov	r2,a
	cjne	r2,#0x02,00102$
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
	mov	a,#_calculator_on
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_on >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00112$
00102$:
;	../sm_test_calculator.c:99: TRANSITION_ON_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),	TO(negated1),			NO_ACTION) ;
	cjne	r2,#0x0B,00104$
	inc	r5
	cjne	r5,#0x00,00124$
	inc	r6
00124$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2D,00104$
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
	mov	a,#_calculator_negated1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_negated1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00112$
00104$:
;	../sm_test_calculator.c:100: TRANSITION_ON(DIGIT_0,												TO(zero1),				NO_ACTION) ;
	cjne	r2,#0x08,00107$
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
	mov	a,#_calculator_zero1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_zero1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00112$
00107$:
;	../sm_test_calculator.c:101: TRANSITION_ON(DIGIT_1_9,											TO(int1),				NO_ACTION) ;
	cjne	r2,#0x09,00109$
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
	mov	a,#_calculator_int1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_int1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00112$
00109$:
;	../sm_test_calculator.c:102: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
	cjne	r2,#0x0A,00111$
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
	mov	a,#_calculator_frac1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00112$
00111$:
;	../sm_test_calculator.c:104: END_DEFINE_STATE()
	mov	dpl,#0x00
00112$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_negated1_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;sloc0                     Allocated to stack - offset 9
;------------------------------------------------------------
;	../sm_test_calculator.c:107: DEFINE_STATE(negated1)
;	-----------------------------------------
;	 function calculator_negated1_handler
;	-----------------------------------------
_calculator_negated1_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:109: TRANSITION_ON(CLEAR_ENTRY,											TO(begin),				NO_ACTION) ;
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
	mov	r2,a
	cjne	r2,#0x07,00102$
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
	mov	a,#_calculator_begin
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_begin >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00112$
00102$:
;	../sm_test_calculator.c:110: TRANSITION_ON(DIGIT_0,												TO(zero1),				NO_ACTION) ;
	cjne	r2,#0x08,00104$
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
	mov	a,#_calculator_zero1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_zero1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00112$
00104$:
;	../sm_test_calculator.c:111: TRANSITION_ON(DIGIT_1_9,											TO(int1),				NO_ACTION) ;
	cjne	r2,#0x09,00106$
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
	mov	a,#_calculator_int1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_int1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00112$
00106$:
;	../sm_test_calculator.c:112: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
	cjne	r2,#0x0A,00108$
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
	mov	a,#_calculator_frac1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00112$
00108$:
;	../sm_test_calculator.c:113: CONSUME_EVENT_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),							NO_ACTION) ;
	cjne	r2,#0x0B,00110$
	inc	r5
	cjne	r5,#0x00,00130$
	inc	r6
00130$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2D,00110$
	mov	dpl,#0x01
	sjmp	00112$
00110$:
;	../sm_test_calculator.c:115: END_DEFINE_STATE()
	mov	dpl,#0x00
00112$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_operand1_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:118: DEFINE_STATE(operand1)
;	-----------------------------------------
;	 function calculator_operand1_handler
;	-----------------------------------------
_calculator_operand1_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:120: TRANSITION_ON(CLEAR_ENTRY,											TO(ready),				NO_ACTION) ;
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
	cjne	r5,#0x07,00102$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
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
	mov	a,#_calculator_ready
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_ready >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00105$
00102$:
;	../sm_test_calculator.c:121: TRANSITION_ON(OPERATION,											TO(opEntered),			NO_ACTION) ;
	cjne	r5,#0x0B,00104$
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
	mov	a,#_calculator_opEntered
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_opEntered >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00105$
00104$:
;	../sm_test_calculator.c:123: END_DEFINE_STATE()
	mov	dpl,#0x00
00105$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_zero1_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:126: DEFINE_STATE(zero1)
;	-----------------------------------------
;	 function calculator_zero1_handler
;	-----------------------------------------
_calculator_zero1_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:128: INITIAL_TRANSITION(TO(zero2),																NO_ACTION) ;
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
	mov	a,#0x08
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
	mov	a,#_calculator_zero2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_zero2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00109$
00102$:
;	../sm_test_calculator.c:129: CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
	cjne	r5,#0x08,00104$
	mov	dpl,#0x01
	sjmp	00109$
00104$:
;	../sm_test_calculator.c:130: TRANSITION_ON(DIGIT_1_9,											TO(int1),				NO_ACTION) ;
	cjne	r5,#0x09,00106$
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
	mov	a,#_calculator_int1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_int1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00109$
00106$:
;	../sm_test_calculator.c:131: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
	cjne	r5,#0x0A,00108$
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
	mov	a,#_calculator_frac1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00109$
00108$:
;	../sm_test_calculator.c:133: END_DEFINE_STATE()
	mov	dpl,#0x00
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_int1_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:136: DEFINE_STATE(int1)
;	-----------------------------------------
;	 function calculator_int1_handler
;	-----------------------------------------
_calculator_int1_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:138: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
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
	cjne	r5,#0x0A,00102$
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_calculator_frac1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00103$
00102$:
;	../sm_test_calculator.c:140: END_DEFINE_STATE()
	mov	dpl,#0x00
00103$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_frac1_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:143: DEFINE_STATE(frac1)
;	-----------------------------------------
;	 function calculator_frac1_handler
;	-----------------------------------------
_calculator_frac1_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_calculator.c:145: CONSUME_EVENT(POINT,																		NO_ACTION) ;
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
	cjne	r2,#0x0A,00102$
	mov	dpl,#0x01
	sjmp	00103$
00102$:
;	../sm_test_calculator.c:147: END_DEFINE_STATE()
	mov	dpl,#0x00
00103$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_error_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:150: DEFINE_STATE(error)
;	-----------------------------------------
;	 function calculator_error_handler
;	-----------------------------------------
_calculator_error_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:152: INITIAL_TRANSITION(TO(frac2),																NO_ACTION) ;
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
	mov	a,#_calculator_frac2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00103$
00102$:
;	../sm_test_calculator.c:154: END_DEFINE_STATE()
	mov	dpl,#0x00
00103$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_opEntered_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;sloc0                     Allocated to stack - offset 1
;------------------------------------------------------------
;	../sm_test_calculator.c:157: DEFINE_STATE(opEntered)
;	-----------------------------------------
;	 function calculator_opEntered_handler
;	-----------------------------------------
_calculator_opEntered_handler:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:159: TRANSITION_ON_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),	TO(negated2),			NO_ACTION) ;
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
	cjne	@r0,#0x0B,00102$
	inc	r5
	cjne	r5,#0x00,00119$
	inc	r6
00119$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2D,00102$
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
	mov	a,#_calculator_negated2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_negated2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00110$
00102$:
;	../sm_test_calculator.c:160: TRANSITION_ON(DIGIT_0,												TO(zero2),				NO_ACTION) ;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x08,00105$
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
	mov	a,#_calculator_zero2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_zero2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00110$
00105$:
;	../sm_test_calculator.c:161: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x09,00107$
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
	mov	a,#_calculator_int2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_int2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00110$
00107$:
;	../sm_test_calculator.c:162: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x0A,00109$
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_calculator_frac2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00110$
00109$:
;	../sm_test_calculator.c:164: END_DEFINE_STATE()
	mov	dpl,#0x00
00110$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_negated2_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;sloc0                     Allocated to stack - offset 9
;------------------------------------------------------------
;	../sm_test_calculator.c:167: DEFINE_STATE(negated2)
;	-----------------------------------------
;	 function calculator_negated2_handler
;	-----------------------------------------
_calculator_negated2_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:169: TRANSITION_ON(CLEAR_ENTRY,											TO(opEntered),			NO_ACTION) ;
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
	mov	r2,a
	cjne	r2,#0x07,00102$
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
	mov	a,#_calculator_opEntered
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_opEntered >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00112$
00102$:
;	../sm_test_calculator.c:170: TRANSITION_ON(DIGIT_0,												TO(zero2),				NO_ACTION) ;
	cjne	r2,#0x08,00104$
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
	mov	a,#_calculator_zero2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_zero2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00112$
00104$:
;	../sm_test_calculator.c:171: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
	cjne	r2,#0x09,00106$
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
	mov	a,#_calculator_int2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_int2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00112$
00106$:
;	../sm_test_calculator.c:172: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
	cjne	r2,#0x0A,00108$
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
	mov	a,#_calculator_frac2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00112$
00108$:
;	../sm_test_calculator.c:173: CONSUME_EVENT_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),							NO_ACTION) ;
	cjne	r2,#0x0B,00110$
	inc	r5
	cjne	r5,#0x00,00130$
	inc	r6
00130$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2D,00110$
	mov	dpl,#0x01
	sjmp	00112$
00110$:
;	../sm_test_calculator.c:175: END_DEFINE_STATE()
	mov	dpl,#0x00
00112$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'doCalculation'
;------------------------------------------------------------
;type                      Allocated with name '_doCalculation_type_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:178: uint8_t doCalculation(	uint8_t type)
;	-----------------------------------------
;	 function doCalculation
;	-----------------------------------------
_doCalculation:
	mov	a,dpl
	mov	dptr,#_doCalculation_type_1_1
	movx	@dptr,a
;	../sm_test_calculator.c:180: switch(type)
	mov	dptr,#_doCalculation_type_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x2A,00113$
	sjmp	00103$
00113$:
	cjne	r2,#0x2B,00114$
	sjmp	00101$
00114$:
	cjne	r2,#0x2D,00115$
	sjmp	00102$
00115$:
;	../sm_test_calculator.c:182: case '+': { return true ; }
	cjne	r2,#0x2F,00105$
	sjmp	00104$
00101$:
	mov	dpl,#0x01
;	../sm_test_calculator.c:183: case '-': { return true ; }
	ret
00102$:
	mov	dpl,#0x01
;	../sm_test_calculator.c:184: case '*': { return true ; }
	ret
00103$:
	mov	dpl,#0x01
;	../sm_test_calculator.c:185: case '/': { return true ; }
	ret
00104$:
	mov	dpl,#0x01
;	../sm_test_calculator.c:186: default:  { return false ; }
;	../sm_test_calculator.c:187: }
	ret
00105$:
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_operand2_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;goodCalc                  Allocated to registers r2 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;sloc0                     Allocated to stack - offset 10
;------------------------------------------------------------
;	../sm_test_calculator.c:191: DEFINE_STATE(operand2)
;	-----------------------------------------
;	 function calculator_operand2_handler
;	-----------------------------------------
_calculator_operand2_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:193: TRANSITION_ON(CLEAR_ENTRY,											TO(opEntered),			NO_ACTION) ;
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
	mov	r2,a
	cjne	r2,#0x07,00102$
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
	mov	a,#_calculator_opEntered
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_opEntered >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	ljmp	00114$
00102$:
;	../sm_test_calculator.c:195: HANDLE_STATE_EVENTS
	cjne	r2,#0x0B,00123$
	sjmp	00104$
00123$:
	cjne	r2,#0x0C,00124$
	sjmp	00125$
00124$:
	ljmp	00113$
00125$:
;	../sm_test_calculator.c:198: EVENT(EQUALS)
00104$:
;	../sm_test_calculator.c:200: uint8_t goodCalc = doCalculation(CAST_EVENT(keyEvent_t)->key) ;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar5
	push	ar6
	push	ar7
	lcall	_doCalculation
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
;	../sm_test_calculator.c:202: if(goodCalc)
	mov	a,r2
	jz	00110$
;	../sm_test_calculator.c:204: TRANSITION_ON(OPERATION,								TO(opEntered),			NO_ACTION) ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x0B,00106$
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#_calculator_opEntered
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_opEntered >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00114$
00106$:
;	../sm_test_calculator.c:205: TRANSITION_ON(EQUALS,									TO(result),				NO_ACTION) ;
	cjne	r2,#0x0C,00111$
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
	mov	a,#_calculator_result
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_result >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00114$
00110$:
;	../sm_test_calculator.c:209: TRANSITION_TO(error, NO_ACTION) ;
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
	mov	a,#_calculator_error
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_error >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00114$
00111$:
;	../sm_test_calculator.c:212: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_calculator.c:214: HANDLE_STATE_EVENTS_DONE
	sjmp	00114$
00113$:
;	../sm_test_calculator.c:216: END_DEFINE_STATE()
	mov	dpl,#0x00
00114$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_zero2_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:219: DEFINE_STATE(zero2)
;	-----------------------------------------
;	 function calculator_zero2_handler
;	-----------------------------------------
_calculator_zero2_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:221: INITIAL_TRANSITION(TO(negated1),															NO_ACTION) ;
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
	mov	a,#0x08
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
	mov	a,#_calculator_negated1
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_negated1 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00109$
00102$:
;	../sm_test_calculator.c:222: CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
	cjne	r5,#0x08,00104$
	mov	dpl,#0x01
	sjmp	00109$
00104$:
;	../sm_test_calculator.c:223: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
	cjne	r5,#0x09,00106$
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
	mov	a,#_calculator_int2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_int2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00109$
00106$:
;	../sm_test_calculator.c:224: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
	cjne	r5,#0x0A,00108$
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
	mov	a,#_calculator_frac2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00109$
00108$:
;	../sm_test_calculator.c:226: END_DEFINE_STATE()
	mov	dpl,#0x00
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_int2_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:229: DEFINE_STATE(int2)
;	-----------------------------------------
;	 function calculator_int2_handler
;	-----------------------------------------
_calculator_int2_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:231: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
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
	cjne	r5,#0x0A,00102$
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_calculator_frac2
	lcall	__gptrput
	inc	dptr
	mov	a,#(_calculator_frac2 >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x80
	lcall	__gptrput
	mov	dpl,#0x02
	sjmp	00103$
00102$:
;	../sm_test_calculator.c:233: END_DEFINE_STATE()
	mov	dpl,#0x00
00103$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_frac2_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:236: DEFINE_STATE(frac2)
;	-----------------------------------------
;	 function calculator_frac2_handler
;	-----------------------------------------
_calculator_frac2_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_calculator.c:238: CONSUME_EVENT(POINT,																		NO_ACTION) ;
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
	cjne	r2,#0x0A,00102$
	mov	dpl,#0x01
	sjmp	00103$
00102$:
;	../sm_test_calculator.c:240: END_DEFINE_STATE()
	mov	dpl,#0x00
00103$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_calculator_TOP:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
	.db #0x00
	.byte _calculator_TOP_handler,(_calculator_TOP_handler >> 8)
	.byte _str_1,(_str_1 >> 8),#0x80
_calculator_on:
	.byte _calculator_TOP,(_calculator_TOP >> 8),#0x80
	.db #0x00
	.byte _calculator_on_handler,(_calculator_on_handler >> 8)
	.byte _str_2,(_str_2 >> 8),#0x80
_calculator_ready:
	.byte _calculator_on,(_calculator_on >> 8),#0x80
	.db #0x00
	.byte _calculator_ready_handler,(_calculator_ready_handler >> 8)
	.byte _str_3,(_str_3 >> 8),#0x80
_calculator_result:
	.byte _calculator_ready,(_calculator_ready >> 8),#0x80
	.db #0x00
	.byte _calculator_result_handler,(_calculator_result_handler >> 8)
	.byte _str_4,(_str_4 >> 8),#0x80
_calculator_begin:
	.byte _calculator_ready,(_calculator_ready >> 8),#0x80
	.db #0x00
	.byte _calculator_begin_handler,(_calculator_begin_handler >> 8)
	.byte _str_5,(_str_5 >> 8),#0x80
_calculator_negated1:
	.byte _calculator_on,(_calculator_on >> 8),#0x80
	.db #0x00
	.byte _calculator_negated1_handler,(_calculator_negated1_handler >> 8)
	.byte _str_6,(_str_6 >> 8),#0x80
_calculator_operand1:
	.byte _calculator_on,(_calculator_on >> 8),#0x80
	.db #0x00
	.byte _calculator_operand1_handler,(_calculator_operand1_handler >> 8)
	.byte _str_7,(_str_7 >> 8),#0x80
_calculator_zero1:
	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
	.db #0x00
	.byte _calculator_zero1_handler,(_calculator_zero1_handler >> 8)
	.byte _str_8,(_str_8 >> 8),#0x80
_calculator_int1:
	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
	.db #0x00
	.byte _calculator_int1_handler,(_calculator_int1_handler >> 8)
	.byte _str_9,(_str_9 >> 8),#0x80
_calculator_frac1:
	.byte _calculator_operand1,(_calculator_operand1 >> 8),#0x80
	.db #0x00
	.byte _calculator_frac1_handler,(_calculator_frac1_handler >> 8)
	.byte _str_10,(_str_10 >> 8),#0x80
_calculator_error:
	.byte _calculator_on,(_calculator_on >> 8),#0x80
	.db #0x00
	.byte _calculator_error_handler,(_calculator_error_handler >> 8)
	.byte _str_11,(_str_11 >> 8),#0x80
_calculator_opEntered:
	.byte _calculator_on,(_calculator_on >> 8),#0x80
	.db #0x00
	.byte _calculator_opEntered_handler,(_calculator_opEntered_handler >> 8)
	.byte _str_12,(_str_12 >> 8),#0x80
_calculator_negated2:
	.byte _calculator_on,(_calculator_on >> 8),#0x80
	.db #0x00
	.byte _calculator_negated2_handler,(_calculator_negated2_handler >> 8)
	.byte _str_13,(_str_13 >> 8),#0x80
_calculator_operand2:
	.byte _calculator_on,(_calculator_on >> 8),#0x80
	.db #0x00
	.byte _calculator_operand2_handler,(_calculator_operand2_handler >> 8)
	.byte _str_14,(_str_14 >> 8),#0x80
_calculator_zero2:
	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
	.db #0x00
	.byte _calculator_zero2_handler,(_calculator_zero2_handler >> 8)
	.byte _str_15,(_str_15 >> 8),#0x80
_calculator_int2:
	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
	.db #0x00
	.byte _calculator_int2_handler,(_calculator_int2_handler >> 8)
	.byte _str_16,(_str_16 >> 8),#0x80
_calculator_frac2:
	.byte _calculator_operand2,(_calculator_operand2 >> 8),#0x80
	.db #0x00
	.byte _calculator_frac2_handler,(_calculator_frac2_handler >> 8)
	.byte _str_17,(_str_17 >> 8),#0x80
__str_0:
	.ascii "calculator"
	.db 0x00
_str_1:
	.ascii "calculator_TOP"
	.db 0x00
_str_2:
	.ascii "calculator_on"
	.db 0x00
_str_3:
	.ascii "calculator_ready"
	.db 0x00
_str_4:
	.ascii "calculator_result"
	.db 0x00
_str_5:
	.ascii "calculator_begin"
	.db 0x00
_str_6:
	.ascii "calculator_negated1"
	.db 0x00
_str_7:
	.ascii "calculator_operand1"
	.db 0x00
_str_8:
	.ascii "calculator_zero1"
	.db 0x00
_str_9:
	.ascii "calculator_int1"
	.db 0x00
_str_10:
	.ascii "calculator_frac1"
	.db 0x00
_str_11:
	.ascii "calculator_error"
	.db 0x00
_str_12:
	.ascii "calculator_opEntered"
	.db 0x00
_str_13:
	.ascii "calculator_negated2"
	.db 0x00
_str_14:
	.ascii "calculator_operand2"
	.db 0x00
_str_15:
	.ascii "calculator_zero2"
	.db 0x00
_str_16:
	.ascii "calculator_int2"
	.db 0x00
_str_17:
	.ascii "calculator_frac2"
	.db 0x00
	.area XINIT   (CODE)
__xinit__calculator_name:
	.byte __str_0,(__str_0 >> 8),#0x80
	.area CABS    (ABS,CODE)
