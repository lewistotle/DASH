;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sat Jan 23 00:00:23 2010
;--------------------------------------------------------
	.module sm_test_calculator
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _doCalculation
	.globl _calculator_getMemoryRequirements
	.globl _calculator_constructor
	.globl _calculator_destructor
	.globl _calculator_getHistoryArraySize
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
_calculator_getMemoryRequirements_calculator_eventPools_1_1:
	.ds 8
_calculator_getMemoryRequirements_calculator_memPool_1_1:
	.ds 7
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
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_getMemoryRequirements'
;------------------------------------------------------------
;calculator_eventPools     Allocated with name '_calculator_getMemoryRequirements_calculator_eventPools_1_1'
;calculator_memPool        Allocated with name '_calculator_getMemoryRequirements_calculator_memPool_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:25: START_MEMORY_POOL_DECLARATIONS()
	mov	dptr,#_calculator_getMemoryRequirements_calculator_eventPools_1_1
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_calculator_getMemoryRequirements_calculator_eventPools_1_1 + 0x0002)
	mov	a,#0x03
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_calculator_getMemoryRequirements_calculator_eventPools_1_1 + 0x0004)
	mov	a,#0x0C
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_calculator_getMemoryRequirements_calculator_eventPools_1_1 + 0x0006)
	mov	a,#0x02
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	../sm_test_calculator.c:32: END_MEMORY_REQUIREMENTS()
	mov	dptr,#_calculator_getMemoryRequirements_calculator_memPool_1_1
	mov	a,#0x10
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_calculator_getMemoryRequirements_calculator_memPool_1_1 + 0x0002)
	mov	a,#0x02
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#(_calculator_getMemoryRequirements_calculator_memPool_1_1 + 0x0004)
	mov	a,#_calculator_getMemoryRequirements_calculator_eventPools_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_calculator_getMemoryRequirements_calculator_eventPools_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	clr	a
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
;Allocation info for local variables in function 'calculator_getMemoryRequirements'
;------------------------------------------------------------
;calculator_eventPools     Allocated with name '_calculator_getMemoryRequirements_calculator_eventPools_1_1'
;calculator_memPool        Allocated with name '_calculator_getMemoryRequirements_calculator_memPool_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:21: DECLARE_MEMORY_REQUIREMENTS()
;	-----------------------------------------
;	 function calculator_getMemoryRequirements
;	-----------------------------------------
_calculator_getMemoryRequirements:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	../sm_test_calculator.c:32: END_MEMORY_REQUIREMENTS()
	mov	dptr,#_calculator_getMemoryRequirements_calculator_memPool_1_1
	mov	b,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_constructor'
;------------------------------------------------------------
;sloc0                     Allocated with name '_calculator_constructor_sloc0_1_0'
;base                      Allocated with name '_calculator_constructor_base_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:60: END_STATE_MACHINE_DEFINITION() ;
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
;	../sm_test_calculator.c:60: 
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
;Allocation info for local variables in function 'calculator_getHistoryArraySize'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_calculator.c:60: END_STATE_MACHINE_DEFINITION() ;
;	-----------------------------------------
;	 function calculator_getHistoryArraySize
;	-----------------------------------------
_calculator_getHistoryArraySize:
	mov	dptr,#0x0018
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_getMachineSize'
;------------------------------------------------------------
;------------------------------------------------------------
;	../sm_test_calculator.c:60: 
;	-----------------------------------------
;	 function calculator_getMachineSize
;	-----------------------------------------
_calculator_getMachineSize:
	mov	dptr,#0x0033
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_constructor2'
;------------------------------------------------------------
;self                      Allocated with name '_calculator_constructor2_self_1_1'
;------------------------------------------------------------
;	../sm_test_calculator.c:63: STATE_MACHINE_CONSTRUCTOR()
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
;	../sm_test_calculator.c:65: hsm_setMachinePriority(self, 0) ;
	mov	dptr,#_calculator_constructor2_self_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hsm_setMachinePriority_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_hsm_setMachinePriority
