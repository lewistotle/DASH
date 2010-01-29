                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sat Jan 02 19:24:45 2010
                              5 ;--------------------------------------------------------
                              6 	.module StateMachine_G4_eventQueue
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _postEventToStateMachine_PARM_2
                             13 	.globl _removeFromDeferredTypeList_PARM_2
                             14 	.globl _isEventTypeDeferred_PARM_2
                             15 	.globl _addToDeferredTypeList_PARM_2
                             16 	.globl _eventQueue_insert_PARM_2
                             17 	.globl _nextLocationFromPoint_PARM_2
                             18 	.globl _eventQueue_initialize_PARM_3
                             19 	.globl _eventQueue_initialize_PARM_2
                             20 	.globl _eventQueue_initialize
                             21 	.globl _eventQueue_isEmpty
                             22 	.globl _eventQueue_isFull
                             23 	.globl _eventQueue_insert
                             24 	.globl _eventQueue_remove
                             25 	.globl _addToDeferredTypeList
                             26 	.globl _isEventTypeDeferred
                             27 	.globl _removeFromDeferredTypeList
                             28 	.globl _postEventToStateMachine
                             29 ;--------------------------------------------------------
                             30 ; special function registers
                             31 ;--------------------------------------------------------
                             32 	.area RSEG    (DATA)
                             33 ;--------------------------------------------------------
                             34 ; special function bits
                             35 ;--------------------------------------------------------
                             36 	.area RSEG    (DATA)
                             37 ;--------------------------------------------------------
                             38 ; overlayable register banks
                             39 ;--------------------------------------------------------
                             40 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      41 	.ds 8
                             42 ;--------------------------------------------------------
                             43 ; internal ram data
                             44 ;--------------------------------------------------------
                             45 	.area DSEG    (DATA)
   002A                      46 _eventQueue_remove_sloc0_1_0:
   002A                      47 	.ds 3
   002D                      48 _eventQueue_remove_sloc1_1_0:
   002D                      49 	.ds 1
   002E                      50 _eventQueue_remove_sloc2_1_0:
   002E                      51 	.ds 3
   0031                      52 _removeFromDeferredTypeList_sloc0_1_0:
   0031                      53 	.ds 1
   0032                      54 _removeFromDeferredTypeList_sloc1_1_0:
   0032                      55 	.ds 1
   0033                      56 _removeFromDeferredTypeList_sloc2_1_0:
   0033                      57 	.ds 3
   0036                      58 _removeFromDeferredTypeList_sloc3_1_0:
   0036                      59 	.ds 3
   0039                      60 _removeFromDeferredTypeList_sloc4_1_0:
   0039                      61 	.ds 3
                             62 ;--------------------------------------------------------
                             63 ; overlayable items in internal ram 
                             64 ;--------------------------------------------------------
                             65 	.area	OSEG    (OVR,DATA)
   0065                      66 _addToDeferredTypeList_sloc0_1_0::
   0065                      67 	.ds 3
                             68 	.area	OSEG    (OVR,DATA)
   0065                      69 _isEventTypeDeferred_sloc0_1_0::
   0065                      70 	.ds 3
                             71 ;--------------------------------------------------------
                             72 ; indirectly addressable internal ram data
                             73 ;--------------------------------------------------------
                             74 	.area ISEG    (DATA)
                             75 ;--------------------------------------------------------
                             76 ; absolute internal ram data
                             77 ;--------------------------------------------------------
                             78 	.area IABS    (ABS,DATA)
                             79 	.area IABS    (ABS,DATA)
                             80 ;--------------------------------------------------------
                             81 ; bit data
                             82 ;--------------------------------------------------------
                             83 	.area BSEG    (BIT)
   0005                      84 _removeFromDeferredTypeList_found_2_2:
   0005                      85 	.ds 1
   0006                      86 _postEventToStateMachine_sloc0_1_0:
   0006                      87 	.ds 1
                             88 ;--------------------------------------------------------
                             89 ; paged external ram data
                             90 ;--------------------------------------------------------
                             91 	.area PSEG    (PAG,XDATA)
                             92 ;--------------------------------------------------------
                             93 ; external ram data
                             94 ;--------------------------------------------------------
                             95 	.area XSEG    (XDATA)
   0925                      96 _eventQueue_initialize_PARM_2:
   0925                      97 	.ds 3
   0928                      98 _eventQueue_initialize_PARM_3:
   0928                      99 	.ds 1
   0929                     100 _eventQueue_initialize_Q_1_1:
   0929                     101 	.ds 3
   092C                     102 _eventQueue_isEmpty_Q_1_1:
   092C                     103 	.ds 3
   092F                     104 _eventQueue_isFull_Q_1_1:
   092F                     105 	.ds 3
   0932                     106 _nextLocationFromPoint_PARM_2:
   0932                     107 	.ds 1
   0933                     108 _nextLocationFromPoint_Q_1_1:
   0933                     109 	.ds 3
   0936                     110 _eventQueue_insert_PARM_2:
   0936                     111 	.ds 3
   0939                     112 _eventQueue_insert_Q_1_1:
   0939                     113 	.ds 3
   093C                     114 _eventQueue_remove_Q_1_1:
   093C                     115 	.ds 3
   093F                     116 _addToDeferredTypeList_PARM_2:
   093F                     117 	.ds 1
   0940                     118 _addToDeferredTypeList_sm_1_1:
   0940                     119 	.ds 3
   0943                     120 _isEventTypeDeferred_PARM_2:
   0943                     121 	.ds 1
   0944                     122 _isEventTypeDeferred_sm_1_1:
   0944                     123 	.ds 3
   0947                     124 _removeFromDeferredTypeList_PARM_2:
   0947                     125 	.ds 1
   0948                     126 _removeFromDeferredTypeList_sm_1_1:
   0948                     127 	.ds 3
   094B                     128 _removeFromDeferredTypeList_i_2_2:
   094B                     129 	.ds 1
   094C                     130 _removeFromDeferredTypeList_currentEvent_3_5:
   094C                     131 	.ds 3
   094F                     132 _postEventToStateMachine_PARM_2:
   094F                     133 	.ds 3
   0952                     134 _postEventToStateMachine_sm_1_1:
   0952                     135 	.ds 3
                            136 ;--------------------------------------------------------
                            137 ; absolute external ram data
                            138 ;--------------------------------------------------------
                            139 	.area XABS    (ABS,XDATA)
                            140 ;--------------------------------------------------------
                            141 ; external initialized ram data
                            142 ;--------------------------------------------------------
                            143 	.area XISEG   (XDATA)
                            144 	.area HOME    (CODE)
                            145 	.area GSINIT0 (CODE)
                            146 	.area GSINIT1 (CODE)
                            147 	.area GSINIT2 (CODE)
                            148 	.area GSINIT3 (CODE)
                            149 	.area GSINIT4 (CODE)
                            150 	.area GSINIT5 (CODE)
                            151 	.area GSINIT  (CODE)
                            152 	.area GSFINAL (CODE)
                            153 	.area CSEG    (CODE)
                            154 ;--------------------------------------------------------
                            155 ; global & static initialisations
                            156 ;--------------------------------------------------------
                            157 	.area HOME    (CODE)
                            158 	.area GSINIT  (CODE)
                            159 	.area GSFINAL (CODE)
                            160 	.area GSINIT  (CODE)
                            161 ;--------------------------------------------------------
                            162 ; Home
                            163 ;--------------------------------------------------------
                            164 	.area HOME    (CODE)
                            165 	.area HOME    (CODE)
                            166 ;--------------------------------------------------------
                            167 ; code
                            168 ;--------------------------------------------------------
                            169 	.area CSEG    (CODE)
                            170 ;------------------------------------------------------------
                            171 ;Allocation info for local variables in function 'eventQueue_initialize'
                            172 ;------------------------------------------------------------
                            173 ;storage                   Allocated with name '_eventQueue_initialize_PARM_2'
                            174 ;maxEntriesInQueue         Allocated with name '_eventQueue_initialize_PARM_3'
                            175 ;Q                         Allocated with name '_eventQueue_initialize_Q_1_1'
                            176 ;------------------------------------------------------------
                            177 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:14: bool eventQueue_initialize(	eventQueue_t* Q, event_t** storage, eventQueueIndex_t maxEntriesInQueue)
                            178 ;	-----------------------------------------
                            179 ;	 function eventQueue_initialize
                            180 ;	-----------------------------------------
   206D                     181 _eventQueue_initialize:
                    0002    182 	ar2 = 0x02
                    0003    183 	ar3 = 0x03
                    0004    184 	ar4 = 0x04
                    0005    185 	ar5 = 0x05
                    0006    186 	ar6 = 0x06
                    0007    187 	ar7 = 0x07
                    0000    188 	ar0 = 0x00
                    0001    189 	ar1 = 0x01
   206D AA F0               190 	mov	r2,b
   206F AB 83               191 	mov	r3,dph
   2071 E5 82               192 	mov	a,dpl
   2073 90 09 29            193 	mov	dptr,#_eventQueue_initialize_Q_1_1
   2076 F0                  194 	movx	@dptr,a
   2077 A3                  195 	inc	dptr
   2078 EB                  196 	mov	a,r3
   2079 F0                  197 	movx	@dptr,a
   207A A3                  198 	inc	dptr
   207B EA                  199 	mov	a,r2
   207C F0                  200 	movx	@dptr,a
                            201 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:16: Q->Capacity	= maxEntriesInQueue ;
   207D 90 09 29            202 	mov	dptr,#_eventQueue_initialize_Q_1_1
   2080 E0                  203 	movx	a,@dptr
   2081 FA                  204 	mov	r2,a
   2082 A3                  205 	inc	dptr
   2083 E0                  206 	movx	a,@dptr
   2084 FB                  207 	mov	r3,a
   2085 A3                  208 	inc	dptr
   2086 E0                  209 	movx	a,@dptr
   2087 FC                  210 	mov	r4,a
   2088 90 09 28            211 	mov	dptr,#_eventQueue_initialize_PARM_3
   208B E0                  212 	movx	a,@dptr
   208C 8A 82               213 	mov	dpl,r2
   208E 8B 83               214 	mov	dph,r3
   2090 8C F0               215 	mov	b,r4
   2092 12 42 42            216 	lcall	__gptrput
                            217 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:17: Q->Size		= 0 ;
   2095 74 03               218 	mov	a,#0x03
   2097 2A                  219 	add	a,r2
   2098 FD                  220 	mov	r5,a
   2099 E4                  221 	clr	a
   209A 3B                  222 	addc	a,r3
   209B FE                  223 	mov	r6,a
   209C 8C 07               224 	mov	ar7,r4
   209E 8D 82               225 	mov	dpl,r5
   20A0 8E 83               226 	mov	dph,r6
   20A2 8F F0               227 	mov	b,r7
   20A4 E4                  228 	clr	a
   20A5 12 42 42            229 	lcall	__gptrput
                            230 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:18: Q->Front	= 1 ;
   20A8 74 01               231 	mov	a,#0x01
   20AA 2A                  232 	add	a,r2
   20AB FD                  233 	mov	r5,a
   20AC E4                  234 	clr	a
   20AD 3B                  235 	addc	a,r3
   20AE FE                  236 	mov	r6,a
   20AF 8C 07               237 	mov	ar7,r4
   20B1 8D 82               238 	mov	dpl,r5
   20B3 8E 83               239 	mov	dph,r6
   20B5 8F F0               240 	mov	b,r7
   20B7 74 01               241 	mov	a,#0x01
   20B9 12 42 42            242 	lcall	__gptrput
                            243 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:19: Q->Rear		= 0 ;
   20BC 74 02               244 	mov	a,#0x02
   20BE 2A                  245 	add	a,r2
   20BF FD                  246 	mov	r5,a
   20C0 E4                  247 	clr	a
   20C1 3B                  248 	addc	a,r3
   20C2 FE                  249 	mov	r6,a
   20C3 8C 07               250 	mov	ar7,r4
   20C5 8D 82               251 	mov	dpl,r5
   20C7 8E 83               252 	mov	dph,r6
   20C9 8F F0               253 	mov	b,r7
   20CB E4                  254 	clr	a
   20CC 12 42 42            255 	lcall	__gptrput
                            256 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:20: Q->Array	= storage ;
   20CF 74 04               257 	mov	a,#0x04
   20D1 2A                  258 	add	a,r2
   20D2 FA                  259 	mov	r2,a
   20D3 E4                  260 	clr	a
   20D4 3B                  261 	addc	a,r3
   20D5 FB                  262 	mov	r3,a
   20D6 90 09 25            263 	mov	dptr,#_eventQueue_initialize_PARM_2
   20D9 E0                  264 	movx	a,@dptr
   20DA FD                  265 	mov	r5,a
   20DB A3                  266 	inc	dptr
   20DC E0                  267 	movx	a,@dptr
   20DD FE                  268 	mov	r6,a
   20DE A3                  269 	inc	dptr
   20DF E0                  270 	movx	a,@dptr
   20E0 FF                  271 	mov	r7,a
   20E1 8A 82               272 	mov	dpl,r2
   20E3 8B 83               273 	mov	dph,r3
   20E5 8C F0               274 	mov	b,r4
   20E7 ED                  275 	mov	a,r5
   20E8 12 42 42            276 	lcall	__gptrput
   20EB A3                  277 	inc	dptr
   20EC EE                  278 	mov	a,r6
   20ED 12 42 42            279 	lcall	__gptrput
   20F0 A3                  280 	inc	dptr
   20F1 EF                  281 	mov	a,r7
   20F2 12 42 42            282 	lcall	__gptrput
                            283 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:22: return true ;
   20F5 D3                  284 	setb	c
   20F6 22                  285 	ret
                            286 ;------------------------------------------------------------
                            287 ;Allocation info for local variables in function 'eventQueue_isEmpty'
                            288 ;------------------------------------------------------------
                            289 ;Q                         Allocated with name '_eventQueue_isEmpty_Q_1_1'
                            290 ;------------------------------------------------------------
                            291 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:26: uint8_t eventQueue_isEmpty(	eventQueue_t* Q)
                            292 ;	-----------------------------------------
                            293 ;	 function eventQueue_isEmpty
                            294 ;	-----------------------------------------
   20F7                     295 _eventQueue_isEmpty:
   20F7 AA F0               296 	mov	r2,b
   20F9 AB 83               297 	mov	r3,dph
   20FB E5 82               298 	mov	a,dpl
   20FD 90 09 2C            299 	mov	dptr,#_eventQueue_isEmpty_Q_1_1
   2100 F0                  300 	movx	@dptr,a
   2101 A3                  301 	inc	dptr
   2102 EB                  302 	mov	a,r3
   2103 F0                  303 	movx	@dptr,a
   2104 A3                  304 	inc	dptr
   2105 EA                  305 	mov	a,r2
   2106 F0                  306 	movx	@dptr,a
                            307 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:28: return Q->Size == 0 ;
   2107 90 09 2C            308 	mov	dptr,#_eventQueue_isEmpty_Q_1_1
   210A E0                  309 	movx	a,@dptr
   210B FA                  310 	mov	r2,a
   210C A3                  311 	inc	dptr
   210D E0                  312 	movx	a,@dptr
   210E FB                  313 	mov	r3,a
   210F A3                  314 	inc	dptr
   2110 E0                  315 	movx	a,@dptr
   2111 FC                  316 	mov	r4,a
   2112 74 03               317 	mov	a,#0x03
   2114 2A                  318 	add	a,r2
   2115 FA                  319 	mov	r2,a
   2116 E4                  320 	clr	a
   2117 3B                  321 	addc	a,r3
   2118 FB                  322 	mov	r3,a
   2119 8A 82               323 	mov	dpl,r2
   211B 8B 83               324 	mov	dph,r3
   211D 8C F0               325 	mov	b,r4
   211F 12 4E 6E            326 	lcall	__gptrget
   2122 FA                  327 	mov	r2,a
   2123 E4                  328 	clr	a
   2124 BA 00 01            329 	cjne	r2,#0x00,00103$
   2127 04                  330 	inc	a
   2128                     331 00103$:
   2128 F5 82               332 	mov	dpl,a
   212A 22                  333 	ret
                            334 ;------------------------------------------------------------
                            335 ;Allocation info for local variables in function 'eventQueue_isFull'
                            336 ;------------------------------------------------------------
                            337 ;Q                         Allocated with name '_eventQueue_isFull_Q_1_1'
                            338 ;------------------------------------------------------------
                            339 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:32: uint8_t eventQueue_isFull(	eventQueue_t* Q)
                            340 ;	-----------------------------------------
                            341 ;	 function eventQueue_isFull
                            342 ;	-----------------------------------------
   212B                     343 _eventQueue_isFull:
   212B AA F0               344 	mov	r2,b
   212D AB 83               345 	mov	r3,dph
   212F E5 82               346 	mov	a,dpl
   2131 90 09 2F            347 	mov	dptr,#_eventQueue_isFull_Q_1_1
   2134 F0                  348 	movx	@dptr,a
   2135 A3                  349 	inc	dptr
   2136 EB                  350 	mov	a,r3
   2137 F0                  351 	movx	@dptr,a
   2138 A3                  352 	inc	dptr
   2139 EA                  353 	mov	a,r2
   213A F0                  354 	movx	@dptr,a
                            355 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:34: return Q->Size == Q->Capacity ;
   213B 90 09 2F            356 	mov	dptr,#_eventQueue_isFull_Q_1_1
   213E E0                  357 	movx	a,@dptr
   213F FA                  358 	mov	r2,a
   2140 A3                  359 	inc	dptr
   2141 E0                  360 	movx	a,@dptr
   2142 FB                  361 	mov	r3,a
   2143 A3                  362 	inc	dptr
   2144 E0                  363 	movx	a,@dptr
   2145 FC                  364 	mov	r4,a
   2146 74 03               365 	mov	a,#0x03
   2148 2A                  366 	add	a,r2
   2149 FD                  367 	mov	r5,a
   214A E4                  368 	clr	a
   214B 3B                  369 	addc	a,r3
   214C FE                  370 	mov	r6,a
   214D 8C 07               371 	mov	ar7,r4
   214F 8D 82               372 	mov	dpl,r5
   2151 8E 83               373 	mov	dph,r6
   2153 8F F0               374 	mov	b,r7
   2155 12 4E 6E            375 	lcall	__gptrget
   2158 FD                  376 	mov	r5,a
   2159 8A 82               377 	mov	dpl,r2
   215B 8B 83               378 	mov	dph,r3
   215D 8C F0               379 	mov	b,r4
   215F 12 4E 6E            380 	lcall	__gptrget
   2162 FA                  381 	mov	r2,a
   2163 ED                  382 	mov	a,r5
   2164 B5 02 04            383 	cjne	a,ar2,00103$
   2167 74 01               384 	mov	a,#0x01
   2169 80 01               385 	sjmp	00104$
   216B                     386 00103$:
   216B E4                  387 	clr	a
   216C                     388 00104$:
   216C F5 82               389 	mov	dpl,a
   216E 22                  390 	ret
                            391 ;------------------------------------------------------------
                            392 ;Allocation info for local variables in function 'nextLocationFromPoint'
                            393 ;------------------------------------------------------------
                            394 ;location                  Allocated with name '_nextLocationFromPoint_PARM_2'
                            395 ;Q                         Allocated with name '_nextLocationFromPoint_Q_1_1'
                            396 ;------------------------------------------------------------
                            397 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:38: static eventQueueIndex_t nextLocationFromPoint(	eventQueue_t* Q, eventQueueIndex_t location)
                            398 ;	-----------------------------------------
                            399 ;	 function nextLocationFromPoint
                            400 ;	-----------------------------------------
   216F                     401 _nextLocationFromPoint:
   216F AA F0               402 	mov	r2,b
   2171 AB 83               403 	mov	r3,dph
   2173 E5 82               404 	mov	a,dpl
   2175 90 09 33            405 	mov	dptr,#_nextLocationFromPoint_Q_1_1
   2178 F0                  406 	movx	@dptr,a
   2179 A3                  407 	inc	dptr
   217A EB                  408 	mov	a,r3
   217B F0                  409 	movx	@dptr,a
   217C A3                  410 	inc	dptr
   217D EA                  411 	mov	a,r2
   217E F0                  412 	movx	@dptr,a
                            413 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:40: if(++location == Q->Capacity)
   217F 90 09 32            414 	mov	dptr,#_nextLocationFromPoint_PARM_2
   2182 E0                  415 	movx	a,@dptr
   2183 24 01               416 	add	a,#0x01
   2185 F0                  417 	movx	@dptr,a
   2186 90 09 33            418 	mov	dptr,#_nextLocationFromPoint_Q_1_1
   2189 E0                  419 	movx	a,@dptr
   218A FA                  420 	mov	r2,a
   218B A3                  421 	inc	dptr
   218C E0                  422 	movx	a,@dptr
   218D FB                  423 	mov	r3,a
   218E A3                  424 	inc	dptr
   218F E0                  425 	movx	a,@dptr
   2190 FC                  426 	mov	r4,a
   2191 8A 82               427 	mov	dpl,r2
   2193 8B 83               428 	mov	dph,r3
   2195 8C F0               429 	mov	b,r4
   2197 12 4E 6E            430 	lcall	__gptrget
   219A FA                  431 	mov	r2,a
   219B 90 09 32            432 	mov	dptr,#_nextLocationFromPoint_PARM_2
   219E E0                  433 	movx	a,@dptr
   219F FB                  434 	mov	r3,a
   21A0 B5 02 05            435 	cjne	a,ar2,00102$
                            436 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:42: location = 0 ;
   21A3 90 09 32            437 	mov	dptr,#_nextLocationFromPoint_PARM_2
   21A6 E4                  438 	clr	a
   21A7 F0                  439 	movx	@dptr,a
   21A8                     440 00102$:
                            441 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:45: return location ;
   21A8 90 09 32            442 	mov	dptr,#_nextLocationFromPoint_PARM_2
   21AB E0                  443 	movx	a,@dptr
   21AC F5 82               444 	mov	dpl,a
   21AE 22                  445 	ret
                            446 ;------------------------------------------------------------
                            447 ;Allocation info for local variables in function 'eventQueue_insert'
                            448 ;------------------------------------------------------------
                            449 ;event                     Allocated with name '_eventQueue_insert_PARM_2'
                            450 ;Q                         Allocated with name '_eventQueue_insert_Q_1_1'
                            451 ;------------------------------------------------------------
                            452 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:51: bool eventQueue_insert(		eventQueue_t* Q, event_t* event)
                            453 ;	-----------------------------------------
                            454 ;	 function eventQueue_insert
                            455 ;	-----------------------------------------
   21AF                     456 _eventQueue_insert:
   21AF AA F0               457 	mov	r2,b
   21B1 AB 83               458 	mov	r3,dph
   21B3 E5 82               459 	mov	a,dpl
   21B5 90 09 39            460 	mov	dptr,#_eventQueue_insert_Q_1_1
   21B8 F0                  461 	movx	@dptr,a
   21B9 A3                  462 	inc	dptr
   21BA EB                  463 	mov	a,r3
   21BB F0                  464 	movx	@dptr,a
   21BC A3                  465 	inc	dptr
   21BD EA                  466 	mov	a,r2
   21BE F0                  467 	movx	@dptr,a
                            468 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:53: if(!eventQueue_isFull(Q))
   21BF 90 09 39            469 	mov	dptr,#_eventQueue_insert_Q_1_1
   21C2 E0                  470 	movx	a,@dptr
   21C3 FA                  471 	mov	r2,a
   21C4 A3                  472 	inc	dptr
   21C5 E0                  473 	movx	a,@dptr
   21C6 FB                  474 	mov	r3,a
   21C7 A3                  475 	inc	dptr
   21C8 E0                  476 	movx	a,@dptr
   21C9 FC                  477 	mov	r4,a
   21CA 8A 82               478 	mov	dpl,r2
   21CC 8B 83               479 	mov	dph,r3
   21CE 8C F0               480 	mov	b,r4
   21D0 12 21 2B            481 	lcall	_eventQueue_isFull
   21D3 E5 82               482 	mov	a,dpl
   21D5 60 03               483 	jz	00110$
   21D7 02 23 03            484 	ljmp	00102$
   21DA                     485 00110$:
                            486 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:55: Q->Size++ ;
   21DA 90 09 39            487 	mov	dptr,#_eventQueue_insert_Q_1_1
   21DD E0                  488 	movx	a,@dptr
   21DE FA                  489 	mov	r2,a
   21DF A3                  490 	inc	dptr
   21E0 E0                  491 	movx	a,@dptr
   21E1 FB                  492 	mov	r3,a
   21E2 A3                  493 	inc	dptr
   21E3 E0                  494 	movx	a,@dptr
   21E4 FC                  495 	mov	r4,a
   21E5 74 03               496 	mov	a,#0x03
   21E7 2A                  497 	add	a,r2
   21E8 FD                  498 	mov	r5,a
   21E9 E4                  499 	clr	a
   21EA 3B                  500 	addc	a,r3
   21EB FE                  501 	mov	r6,a
   21EC 8C 07               502 	mov	ar7,r4
   21EE 8D 82               503 	mov	dpl,r5
   21F0 8E 83               504 	mov	dph,r6
   21F2 8F F0               505 	mov	b,r7
   21F4 12 4E 6E            506 	lcall	__gptrget
   21F7 F8                  507 	mov	r0,a
   21F8 08                  508 	inc	r0
   21F9 8D 82               509 	mov	dpl,r5
   21FB 8E 83               510 	mov	dph,r6
   21FD 8F F0               511 	mov	b,r7
   21FF E8                  512 	mov	a,r0
   2200 12 42 42            513 	lcall	__gptrput
                            514 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:56: Q->Rear = nextLocationFromPoint(Q, Q->Rear) ;
   2203 74 02               515 	mov	a,#0x02
   2205 2A                  516 	add	a,r2
   2206 FD                  517 	mov	r5,a
   2207 E4                  518 	clr	a
   2208 3B                  519 	addc	a,r3
   2209 FE                  520 	mov	r6,a
   220A 8C 07               521 	mov	ar7,r4
   220C 8D 82               522 	mov	dpl,r5
   220E 8E 83               523 	mov	dph,r6
   2210 8F F0               524 	mov	b,r7
   2212 12 4E 6E            525 	lcall	__gptrget
   2215 90 09 32            526 	mov	dptr,#_nextLocationFromPoint_PARM_2
   2218 F0                  527 	movx	@dptr,a
   2219 8A 82               528 	mov	dpl,r2
   221B 8B 83               529 	mov	dph,r3
   221D 8C F0               530 	mov	b,r4
   221F C0 05               531 	push	ar5
   2221 C0 06               532 	push	ar6
   2223 C0 07               533 	push	ar7
   2225 12 21 6F            534 	lcall	_nextLocationFromPoint
   2228 AA 82               535 	mov	r2,dpl
   222A D0 07               536 	pop	ar7
   222C D0 06               537 	pop	ar6
   222E D0 05               538 	pop	ar5
   2230 8D 82               539 	mov	dpl,r5
   2232 8E 83               540 	mov	dph,r6
   2234 8F F0               541 	mov	b,r7
   2236 EA                  542 	mov	a,r2
   2237 12 42 42            543 	lcall	__gptrput
                            544 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:57: Q->Array[Q->Rear] = event ;
   223A 90 09 39            545 	mov	dptr,#_eventQueue_insert_Q_1_1
   223D E0                  546 	movx	a,@dptr
   223E FA                  547 	mov	r2,a
   223F A3                  548 	inc	dptr
   2240 E0                  549 	movx	a,@dptr
   2241 FB                  550 	mov	r3,a
   2242 A3                  551 	inc	dptr
   2243 E0                  552 	movx	a,@dptr
   2244 FC                  553 	mov	r4,a
   2245 74 04               554 	mov	a,#0x04
   2247 2A                  555 	add	a,r2
   2248 FD                  556 	mov	r5,a
   2249 E4                  557 	clr	a
   224A 3B                  558 	addc	a,r3
   224B FE                  559 	mov	r6,a
   224C 8C 07               560 	mov	ar7,r4
   224E 8D 82               561 	mov	dpl,r5
   2250 8E 83               562 	mov	dph,r6
   2252 8F F0               563 	mov	b,r7
   2254 12 4E 6E            564 	lcall	__gptrget
   2257 FD                  565 	mov	r5,a
   2258 A3                  566 	inc	dptr
   2259 12 4E 6E            567 	lcall	__gptrget
   225C FE                  568 	mov	r6,a
   225D A3                  569 	inc	dptr
   225E 12 4E 6E            570 	lcall	__gptrget
   2261 FF                  571 	mov	r7,a
   2262 74 02               572 	mov	a,#0x02
   2264 2A                  573 	add	a,r2
   2265 FA                  574 	mov	r2,a
   2266 E4                  575 	clr	a
   2267 3B                  576 	addc	a,r3
   2268 FB                  577 	mov	r3,a
   2269 8A 82               578 	mov	dpl,r2
   226B 8B 83               579 	mov	dph,r3
   226D 8C F0               580 	mov	b,r4
   226F 12 4E 6E            581 	lcall	__gptrget
   2272 FA                  582 	mov	r2,a
   2273 C2 D5               583 	clr	F0
   2275 75 F0 03            584 	mov	b,#0x03
   2278 EA                  585 	mov	a,r2
   2279 30 E7 04            586 	jnb	acc.7,00111$
   227C B2 D5               587 	cpl	F0
   227E F4                  588 	cpl	a
   227F 04                  589 	inc	a
   2280                     590 00111$:
   2280 A4                  591 	mul	ab
   2281 30 D5 0A            592 	jnb	F0,00112$
   2284 F4                  593 	cpl	a
   2285 24 01               594 	add	a,#0x01
   2287 C5 F0               595 	xch	a,b
   2289 F4                  596 	cpl	a
   228A 34 00               597 	addc	a,#0x00
   228C C5 F0               598 	xch	a,b
   228E                     599 00112$:
   228E 2D                  600 	add	a,r5
   228F FD                  601 	mov	r5,a
   2290 EE                  602 	mov	a,r6
   2291 35 F0               603 	addc	a,b
   2293 FE                  604 	mov	r6,a
   2294 90 09 36            605 	mov	dptr,#_eventQueue_insert_PARM_2
   2297 E0                  606 	movx	a,@dptr
   2298 FA                  607 	mov	r2,a
   2299 A3                  608 	inc	dptr
   229A E0                  609 	movx	a,@dptr
   229B FB                  610 	mov	r3,a
   229C A3                  611 	inc	dptr
   229D E0                  612 	movx	a,@dptr
   229E FC                  613 	mov	r4,a
   229F 8D 82               614 	mov	dpl,r5
   22A1 8E 83               615 	mov	dph,r6
   22A3 8F F0               616 	mov	b,r7
   22A5 EA                  617 	mov	a,r2
   22A6 12 42 42            618 	lcall	__gptrput
   22A9 A3                  619 	inc	dptr
   22AA EB                  620 	mov	a,r3
   22AB 12 42 42            621 	lcall	__gptrput
   22AE A3                  622 	inc	dptr
   22AF EC                  623 	mov	a,r4
   22B0 12 42 42            624 	lcall	__gptrput
                            625 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:59: printf("\t\t\tPosting event type: %s\n", event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
   22B3 8A 82               626 	mov	dpl,r2
   22B5 8B 83               627 	mov	dph,r3
   22B7 8C F0               628 	mov	b,r4
   22B9 12 4E 6E            629 	lcall	__gptrget
   22BC FA                  630 	mov	r2,a
   22BD C3                  631 	clr	c
   22BE 74 05               632 	mov	a,#0x05
   22C0 9A                  633 	subb	a,r2
   22C1 B3                  634 	cpl	c
   22C2 E4                  635 	clr	a
   22C3 33                  636 	rlc	a
   22C4 FB                  637 	mov	r3,a
   22C5 60 19               638 	jz	00106$
   22C7 EA                  639 	mov	a,r2
   22C8 75 F0 03            640 	mov	b,#0x03
   22CB A4                  641 	mul	ab
   22CC 24 EF               642 	add	a,#_eventTypes
   22CE F5 82               643 	mov	dpl,a
   22D0 74 0E               644 	mov	a,#(_eventTypes >> 8)
   22D2 35 F0               645 	addc	a,b
   22D4 F5 83               646 	mov	dph,a
   22D6 E0                  647 	movx	a,@dptr
   22D7 FA                  648 	mov	r2,a
   22D8 A3                  649 	inc	dptr
   22D9 E0                  650 	movx	a,@dptr
   22DA FB                  651 	mov	r3,a
   22DB A3                  652 	inc	dptr
   22DC E0                  653 	movx	a,@dptr
   22DD FC                  654 	mov	r4,a
   22DE 80 06               655 	sjmp	00107$
   22E0                     656 00106$:
   22E0 7A 53               657 	mov	r2,#__str_1
   22E2 7B 52               658 	mov	r3,#(__str_1 >> 8)
   22E4 7C 80               659 	mov	r4,#0x80
   22E6                     660 00107$:
   22E6 C0 02               661 	push	ar2
   22E8 C0 03               662 	push	ar3
   22EA C0 04               663 	push	ar4
   22EC 74 38               664 	mov	a,#__str_0
   22EE C0 E0               665 	push	acc
   22F0 74 52               666 	mov	a,#(__str_0 >> 8)
   22F2 C0 E0               667 	push	acc
   22F4 74 80               668 	mov	a,#0x80
   22F6 C0 E0               669 	push	acc
   22F8 12 46 22            670 	lcall	_printf
   22FB E5 81               671 	mov	a,sp
   22FD 24 FA               672 	add	a,#0xfa
   22FF F5 81               673 	mov	sp,a
                            674 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:61: return true ;
   2301 D3                  675 	setb	c
   2302 22                  676 	ret
   2303                     677 00102$:
                            678 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:65: return false ;
   2303 C3                  679 	clr	c
   2304 22                  680 	ret
                            681 ;------------------------------------------------------------
                            682 ;Allocation info for local variables in function 'eventQueue_remove'
                            683 ;------------------------------------------------------------
                            684 ;sloc0                     Allocated with name '_eventQueue_remove_sloc0_1_0'
                            685 ;sloc1                     Allocated with name '_eventQueue_remove_sloc1_1_0'
                            686 ;sloc2                     Allocated with name '_eventQueue_remove_sloc2_1_0'
                            687 ;Q                         Allocated with name '_eventQueue_remove_Q_1_1'
                            688 ;eventReceived             Allocated with name '_eventQueue_remove_eventReceived_2_2'
                            689 ;------------------------------------------------------------
                            690 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:70: event_t* eventQueue_remove(	eventQueue_t* Q)
                            691 ;	-----------------------------------------
                            692 ;	 function eventQueue_remove
                            693 ;	-----------------------------------------
   2305                     694 _eventQueue_remove:
   2305 AA F0               695 	mov	r2,b
   2307 AB 83               696 	mov	r3,dph
   2309 E5 82               697 	mov	a,dpl
   230B 90 09 3C            698 	mov	dptr,#_eventQueue_remove_Q_1_1
   230E F0                  699 	movx	@dptr,a
   230F A3                  700 	inc	dptr
   2310 EB                  701 	mov	a,r3
   2311 F0                  702 	movx	@dptr,a
   2312 A3                  703 	inc	dptr
   2313 EA                  704 	mov	a,r2
   2314 F0                  705 	movx	@dptr,a
                            706 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:72: if(!eventQueue_isEmpty(Q))
   2315 90 09 3C            707 	mov	dptr,#_eventQueue_remove_Q_1_1
   2318 E0                  708 	movx	a,@dptr
   2319 FA                  709 	mov	r2,a
   231A A3                  710 	inc	dptr
   231B E0                  711 	movx	a,@dptr
   231C FB                  712 	mov	r3,a
   231D A3                  713 	inc	dptr
   231E E0                  714 	movx	a,@dptr
   231F FC                  715 	mov	r4,a
   2320 8A 82               716 	mov	dpl,r2
   2322 8B 83               717 	mov	dph,r3
   2324 8C F0               718 	mov	b,r4
   2326 12 20 F7            719 	lcall	_eventQueue_isEmpty
   2329 E5 82               720 	mov	a,dpl
   232B 60 03               721 	jz	00107$
   232D 02 23 F7            722 	ljmp	00102$
   2330                     723 00107$:
                            724 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:74: event_t* eventReceived = Q->Array[Q->Front] ;
   2330 90 09 3C            725 	mov	dptr,#_eventQueue_remove_Q_1_1
   2333 E0                  726 	movx	a,@dptr
   2334 FA                  727 	mov	r2,a
   2335 A3                  728 	inc	dptr
   2336 E0                  729 	movx	a,@dptr
   2337 FB                  730 	mov	r3,a
   2338 A3                  731 	inc	dptr
   2339 E0                  732 	movx	a,@dptr
   233A FC                  733 	mov	r4,a
   233B 74 04               734 	mov	a,#0x04
   233D 2A                  735 	add	a,r2
   233E FD                  736 	mov	r5,a
   233F E4                  737 	clr	a
   2340 3B                  738 	addc	a,r3
   2341 FE                  739 	mov	r6,a
   2342 8C 07               740 	mov	ar7,r4
   2344 8D 82               741 	mov	dpl,r5
   2346 8E 83               742 	mov	dph,r6
   2348 8F F0               743 	mov	b,r7
   234A 12 4E 6E            744 	lcall	__gptrget
   234D F5 2A               745 	mov	_eventQueue_remove_sloc0_1_0,a
   234F A3                  746 	inc	dptr
   2350 12 4E 6E            747 	lcall	__gptrget
   2353 F5 2B               748 	mov	(_eventQueue_remove_sloc0_1_0 + 1),a
   2355 A3                  749 	inc	dptr
   2356 12 4E 6E            750 	lcall	__gptrget
   2359 F5 2C               751 	mov	(_eventQueue_remove_sloc0_1_0 + 2),a
   235B 74 01               752 	mov	a,#0x01
   235D 2A                  753 	add	a,r2
   235E F5 2E               754 	mov	_eventQueue_remove_sloc2_1_0,a
   2360 E4                  755 	clr	a
   2361 3B                  756 	addc	a,r3
   2362 F5 2F               757 	mov	(_eventQueue_remove_sloc2_1_0 + 1),a
   2364 8C 30               758 	mov	(_eventQueue_remove_sloc2_1_0 + 2),r4
   2366 85 2E 82            759 	mov	dpl,_eventQueue_remove_sloc2_1_0
   2369 85 2F 83            760 	mov	dph,(_eventQueue_remove_sloc2_1_0 + 1)
   236C 85 30 F0            761 	mov	b,(_eventQueue_remove_sloc2_1_0 + 2)
   236F 12 4E 6E            762 	lcall	__gptrget
   2372 F5 2D               763 	mov	_eventQueue_remove_sloc1_1_0,a
   2374 C2 D5               764 	clr	F0
   2376 75 F0 03            765 	mov	b,#0x03
   2379 E5 2D               766 	mov	a,_eventQueue_remove_sloc1_1_0
   237B 30 E7 04            767 	jnb	acc.7,00108$
   237E B2 D5               768 	cpl	F0
   2380 F4                  769 	cpl	a
   2381 04                  770 	inc	a
   2382                     771 00108$:
   2382 A4                  772 	mul	ab
   2383 30 D5 0A            773 	jnb	F0,00109$
   2386 F4                  774 	cpl	a
   2387 24 01               775 	add	a,#0x01
   2389 C5 F0               776 	xch	a,b
   238B F4                  777 	cpl	a
   238C 34 00               778 	addc	a,#0x00
   238E C5 F0               779 	xch	a,b
   2390                     780 00109$:
   2390 25 2A               781 	add	a,_eventQueue_remove_sloc0_1_0
   2392 FF                  782 	mov	r7,a
   2393 E5 2B               783 	mov	a,(_eventQueue_remove_sloc0_1_0 + 1)
   2395 35 F0               784 	addc	a,b
   2397 FE                  785 	mov	r6,a
   2398 AD 2C               786 	mov	r5,(_eventQueue_remove_sloc0_1_0 + 2)
   239A 8F 82               787 	mov	dpl,r7
   239C 8E 83               788 	mov	dph,r6
   239E 8D F0               789 	mov	b,r5
   23A0 12 4E 6E            790 	lcall	__gptrget
   23A3 F5 2A               791 	mov	_eventQueue_remove_sloc0_1_0,a
   23A5 A3                  792 	inc	dptr
   23A6 12 4E 6E            793 	lcall	__gptrget
   23A9 F5 2B               794 	mov	(_eventQueue_remove_sloc0_1_0 + 1),a
   23AB A3                  795 	inc	dptr
   23AC 12 4E 6E            796 	lcall	__gptrget
   23AF F5 2C               797 	mov	(_eventQueue_remove_sloc0_1_0 + 2),a
                            798 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:76: Q->Size-- ;
   23B1 74 03               799 	mov	a,#0x03
   23B3 2A                  800 	add	a,r2
   23B4 F8                  801 	mov	r0,a
   23B5 E4                  802 	clr	a
   23B6 3B                  803 	addc	a,r3
   23B7 F9                  804 	mov	r1,a
   23B8 8C 05               805 	mov	ar5,r4
   23BA 88 82               806 	mov	dpl,r0
   23BC 89 83               807 	mov	dph,r1
   23BE 8D F0               808 	mov	b,r5
   23C0 12 4E 6E            809 	lcall	__gptrget
   23C3 FE                  810 	mov	r6,a
   23C4 1E                  811 	dec	r6
   23C5 88 82               812 	mov	dpl,r0
   23C7 89 83               813 	mov	dph,r1
   23C9 8D F0               814 	mov	b,r5
   23CB EE                  815 	mov	a,r6
   23CC 12 42 42            816 	lcall	__gptrput
                            817 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:77: Q->Front = nextLocationFromPoint(Q, Q->Front) ;
   23CF 90 09 32            818 	mov	dptr,#_nextLocationFromPoint_PARM_2
   23D2 E5 2D               819 	mov	a,_eventQueue_remove_sloc1_1_0
   23D4 F0                  820 	movx	@dptr,a
   23D5 8A 82               821 	mov	dpl,r2
   23D7 8B 83               822 	mov	dph,r3
   23D9 8C F0               823 	mov	b,r4
   23DB 12 21 6F            824 	lcall	_nextLocationFromPoint
   23DE AA 82               825 	mov	r2,dpl
   23E0 85 2E 82            826 	mov	dpl,_eventQueue_remove_sloc2_1_0
   23E3 85 2F 83            827 	mov	dph,(_eventQueue_remove_sloc2_1_0 + 1)
   23E6 85 30 F0            828 	mov	b,(_eventQueue_remove_sloc2_1_0 + 2)
   23E9 EA                  829 	mov	a,r2
   23EA 12 42 42            830 	lcall	__gptrput
                            831 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:79: return eventReceived ;
   23ED 85 2A 82            832 	mov	dpl,_eventQueue_remove_sloc0_1_0
   23F0 85 2B 83            833 	mov	dph,(_eventQueue_remove_sloc0_1_0 + 1)
   23F3 85 2C F0            834 	mov	b,(_eventQueue_remove_sloc0_1_0 + 2)
   23F6 22                  835 	ret
   23F7                     836 00102$:
                            837 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:83: return (event_t*)0 ;
   23F7 90 00 00            838 	mov	dptr,#0x0000
   23FA 75 F0 00            839 	mov	b,#0x00
   23FD 22                  840 	ret
                            841 ;------------------------------------------------------------
                            842 ;Allocation info for local variables in function 'addToDeferredTypeList'
                            843 ;------------------------------------------------------------
                            844 ;eventTypeToDefer          Allocated with name '_addToDeferredTypeList_PARM_2'
                            845 ;sm                        Allocated with name '_addToDeferredTypeList_sm_1_1'
                            846 ;sloc0                     Allocated with name '_addToDeferredTypeList_sloc0_1_0'
                            847 ;------------------------------------------------------------
                            848 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:88: void addToDeferredTypeList(			stateMachine_t* sm, eventType_t	eventTypeToDefer)
                            849 ;	-----------------------------------------
                            850 ;	 function addToDeferredTypeList
                            851 ;	-----------------------------------------
   23FE                     852 _addToDeferredTypeList:
   23FE AA F0               853 	mov	r2,b
   2400 AB 83               854 	mov	r3,dph
   2402 E5 82               855 	mov	a,dpl
   2404 90 09 40            856 	mov	dptr,#_addToDeferredTypeList_sm_1_1
   2407 F0                  857 	movx	@dptr,a
   2408 A3                  858 	inc	dptr
   2409 EB                  859 	mov	a,r3
   240A F0                  860 	movx	@dptr,a
   240B A3                  861 	inc	dptr
   240C EA                  862 	mov	a,r2
   240D F0                  863 	movx	@dptr,a
                            864 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:90: if(sm->currentDepthOfEventsToDeferList < sm->maxDepthOfEventsToDeferList)
   240E 90 09 40            865 	mov	dptr,#_addToDeferredTypeList_sm_1_1
   2411 E0                  866 	movx	a,@dptr
   2412 FA                  867 	mov	r2,a
   2413 A3                  868 	inc	dptr
   2414 E0                  869 	movx	a,@dptr
   2415 FB                  870 	mov	r3,a
   2416 A3                  871 	inc	dptr
   2417 E0                  872 	movx	a,@dptr
   2418 FC                  873 	mov	r4,a
   2419 74 13               874 	mov	a,#0x13
   241B 2A                  875 	add	a,r2
   241C F5 65               876 	mov	_addToDeferredTypeList_sloc0_1_0,a
   241E E4                  877 	clr	a
   241F 3B                  878 	addc	a,r3
   2420 F5 66               879 	mov	(_addToDeferredTypeList_sloc0_1_0 + 1),a
   2422 8C 67               880 	mov	(_addToDeferredTypeList_sloc0_1_0 + 2),r4
   2424 85 65 82            881 	mov	dpl,_addToDeferredTypeList_sloc0_1_0
   2427 85 66 83            882 	mov	dph,(_addToDeferredTypeList_sloc0_1_0 + 1)
   242A 85 67 F0            883 	mov	b,(_addToDeferredTypeList_sloc0_1_0 + 2)
   242D 12 4E 6E            884 	lcall	__gptrget
   2430 F8                  885 	mov	r0,a
   2431 74 12               886 	mov	a,#0x12
   2433 2A                  887 	add	a,r2
   2434 F9                  888 	mov	r1,a
   2435 E4                  889 	clr	a
   2436 3B                  890 	addc	a,r3
   2437 FD                  891 	mov	r5,a
   2438 8C 06               892 	mov	ar6,r4
   243A 89 82               893 	mov	dpl,r1
   243C 8D 83               894 	mov	dph,r5
   243E 8E F0               895 	mov	b,r6
   2440 12 4E 6E            896 	lcall	__gptrget
   2443 F9                  897 	mov	r1,a
   2444 C3                  898 	clr	c
   2445 E8                  899 	mov	a,r0
   2446 64 80               900 	xrl	a,#0x80
   2448 89 F0               901 	mov	b,r1
   244A 63 F0 80            902 	xrl	b,#0x80
   244D 95 F0               903 	subb	a,b
   244F 50 3D               904 	jnc	00103$
                            905 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:92: sm->typesOfEventsToDefer[sm->currentDepthOfEventsToDeferList] = eventTypeToDefer ;
   2451 74 14               906 	mov	a,#0x14
   2453 2A                  907 	add	a,r2
   2454 FA                  908 	mov	r2,a
   2455 E4                  909 	clr	a
   2456 3B                  910 	addc	a,r3
   2457 FB                  911 	mov	r3,a
   2458 8A 82               912 	mov	dpl,r2
   245A 8B 83               913 	mov	dph,r3
   245C 8C F0               914 	mov	b,r4
   245E 12 4E 6E            915 	lcall	__gptrget
   2461 FA                  916 	mov	r2,a
   2462 A3                  917 	inc	dptr
   2463 12 4E 6E            918 	lcall	__gptrget
   2466 FB                  919 	mov	r3,a
   2467 A3                  920 	inc	dptr
   2468 12 4E 6E            921 	lcall	__gptrget
   246B FC                  922 	mov	r4,a
   246C E8                  923 	mov	a,r0
   246D 2A                  924 	add	a,r2
   246E FA                  925 	mov	r2,a
   246F E4                  926 	clr	a
   2470 3B                  927 	addc	a,r3
   2471 FB                  928 	mov	r3,a
   2472 90 09 3F            929 	mov	dptr,#_addToDeferredTypeList_PARM_2
   2475 E0                  930 	movx	a,@dptr
   2476 FD                  931 	mov	r5,a
   2477 8A 82               932 	mov	dpl,r2
   2479 8B 83               933 	mov	dph,r3
   247B 8C F0               934 	mov	b,r4
   247D 12 42 42            935 	lcall	__gptrput
                            936 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:94: sm->currentDepthOfEventsToDeferList++ ;
   2480 08                  937 	inc	r0
   2481 85 65 82            938 	mov	dpl,_addToDeferredTypeList_sloc0_1_0
   2484 85 66 83            939 	mov	dph,(_addToDeferredTypeList_sloc0_1_0 + 1)
   2487 85 67 F0            940 	mov	b,(_addToDeferredTypeList_sloc0_1_0 + 2)
   248A E8                  941 	mov	a,r0
   248B 02 42 42            942 	ljmp	__gptrput
   248E                     943 00103$:
   248E 22                  944 	ret
                            945 ;------------------------------------------------------------
                            946 ;Allocation info for local variables in function 'isEventTypeDeferred'
                            947 ;------------------------------------------------------------
                            948 ;eventTypeToCheck          Allocated with name '_isEventTypeDeferred_PARM_2'
                            949 ;sm                        Allocated with name '_isEventTypeDeferred_sm_1_1'
                            950 ;i                         Allocated with name '_isEventTypeDeferred_i_1_1'
                            951 ;sloc0                     Allocated with name '_isEventTypeDeferred_sloc0_1_0'
                            952 ;------------------------------------------------------------
                            953 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:99: bool isEventTypeDeferred(			stateMachine_t* sm, eventType_t	eventTypeToCheck)
                            954 ;	-----------------------------------------
                            955 ;	 function isEventTypeDeferred
                            956 ;	-----------------------------------------
   248F                     957 _isEventTypeDeferred:
   248F AA F0               958 	mov	r2,b
   2491 AB 83               959 	mov	r3,dph
   2493 E5 82               960 	mov	a,dpl
   2495 90 09 44            961 	mov	dptr,#_isEventTypeDeferred_sm_1_1
   2498 F0                  962 	movx	@dptr,a
   2499 A3                  963 	inc	dptr
   249A EB                  964 	mov	a,r3
   249B F0                  965 	movx	@dptr,a
   249C A3                  966 	inc	dptr
   249D EA                  967 	mov	a,r2
   249E F0                  968 	movx	@dptr,a
                            969 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:103: for( i = 0 ; i < sm->currentDepthOfEventsToDeferList ; i++ )
   249F 90 09 43            970 	mov	dptr,#_isEventTypeDeferred_PARM_2
   24A2 E0                  971 	movx	a,@dptr
   24A3 FA                  972 	mov	r2,a
   24A4 90 09 44            973 	mov	dptr,#_isEventTypeDeferred_sm_1_1
   24A7 E0                  974 	movx	a,@dptr
   24A8 FB                  975 	mov	r3,a
   24A9 A3                  976 	inc	dptr
   24AA E0                  977 	movx	a,@dptr
   24AB FC                  978 	mov	r4,a
   24AC A3                  979 	inc	dptr
   24AD E0                  980 	movx	a,@dptr
   24AE FD                  981 	mov	r5,a
   24AF 74 13               982 	mov	a,#0x13
   24B1 2B                  983 	add	a,r3
   24B2 F5 65               984 	mov	_isEventTypeDeferred_sloc0_1_0,a
   24B4 E4                  985 	clr	a
   24B5 3C                  986 	addc	a,r4
   24B6 F5 66               987 	mov	(_isEventTypeDeferred_sloc0_1_0 + 1),a
   24B8 8D 67               988 	mov	(_isEventTypeDeferred_sloc0_1_0 + 2),r5
   24BA 79 00               989 	mov	r1,#0x00
   24BC                     990 00103$:
   24BC C0 02               991 	push	ar2
   24BE 89 02               992 	mov	ar2,r1
   24C0 7E 00               993 	mov	r6,#0x00
   24C2 85 65 82            994 	mov	dpl,_isEventTypeDeferred_sloc0_1_0
   24C5 85 66 83            995 	mov	dph,(_isEventTypeDeferred_sloc0_1_0 + 1)
   24C8 85 67 F0            996 	mov	b,(_isEventTypeDeferred_sloc0_1_0 + 2)
   24CB 12 4E 6E            997 	lcall	__gptrget
   24CE FF                  998 	mov	r7,a
   24CF 33                  999 	rlc	a
   24D0 95 E0              1000 	subb	a,acc
   24D2 F8                 1001 	mov	r0,a
   24D3 C3                 1002 	clr	c
   24D4 EA                 1003 	mov	a,r2
   24D5 9F                 1004 	subb	a,r7
   24D6 EE                 1005 	mov	a,r6
   24D7 64 80              1006 	xrl	a,#0x80
   24D9 88 F0              1007 	mov	b,r0
   24DB 63 F0 80           1008 	xrl	b,#0x80
   24DE 95 F0              1009 	subb	a,b
   24E0 D0 02              1010 	pop	ar2
   24E2 50 35              1011 	jnc	00106$
                           1012 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:105: if(sm->typesOfEventsToDefer[i] == eventTypeToCheck)
   24E4 74 14              1013 	mov	a,#0x14
   24E6 2B                 1014 	add	a,r3
   24E7 FE                 1015 	mov	r6,a
   24E8 E4                 1016 	clr	a
   24E9 3C                 1017 	addc	a,r4
   24EA FF                 1018 	mov	r7,a
   24EB 8D 00              1019 	mov	ar0,r5
   24ED 8E 82              1020 	mov	dpl,r6
   24EF 8F 83              1021 	mov	dph,r7
   24F1 88 F0              1022 	mov	b,r0
   24F3 12 4E 6E           1023 	lcall	__gptrget
   24F6 FE                 1024 	mov	r6,a
   24F7 A3                 1025 	inc	dptr
   24F8 12 4E 6E           1026 	lcall	__gptrget
   24FB FF                 1027 	mov	r7,a
   24FC A3                 1028 	inc	dptr
   24FD 12 4E 6E           1029 	lcall	__gptrget
   2500 F8                 1030 	mov	r0,a
   2501 E9                 1031 	mov	a,r1
   2502 2E                 1032 	add	a,r6
   2503 FE                 1033 	mov	r6,a
   2504 E4                 1034 	clr	a
   2505 3F                 1035 	addc	a,r7
   2506 FF                 1036 	mov	r7,a
   2507 8E 82              1037 	mov	dpl,r6
   2509 8F 83              1038 	mov	dph,r7
   250B 88 F0              1039 	mov	b,r0
   250D 12 4E 6E           1040 	lcall	__gptrget
   2510 FE                 1041 	mov	r6,a
   2511 B5 02 02           1042 	cjne	a,ar2,00105$
                           1043 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:107: return true ;
   2514 D3                 1044 	setb	c
   2515 22                 1045 	ret
   2516                    1046 00105$:
                           1047 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:103: for( i = 0 ; i < sm->currentDepthOfEventsToDeferList ; i++ )
   2516 09                 1048 	inc	r1
   2517 80 A3              1049 	sjmp	00103$
   2519                    1050 00106$:
                           1051 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:111: return false ;
   2519 C3                 1052 	clr	c
   251A 22                 1053 	ret
                           1054 ;------------------------------------------------------------
                           1055 ;Allocation info for local variables in function 'removeFromDeferredTypeList'
                           1056 ;------------------------------------------------------------
                           1057 ;sloc0                     Allocated with name '_removeFromDeferredTypeList_sloc0_1_0'
                           1058 ;sloc1                     Allocated with name '_removeFromDeferredTypeList_sloc1_1_0'
                           1059 ;sloc2                     Allocated with name '_removeFromDeferredTypeList_sloc2_1_0'
                           1060 ;sloc3                     Allocated with name '_removeFromDeferredTypeList_sloc3_1_0'
                           1061 ;sloc4                     Allocated with name '_removeFromDeferredTypeList_sloc4_1_0'
                           1062 ;eventTypeToUnDefer        Allocated with name '_removeFromDeferredTypeList_PARM_2'
                           1063 ;sm                        Allocated with name '_removeFromDeferredTypeList_sm_1_1'
                           1064 ;i                         Allocated with name '_removeFromDeferredTypeList_i_2_2'
                           1065 ;firstEvent                Allocated with name '_removeFromDeferredTypeList_firstEvent_3_5'
                           1066 ;currentEvent              Allocated with name '_removeFromDeferredTypeList_currentEvent_3_5'
                           1067 ;------------------------------------------------------------
                           1068 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:115: void removeFromDeferredTypeList(	stateMachine_t* sm, eventType_t	eventTypeToUnDefer)
                           1069 ;	-----------------------------------------
                           1070 ;	 function removeFromDeferredTypeList
                           1071 ;	-----------------------------------------
   251B                    1072 _removeFromDeferredTypeList:
   251B AA F0              1073 	mov	r2,b
   251D AB 83              1074 	mov	r3,dph
   251F E5 82              1075 	mov	a,dpl
   2521 90 09 48           1076 	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
   2524 F0                 1077 	movx	@dptr,a
   2525 A3                 1078 	inc	dptr
   2526 EB                 1079 	mov	a,r3
   2527 F0                 1080 	movx	@dptr,a
   2528 A3                 1081 	inc	dptr
   2529 EA                 1082 	mov	a,r2
   252A F0                 1083 	movx	@dptr,a
                           1084 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:117: if(sm->currentDepthOfEventsToDeferList > 0)
   252B 90 09 48           1085 	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
   252E E0                 1086 	movx	a,@dptr
   252F FA                 1087 	mov	r2,a
   2530 A3                 1088 	inc	dptr
   2531 E0                 1089 	movx	a,@dptr
   2532 FB                 1090 	mov	r3,a
   2533 A3                 1091 	inc	dptr
   2534 E0                 1092 	movx	a,@dptr
   2535 FC                 1093 	mov	r4,a
   2536 74 13              1094 	mov	a,#0x13
   2538 2A                 1095 	add	a,r2
   2539 FA                 1096 	mov	r2,a
   253A E4                 1097 	clr	a
   253B 3B                 1098 	addc	a,r3
   253C FB                 1099 	mov	r3,a
   253D 8A 82              1100 	mov	dpl,r2
   253F 8B 83              1101 	mov	dph,r3
   2541 8C F0              1102 	mov	b,r4
   2543 12 4E 6E           1103 	lcall	__gptrget
   2546 FA                 1104 	mov	r2,a
   2547 C3                 1105 	clr	c
   2548 74 80              1106 	mov	a,#(0x00 ^ 0x80)
   254A 8A F0              1107 	mov	b,r2
   254C 63 F0 80           1108 	xrl	b,#0x80
   254F 95 F0              1109 	subb	a,b
   2551 40 01              1110 	jc	00136$
   2553 22                 1111 	ret
   2554                    1112 00136$:
                           1113 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:119: bool				found = false ;
   2554 C2 05              1114 	clr	_removeFromDeferredTypeList_found_2_2
                           1115 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:122: for( i = (sm->currentDepthOfEventsToDeferList - 1) ; i >= 0 ; i-- )
   2556 1A                 1116 	dec	r2
   2557 90 09 4B           1117 	mov	dptr,#_removeFromDeferredTypeList_i_2_2
   255A EA                 1118 	mov	a,r2
   255B F0                 1119 	movx	@dptr,a
   255C 90 09 47           1120 	mov	dptr,#_removeFromDeferredTypeList_PARM_2
   255F E0                 1121 	movx	a,@dptr
   2560 F5 32              1122 	mov	_removeFromDeferredTypeList_sloc1_1_0,a
   2562                    1123 00103$:
   2562 EA                 1124 	mov	a,r2
   2563 20 E7 63           1125 	jb	acc.7,00106$
                           1126 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:124: if(sm->typesOfEventsToDefer[i] == eventTypeToUnDefer)
   2566 90 09 48           1127 	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
   2569 E0                 1128 	movx	a,@dptr
   256A FC                 1129 	mov	r4,a
   256B A3                 1130 	inc	dptr
   256C E0                 1131 	movx	a,@dptr
   256D FD                 1132 	mov	r5,a
   256E A3                 1133 	inc	dptr
   256F E0                 1134 	movx	a,@dptr
   2570 FE                 1135 	mov	r6,a
   2571 74 14              1136 	mov	a,#0x14
   2573 2C                 1137 	add	a,r4
   2574 FF                 1138 	mov	r7,a
   2575 E4                 1139 	clr	a
   2576 3D                 1140 	addc	a,r5
   2577 F8                 1141 	mov	r0,a
   2578 8E 01              1142 	mov	ar1,r6
   257A 8F 82              1143 	mov	dpl,r7
   257C 88 83              1144 	mov	dph,r0
   257E 89 F0              1145 	mov	b,r1
   2580 12 4E 6E           1146 	lcall	__gptrget
   2583 FF                 1147 	mov	r7,a
   2584 A3                 1148 	inc	dptr
   2585 12 4E 6E           1149 	lcall	__gptrget
   2588 F8                 1150 	mov	r0,a
   2589 A3                 1151 	inc	dptr
   258A 12 4E 6E           1152 	lcall	__gptrget
   258D F9                 1153 	mov	r1,a
   258E EA                 1154 	mov	a,r2
   258F 2F                 1155 	add	a,r7
   2590 FF                 1156 	mov	r7,a
   2591 E4                 1157 	clr	a
   2592 38                 1158 	addc	a,r0
   2593 F8                 1159 	mov	r0,a
   2594 8F 82              1160 	mov	dpl,r7
   2596 88 83              1161 	mov	dph,r0
   2598 89 F0              1162 	mov	b,r1
   259A 12 4E 6E           1163 	lcall	__gptrget
   259D FF                 1164 	mov	r7,a
   259E B5 32 20           1165 	cjne	a,_removeFromDeferredTypeList_sloc1_1_0,00105$
                           1166 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:126: found = true ;
   25A1 D2 05              1167 	setb	_removeFromDeferredTypeList_found_2_2
                           1168 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:128: sm->currentDepthOfEventsToDeferList-- ;
   25A3 74 13              1169 	mov	a,#0x13
   25A5 2C                 1170 	add	a,r4
   25A6 FC                 1171 	mov	r4,a
   25A7 E4                 1172 	clr	a
   25A8 3D                 1173 	addc	a,r5
   25A9 FD                 1174 	mov	r5,a
   25AA 8C 82              1175 	mov	dpl,r4
   25AC 8D 83              1176 	mov	dph,r5
   25AE 8E F0              1177 	mov	b,r6
   25B0 12 4E 6E           1178 	lcall	__gptrget
   25B3 FF                 1179 	mov	r7,a
   25B4 1F                 1180 	dec	r7
   25B5 8C 82              1181 	mov	dpl,r4
   25B7 8D 83              1182 	mov	dph,r5
   25B9 8E F0              1183 	mov	b,r6
   25BB EF                 1184 	mov	a,r7
   25BC 12 42 42           1185 	lcall	__gptrput
                           1186 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:130: break ;
   25BF 80 08              1187 	sjmp	00106$
   25C1                    1188 00105$:
                           1189 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:122: for( i = (sm->currentDepthOfEventsToDeferList - 1) ; i >= 0 ; i-- )
   25C1 1A                 1190 	dec	r2
   25C2 90 09 4B           1191 	mov	dptr,#_removeFromDeferredTypeList_i_2_2
   25C5 EA                 1192 	mov	a,r2
   25C6 F0                 1193 	movx	@dptr,a
   25C7 80 99              1194 	sjmp	00103$
   25C9                    1195 00106$:
                           1196 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:134: if(found)
   25C9 20 05 01           1197 	jb	_removeFromDeferredTypeList_found_2_2,00140$
   25CC 22                 1198 	ret
   25CD                    1199 00140$:
                           1200 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:139: for( i = i ; i < sm->currentDepthOfEventsToDeferList ; i++ )
   25CD 90 09 48           1201 	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
   25D0 E0                 1202 	movx	a,@dptr
   25D1 FA                 1203 	mov	r2,a
   25D2 A3                 1204 	inc	dptr
   25D3 E0                 1205 	movx	a,@dptr
   25D4 FC                 1206 	mov	r4,a
   25D5 A3                 1207 	inc	dptr
   25D6 E0                 1208 	movx	a,@dptr
   25D7 FD                 1209 	mov	r5,a
   25D8 74 13              1210 	mov	a,#0x13
   25DA 2A                 1211 	add	a,r2
   25DB FE                 1212 	mov	r6,a
   25DC E4                 1213 	clr	a
   25DD 3C                 1214 	addc	a,r4
   25DE FF                 1215 	mov	r7,a
   25DF 8D 00              1216 	mov	ar0,r5
   25E1 90 09 4B           1217 	mov	dptr,#_removeFromDeferredTypeList_i_2_2
   25E4 E0                 1218 	movx	a,@dptr
   25E5 F9                 1219 	mov	r1,a
   25E6                    1220 00119$:
   25E6 8E 82              1221 	mov	dpl,r6
   25E8 8F 83              1222 	mov	dph,r7
   25EA 88 F0              1223 	mov	b,r0
   25EC 12 4E 6E           1224 	lcall	__gptrget
   25EF F5 31              1225 	mov	_removeFromDeferredTypeList_sloc0_1_0,a
   25F1 C3                 1226 	clr	c
   25F2 E9                 1227 	mov	a,r1
   25F3 64 80              1228 	xrl	a,#0x80
   25F5 85 31 F0           1229 	mov	b,_removeFromDeferredTypeList_sloc0_1_0
   25F8 63 F0 80           1230 	xrl	b,#0x80
   25FB 95 F0              1231 	subb	a,b
   25FD 50 67              1232 	jnc	00122$
                           1233 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:141: sm->typesOfEventsToDefer[i] = sm->typesOfEventsToDefer[i + 1] ;
   25FF C0 06              1234 	push	ar6
   2601 C0 07              1235 	push	ar7
   2603 C0 00              1236 	push	ar0
   2605 74 14              1237 	mov	a,#0x14
   2607 2A                 1238 	add	a,r2
   2608 FE                 1239 	mov	r6,a
   2609 E4                 1240 	clr	a
   260A 3C                 1241 	addc	a,r4
   260B FF                 1242 	mov	r7,a
   260C 8D 00              1243 	mov	ar0,r5
   260E 8E 82              1244 	mov	dpl,r6
   2610 8F 83              1245 	mov	dph,r7
   2612 88 F0              1246 	mov	b,r0
   2614 12 4E 6E           1247 	lcall	__gptrget
   2617 F5 33              1248 	mov	_removeFromDeferredTypeList_sloc2_1_0,a
   2619 A3                 1249 	inc	dptr
   261A 12 4E 6E           1250 	lcall	__gptrget
   261D F5 34              1251 	mov	(_removeFromDeferredTypeList_sloc2_1_0 + 1),a
   261F A3                 1252 	inc	dptr
   2620 12 4E 6E           1253 	lcall	__gptrget
   2623 F5 35              1254 	mov	(_removeFromDeferredTypeList_sloc2_1_0 + 2),a
   2625 E9                 1255 	mov	a,r1
   2626 25 33              1256 	add	a,_removeFromDeferredTypeList_sloc2_1_0
   2628 F5 36              1257 	mov	_removeFromDeferredTypeList_sloc3_1_0,a
   262A E4                 1258 	clr	a
   262B 35 34              1259 	addc	a,(_removeFromDeferredTypeList_sloc2_1_0 + 1)
   262D F5 37              1260 	mov	(_removeFromDeferredTypeList_sloc3_1_0 + 1),a
   262F 85 35 38           1261 	mov	(_removeFromDeferredTypeList_sloc3_1_0 + 2),(_removeFromDeferredTypeList_sloc2_1_0 + 2)
   2632 E9                 1262 	mov	a,r1
   2633 F8                 1263 	mov	r0,a
   2634 33                 1264 	rlc	a
   2635 95 E0              1265 	subb	a,acc
   2637 FB                 1266 	mov	r3,a
   2638 08                 1267 	inc	r0
   2639 B8 00 01           1268 	cjne	r0,#0x00,00142$
   263C 0B                 1269 	inc	r3
   263D                    1270 00142$:
   263D E8                 1271 	mov	a,r0
   263E 25 33              1272 	add	a,_removeFromDeferredTypeList_sloc2_1_0
   2640 F8                 1273 	mov	r0,a
   2641 EB                 1274 	mov	a,r3
   2642 35 34              1275 	addc	a,(_removeFromDeferredTypeList_sloc2_1_0 + 1)
   2644 FB                 1276 	mov	r3,a
   2645 AE 35              1277 	mov	r6,(_removeFromDeferredTypeList_sloc2_1_0 + 2)
   2647 88 82              1278 	mov	dpl,r0
   2649 8B 83              1279 	mov	dph,r3
   264B 8E F0              1280 	mov	b,r6
   264D 12 4E 6E           1281 	lcall	__gptrget
   2650 85 36 82           1282 	mov	dpl,_removeFromDeferredTypeList_sloc3_1_0
   2653 85 37 83           1283 	mov	dph,(_removeFromDeferredTypeList_sloc3_1_0 + 1)
   2656 85 38 F0           1284 	mov	b,(_removeFromDeferredTypeList_sloc3_1_0 + 2)
   2659 12 42 42           1285 	lcall	__gptrput
                           1286 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:139: for( i = i ; i < sm->currentDepthOfEventsToDeferList ; i++ )
   265C 09                 1287 	inc	r1
   265D D0 00              1288 	pop	ar0
   265F D0 07              1289 	pop	ar7
   2661 D0 06              1290 	pop	ar6
   2663 02 25 E6           1291 	ljmp	00119$
   2666                    1292 00122$:
                           1293 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:144: sm->typesOfEventsToDefer[sm->currentDepthOfEventsToDeferList] = 0 ;
   2666 74 14              1294 	mov	a,#0x14
   2668 2A                 1295 	add	a,r2
   2669 FB                 1296 	mov	r3,a
   266A E4                 1297 	clr	a
   266B 3C                 1298 	addc	a,r4
   266C FE                 1299 	mov	r6,a
   266D 8D 07              1300 	mov	ar7,r5
   266F 8B 82              1301 	mov	dpl,r3
   2671 8E 83              1302 	mov	dph,r6
   2673 8F F0              1303 	mov	b,r7
   2675 12 4E 6E           1304 	lcall	__gptrget
   2678 FB                 1305 	mov	r3,a
   2679 A3                 1306 	inc	dptr
   267A 12 4E 6E           1307 	lcall	__gptrget
   267D FE                 1308 	mov	r6,a
   267E A3                 1309 	inc	dptr
   267F 12 4E 6E           1310 	lcall	__gptrget
   2682 FF                 1311 	mov	r7,a
   2683 E5 31              1312 	mov	a,_removeFromDeferredTypeList_sloc0_1_0
   2685 2B                 1313 	add	a,r3
   2686 FB                 1314 	mov	r3,a
   2687 E4                 1315 	clr	a
   2688 3E                 1316 	addc	a,r6
   2689 FE                 1317 	mov	r6,a
   268A 8B 82              1318 	mov	dpl,r3
   268C 8E 83              1319 	mov	dph,r6
   268E 8F F0              1320 	mov	b,r7
   2690 E4                 1321 	clr	a
   2691 12 42 42           1322 	lcall	__gptrput
                           1323 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:155: currentEvent	= eventQueue_remove(&sm->deferredEventQueue) ;
   2694 74 17              1324 	mov	a,#0x17
   2696 2A                 1325 	add	a,r2
   2697 FA                 1326 	mov	r2,a
   2698 E4                 1327 	clr	a
   2699 3C                 1328 	addc	a,r4
   269A FC                 1329 	mov	r4,a
   269B 8A 82              1330 	mov	dpl,r2
   269D 8C 83              1331 	mov	dph,r4
   269F 8D F0              1332 	mov	b,r5
   26A1 12 23 05           1333 	lcall	_eventQueue_remove
   26A4 AA 82              1334 	mov	r2,dpl
   26A6 AB 83              1335 	mov	r3,dph
   26A8 AC F0              1336 	mov	r4,b
   26AA 90 09 4C           1337 	mov	dptr,#_removeFromDeferredTypeList_currentEvent_3_5
   26AD EA                 1338 	mov	a,r2
   26AE F0                 1339 	movx	@dptr,a
   26AF A3                 1340 	inc	dptr
   26B0 EB                 1341 	mov	a,r3
   26B1 F0                 1342 	movx	@dptr,a
   26B2 A3                 1343 	inc	dptr
   26B3 EC                 1344 	mov	a,r4
   26B4 F0                 1345 	movx	@dptr,a
                           1346 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:158: while(currentEvent)
   26B5 90 09 48           1347 	mov	dptr,#_removeFromDeferredTypeList_sm_1_1
   26B8 E0                 1348 	movx	a,@dptr
   26B9 FD                 1349 	mov	r5,a
   26BA A3                 1350 	inc	dptr
   26BB E0                 1351 	movx	a,@dptr
   26BC FE                 1352 	mov	r6,a
   26BD A3                 1353 	inc	dptr
   26BE E0                 1354 	movx	a,@dptr
   26BF FF                 1355 	mov	r7,a
   26C0 8D 36              1356 	mov	_removeFromDeferredTypeList_sloc3_1_0,r5
   26C2 8E 37              1357 	mov	(_removeFromDeferredTypeList_sloc3_1_0 + 1),r6
   26C4 8F 38              1358 	mov	(_removeFromDeferredTypeList_sloc3_1_0 + 2),r7
   26C6 8D 33              1359 	mov	_removeFromDeferredTypeList_sloc2_1_0,r5
   26C8 8E 34              1360 	mov	(_removeFromDeferredTypeList_sloc2_1_0 + 1),r6
   26CA 8F 35              1361 	mov	(_removeFromDeferredTypeList_sloc2_1_0 + 2),r7
   26CC                    1362 00112$:
   26CC 90 09 4C           1363 	mov	dptr,#_removeFromDeferredTypeList_currentEvent_3_5
   26CF E0                 1364 	movx	a,@dptr
   26D0 F5 39              1365 	mov	_removeFromDeferredTypeList_sloc4_1_0,a
   26D2 A3                 1366 	inc	dptr
   26D3 E0                 1367 	movx	a,@dptr
   26D4 F5 3A              1368 	mov	(_removeFromDeferredTypeList_sloc4_1_0 + 1),a
   26D6 A3                 1369 	inc	dptr
   26D7 E0                 1370 	movx	a,@dptr
   26D8 F5 3B              1371 	mov	(_removeFromDeferredTypeList_sloc4_1_0 + 2),a
   26DA E5 39              1372 	mov	a,_removeFromDeferredTypeList_sloc4_1_0
   26DC 45 3A              1373 	orl	a,(_removeFromDeferredTypeList_sloc4_1_0 + 1)
   26DE 45 3B              1374 	orl	a,(_removeFromDeferredTypeList_sloc4_1_0 + 2)
   26E0 70 01              1375 	jnz	00143$
   26E2 22                 1376 	ret
   26E3                    1377 00143$:
                           1378 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:168: if(currentEvent->eventType == eventTypeToUnDefer)
   26E3 85 39 82           1379 	mov	dpl,_removeFromDeferredTypeList_sloc4_1_0
   26E6 85 3A 83           1380 	mov	dph,(_removeFromDeferredTypeList_sloc4_1_0 + 1)
   26E9 85 3B F0           1381 	mov	b,(_removeFromDeferredTypeList_sloc4_1_0 + 2)
   26EC 12 4E 6E           1382 	lcall	__gptrget
   26EF F8                 1383 	mov	r0,a
   26F0 B5 32 48           1384 	cjne	a,_removeFromDeferredTypeList_sloc1_1_0,00108$
                           1385 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:170: eventQueue_insert(&sm->eventQueue, currentEvent) ;
   26F3 C0 02              1386 	push	ar2
   26F5 C0 03              1387 	push	ar3
   26F7 C0 04              1388 	push	ar4
   26F9 74 0B              1389 	mov	a,#0x0B
   26FB 25 36              1390 	add	a,_removeFromDeferredTypeList_sloc3_1_0
   26FD F8                 1391 	mov	r0,a
   26FE E4                 1392 	clr	a
   26FF 35 37              1393 	addc	a,(_removeFromDeferredTypeList_sloc3_1_0 + 1)
   2701 F9                 1394 	mov	r1,a
   2702 AA 38              1395 	mov	r2,(_removeFromDeferredTypeList_sloc3_1_0 + 2)
   2704 90 09 36           1396 	mov	dptr,#_eventQueue_insert_PARM_2
   2707 E5 39              1397 	mov	a,_removeFromDeferredTypeList_sloc4_1_0
   2709 F0                 1398 	movx	@dptr,a
   270A A3                 1399 	inc	dptr
   270B E5 3A              1400 	mov	a,(_removeFromDeferredTypeList_sloc4_1_0 + 1)
   270D F0                 1401 	movx	@dptr,a
   270E A3                 1402 	inc	dptr
   270F E5 3B              1403 	mov	a,(_removeFromDeferredTypeList_sloc4_1_0 + 2)
   2711 F0                 1404 	movx	@dptr,a
   2712 88 82              1405 	mov	dpl,r0
   2714 89 83              1406 	mov	dph,r1
   2716 8A F0              1407 	mov	b,r2
   2718 C0 02              1408 	push	ar2
   271A C0 03              1409 	push	ar3
   271C C0 04              1410 	push	ar4
   271E C0 05              1411 	push	ar5
   2720 C0 06              1412 	push	ar6
   2722 C0 07              1413 	push	ar7
   2724 12 21 AF           1414 	lcall	_eventQueue_insert
   2727 D0 07              1415 	pop	ar7
   2729 D0 06              1416 	pop	ar6
   272B D0 05              1417 	pop	ar5
   272D D0 04              1418 	pop	ar4
   272F D0 03              1419 	pop	ar3
   2731 D0 02              1420 	pop	ar2
   2733 D0 04              1421 	pop	ar4
   2735 D0 03              1422 	pop	ar3
   2737 D0 02              1423 	pop	ar2
   2739 80 44              1424 	sjmp	00109$
   273B                    1425 00108$:
                           1426 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:174: eventQueue_insert(&sm->deferredEventQueue, currentEvent) ;
   273B C0 02              1427 	push	ar2
   273D C0 03              1428 	push	ar3
   273F C0 04              1429 	push	ar4
   2741 74 17              1430 	mov	a,#0x17
   2743 2D                 1431 	add	a,r5
   2744 F8                 1432 	mov	r0,a
   2745 E4                 1433 	clr	a
   2746 3E                 1434 	addc	a,r6
   2747 F9                 1435 	mov	r1,a
   2748 8F 02              1436 	mov	ar2,r7
   274A 90 09 36           1437 	mov	dptr,#_eventQueue_insert_PARM_2
   274D E5 39              1438 	mov	a,_removeFromDeferredTypeList_sloc4_1_0
   274F F0                 1439 	movx	@dptr,a
   2750 A3                 1440 	inc	dptr
   2751 E5 3A              1441 	mov	a,(_removeFromDeferredTypeList_sloc4_1_0 + 1)
   2753 F0                 1442 	movx	@dptr,a
   2754 A3                 1443 	inc	dptr
   2755 E5 3B              1444 	mov	a,(_removeFromDeferredTypeList_sloc4_1_0 + 2)
   2757 F0                 1445 	movx	@dptr,a
   2758 88 82              1446 	mov	dpl,r0
   275A 89 83              1447 	mov	dph,r1
   275C 8A F0              1448 	mov	b,r2
   275E C0 02              1449 	push	ar2
   2760 C0 03              1450 	push	ar3
   2762 C0 04              1451 	push	ar4
   2764 C0 05              1452 	push	ar5
   2766 C0 06              1453 	push	ar6
   2768 C0 07              1454 	push	ar7
   276A 12 21 AF           1455 	lcall	_eventQueue_insert
   276D D0 07              1456 	pop	ar7
   276F D0 06              1457 	pop	ar6
   2771 D0 05              1458 	pop	ar5
   2773 D0 04              1459 	pop	ar4
   2775 D0 03              1460 	pop	ar3
   2777 D0 02              1461 	pop	ar2
                           1462 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:187: break ;
   2779 D0 04              1463 	pop	ar4
   277B D0 03              1464 	pop	ar3
   277D D0 02              1465 	pop	ar2
                           1466 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:174: eventQueue_insert(&sm->deferredEventQueue, currentEvent) ;
   277F                    1467 00109$:
                           1468 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:183: currentEvent = eventQueue_remove(&sm->deferredEventQueue) ;
   277F C0 05              1469 	push	ar5
   2781 C0 06              1470 	push	ar6
   2783 C0 07              1471 	push	ar7
   2785 74 17              1472 	mov	a,#0x17
   2787 25 33              1473 	add	a,_removeFromDeferredTypeList_sloc2_1_0
   2789 F8                 1474 	mov	r0,a
   278A E4                 1475 	clr	a
   278B 35 34              1476 	addc	a,(_removeFromDeferredTypeList_sloc2_1_0 + 1)
   278D F9                 1477 	mov	r1,a
   278E AD 35              1478 	mov	r5,(_removeFromDeferredTypeList_sloc2_1_0 + 2)
   2790 88 82              1479 	mov	dpl,r0
   2792 89 83              1480 	mov	dph,r1
   2794 8D F0              1481 	mov	b,r5
   2796 C0 02              1482 	push	ar2
   2798 C0 03              1483 	push	ar3
   279A C0 04              1484 	push	ar4
   279C 12 23 05           1485 	lcall	_eventQueue_remove
   279F AD 82              1486 	mov	r5,dpl
   27A1 AE 83              1487 	mov	r6,dph
   27A3 AF F0              1488 	mov	r7,b
   27A5 D0 04              1489 	pop	ar4
   27A7 D0 03              1490 	pop	ar3
   27A9 D0 02              1491 	pop	ar2
   27AB 90 09 4C           1492 	mov	dptr,#_removeFromDeferredTypeList_currentEvent_3_5
   27AE ED                 1493 	mov	a,r5
   27AF F0                 1494 	movx	@dptr,a
   27B0 A3                 1495 	inc	dptr
   27B1 EE                 1496 	mov	a,r6
   27B2 F0                 1497 	movx	@dptr,a
   27B3 A3                 1498 	inc	dptr
   27B4 EF                 1499 	mov	a,r7
   27B5 F0                 1500 	movx	@dptr,a
                           1501 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:185: if(currentEvent == firstEvent)
   27B6 ED                 1502 	mov	a,r5
   27B7 B5 02 0A           1503 	cjne	a,ar2,00146$
   27BA EE                 1504 	mov	a,r6
   27BB B5 03 06           1505 	cjne	a,ar3,00146$
   27BE EF                 1506 	mov	a,r7
   27BF B5 04 02           1507 	cjne	a,ar4,00146$
   27C2 80 09              1508 	sjmp	00147$
   27C4                    1509 00146$:
   27C4 D0 07              1510 	pop	ar7
   27C6 D0 06              1511 	pop	ar6
   27C8 D0 05              1512 	pop	ar5
   27CA 02 26 CC           1513 	ljmp	00112$
   27CD                    1514 00147$:
   27CD D0 07              1515 	pop	ar7
   27CF D0 06              1516 	pop	ar6
   27D1 D0 05              1517 	pop	ar5
                           1518 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:187: break ;
   27D3 22                 1519 	ret
                           1520 ;------------------------------------------------------------
                           1521 ;Allocation info for local variables in function 'postEventToStateMachine'
                           1522 ;------------------------------------------------------------
                           1523 ;event                     Allocated with name '_postEventToStateMachine_PARM_2'
                           1524 ;sm                        Allocated with name '_postEventToStateMachine_sm_1_1'
                           1525 ;------------------------------------------------------------
                           1526 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:195: bool postEventToStateMachine(			stateMachine_t* sm, event_t* event)
                           1527 ;	-----------------------------------------
                           1528 ;	 function postEventToStateMachine
                           1529 ;	-----------------------------------------
   27D4                    1530 _postEventToStateMachine:
   27D4 AA F0              1531 	mov	r2,b
   27D6 AB 83              1532 	mov	r3,dph
   27D8 E5 82              1533 	mov	a,dpl
   27DA 90 09 52           1534 	mov	dptr,#_postEventToStateMachine_sm_1_1
   27DD F0                 1535 	movx	@dptr,a
   27DE A3                 1536 	inc	dptr
   27DF EB                 1537 	mov	a,r3
   27E0 F0                 1538 	movx	@dptr,a
   27E1 A3                 1539 	inc	dptr
   27E2 EA                 1540 	mov	a,r2
   27E3 F0                 1541 	movx	@dptr,a
                           1542 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:197: if(isEventTypeDeferred(sm, event->eventType))
   27E4 90 09 52           1543 	mov	dptr,#_postEventToStateMachine_sm_1_1
   27E7 E0                 1544 	movx	a,@dptr
   27E8 FA                 1545 	mov	r2,a
   27E9 A3                 1546 	inc	dptr
   27EA E0                 1547 	movx	a,@dptr
   27EB FB                 1548 	mov	r3,a
   27EC A3                 1549 	inc	dptr
   27ED E0                 1550 	movx	a,@dptr
   27EE FC                 1551 	mov	r4,a
   27EF 90 09 4F           1552 	mov	dptr,#_postEventToStateMachine_PARM_2
   27F2 E0                 1553 	movx	a,@dptr
   27F3 FD                 1554 	mov	r5,a
   27F4 A3                 1555 	inc	dptr
   27F5 E0                 1556 	movx	a,@dptr
   27F6 FE                 1557 	mov	r6,a
   27F7 A3                 1558 	inc	dptr
   27F8 E0                 1559 	movx	a,@dptr
   27F9 FF                 1560 	mov	r7,a
   27FA 8D 82              1561 	mov	dpl,r5
   27FC 8E 83              1562 	mov	dph,r6
   27FE 8F F0              1563 	mov	b,r7
   2800 12 4E 6E           1564 	lcall	__gptrget
   2803 90 09 43           1565 	mov	dptr,#_isEventTypeDeferred_PARM_2
   2806 F0                 1566 	movx	@dptr,a
   2807 8A 82              1567 	mov	dpl,r2
   2809 8B 83              1568 	mov	dph,r3
   280B 8C F0              1569 	mov	b,r4
   280D C0 05              1570 	push	ar5
   280F C0 06              1571 	push	ar6
   2811 C0 07              1572 	push	ar7
   2813 12 24 8F           1573 	lcall	_isEventTypeDeferred
   2816 D0 07              1574 	pop	ar7
   2818 D0 06              1575 	pop	ar6
   281A D0 05              1576 	pop	ar5
   281C 50 29              1577 	jnc	00102$
                           1578 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:199: return eventQueue_insert(&sm->deferredEventQueue, event) ;
   281E 90 09 52           1579 	mov	dptr,#_postEventToStateMachine_sm_1_1
   2821 E0                 1580 	movx	a,@dptr
   2822 FA                 1581 	mov	r2,a
   2823 A3                 1582 	inc	dptr
   2824 E0                 1583 	movx	a,@dptr
   2825 FB                 1584 	mov	r3,a
   2826 A3                 1585 	inc	dptr
   2827 E0                 1586 	movx	a,@dptr
   2828 FC                 1587 	mov	r4,a
   2829 74 17              1588 	mov	a,#0x17
   282B 2A                 1589 	add	a,r2
   282C FA                 1590 	mov	r2,a
   282D E4                 1591 	clr	a
   282E 3B                 1592 	addc	a,r3
   282F FB                 1593 	mov	r3,a
   2830 90 09 36           1594 	mov	dptr,#_eventQueue_insert_PARM_2
   2833 ED                 1595 	mov	a,r5
   2834 F0                 1596 	movx	@dptr,a
   2835 A3                 1597 	inc	dptr
   2836 EE                 1598 	mov	a,r6
   2837 F0                 1599 	movx	@dptr,a
   2838 A3                 1600 	inc	dptr
   2839 EF                 1601 	mov	a,r7
   283A F0                 1602 	movx	@dptr,a
   283B 8A 82              1603 	mov	dpl,r2
   283D 8B 83              1604 	mov	dph,r3
   283F 8C F0              1605 	mov	b,r4
   2841 12 21 AF           1606 	lcall	_eventQueue_insert
   2844 92 06              1607 	mov  _postEventToStateMachine_sloc0_1_0,c
   2846 22                 1608 	ret
   2847                    1609 00102$:
                           1610 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/StateMachine_G4_eventQueue.c:203: return eventQueue_insert(&sm->eventQueue, event) ;
   2847 90 09 52           1611 	mov	dptr,#_postEventToStateMachine_sm_1_1
   284A E0                 1612 	movx	a,@dptr
   284B FA                 1613 	mov	r2,a
   284C A3                 1614 	inc	dptr
   284D E0                 1615 	movx	a,@dptr
   284E FB                 1616 	mov	r3,a
   284F A3                 1617 	inc	dptr
   2850 E0                 1618 	movx	a,@dptr
   2851 FC                 1619 	mov	r4,a
   2852 74 0B              1620 	mov	a,#0x0B
   2854 2A                 1621 	add	a,r2
   2855 FA                 1622 	mov	r2,a
   2856 E4                 1623 	clr	a
   2857 3B                 1624 	addc	a,r3
   2858 FB                 1625 	mov	r3,a
   2859 90 09 36           1626 	mov	dptr,#_eventQueue_insert_PARM_2
   285C ED                 1627 	mov	a,r5
   285D F0                 1628 	movx	@dptr,a
   285E A3                 1629 	inc	dptr
   285F EE                 1630 	mov	a,r6
   2860 F0                 1631 	movx	@dptr,a
   2861 A3                 1632 	inc	dptr
   2862 EF                 1633 	mov	a,r7
   2863 F0                 1634 	movx	@dptr,a
   2864 8A 82              1635 	mov	dpl,r2
   2866 8B 83              1636 	mov	dph,r3
   2868 8C F0              1637 	mov	b,r4
   286A 12 21 AF           1638 	lcall	_eventQueue_insert
   286D 92 06              1639 	mov  _postEventToStateMachine_sloc0_1_0,c
   286F 22                 1640 	ret
                           1641 	.area CSEG    (CODE)
                           1642 	.area CONST   (CODE)
   5238                    1643 __str_0:
   5238 09                 1644 	.db 0x09
   5239 09                 1645 	.db 0x09
   523A 09                 1646 	.db 0x09
   523B 50 6F 73 74 69 6E  1647 	.ascii "Posting event type: %s"
        67 20 65 76 65 6E
        74 20 74 79 70 65
        3A 20 25 73
   5251 0A                 1648 	.db 0x0A
   5252 00                 1649 	.db 0x00
   5253                    1650 __str_1:
   5253 3C 55 53 45 52 5F  1651 	.ascii "<USER_EVENT>"
        45 56 45 4E 54 3E
   525F 00                 1652 	.db 0x00
                           1653 	.area XINIT   (CODE)
                           1654 	.area CABS    (ABS,CODE)