;	../sm_test_calculator.c:67: self->result = 0 ;
	mov	dptr,#_calculator_constructor2_self_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x2F
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
;	../sm_test_calculator.c:71: STATE_MACHINE_DESTRUCTOR()
;	-----------------------------------------
;	 function calculator_destructor2
;	-----------------------------------------
_calculator_destructor2:
;	../sm_test_calculator.c:73: (void)self ;	/* Nothing to do here */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_TOP_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers r2 r3 r4 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:77: DEFINE_TOP_STATE()
;	-----------------------------------------
;	 function calculator_TOP_handler
;	-----------------------------------------
_calculator_TOP_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:79: INITIAL_TRANSITION(TO(begin),																NO_ACTION) ;
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
;	../sm_test_calculator.c:81: END_DEFINE_STATE()
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
;------------------------------------------------------------
;	../sm_test_calculator.c:84: DEFINE_STATE(on)
;	-----------------------------------------
;	 function calculator_on_handler
;	-----------------------------------------
_calculator_on_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:86: INITIAL_TRANSITION(TO(ready),																NO_ACTION) ;
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
;	../sm_test_calculator.c:88: TRANSITION_ON(CLEAR,												TO(on),					NO_ACTION) ;
	cjne	r5,#0x08,00104$
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
;	../sm_test_calculator.c:89: TRANSITION_ON(OFF,													TO(STATE_MACHINE_EXIT),	NO_ACTION) ;
	cjne	r5,#0x0F,00106$
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
;	../sm_test_calculator.c:91: END_DEFINE_STATE()
	mov	dpl,#0x00
00107$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_ready_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:94: DEFINE_STATE(ready)
;	-----------------------------------------
;	 function calculator_ready_handler
;	-----------------------------------------
_calculator_ready_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_calculator.c:102: END_DEFINE_STATE()
	mov	dpl,#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_result_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:105: DEFINE_STATE(result)
;	-----------------------------------------
;	 function calculator_result_handler
;	-----------------------------------------
_calculator_result_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_calculator.c:108: END_DEFINE_STATE()
	mov	dpl,#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_begin_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to registers 
;stateResponseCode         Allocated to registers 
;------------------------------------------------------------
;	../sm_test_calculator.c:111: DEFINE_STATE(begin)
;	-----------------------------------------
;	 function calculator_begin_handler
;	-----------------------------------------
_calculator_begin_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_calculator.c:120: END_DEFINE_STATE()
	mov	dpl,#0x00
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculator_negated1_handler'
;------------------------------------------------------------
;event                     Allocated to stack - offset -5
;self                      Allocated to stack - offset 1
;stateResponseCode         Allocated to registers 
;sloc0                     Allocated to stack - offset 5
;------------------------------------------------------------
;	../sm_test_calculator.c:123: DEFINE_STATE(negated1)
;	-----------------------------------------
;	 function calculator_negated1_handler
;	-----------------------------------------
_calculator_negated1_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:125: TRANSITION_ON(CLEAR_ENTRY,											TO(begin),				NO_ACTION) ;
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
	cjne	r2,#0x09,00102$
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
;	../sm_test_calculator.c:126: TRANSITION_ON(DIGIT_0,												TO(zero1),				NO_ACTION) ;
	cjne	r2,#0x0A,00104$
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
;	../sm_test_calculator.c:127: TRANSITION_ON(DIGIT_1_9,											TO(int1),				NO_ACTION) ;
	cjne	r2,#0x0B,00106$
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
;	../sm_test_calculator.c:128: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
	cjne	r2,#0x0C,00108$
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
;	../sm_test_calculator.c:129: CONSUME_EVENT_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),							NO_ACTION) ;
	cjne	r2,#0x0D,00110$
	mov	a,#0x02
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
	cjne	r5,#0x2D,00110$
	mov	dpl,#0x01
	sjmp	00112$
00110$:
;	../sm_test_calculator.c:131: END_DEFINE_STATE()
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
;------------------------------------------------------------
;	../sm_test_calculator.c:134: DEFINE_STATE(operand1)
;	-----------------------------------------
;	 function calculator_operand1_handler
;	-----------------------------------------
_calculator_operand1_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:136: TRANSITION_ON(CLEAR_ENTRY,											TO(ready),				NO_ACTION) ;
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
	cjne	r5,#0x09,00102$
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
;	../sm_test_calculator.c:137: TRANSITION_ON(OPERATION,											TO(opEntered),			NO_ACTION) ;
	cjne	r5,#0x0D,00104$
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
;	../sm_test_calculator.c:139: END_DEFINE_STATE()
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
;------------------------------------------------------------
;	../sm_test_calculator.c:142: DEFINE_STATE(zero1)
;	-----------------------------------------
;	 function calculator_zero1_handler
;	-----------------------------------------
_calculator_zero1_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:144: INITIAL_TRANSITION(TO(zero2),																NO_ACTION) ;
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
;	../sm_test_calculator.c:145: CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
	cjne	r5,#0x0A,00104$
	mov	dpl,#0x01
	sjmp	00109$
00104$:
;	../sm_test_calculator.c:146: TRANSITION_ON(DIGIT_1_9,											TO(int1),				NO_ACTION) ;
	cjne	r5,#0x0B,00106$
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
;	../sm_test_calculator.c:147: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
	cjne	r5,#0x0C,00108$
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
;	../sm_test_calculator.c:149: END_DEFINE_STATE()
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
;------------------------------------------------------------
;	../sm_test_calculator.c:152: DEFINE_STATE(int1)
;	-----------------------------------------
;	 function calculator_int1_handler
;	-----------------------------------------
_calculator_int1_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:154: TRANSITION_ON(POINT,												TO(frac1),				NO_ACTION) ;
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
	cjne	r5,#0x0C,00102$
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
;	../sm_test_calculator.c:156: END_DEFINE_STATE()
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
;	../sm_test_calculator.c:159: DEFINE_STATE(frac1)
;	-----------------------------------------
;	 function calculator_frac1_handler
;	-----------------------------------------
_calculator_frac1_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_calculator.c:161: CONSUME_EVENT(POINT,																		NO_ACTION) ;
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
	cjne	r2,#0x0C,00102$
	mov	dpl,#0x01
	sjmp	00103$
00102$:
;	../sm_test_calculator.c:163: END_DEFINE_STATE()
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
;	../sm_test_calculator.c:166: DEFINE_STATE(error)
;	-----------------------------------------
;	 function calculator_error_handler
;	-----------------------------------------
_calculator_error_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:168: INITIAL_TRANSITION(TO(frac2),																NO_ACTION) ;
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
;	../sm_test_calculator.c:170: END_DEFINE_STATE()
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
;sloc0                     Allocated to stack - offset 1
;------------------------------------------------------------
;	../sm_test_calculator.c:173: DEFINE_STATE(opEntered)
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
;	../sm_test_calculator.c:175: TRANSITION_ON_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),	TO(negated2),			NO_ACTION) ;
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
	cjne	@r0,#0x0D,00102$
	mov	a,#0x02
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
;	../sm_test_calculator.c:176: TRANSITION_ON(DIGIT_0,												TO(zero2),				NO_ACTION) ;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x0A,00105$
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
;	../sm_test_calculator.c:177: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x0B,00107$
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
;	../sm_test_calculator.c:178: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x0C,00109$
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
;	../sm_test_calculator.c:180: END_DEFINE_STATE()
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
;sloc0                     Allocated to stack - offset 5
;------------------------------------------------------------
;	../sm_test_calculator.c:183: DEFINE_STATE(negated2)
;	-----------------------------------------
;	 function calculator_negated2_handler
;	-----------------------------------------
_calculator_negated2_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:185: TRANSITION_ON(CLEAR_ENTRY,											TO(opEntered),			NO_ACTION) ;
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
	cjne	r2,#0x09,00102$
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
;	../sm_test_calculator.c:186: TRANSITION_ON(DIGIT_0,												TO(zero2),				NO_ACTION) ;
	cjne	r2,#0x0A,00104$
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
;	../sm_test_calculator.c:187: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
	cjne	r2,#0x0B,00106$
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
;	../sm_test_calculator.c:188: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
	cjne	r2,#0x0C,00108$
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
;	../sm_test_calculator.c:189: CONSUME_EVENT_IF(OPERATION,	IF(CAST_EVENT(keyEvent_t)->key == '-'),							NO_ACTION) ;
	cjne	r2,#0x0D,00110$
	mov	a,#0x02
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
	cjne	r5,#0x2D,00110$
	mov	dpl,#0x01
	sjmp	00112$
00110$:
;	../sm_test_calculator.c:191: END_DEFINE_STATE()
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
;	../sm_test_calculator.c:194: uint8_t doCalculation(	uint8_t type)
;	-----------------------------------------
;	 function doCalculation
;	-----------------------------------------
_doCalculation:
	mov	a,dpl
	mov	dptr,#_doCalculation_type_1_1
	movx	@dptr,a
;	../sm_test_calculator.c:196: switch(type)
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
;	../sm_test_calculator.c:198: case '+': { return true ; }
	cjne	r2,#0x2F,00105$
	sjmp	00104$
00101$:
	mov	dpl,#0x01
;	../sm_test_calculator.c:199: case '-': { return true ; }
	ret
00102$:
	mov	dpl,#0x01
;	../sm_test_calculator.c:200: case '*': { return true ; }
	ret
00103$:
	mov	dpl,#0x01
;	../sm_test_calculator.c:201: case '/': { return true ; }
	ret
00104$:
	mov	dpl,#0x01
;	../sm_test_calculator.c:202: default:  { return false ; }
;	../sm_test_calculator.c:203: }
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
;goodCalc                  Allocated to registers r2 
;sloc0                     Allocated to stack - offset 6
;------------------------------------------------------------
;	../sm_test_calculator.c:207: DEFINE_STATE(operand2)
;	-----------------------------------------
;	 function calculator_operand2_handler
;	-----------------------------------------
_calculator_operand2_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:209: TRANSITION_ON(CLEAR_ENTRY,											TO(opEntered),			NO_ACTION) ;
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
	cjne	r2,#0x09,00102$
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
;	../sm_test_calculator.c:211: HANDLE_STATE_EVENTS
	cjne	r2,#0x0D,00123$
	sjmp	00104$
00123$:
	cjne	r2,#0x0E,00124$
	sjmp	00125$
00124$:
	ljmp	00113$
00125$:
;	../sm_test_calculator.c:214: EVENT(EQUALS)
00104$:
;	../sm_test_calculator.c:216: uint8_t goodCalc = doCalculation(CAST_EVENT(keyEvent_t)->key) ;
	mov	a,#0x02
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
;	../sm_test_calculator.c:218: if(goodCalc)
	mov	a,r2
	jz	00110$
;	../sm_test_calculator.c:220: TRANSITION_ON(OPERATION,								TO(opEntered),			NO_ACTION) ;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x0D,00106$
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
;	../sm_test_calculator.c:221: TRANSITION_ON(EQUALS,									TO(result),				NO_ACTION) ;
	cjne	r2,#0x0E,00111$
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
;	../sm_test_calculator.c:225: TRANSITION_TO(error, NO_ACTION) ;
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
;	../sm_test_calculator.c:228: EVENT_HANDLED
	mov	dpl,#0x01
;	../sm_test_calculator.c:230: HANDLE_STATE_EVENTS_DONE
	sjmp	00114$
00113$:
;	../sm_test_calculator.c:232: END_DEFINE_STATE()
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
;------------------------------------------------------------
;	../sm_test_calculator.c:235: DEFINE_STATE(zero2)
;	-----------------------------------------
;	 function calculator_zero2_handler
;	-----------------------------------------
_calculator_zero2_handler:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	../sm_test_calculator.c:237: INITIAL_TRANSITION(TO(negated1),															NO_ACTION) ;
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
;	../sm_test_calculator.c:238: CONSUME_EVENT(DIGIT_0,																		NO_ACTION) ;
	cjne	r5,#0x0A,00104$
	mov	dpl,#0x01
	sjmp	00109$
00104$:
;	../sm_test_calculator.c:239: TRANSITION_ON(DIGIT_1_9,											TO(int2),				NO_ACTION) ;
	cjne	r5,#0x0B,00106$
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
;	../sm_test_calculator.c:240: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
	cjne	r5,#0x0C,00108$
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
;	../sm_test_calculator.c:242: END_DEFINE_STATE()
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
;------------------------------------------------------------
;	../sm_test_calculator.c:245: DEFINE_STATE(int2)
;	-----------------------------------------
;	 function calculator_int2_handler
;	-----------------------------------------
_calculator_int2_handler:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../sm_test_calculator.c:247: TRANSITION_ON(POINT,												TO(frac2),				NO_ACTION) ;
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
	cjne	r5,#0x0C,00102$
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
;	../sm_test_calculator.c:249: END_DEFINE_STATE()
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
;	../sm_test_calculator.c:252: DEFINE_STATE(frac2)
;	-----------------------------------------
;	 function calculator_frac2_handler
;	-----------------------------------------
_calculator_frac2_handler:
	push	_bp
	mov	_bp,sp
;	../sm_test_calculator.c:254: CONSUME_EVENT(POINT,																		NO_ACTION) ;
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
	cjne	r2,#0x0C,00102$
	mov	dpl,#0x01
	sjmp	00103$
00102$:
;	../sm_test_calculator.c:256: END_DEFINE_STATE()
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
