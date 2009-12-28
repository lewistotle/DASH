                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Mon Dec 28 02:24:58 2009
                              5 ;--------------------------------------------------------
                              6 	.module stateMachine_G4
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _callStateHandler
                             13 	.globl _responseTypes
                             14 	.globl _eventTypes
                             15 	.globl _callStateHandler_PARM_3
                             16 	.globl _callStateHandler_PARM_2
                             17 	.globl _stateMachines
                             18 	.globl _allocateStateMachineMemory
                             19 	.globl _deallocateStateMachineMemory
                             20 	.globl _registerStateMachine
                             21 	.globl _unregisterStateMachine
                             22 	.globl _iterateAllStateMachines
                             23 	.globl _iterateStateMachine
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                             27 	.area RSEG    (DATA)
                             28 ;--------------------------------------------------------
                             29 ; special function bits
                             30 ;--------------------------------------------------------
                             31 	.area RSEG    (DATA)
                             32 ;--------------------------------------------------------
                             33 ; overlayable register banks
                             34 ;--------------------------------------------------------
                             35 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      36 	.ds 8
                             37 ;--------------------------------------------------------
                             38 ; internal ram data
                             39 ;--------------------------------------------------------
                             40 	.area DSEG    (DATA)
   0023                      41 _callStateHandler_sloc0_1_0:
   0023                      42 	.ds 3
   0026                      43 _callStateHandler_sloc1_1_0:
   0026                      44 	.ds 3
   0029                      45 _iterateStateMachine_sloc0_1_0:
   0029                      46 	.ds 3
   002C                      47 _iterateStateMachine_sloc1_1_0:
   002C                      48 	.ds 3
   002F                      49 _iterateStateMachine_sloc2_1_0:
   002F                      50 	.ds 3
   0032                      51 _iterateStateMachine_sloc3_1_0:
   0032                      52 	.ds 3
   0035                      53 _iterateStateMachine_sloc4_1_0:
   0035                      54 	.ds 3
   0038                      55 _iterateStateMachine_sloc5_1_0:
   0038                      56 	.ds 3
   003B                      57 _iterateStateMachine_sloc6_1_0:
   003B                      58 	.ds 3
   003E                      59 _iterateStateMachine_sloc7_1_0:
   003E                      60 	.ds 3
   0041                      61 _iterateStateMachine_sloc8_1_0:
   0041                      62 	.ds 1
   0042                      63 _iterateStateMachine_sloc9_1_0:
   0042                      64 	.ds 3
   0045                      65 _iterateStateMachine_sloc10_1_0:
   0045                      66 	.ds 3
                             67 ;--------------------------------------------------------
                             68 ; overlayable items in internal ram 
                             69 ;--------------------------------------------------------
                             70 	.area OSEG    (OVR,DATA)
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
                             84 ;--------------------------------------------------------
                             85 ; paged external ram data
                             86 ;--------------------------------------------------------
                             87 	.area PSEG    (PAG,XDATA)
                             88 ;--------------------------------------------------------
                             89 ; external ram data
                             90 ;--------------------------------------------------------
                             91 	.area XSEG    (XDATA)
   0023                      92 _stateMachines::
   0023                      93 	.ds 150
   00B9                      94 _allocateStateMachineMemory_sizeInBytes_1_1:
   00B9                      95 	.ds 2
   00BB                      96 _deallocateStateMachineMemory_instance_1_1:
   00BB                      97 	.ds 3
   00BE                      98 _registerStateMachine_sm_1_1:
   00BE                      99 	.ds 3
   00C1                     100 _unregisterStateMachine_sm_1_1:
   00C1                     101 	.ds 3
   00C4                     102 _callStateHandler_PARM_2:
   00C4                     103 	.ds 3
   00C7                     104 _callStateHandler_PARM_3:
   00C7                     105 	.ds 3
   00CA                     106 _callStateHandler_sm_1_1:
   00CA                     107 	.ds 3
   00CD                     108 _iterateStateMachine_sm_1_1:
   00CD                     109 	.ds 3
   00D0                     110 _iterateStateMachine_initialTransitionEvent_1_1:
   00D0                     111 	.ds 1
   00D1                     112 _iterateStateMachine_enterEvent_1_1:
   00D1                     113 	.ds 1
   00D2                     114 _iterateStateMachine_exitEvent_1_1:
   00D2                     115 	.ds 1
   00D3                     116 _iterateStateMachine_iterationMax_1_1:
   00D3                     117 	.ds 2
   00D5                     118 _iterateStateMachine_stateBeingProcessed_2_3:
   00D5                     119 	.ds 3
   00D8                     120 _iterateStateMachine_sourceHierarchy_4_13:
   00D8                     121 	.ds 48
   0108                     122 _iterateStateMachine_sourceIndex_4_13:
   0108                     123 	.ds 1
   0109                     124 _iterateStateMachine_targetHierarchy_4_13:
   0109                     125 	.ds 48
   0139                     126 _iterateStateMachine_targetIndex_4_13:
   0139                     127 	.ds 1
   013A                     128 _iterateStateMachine_LCA_4_13:
   013A                     129 	.ds 3
   013D                     130 _iterateStateMachine_entryIndex_4_13:
   013D                     131 	.ds 1
                            132 ;--------------------------------------------------------
                            133 ; absolute external ram data
                            134 ;--------------------------------------------------------
                            135 	.area XABS    (ABS,XDATA)
                            136 ;--------------------------------------------------------
                            137 ; external initialized ram data
                            138 ;--------------------------------------------------------
                            139 	.area XISEG   (XDATA)
   0F16                     140 _eventTypes::
   0F16                     141 	.ds 12
   0F22                     142 _responseTypes::
   0F22                     143 	.ds 9
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
                            161 ;------------------------------------------------------------
                            162 ;Allocation info for local variables in function 'iterateStateMachine'
                            163 ;------------------------------------------------------------
                            164 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            165 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            166 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            167 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            168 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            169 ;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
                            170 ;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
                            171 ;sloc7                     Allocated with name '_iterateStateMachine_sloc7_1_0'
                            172 ;sloc8                     Allocated with name '_iterateStateMachine_sloc8_1_0'
                            173 ;sloc9                     Allocated with name '_iterateStateMachine_sloc9_1_0'
                            174 ;sloc10                    Allocated with name '_iterateStateMachine_sloc10_1_0'
                            175 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            176 ;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
                            177 ;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
                            178 ;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
                            179 ;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
                            180 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            181 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            182 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            183 ;source                    Allocated with name '_iterateStateMachine_source_3_8'
                            184 ;target                    Allocated with name '_iterateStateMachine_target_3_8'
                            185 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_13'
                            186 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_13'
                            187 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_13'
                            188 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_13'
                            189 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_13'
                            190 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_13'
                            191 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_13'
                            192 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_15'
                            193 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_21'
                            194 ;------------------------------------------------------------
                            195 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:136: static event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
   008C 90 00 D0            196 	mov	dptr,#_iterateStateMachine_initialTransitionEvent_1_1
   008F 74 02               197 	mov	a,#0x02
   0091 F0                  198 	movx	@dptr,a
                            199 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:137: static event_t	enterEvent				= { SUBSTATE_ENTRY } ;
   0092 90 00 D1            200 	mov	dptr,#_iterateStateMachine_enterEvent_1_1
   0095 74 01               201 	mov	a,#0x01
   0097 F0                  202 	movx	@dptr,a
                            203 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:138: static event_t	exitEvent				= { SUBSTATE_EXIT } ;
   0098 90 00 D2            204 	mov	dptr,#_iterateStateMachine_exitEvent_1_1
   009B 74 03               205 	mov	a,#0x03
   009D F0                  206 	movx	@dptr,a
                            207 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: static int iterationMax = 10 ;
   009E 90 00 D3            208 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   00A1 74 0A               209 	mov	a,#0x0A
   00A3 F0                  210 	movx	@dptr,a
   00A4 E4                  211 	clr	a
   00A5 A3                  212 	inc	dptr
   00A6 F0                  213 	movx	@dptr,a
                            214 ;--------------------------------------------------------
                            215 ; Home
                            216 ;--------------------------------------------------------
                            217 	.area HOME    (CODE)
                            218 	.area HOME    (CODE)
                            219 ;--------------------------------------------------------
                            220 ; code
                            221 ;--------------------------------------------------------
                            222 	.area CSEG    (CODE)
                            223 ;------------------------------------------------------------
                            224 ;Allocation info for local variables in function 'allocateStateMachineMemory'
                            225 ;------------------------------------------------------------
                            226 ;sizeInBytes               Allocated with name '_allocateStateMachineMemory_sizeInBytes_1_1'
                            227 ;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
                            228 ;------------------------------------------------------------
                            229 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:32: stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes)
                            230 ;	-----------------------------------------
                            231 ;	 function allocateStateMachineMemory
                            232 ;	-----------------------------------------
   054E                     233 _allocateStateMachineMemory:
                    0002    234 	ar2 = 0x02
                    0003    235 	ar3 = 0x03
                    0004    236 	ar4 = 0x04
                    0005    237 	ar5 = 0x05
                    0006    238 	ar6 = 0x06
                    0007    239 	ar7 = 0x07
                    0000    240 	ar0 = 0x00
                    0001    241 	ar1 = 0x01
   054E AA 83               242 	mov	r2,dph
   0550 E5 82               243 	mov	a,dpl
   0552 90 00 B9            244 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   0555 F0                  245 	movx	@dptr,a
   0556 A3                  246 	inc	dptr
   0557 EA                  247 	mov	a,r2
   0558 F0                  248 	movx	@dptr,a
                            249 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:34: stateMachine_t*	instance = malloc(sizeInBytes) ;
   0559 90 00 B9            250 	mov	dptr,#_allocateStateMachineMemory_sizeInBytes_1_1
   055C E0                  251 	movx	a,@dptr
   055D FA                  252 	mov	r2,a
   055E A3                  253 	inc	dptr
   055F E0                  254 	movx	a,@dptr
   0560 FB                  255 	mov	r3,a
   0561 8A 82               256 	mov	dpl,r2
   0563 8B 83               257 	mov	dph,r3
   0565 C0 02               258 	push	ar2
   0567 C0 03               259 	push	ar3
   0569 12 31 EB            260 	lcall	_malloc
   056C AC 82               261 	mov	r4,dpl
   056E AD 83               262 	mov	r5,dph
   0570 D0 03               263 	pop	ar3
   0572 D0 02               264 	pop	ar2
   0574 7E 00               265 	mov	r6,#0x00
                            266 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: if(instance)
   0576 EC                  267 	mov	a,r4
   0577 4D                  268 	orl	a,r5
   0578 4E                  269 	orl	a,r6
   0579 60 22               270 	jz	00102$
                            271 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:38: memset((char*)instance, 0, sizeInBytes) ;
   057B 90 0A D4            272 	mov	dptr,#_memset_PARM_2
   057E E4                  273 	clr	a
   057F F0                  274 	movx	@dptr,a
   0580 90 0A D5            275 	mov	dptr,#_memset_PARM_3
   0583 EA                  276 	mov	a,r2
   0584 F0                  277 	movx	@dptr,a
   0585 A3                  278 	inc	dptr
   0586 EB                  279 	mov	a,r3
   0587 F0                  280 	movx	@dptr,a
   0588 8C 82               281 	mov	dpl,r4
   058A 8D 83               282 	mov	dph,r5
   058C 8E F0               283 	mov	b,r6
   058E C0 04               284 	push	ar4
   0590 C0 05               285 	push	ar5
   0592 C0 06               286 	push	ar6
   0594 12 31 2C            287 	lcall	_memset
   0597 D0 06               288 	pop	ar6
   0599 D0 05               289 	pop	ar5
   059B D0 04               290 	pop	ar4
   059D                     291 00102$:
                            292 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:41: return instance ;
   059D 8C 82               293 	mov	dpl,r4
   059F 8D 83               294 	mov	dph,r5
   05A1 8E F0               295 	mov	b,r6
   05A3 22                  296 	ret
                            297 ;------------------------------------------------------------
                            298 ;Allocation info for local variables in function 'deallocateStateMachineMemory'
                            299 ;------------------------------------------------------------
                            300 ;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
                            301 ;------------------------------------------------------------
                            302 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:45: void deallocateStateMachineMemory(				stateMachine_t* instance)
                            303 ;	-----------------------------------------
                            304 ;	 function deallocateStateMachineMemory
                            305 ;	-----------------------------------------
   05A4                     306 _deallocateStateMachineMemory:
   05A4 AA F0               307 	mov	r2,b
   05A6 AB 83               308 	mov	r3,dph
   05A8 E5 82               309 	mov	a,dpl
   05AA 90 00 BB            310 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   05AD F0                  311 	movx	@dptr,a
   05AE A3                  312 	inc	dptr
   05AF EB                  313 	mov	a,r3
   05B0 F0                  314 	movx	@dptr,a
   05B1 A3                  315 	inc	dptr
   05B2 EA                  316 	mov	a,r2
   05B3 F0                  317 	movx	@dptr,a
                            318 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: if(instance != 0)
   05B4 90 00 BB            319 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   05B7 E0                  320 	movx	a,@dptr
   05B8 FA                  321 	mov	r2,a
   05B9 A3                  322 	inc	dptr
   05BA E0                  323 	movx	a,@dptr
   05BB FB                  324 	mov	r3,a
   05BC A3                  325 	inc	dptr
   05BD E0                  326 	movx	a,@dptr
   05BE FC                  327 	mov	r4,a
   05BF EA                  328 	mov	a,r2
   05C0 4B                  329 	orl	a,r3
   05C1 4C                  330 	orl	a,r4
   05C2 60 09               331 	jz	00103$
                            332 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: free((char*)instance) ;
   05C4 8A 82               333 	mov	dpl,r2
   05C6 8B 83               334 	mov	dph,r3
   05C8 8C F0               335 	mov	b,r4
   05CA 02 30 DA            336 	ljmp	_free
   05CD                     337 00103$:
   05CD 22                  338 	ret
                            339 ;------------------------------------------------------------
                            340 ;Allocation info for local variables in function 'registerStateMachine'
                            341 ;------------------------------------------------------------
                            342 ;sm                        Allocated with name '_registerStateMachine_sm_1_1'
                            343 ;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
                            344 ;------------------------------------------------------------
                            345 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:54: bool registerStateMachine(			stateMachine_t* sm)
                            346 ;	-----------------------------------------
                            347 ;	 function registerStateMachine
                            348 ;	-----------------------------------------
   05CE                     349 _registerStateMachine:
   05CE AA F0               350 	mov	r2,b
   05D0 AB 83               351 	mov	r3,dph
   05D2 E5 82               352 	mov	a,dpl
   05D4 90 00 BE            353 	mov	dptr,#_registerStateMachine_sm_1_1
   05D7 F0                  354 	movx	@dptr,a
   05D8 A3                  355 	inc	dptr
   05D9 EB                  356 	mov	a,r3
   05DA F0                  357 	movx	@dptr,a
   05DB A3                  358 	inc	dptr
   05DC EA                  359 	mov	a,r2
   05DD F0                  360 	movx	@dptr,a
                            361 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:56: if(sm)
   05DE 90 00 BE            362 	mov	dptr,#_registerStateMachine_sm_1_1
   05E1 E0                  363 	movx	a,@dptr
   05E2 FA                  364 	mov	r2,a
   05E3 A3                  365 	inc	dptr
   05E4 E0                  366 	movx	a,@dptr
   05E5 FB                  367 	mov	r3,a
   05E6 A3                  368 	inc	dptr
   05E7 E0                  369 	movx	a,@dptr
   05E8 FC                  370 	mov	r4,a
   05E9 EA                  371 	mov	a,r2
   05EA 4B                  372 	orl	a,r3
   05EB 4C                  373 	orl	a,r4
   05EC 60 44               374 	jz	00104$
                            375 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:60: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   05EE 7A 00               376 	mov	r2,#0x00
   05F0                     377 00105$:
   05F0 BA 32 00            378 	cjne	r2,#0x32,00116$
   05F3                     379 00116$:
   05F3 50 3D               380 	jnc	00104$
                            381 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:62: if(stateMachines[statetMachineIndex] == NULL)
   05F5 EA                  382 	mov	a,r2
   05F6 75 F0 03            383 	mov	b,#0x03
   05F9 A4                  384 	mul	ab
   05FA 24 23               385 	add	a,#_stateMachines
   05FC FB                  386 	mov	r3,a
   05FD E4                  387 	clr	a
   05FE 34 00               388 	addc	a,#(_stateMachines >> 8)
   0600 FC                  389 	mov	r4,a
   0601 8B 82               390 	mov	dpl,r3
   0603 8C 83               391 	mov	dph,r4
   0605 E0                  392 	movx	a,@dptr
   0606 FD                  393 	mov	r5,a
   0607 A3                  394 	inc	dptr
   0608 E0                  395 	movx	a,@dptr
   0609 FE                  396 	mov	r6,a
   060A A3                  397 	inc	dptr
   060B E0                  398 	movx	a,@dptr
   060C FF                  399 	mov	r7,a
   060D BD 00 1F            400 	cjne	r5,#0x00,00107$
   0610 BE 00 1C            401 	cjne	r6,#0x00,00107$
   0613 BF 00 19            402 	cjne	r7,#0x00,00107$
                            403 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:64: stateMachines[statetMachineIndex] = sm ;
   0616 90 00 BE            404 	mov	dptr,#_registerStateMachine_sm_1_1
   0619 E0                  405 	movx	a,@dptr
   061A FD                  406 	mov	r5,a
   061B A3                  407 	inc	dptr
   061C E0                  408 	movx	a,@dptr
   061D FE                  409 	mov	r6,a
   061E A3                  410 	inc	dptr
   061F E0                  411 	movx	a,@dptr
   0620 FF                  412 	mov	r7,a
   0621 8B 82               413 	mov	dpl,r3
   0623 8C 83               414 	mov	dph,r4
   0625 ED                  415 	mov	a,r5
   0626 F0                  416 	movx	@dptr,a
   0627 A3                  417 	inc	dptr
   0628 EE                  418 	mov	a,r6
   0629 F0                  419 	movx	@dptr,a
   062A A3                  420 	inc	dptr
   062B EF                  421 	mov	a,r7
   062C F0                  422 	movx	@dptr,a
                            423 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:66: return true ;
   062D D3                  424 	setb	c
   062E 22                  425 	ret
   062F                     426 00107$:
                            427 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:60: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   062F 0A                  428 	inc	r2
   0630 80 BE               429 	sjmp	00105$
   0632                     430 00104$:
                            431 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:71: return false ;
   0632 C3                  432 	clr	c
   0633 22                  433 	ret
                            434 ;------------------------------------------------------------
                            435 ;Allocation info for local variables in function 'unregisterStateMachine'
                            436 ;------------------------------------------------------------
                            437 ;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
                            438 ;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
                            439 ;------------------------------------------------------------
                            440 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:74: bool unregisterStateMachine(		stateMachine_t* sm)
                            441 ;	-----------------------------------------
                            442 ;	 function unregisterStateMachine
                            443 ;	-----------------------------------------
   0634                     444 _unregisterStateMachine:
   0634 AA F0               445 	mov	r2,b
   0636 AB 83               446 	mov	r3,dph
   0638 E5 82               447 	mov	a,dpl
   063A 90 00 C1            448 	mov	dptr,#_unregisterStateMachine_sm_1_1
   063D F0                  449 	movx	@dptr,a
   063E A3                  450 	inc	dptr
   063F EB                  451 	mov	a,r3
   0640 F0                  452 	movx	@dptr,a
   0641 A3                  453 	inc	dptr
   0642 EA                  454 	mov	a,r2
   0643 F0                  455 	movx	@dptr,a
                            456 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:76: if(sm)
   0644 90 00 C1            457 	mov	dptr,#_unregisterStateMachine_sm_1_1
   0647 E0                  458 	movx	a,@dptr
   0648 FA                  459 	mov	r2,a
   0649 A3                  460 	inc	dptr
   064A E0                  461 	movx	a,@dptr
   064B FB                  462 	mov	r3,a
   064C A3                  463 	inc	dptr
   064D E0                  464 	movx	a,@dptr
   064E FC                  465 	mov	r4,a
   064F EA                  466 	mov	a,r2
   0650 4B                  467 	orl	a,r3
   0651 4C                  468 	orl	a,r4
   0652 60 44               469 	jz	00104$
                            470 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0654 7D 00               471 	mov	r5,#0x00
   0656                     472 00105$:
   0656 BD 32 00            473 	cjne	r5,#0x32,00116$
   0659                     474 00116$:
   0659 50 3D               475 	jnc	00104$
                            476 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:82: if(stateMachines[statetMachineIndex] == sm)
   065B ED                  477 	mov	a,r5
   065C 75 F0 03            478 	mov	b,#0x03
   065F A4                  479 	mul	ab
   0660 24 23               480 	add	a,#_stateMachines
   0662 FE                  481 	mov	r6,a
   0663 E4                  482 	clr	a
   0664 34 00               483 	addc	a,#(_stateMachines >> 8)
   0666 FF                  484 	mov	r7,a
   0667 C0 05               485 	push	ar5
   0669 8E 82               486 	mov	dpl,r6
   066B 8F 83               487 	mov	dph,r7
   066D E0                  488 	movx	a,@dptr
   066E F8                  489 	mov	r0,a
   066F A3                  490 	inc	dptr
   0670 E0                  491 	movx	a,@dptr
   0671 F9                  492 	mov	r1,a
   0672 A3                  493 	inc	dptr
   0673 E0                  494 	movx	a,@dptr
   0674 FD                  495 	mov	r5,a
   0675 E8                  496 	mov	a,r0
   0676 B5 02 0A            497 	cjne	a,ar2,00118$
   0679 E9                  498 	mov	a,r1
   067A B5 03 06            499 	cjne	a,ar3,00118$
   067D ED                  500 	mov	a,r5
   067E B5 04 02            501 	cjne	a,ar4,00118$
   0681 80 04               502 	sjmp	00119$
   0683                     503 00118$:
   0683 D0 05               504 	pop	ar5
   0685 80 0E               505 	sjmp	00107$
   0687                     506 00119$:
   0687 D0 05               507 	pop	ar5
                            508 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:84: stateMachines[statetMachineIndex] = NULL ;
   0689 8E 82               509 	mov	dpl,r6
   068B 8F 83               510 	mov	dph,r7
   068D E4                  511 	clr	a
   068E F0                  512 	movx	@dptr,a
   068F A3                  513 	inc	dptr
   0690 F0                  514 	movx	@dptr,a
   0691 A3                  515 	inc	dptr
   0692 F0                  516 	movx	@dptr,a
                            517 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:86: return true ;
   0693 D3                  518 	setb	c
   0694 22                  519 	ret
   0695                     520 00107$:
                            521 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:80: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   0695 0D                  522 	inc	r5
   0696 80 BE               523 	sjmp	00105$
   0698                     524 00104$:
                            525 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:91: return false ;
   0698 C3                  526 	clr	c
   0699 22                  527 	ret
                            528 ;------------------------------------------------------------
                            529 ;Allocation info for local variables in function 'iterateAllStateMachines'
                            530 ;------------------------------------------------------------
                            531 ;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
                            532 ;------------------------------------------------------------
                            533 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:95: void iterateAllStateMachines(	void)
                            534 ;	-----------------------------------------
                            535 ;	 function iterateAllStateMachines
                            536 ;	-----------------------------------------
   069A                     537 _iterateAllStateMachines:
                            538 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:99: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   069A 7A 00               539 	mov	r2,#0x00
   069C                     540 00103$:
   069C BA 32 00            541 	cjne	r2,#0x32,00113$
   069F                     542 00113$:
   069F 50 31               543 	jnc	00107$
                            544 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:101: if(stateMachines[statetMachineIndex] != NULL)
   06A1 EA                  545 	mov	a,r2
   06A2 75 F0 03            546 	mov	b,#0x03
   06A5 A4                  547 	mul	ab
   06A6 24 23               548 	add	a,#_stateMachines
   06A8 F5 82               549 	mov	dpl,a
   06AA E4                  550 	clr	a
   06AB 34 00               551 	addc	a,#(_stateMachines >> 8)
   06AD F5 83               552 	mov	dph,a
   06AF E0                  553 	movx	a,@dptr
   06B0 FB                  554 	mov	r3,a
   06B1 A3                  555 	inc	dptr
   06B2 E0                  556 	movx	a,@dptr
   06B3 FC                  557 	mov	r4,a
   06B4 A3                  558 	inc	dptr
   06B5 E0                  559 	movx	a,@dptr
   06B6 FD                  560 	mov	r5,a
   06B7 BB 00 08            561 	cjne	r3,#0x00,00115$
   06BA BC 00 05            562 	cjne	r4,#0x00,00115$
   06BD BD 00 02            563 	cjne	r5,#0x00,00115$
   06C0 80 0D               564 	sjmp	00105$
   06C2                     565 00115$:
                            566 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:103: iterateStateMachine(stateMachines[statetMachineIndex]) ;
   06C2 8B 82               567 	mov	dpl,r3
   06C4 8C 83               568 	mov	dph,r4
   06C6 8D F0               569 	mov	b,r5
   06C8 C0 02               570 	push	ar2
   06CA 12 08 82            571 	lcall	_iterateStateMachine
   06CD D0 02               572 	pop	ar2
   06CF                     573 00105$:
                            574 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:99: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   06CF 0A                  575 	inc	r2
   06D0 80 CA               576 	sjmp	00103$
   06D2                     577 00107$:
   06D2 22                  578 	ret
                            579 ;------------------------------------------------------------
                            580 ;Allocation info for local variables in function 'callStateHandler'
                            581 ;------------------------------------------------------------
                            582 ;sloc0                     Allocated with name '_callStateHandler_sloc0_1_0'
                            583 ;sloc1                     Allocated with name '_callStateHandler_sloc1_1_0'
                            584 ;state                     Allocated with name '_callStateHandler_PARM_2'
                            585 ;event                     Allocated with name '_callStateHandler_PARM_3'
                            586 ;sm                        Allocated with name '_callStateHandler_sm_1_1'
                            587 ;response                  Allocated with name '_callStateHandler_response_1_1'
                            588 ;------------------------------------------------------------
                            589 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:113: stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
                            590 ;	-----------------------------------------
                            591 ;	 function callStateHandler
                            592 ;	-----------------------------------------
   06D3                     593 _callStateHandler:
   06D3 AA F0               594 	mov	r2,b
   06D5 AB 83               595 	mov	r3,dph
   06D7 E5 82               596 	mov	a,dpl
   06D9 90 00 CA            597 	mov	dptr,#_callStateHandler_sm_1_1
   06DC F0                  598 	movx	@dptr,a
   06DD A3                  599 	inc	dptr
   06DE EB                  600 	mov	a,r3
   06DF F0                  601 	movx	@dptr,a
   06E0 A3                  602 	inc	dptr
   06E1 EA                  603 	mov	a,r2
   06E2 F0                  604 	movx	@dptr,a
                            605 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:117: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
   06E3 90 00 C7            606 	mov	dptr,#_callStateHandler_PARM_3
   06E6 E0                  607 	movx	a,@dptr
   06E7 FA                  608 	mov	r2,a
   06E8 A3                  609 	inc	dptr
   06E9 E0                  610 	movx	a,@dptr
   06EA FB                  611 	mov	r3,a
   06EB A3                  612 	inc	dptr
   06EC E0                  613 	movx	a,@dptr
   06ED FC                  614 	mov	r4,a
   06EE 8A 82               615 	mov	dpl,r2
   06F0 8B 83               616 	mov	dph,r3
   06F2 8C F0               617 	mov	b,r4
   06F4 12 3D 60            618 	lcall	__gptrget
   06F7 FD                  619 	mov	r5,a
   06F8 C3                  620 	clr	c
   06F9 74 03               621 	mov	a,#0x03
   06FB 9D                  622 	subb	a,r5
   06FC B3                  623 	cpl	c
   06FD E4                  624 	clr	a
   06FE 33                  625 	rlc	a
   06FF FE                  626 	mov	r6,a
   0700 60 1B               627 	jz	00105$
   0702 ED                  628 	mov	a,r5
   0703 75 F0 03            629 	mov	b,#0x03
   0706 A4                  630 	mul	ab
   0707 24 16               631 	add	a,#_eventTypes
   0709 F5 82               632 	mov	dpl,a
   070B E4                  633 	clr	a
   070C 34 0F               634 	addc	a,#(_eventTypes >> 8)
   070E F5 83               635 	mov	dph,a
   0710 E0                  636 	movx	a,@dptr
   0711 F5 23               637 	mov	_callStateHandler_sloc0_1_0,a
   0713 A3                  638 	inc	dptr
   0714 E0                  639 	movx	a,@dptr
   0715 F5 24               640 	mov	(_callStateHandler_sloc0_1_0 + 1),a
   0717 A3                  641 	inc	dptr
   0718 E0                  642 	movx	a,@dptr
   0719 F5 25               643 	mov	(_callStateHandler_sloc0_1_0 + 2),a
   071B 80 09               644 	sjmp	00106$
   071D                     645 00105$:
   071D 75 23 CA            646 	mov	_callStateHandler_sloc0_1_0,#__str_1
   0720 75 24 3D            647 	mov	(_callStateHandler_sloc0_1_0 + 1),#(__str_1 >> 8)
   0723 75 25 80            648 	mov	(_callStateHandler_sloc0_1_0 + 2),#0x80
   0726                     649 00106$:
   0726 90 00 C4            650 	mov	dptr,#_callStateHandler_PARM_2
   0729 E0                  651 	movx	a,@dptr
   072A F5 26               652 	mov	_callStateHandler_sloc1_1_0,a
   072C A3                  653 	inc	dptr
   072D E0                  654 	movx	a,@dptr
   072E F5 27               655 	mov	(_callStateHandler_sloc1_1_0 + 1),a
   0730 A3                  656 	inc	dptr
   0731 E0                  657 	movx	a,@dptr
   0732 F5 28               658 	mov	(_callStateHandler_sloc1_1_0 + 2),a
   0734 74 06               659 	mov	a,#0x06
   0736 25 26               660 	add	a,_callStateHandler_sloc1_1_0
   0738 FE                  661 	mov	r6,a
   0739 E4                  662 	clr	a
   073A 35 27               663 	addc	a,(_callStateHandler_sloc1_1_0 + 1)
   073C FF                  664 	mov	r7,a
   073D AD 28               665 	mov	r5,(_callStateHandler_sloc1_1_0 + 2)
   073F 8E 82               666 	mov	dpl,r6
   0741 8F 83               667 	mov	dph,r7
   0743 8D F0               668 	mov	b,r5
   0745 12 3D 60            669 	lcall	__gptrget
   0748 FE                  670 	mov	r6,a
   0749 A3                  671 	inc	dptr
   074A 12 3D 60            672 	lcall	__gptrget
   074D FF                  673 	mov	r7,a
   074E A3                  674 	inc	dptr
   074F 12 3D 60            675 	lcall	__gptrget
   0752 FD                  676 	mov	r5,a
   0753 C0 02               677 	push	ar2
   0755 C0 03               678 	push	ar3
   0757 C0 04               679 	push	ar4
   0759 C0 23               680 	push	_callStateHandler_sloc0_1_0
   075B C0 24               681 	push	(_callStateHandler_sloc0_1_0 + 1)
   075D C0 25               682 	push	(_callStateHandler_sloc0_1_0 + 2)
   075F C0 06               683 	push	ar6
   0761 C0 07               684 	push	ar7
   0763 C0 05               685 	push	ar5
   0765 74 A8               686 	mov	a,#__str_0
   0767 C0 E0               687 	push	acc
   0769 74 3D               688 	mov	a,#(__str_0 >> 8)
   076B C0 E0               689 	push	acc
   076D 74 80               690 	mov	a,#0x80
   076F C0 E0               691 	push	acc
   0771 12 35 14            692 	lcall	_printf
   0774 E5 81               693 	mov	a,sp
   0776 24 F7               694 	add	a,#0xf7
   0778 F5 81               695 	mov	sp,a
   077A D0 04               696 	pop	ar4
   077C D0 03               697 	pop	ar3
   077E D0 02               698 	pop	ar2
                            699 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:119: response = ((callStateHandler_t)(state->handler))(sm, event) ;
   0780 74 04               700 	mov	a,#0x04
   0782 25 26               701 	add	a,_callStateHandler_sloc1_1_0
   0784 FD                  702 	mov	r5,a
   0785 E4                  703 	clr	a
   0786 35 27               704 	addc	a,(_callStateHandler_sloc1_1_0 + 1)
   0788 FE                  705 	mov	r6,a
   0789 AF 28               706 	mov	r7,(_callStateHandler_sloc1_1_0 + 2)
   078B 8D 82               707 	mov	dpl,r5
   078D 8E 83               708 	mov	dph,r6
   078F 8F F0               709 	mov	b,r7
   0791 12 3D 60            710 	lcall	__gptrget
   0794 FD                  711 	mov	r5,a
   0795 A3                  712 	inc	dptr
   0796 12 3D 60            713 	lcall	__gptrget
   0799 FE                  714 	mov	r6,a
   079A 90 00 CA            715 	mov	dptr,#_callStateHandler_sm_1_1
   079D E0                  716 	movx	a,@dptr
   079E FF                  717 	mov	r7,a
   079F A3                  718 	inc	dptr
   07A0 E0                  719 	movx	a,@dptr
   07A1 F8                  720 	mov	r0,a
   07A2 A3                  721 	inc	dptr
   07A3 E0                  722 	movx	a,@dptr
   07A4 F9                  723 	mov	r1,a
   07A5 C0 05               724 	push	ar5
   07A7 C0 06               725 	push	ar6
   07A9 C0 02               726 	push	ar2
   07AB C0 03               727 	push	ar3
   07AD C0 04               728 	push	ar4
   07AF 74 C2               729 	mov	a,#00111$
   07B1 C0 E0               730 	push	acc
   07B3 74 07               731 	mov	a,#(00111$ >> 8)
   07B5 C0 E0               732 	push	acc
   07B7 C0 05               733 	push	ar5
   07B9 C0 06               734 	push	ar6
   07BB 8F 82               735 	mov	dpl,r7
   07BD 88 83               736 	mov	dph,r0
   07BF 89 F0               737 	mov	b,r1
   07C1 22                  738 	ret
   07C2                     739 00111$:
   07C2 AA 82               740 	mov	r2,dpl
   07C4 15 81               741 	dec	sp
   07C6 15 81               742 	dec	sp
   07C8 15 81               743 	dec	sp
   07CA D0 06               744 	pop	ar6
   07CC D0 05               745 	pop	ar5
                            746 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:121: printf("response: %s ", responseTypes[response]) ;
   07CE EA                  747 	mov	a,r2
   07CF 75 F0 03            748 	mov	b,#0x03
   07D2 A4                  749 	mul	ab
   07D3 24 22               750 	add	a,#_responseTypes
   07D5 F5 82               751 	mov	dpl,a
   07D7 E4                  752 	clr	a
   07D8 34 0F               753 	addc	a,#(_responseTypes >> 8)
   07DA F5 83               754 	mov	dph,a
   07DC E0                  755 	movx	a,@dptr
   07DD FB                  756 	mov	r3,a
   07DE A3                  757 	inc	dptr
   07DF E0                  758 	movx	a,@dptr
   07E0 FC                  759 	mov	r4,a
   07E1 A3                  760 	inc	dptr
   07E2 E0                  761 	movx	a,@dptr
   07E3 FD                  762 	mov	r5,a
   07E4 C0 02               763 	push	ar2
   07E6 C0 03               764 	push	ar3
   07E8 C0 04               765 	push	ar4
   07EA C0 05               766 	push	ar5
   07EC 74 D7               767 	mov	a,#__str_2
   07EE C0 E0               768 	push	acc
   07F0 74 3D               769 	mov	a,#(__str_2 >> 8)
   07F2 C0 E0               770 	push	acc
   07F4 74 80               771 	mov	a,#0x80
   07F6 C0 E0               772 	push	acc
   07F8 12 35 14            773 	lcall	_printf
   07FB E5 81               774 	mov	a,sp
   07FD 24 FA               775 	add	a,#0xfa
   07FF F5 81               776 	mov	sp,a
   0801 D0 02               777 	pop	ar2
                            778 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:123: if(response == TRANSITION)
   0803 BA 02 60            779 	cjne	r2,#0x02,00102$
                            780 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:125: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
   0806 90 00 CA            781 	mov	dptr,#_callStateHandler_sm_1_1
   0809 E0                  782 	movx	a,@dptr
   080A FB                  783 	mov	r3,a
   080B A3                  784 	inc	dptr
   080C E0                  785 	movx	a,@dptr
   080D FC                  786 	mov	r4,a
   080E A3                  787 	inc	dptr
   080F E0                  788 	movx	a,@dptr
   0810 FD                  789 	mov	r5,a
   0811 74 09               790 	mov	a,#0x09
   0813 2B                  791 	add	a,r3
   0814 FB                  792 	mov	r3,a
   0815 E4                  793 	clr	a
   0816 3C                  794 	addc	a,r4
   0817 FC                  795 	mov	r4,a
   0818 8B 82               796 	mov	dpl,r3
   081A 8C 83               797 	mov	dph,r4
   081C 8D F0               798 	mov	b,r5
   081E 12 3D 60            799 	lcall	__gptrget
   0821 FB                  800 	mov	r3,a
   0822 A3                  801 	inc	dptr
   0823 12 3D 60            802 	lcall	__gptrget
   0826 FC                  803 	mov	r4,a
   0827 A3                  804 	inc	dptr
   0828 12 3D 60            805 	lcall	__gptrget
   082B FD                  806 	mov	r5,a
   082C 74 06               807 	mov	a,#0x06
   082E 2B                  808 	add	a,r3
   082F FB                  809 	mov	r3,a
   0830 E4                  810 	clr	a
   0831 3C                  811 	addc	a,r4
   0832 FC                  812 	mov	r4,a
   0833 8B 82               813 	mov	dpl,r3
   0835 8C 83               814 	mov	dph,r4
   0837 8D F0               815 	mov	b,r5
   0839 12 3D 60            816 	lcall	__gptrget
   083C FB                  817 	mov	r3,a
   083D A3                  818 	inc	dptr
   083E 12 3D 60            819 	lcall	__gptrget
   0841 FC                  820 	mov	r4,a
   0842 A3                  821 	inc	dptr
   0843 12 3D 60            822 	lcall	__gptrget
   0846 FD                  823 	mov	r5,a
   0847 C0 02               824 	push	ar2
   0849 C0 03               825 	push	ar3
   084B C0 04               826 	push	ar4
   084D C0 05               827 	push	ar5
   084F 74 E5               828 	mov	a,#__str_3
   0851 C0 E0               829 	push	acc
   0853 74 3D               830 	mov	a,#(__str_3 >> 8)
   0855 C0 E0               831 	push	acc
   0857 74 80               832 	mov	a,#0x80
   0859 C0 E0               833 	push	acc
   085B 12 35 14            834 	lcall	_printf
   085E E5 81               835 	mov	a,sp
   0860 24 FA               836 	add	a,#0xfa
   0862 F5 81               837 	mov	sp,a
   0864 D0 02               838 	pop	ar2
   0866                     839 00102$:
                            840 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:128: printf("\n") ;
   0866 C0 02               841 	push	ar2
   0868 74 EC               842 	mov	a,#__str_4
   086A C0 E0               843 	push	acc
   086C 74 3D               844 	mov	a,#(__str_4 >> 8)
   086E C0 E0               845 	push	acc
   0870 74 80               846 	mov	a,#0x80
   0872 C0 E0               847 	push	acc
   0874 12 35 14            848 	lcall	_printf
   0877 15 81               849 	dec	sp
   0879 15 81               850 	dec	sp
   087B 15 81               851 	dec	sp
   087D D0 02               852 	pop	ar2
                            853 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:130: return response ;
   087F 8A 82               854 	mov	dpl,r2
   0881 22                  855 	ret
                            856 ;------------------------------------------------------------
                            857 ;Allocation info for local variables in function 'iterateStateMachine'
                            858 ;------------------------------------------------------------
                            859 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                            860 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                            861 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                            862 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                            863 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                            864 ;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
                            865 ;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
                            866 ;sloc7                     Allocated with name '_iterateStateMachine_sloc7_1_0'
                            867 ;sloc8                     Allocated with name '_iterateStateMachine_sloc8_1_0'
                            868 ;sloc9                     Allocated with name '_iterateStateMachine_sloc9_1_0'
                            869 ;sloc10                    Allocated with name '_iterateStateMachine_sloc10_1_0'
                            870 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                            871 ;initialTransitionEvent    Allocated with name '_iterateStateMachine_initialTransitionEvent_1_1'
                            872 ;enterEvent                Allocated with name '_iterateStateMachine_enterEvent_1_1'
                            873 ;exitEvent                 Allocated with name '_iterateStateMachine_exitEvent_1_1'
                            874 ;iterationMax              Allocated with name '_iterateStateMachine_iterationMax_1_1'
                            875 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                            876 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                            877 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                            878 ;source                    Allocated with name '_iterateStateMachine_source_3_8'
                            879 ;target                    Allocated with name '_iterateStateMachine_target_3_8'
                            880 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_13'
                            881 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_13'
                            882 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_13'
                            883 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_13'
                            884 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_13'
                            885 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_13'
                            886 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_13'
                            887 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_15'
                            888 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_21'
                            889 ;------------------------------------------------------------
                            890 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:134: void iterateStateMachine(	stateMachine_t* sm)
                            891 ;	-----------------------------------------
                            892 ;	 function iterateStateMachine
                            893 ;	-----------------------------------------
   0882                     894 _iterateStateMachine:
   0882 AA F0               895 	mov	r2,b
   0884 AB 83               896 	mov	r3,dph
   0886 E5 82               897 	mov	a,dpl
   0888 90 00 CD            898 	mov	dptr,#_iterateStateMachine_sm_1_1
   088B F0                  899 	movx	@dptr,a
   088C A3                  900 	inc	dptr
   088D EB                  901 	mov	a,r3
   088E F0                  902 	movx	@dptr,a
   088F A3                  903 	inc	dptr
   0890 EA                  904 	mov	a,r2
   0891 F0                  905 	movx	@dptr,a
                            906 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:141: printf("\titerating %s\n", sm->stateMachineName) ;
   0892 90 00 CD            907 	mov	dptr,#_iterateStateMachine_sm_1_1
   0895 E0                  908 	movx	a,@dptr
   0896 FA                  909 	mov	r2,a
   0897 A3                  910 	inc	dptr
   0898 E0                  911 	movx	a,@dptr
   0899 FB                  912 	mov	r3,a
   089A A3                  913 	inc	dptr
   089B E0                  914 	movx	a,@dptr
   089C FC                  915 	mov	r4,a
   089D 74 03               916 	mov	a,#0x03
   089F 2A                  917 	add	a,r2
   08A0 FD                  918 	mov	r5,a
   08A1 E4                  919 	clr	a
   08A2 3B                  920 	addc	a,r3
   08A3 FE                  921 	mov	r6,a
   08A4 8C 07               922 	mov	ar7,r4
   08A6 8D 82               923 	mov	dpl,r5
   08A8 8E 83               924 	mov	dph,r6
   08AA 8F F0               925 	mov	b,r7
   08AC 12 3D 60            926 	lcall	__gptrget
   08AF FD                  927 	mov	r5,a
   08B0 A3                  928 	inc	dptr
   08B1 12 3D 60            929 	lcall	__gptrget
   08B4 FE                  930 	mov	r6,a
   08B5 A3                  931 	inc	dptr
   08B6 12 3D 60            932 	lcall	__gptrget
   08B9 FF                  933 	mov	r7,a
   08BA C0 02               934 	push	ar2
   08BC C0 03               935 	push	ar3
   08BE C0 04               936 	push	ar4
   08C0 C0 05               937 	push	ar5
   08C2 C0 06               938 	push	ar6
   08C4 C0 07               939 	push	ar7
   08C6 74 EE               940 	mov	a,#__str_5
   08C8 C0 E0               941 	push	acc
   08CA 74 3D               942 	mov	a,#(__str_5 >> 8)
   08CC C0 E0               943 	push	acc
   08CE 74 80               944 	mov	a,#0x80
   08D0 C0 E0               945 	push	acc
   08D2 12 35 14            946 	lcall	_printf
   08D5 E5 81               947 	mov	a,sp
   08D7 24 FA               948 	add	a,#0xfa
   08D9 F5 81               949 	mov	sp,a
   08DB D0 04               950 	pop	ar4
   08DD D0 03               951 	pop	ar3
   08DF D0 02               952 	pop	ar2
                            953 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:145: if(!sm->stateMachineInitialized)
   08E1 74 13               954 	mov	a,#0x13
   08E3 2A                  955 	add	a,r2
   08E4 F5 29               956 	mov	_iterateStateMachine_sloc0_1_0,a
   08E6 E4                  957 	clr	a
   08E7 3B                  958 	addc	a,r3
   08E8 F5 2A               959 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   08EA 8C 2B               960 	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
   08EC 85 29 82            961 	mov	dpl,_iterateStateMachine_sloc0_1_0
   08EF 85 2A 83            962 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   08F2 85 2B F0            963 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   08F5 12 3D 60            964 	lcall	__gptrget
   08F8 60 03               965 	jz	00196$
   08FA 02 09 B0            966 	ljmp	00169$
   08FD                     967 00196$:
                            968 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:147: printf("\t\tinitializing...\n") ;
   08FD C0 02               969 	push	ar2
   08FF C0 03               970 	push	ar3
   0901 C0 04               971 	push	ar4
   0903 74 FD               972 	mov	a,#__str_6
   0905 C0 E0               973 	push	acc
   0907 74 3D               974 	mov	a,#(__str_6 >> 8)
   0909 C0 E0               975 	push	acc
   090B 74 80               976 	mov	a,#0x80
   090D C0 E0               977 	push	acc
   090F 12 35 14            978 	lcall	_printf
   0912 15 81               979 	dec	sp
   0914 15 81               980 	dec	sp
   0916 15 81               981 	dec	sp
   0918 D0 04               982 	pop	ar4
   091A D0 03               983 	pop	ar3
   091C D0 02               984 	pop	ar2
                            985 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:149: NormalInsert(&sm->eventQueue, &enterEvent) ;
   091E 74 0C               986 	mov	a,#0x0C
   0920 2A                  987 	add	a,r2
   0921 F8                  988 	mov	r0,a
   0922 E4                  989 	clr	a
   0923 3B                  990 	addc	a,r3
   0924 F9                  991 	mov	r1,a
   0925 8C 05               992 	mov	ar5,r4
   0927 90 00 14            993 	mov	dptr,#_NormalInsert_PARM_2
   092A 74 D1               994 	mov	a,#_iterateStateMachine_enterEvent_1_1
   092C F0                  995 	movx	@dptr,a
   092D A3                  996 	inc	dptr
   092E 74 00               997 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0930 F0                  998 	movx	@dptr,a
   0931 A3                  999 	inc	dptr
   0932 E4                 1000 	clr	a
   0933 F0                 1001 	movx	@dptr,a
   0934 88 82              1002 	mov	dpl,r0
   0936 89 83              1003 	mov	dph,r1
   0938 8D F0              1004 	mov	b,r5
   093A C0 02              1005 	push	ar2
   093C C0 03              1006 	push	ar3
   093E C0 04              1007 	push	ar4
   0940 12 02 41           1008 	lcall	_NormalInsert
   0943 D0 04              1009 	pop	ar4
   0945 D0 03              1010 	pop	ar3
   0947 D0 02              1011 	pop	ar2
                           1012 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:150: NormalInsert(&sm->eventQueue, &initialTransitionEvent) ;
   0949 74 0C              1013 	mov	a,#0x0C
   094B 2A                 1014 	add	a,r2
   094C FD                 1015 	mov	r5,a
   094D E4                 1016 	clr	a
   094E 3B                 1017 	addc	a,r3
   094F FE                 1018 	mov	r6,a
   0950 8C 07              1019 	mov	ar7,r4
   0952 90 00 14           1020 	mov	dptr,#_NormalInsert_PARM_2
   0955 74 D0              1021 	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
   0957 F0                 1022 	movx	@dptr,a
   0958 A3                 1023 	inc	dptr
   0959 74 00              1024 	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
   095B F0                 1025 	movx	@dptr,a
   095C A3                 1026 	inc	dptr
   095D E4                 1027 	clr	a
   095E F0                 1028 	movx	@dptr,a
   095F 8D 82              1029 	mov	dpl,r5
   0961 8E 83              1030 	mov	dph,r6
   0963 8F F0              1031 	mov	b,r7
   0965 C0 02              1032 	push	ar2
   0967 C0 03              1033 	push	ar3
   0969 C0 04              1034 	push	ar4
   096B 12 02 41           1035 	lcall	_NormalInsert
   096E D0 04              1036 	pop	ar4
   0970 D0 03              1037 	pop	ar3
   0972 D0 02              1038 	pop	ar2
                           1039 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:152: sm->currentState			= (state_t*)sm->topState ;
   0974 74 06              1040 	mov	a,#0x06
   0976 2A                 1041 	add	a,r2
   0977 FD                 1042 	mov	r5,a
   0978 E4                 1043 	clr	a
   0979 3B                 1044 	addc	a,r3
   097A FE                 1045 	mov	r6,a
   097B 8C 07              1046 	mov	ar7,r4
   097D 8A 82              1047 	mov	dpl,r2
   097F 8B 83              1048 	mov	dph,r3
   0981 8C F0              1049 	mov	b,r4
   0983 12 3D 60           1050 	lcall	__gptrget
   0986 FA                 1051 	mov	r2,a
   0987 A3                 1052 	inc	dptr
   0988 12 3D 60           1053 	lcall	__gptrget
   098B FB                 1054 	mov	r3,a
   098C 7C 80              1055 	mov	r4,#0x80
   098E 8D 82              1056 	mov	dpl,r5
   0990 8E 83              1057 	mov	dph,r6
   0992 8F F0              1058 	mov	b,r7
   0994 EA                 1059 	mov	a,r2
   0995 12 31 54           1060 	lcall	__gptrput
   0998 A3                 1061 	inc	dptr
   0999 EB                 1062 	mov	a,r3
   099A 12 31 54           1063 	lcall	__gptrput
   099D A3                 1064 	inc	dptr
   099E EC                 1065 	mov	a,r4
   099F 12 31 54           1066 	lcall	__gptrput
                           1067 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:153: sm->stateMachineInitialized	= true ;
   09A2 85 29 82           1068 	mov	dpl,_iterateStateMachine_sloc0_1_0
   09A5 85 2A 83           1069 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   09A8 85 2B F0           1070 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   09AB 74 01              1071 	mov	a,#0x01
   09AD 12 31 54           1072 	lcall	__gptrput
                           1073 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:158: while(!isEmpty(&sm->eventQueue))
   09B0                    1074 00169$:
   09B0 90 00 CD           1075 	mov	dptr,#_iterateStateMachine_sm_1_1
   09B3 E0                 1076 	movx	a,@dptr
   09B4 F5 3E              1077 	mov	_iterateStateMachine_sloc7_1_0,a
   09B6 A3                 1078 	inc	dptr
   09B7 E0                 1079 	movx	a,@dptr
   09B8 F5 3F              1080 	mov	(_iterateStateMachine_sloc7_1_0 + 1),a
   09BA A3                 1081 	inc	dptr
   09BB E0                 1082 	movx	a,@dptr
   09BC F5 40              1083 	mov	(_iterateStateMachine_sloc7_1_0 + 2),a
   09BE AD 3E              1084 	mov	r5,_iterateStateMachine_sloc7_1_0
   09C0 AE 3F              1085 	mov	r6,(_iterateStateMachine_sloc7_1_0 + 1)
   09C2 AF 40              1086 	mov	r7,(_iterateStateMachine_sloc7_1_0 + 2)
   09C4 74 09              1087 	mov	a,#0x09
   09C6 25 3E              1088 	add	a,_iterateStateMachine_sloc7_1_0
   09C8 F5 29              1089 	mov	_iterateStateMachine_sloc0_1_0,a
   09CA E4                 1090 	clr	a
   09CB 35 3F              1091 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   09CD F5 2A              1092 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   09CF 85 40 2B           1093 	mov	(_iterateStateMachine_sloc0_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09D2 85 3E 2C           1094 	mov	_iterateStateMachine_sloc1_1_0,_iterateStateMachine_sloc7_1_0
   09D5 85 3F 2D           1095 	mov	(_iterateStateMachine_sloc1_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
   09D8 85 40 2E           1096 	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09DB 85 3E 2F           1097 	mov	_iterateStateMachine_sloc2_1_0,_iterateStateMachine_sloc7_1_0
   09DE 85 3F 30           1098 	mov	(_iterateStateMachine_sloc2_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
   09E1 85 40 31           1099 	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09E4 74 06              1100 	mov	a,#0x06
   09E6 25 3E              1101 	add	a,_iterateStateMachine_sloc7_1_0
   09E8 F5 32              1102 	mov	_iterateStateMachine_sloc3_1_0,a
   09EA E4                 1103 	clr	a
   09EB 35 3F              1104 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   09ED F5 33              1105 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   09EF 85 40 34           1106 	mov	(_iterateStateMachine_sloc3_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09F2 85 3E 35           1107 	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc7_1_0
   09F5 85 3F 36           1108 	mov	(_iterateStateMachine_sloc4_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
   09F8 85 40 37           1109 	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   09FB 85 3E 38           1110 	mov	_iterateStateMachine_sloc5_1_0,_iterateStateMachine_sloc7_1_0
   09FE 85 3F 39           1111 	mov	(_iterateStateMachine_sloc5_1_0 + 1),(_iterateStateMachine_sloc7_1_0 + 1)
   0A01 85 40 3A           1112 	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc7_1_0 + 2)
   0A04                    1113 00155$:
   0A04 C0 05              1114 	push	ar5
   0A06 C0 06              1115 	push	ar6
   0A08 C0 07              1116 	push	ar7
   0A0A 74 0C              1117 	mov	a,#0x0C
   0A0C 25 3E              1118 	add	a,_iterateStateMachine_sloc7_1_0
   0A0E F8                 1119 	mov	r0,a
   0A0F E4                 1120 	clr	a
   0A10 35 3F              1121 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0A12 F9                 1122 	mov	r1,a
   0A13 AD 40              1123 	mov	r5,(_iterateStateMachine_sloc7_1_0 + 2)
   0A15 88 82              1124 	mov	dpl,r0
   0A17 89 83              1125 	mov	dph,r1
   0A19 8D F0              1126 	mov	b,r5
   0A1B C0 05              1127 	push	ar5
   0A1D C0 06              1128 	push	ar6
   0A1F C0 07              1129 	push	ar7
   0A21 12 01 89           1130 	lcall	_isEmpty
   0A24 E5 82              1131 	mov	a,dpl
   0A26 D0 07              1132 	pop	ar7
   0A28 D0 06              1133 	pop	ar6
   0A2A D0 05              1134 	pop	ar5
   0A2C D0 07              1135 	pop	ar7
   0A2E D0 06              1136 	pop	ar6
   0A30 D0 05              1137 	pop	ar5
   0A32 60 03              1138 	jz	00197$
   0A34 02 17 37           1139 	ljmp	00157$
   0A37                    1140 00197$:
                           1141 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:160: event_t*				eventToProcess		= Remove(&sm->eventQueue) ;
   0A37 C0 05              1142 	push	ar5
   0A39 C0 06              1143 	push	ar6
   0A3B C0 07              1144 	push	ar7
   0A3D 74 0C              1145 	mov	a,#0x0C
   0A3F 25 3E              1146 	add	a,_iterateStateMachine_sloc7_1_0
   0A41 F8                 1147 	mov	r0,a
   0A42 E4                 1148 	clr	a
   0A43 35 3F              1149 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0A45 F9                 1150 	mov	r1,a
   0A46 AD 40              1151 	mov	r5,(_iterateStateMachine_sloc7_1_0 + 2)
   0A48 88 82              1152 	mov	dpl,r0
   0A4A 89 83              1153 	mov	dph,r1
   0A4C 8D F0              1154 	mov	b,r5
   0A4E C0 05              1155 	push	ar5
   0A50 C0 06              1156 	push	ar6
   0A52 C0 07              1157 	push	ar7
   0A54 12 04 6D           1158 	lcall	_Remove
   0A57 85 82 3B           1159 	mov	_iterateStateMachine_sloc6_1_0,dpl
   0A5A 85 83 3C           1160 	mov	(_iterateStateMachine_sloc6_1_0 + 1),dph
   0A5D 85 F0 3D           1161 	mov	(_iterateStateMachine_sloc6_1_0 + 2),b
   0A60 D0 07              1162 	pop	ar7
   0A62 D0 06              1163 	pop	ar6
   0A64 D0 05              1164 	pop	ar5
                           1165 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:161: state_t*				stateBeingProcessed	= sm->currentState ;
   0A66 85 32 82           1166 	mov	dpl,_iterateStateMachine_sloc3_1_0
   0A69 85 33 83           1167 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   0A6C 85 34 F0           1168 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   0A6F 12 3D 60           1169 	lcall	__gptrget
   0A72 FD                 1170 	mov	r5,a
   0A73 A3                 1171 	inc	dptr
   0A74 12 3D 60           1172 	lcall	__gptrget
   0A77 FE                 1173 	mov	r6,a
   0A78 A3                 1174 	inc	dptr
   0A79 12 3D 60           1175 	lcall	__gptrget
   0A7C FF                 1176 	mov	r7,a
   0A7D 90 00 D5           1177 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0A80 ED                 1178 	mov	a,r5
   0A81 F0                 1179 	movx	@dptr,a
   0A82 A3                 1180 	inc	dptr
   0A83 EE                 1181 	mov	a,r6
   0A84 F0                 1182 	movx	@dptr,a
   0A85 A3                 1183 	inc	dptr
   0A86 EF                 1184 	mov	a,r7
   0A87 F0                 1185 	movx	@dptr,a
                           1186 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:164: sm->nextState = (state_t*)0 ;	// just a little housecleaning
   0A88 74 09              1187 	mov	a,#0x09
   0A8A 25 3E              1188 	add	a,_iterateStateMachine_sloc7_1_0
   0A8C FD                 1189 	mov	r5,a
   0A8D E4                 1190 	clr	a
   0A8E 35 3F              1191 	addc	a,(_iterateStateMachine_sloc7_1_0 + 1)
   0A90 FE                 1192 	mov	r6,a
   0A91 AF 40              1193 	mov	r7,(_iterateStateMachine_sloc7_1_0 + 2)
   0A93 8D 82              1194 	mov	dpl,r5
   0A95 8E 83              1195 	mov	dph,r6
   0A97 8F F0              1196 	mov	b,r7
   0A99 E4                 1197 	clr	a
   0A9A 12 31 54           1198 	lcall	__gptrput
   0A9D A3                 1199 	inc	dptr
   0A9E E4                 1200 	clr	a
   0A9F 12 31 54           1201 	lcall	__gptrput
   0AA2 A3                 1202 	inc	dptr
   0AA3 E4                 1203 	clr	a
   0AA4 12 31 54           1204 	lcall	__gptrput
                           1205 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:166: if(iterationMax-- == 0)
   0AA7 90 00 D3           1206 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   0AAA E0                 1207 	movx	a,@dptr
   0AAB FD                 1208 	mov	r5,a
   0AAC A3                 1209 	inc	dptr
   0AAD E0                 1210 	movx	a,@dptr
   0AAE FE                 1211 	mov	r6,a
   0AAF ED                 1212 	mov	a,r5
   0AB0 24 FF              1213 	add	a,#0xff
   0AB2 FF                 1214 	mov	r7,a
   0AB3 EE                 1215 	mov	a,r6
   0AB4 34 FF              1216 	addc	a,#0xff
   0AB6 F8                 1217 	mov	r0,a
   0AB7 90 00 D3           1218 	mov	dptr,#_iterateStateMachine_iterationMax_1_1
   0ABA EF                 1219 	mov	a,r7
   0ABB F0                 1220 	movx	@dptr,a
   0ABC A3                 1221 	inc	dptr
   0ABD E8                 1222 	mov	a,r0
   0ABE F0                 1223 	movx	@dptr,a
   0ABF ED                 1224 	mov	a,r5
   0AC0 4E                 1225 	orl	a,r6
   0AC1 D0 07              1226 	pop	ar7
   0AC3 D0 06              1227 	pop	ar6
   0AC5 D0 05              1228 	pop	ar5
   0AC7 70 03              1229 	jnz	00198$
   0AC9 02 17 37           1230 	ljmp	00157$
   0ACC                    1231 00198$:
                           1232 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:171: printf("\t\tProcessing event...\n") ;
   0ACC C0 05              1233 	push	ar5
   0ACE C0 06              1234 	push	ar6
   0AD0 C0 07              1235 	push	ar7
   0AD2 74 10              1236 	mov	a,#__str_7
   0AD4 C0 E0              1237 	push	acc
   0AD6 74 3E              1238 	mov	a,#(__str_7 >> 8)
   0AD8 C0 E0              1239 	push	acc
   0ADA 74 80              1240 	mov	a,#0x80
   0ADC C0 E0              1241 	push	acc
   0ADE 12 35 14           1242 	lcall	_printf
   0AE1 15 81              1243 	dec	sp
   0AE3 15 81              1244 	dec	sp
   0AE5 15 81              1245 	dec	sp
   0AE7 D0 07              1246 	pop	ar7
   0AE9 D0 06              1247 	pop	ar6
   0AEB D0 05              1248 	pop	ar5
                           1249 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:183: do
   0AED                    1250 00109$:
                           1251 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:185: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
   0AED C0 05              1252 	push	ar5
   0AEF C0 06              1253 	push	ar6
   0AF1 C0 07              1254 	push	ar7
   0AF3 90 00 CD           1255 	mov	dptr,#_iterateStateMachine_sm_1_1
   0AF6 E0                 1256 	movx	a,@dptr
   0AF7 F8                 1257 	mov	r0,a
   0AF8 A3                 1258 	inc	dptr
   0AF9 E0                 1259 	movx	a,@dptr
   0AFA F9                 1260 	mov	r1,a
   0AFB A3                 1261 	inc	dptr
   0AFC E0                 1262 	movx	a,@dptr
   0AFD FD                 1263 	mov	r5,a
   0AFE 90 00 D5           1264 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B01 E0                 1265 	movx	a,@dptr
   0B02 FE                 1266 	mov	r6,a
   0B03 A3                 1267 	inc	dptr
   0B04 E0                 1268 	movx	a,@dptr
   0B05 FF                 1269 	mov	r7,a
   0B06 A3                 1270 	inc	dptr
   0B07 E0                 1271 	movx	a,@dptr
   0B08 FA                 1272 	mov	r2,a
   0B09 90 00 C4           1273 	mov	dptr,#_callStateHandler_PARM_2
   0B0C EE                 1274 	mov	a,r6
   0B0D F0                 1275 	movx	@dptr,a
   0B0E A3                 1276 	inc	dptr
   0B0F EF                 1277 	mov	a,r7
   0B10 F0                 1278 	movx	@dptr,a
   0B11 A3                 1279 	inc	dptr
   0B12 EA                 1280 	mov	a,r2
   0B13 F0                 1281 	movx	@dptr,a
   0B14 90 00 C7           1282 	mov	dptr,#_callStateHandler_PARM_3
   0B17 E5 3B              1283 	mov	a,_iterateStateMachine_sloc6_1_0
   0B19 F0                 1284 	movx	@dptr,a
   0B1A A3                 1285 	inc	dptr
   0B1B E5 3C              1286 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0B1D F0                 1287 	movx	@dptr,a
   0B1E A3                 1288 	inc	dptr
   0B1F E5 3D              1289 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0B21 F0                 1290 	movx	@dptr,a
   0B22 88 82              1291 	mov	dpl,r0
   0B24 89 83              1292 	mov	dph,r1
   0B26 8D F0              1293 	mov	b,r5
   0B28 C0 05              1294 	push	ar5
   0B2A C0 06              1295 	push	ar6
   0B2C C0 07              1296 	push	ar7
   0B2E 12 06 D3           1297 	lcall	_callStateHandler
   0B31 85 82 41           1298 	mov	_iterateStateMachine_sloc8_1_0,dpl
   0B34 D0 07              1299 	pop	ar7
   0B36 D0 06              1300 	pop	ar6
   0B38 D0 05              1301 	pop	ar5
                           1302 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
   0B3A D0 07              1303 	pop	ar7
   0B3C D0 06              1304 	pop	ar6
   0B3E D0 05              1305 	pop	ar5
   0B40 E5 41              1306 	mov	a,_iterateStateMachine_sloc8_1_0
   0B42 60 03              1307 	jz	00199$
   0B44 02 0B F2           1308 	ljmp	00111$
   0B47                    1309 00199$:
   0B47 85 3B 82           1310 	mov	dpl,_iterateStateMachine_sloc6_1_0
   0B4A 85 3C 83           1311 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   0B4D 85 3D F0           1312 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   0B50 12 3D 60           1313 	lcall	__gptrget
   0B53 FA                 1314 	mov  r2,a
   0B54 24 FC              1315 	add	a,#0xff - 0x03
   0B56 40 03              1316 	jc	00200$
   0B58 02 0B F2           1317 	ljmp	00111$
   0B5B                    1318 00200$:
                           1319 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:189: stateBeingProcessed = stateBeingProcessed->parent ;
   0B5B 90 00 D5           1320 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B5E E0                 1321 	movx	a,@dptr
   0B5F FA                 1322 	mov	r2,a
   0B60 A3                 1323 	inc	dptr
   0B61 E0                 1324 	movx	a,@dptr
   0B62 FB                 1325 	mov	r3,a
   0B63 A3                 1326 	inc	dptr
   0B64 E0                 1327 	movx	a,@dptr
   0B65 FC                 1328 	mov	r4,a
   0B66 8A 82              1329 	mov	dpl,r2
   0B68 8B 83              1330 	mov	dph,r3
   0B6A 8C F0              1331 	mov	b,r4
   0B6C 12 3D 60           1332 	lcall	__gptrget
   0B6F FA                 1333 	mov	r2,a
   0B70 A3                 1334 	inc	dptr
   0B71 12 3D 60           1335 	lcall	__gptrget
   0B74 FB                 1336 	mov	r3,a
   0B75 A3                 1337 	inc	dptr
   0B76 12 3D 60           1338 	lcall	__gptrget
   0B79 FC                 1339 	mov	r4,a
   0B7A 90 00 D5           1340 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B7D EA                 1341 	mov	a,r2
   0B7E F0                 1342 	movx	@dptr,a
   0B7F A3                 1343 	inc	dptr
   0B80 EB                 1344 	mov	a,r3
   0B81 F0                 1345 	movx	@dptr,a
   0B82 A3                 1346 	inc	dptr
   0B83 EC                 1347 	mov	a,r4
   0B84 F0                 1348 	movx	@dptr,a
                           1349 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:191: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
   0B85 90 00 D5           1350 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0B88 E0                 1351 	movx	a,@dptr
   0B89 FA                 1352 	mov	r2,a
   0B8A A3                 1353 	inc	dptr
   0B8B E0                 1354 	movx	a,@dptr
   0B8C FB                 1355 	mov	r3,a
   0B8D A3                 1356 	inc	dptr
   0B8E E0                 1357 	movx	a,@dptr
   0B8F FC                 1358 	mov	r4,a
   0B90 EA                 1359 	mov	a,r2
   0B91 4B                 1360 	orl	a,r3
   0B92 4C                 1361 	orl	a,r4
   0B93 60 1D              1362 	jz	00160$
   0B95 74 06              1363 	mov	a,#0x06
   0B97 2A                 1364 	add	a,r2
   0B98 FA                 1365 	mov	r2,a
   0B99 E4                 1366 	clr	a
   0B9A 3B                 1367 	addc	a,r3
   0B9B FB                 1368 	mov	r3,a
   0B9C 8A 82              1369 	mov	dpl,r2
   0B9E 8B 83              1370 	mov	dph,r3
   0BA0 8C F0              1371 	mov	b,r4
   0BA2 12 3D 60           1372 	lcall	__gptrget
   0BA5 FA                 1373 	mov	r2,a
   0BA6 A3                 1374 	inc	dptr
   0BA7 12 3D 60           1375 	lcall	__gptrget
   0BAA FB                 1376 	mov	r3,a
   0BAB A3                 1377 	inc	dptr
   0BAC 12 3D 60           1378 	lcall	__gptrget
   0BAF FC                 1379 	mov	r4,a
   0BB0 80 06              1380 	sjmp	00161$
   0BB2                    1381 00160$:
   0BB2 7A 44              1382 	mov	r2,#__str_9
   0BB4 7B 3E              1383 	mov	r3,#(__str_9 >> 8)
   0BB6 7C 80              1384 	mov	r4,#0x80
   0BB8                    1385 00161$:
   0BB8 C0 05              1386 	push	ar5
   0BBA C0 06              1387 	push	ar6
   0BBC C0 07              1388 	push	ar7
   0BBE C0 02              1389 	push	ar2
   0BC0 C0 03              1390 	push	ar3
   0BC2 C0 04              1391 	push	ar4
   0BC4 74 27              1392 	mov	a,#__str_8
   0BC6 C0 E0              1393 	push	acc
   0BC8 74 3E              1394 	mov	a,#(__str_8 >> 8)
   0BCA C0 E0              1395 	push	acc
   0BCC 74 80              1396 	mov	a,#0x80
   0BCE C0 E0              1397 	push	acc
   0BD0 12 35 14           1398 	lcall	_printf
   0BD3 E5 81              1399 	mov	a,sp
   0BD5 24 FA              1400 	add	a,#0xfa
   0BD7 F5 81              1401 	mov	sp,a
   0BD9 D0 07              1402 	pop	ar7
   0BDB D0 06              1403 	pop	ar6
   0BDD D0 05              1404 	pop	ar5
                           1405 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: } while(stateBeingProcessed) ;
   0BDF 90 00 D5           1406 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0BE2 E0                 1407 	movx	a,@dptr
   0BE3 FA                 1408 	mov	r2,a
   0BE4 A3                 1409 	inc	dptr
   0BE5 E0                 1410 	movx	a,@dptr
   0BE6 FB                 1411 	mov	r3,a
   0BE7 A3                 1412 	inc	dptr
   0BE8 E0                 1413 	movx	a,@dptr
   0BE9 FC                 1414 	mov	r4,a
   0BEA EA                 1415 	mov	a,r2
   0BEB 4B                 1416 	orl	a,r3
   0BEC 4C                 1417 	orl	a,r4
   0BED 60 03              1418 	jz	00202$
   0BEF 02 0A ED           1419 	ljmp	00109$
   0BF2                    1420 00202$:
   0BF2                    1421 00111$:
                           1422 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:204: if(action == TRANSITION)
   0BF2 74 02              1423 	mov	a,#0x02
   0BF4 B5 41 02           1424 	cjne	a,_iterateStateMachine_sloc8_1_0,00203$
   0BF7 80 03              1425 	sjmp	00204$
   0BF9                    1426 00203$:
   0BF9 02 0A 04           1427 	ljmp	00155$
   0BFC                    1428 00204$:
                           1429 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:206: state_t*	source	= sm->currentState ;
   0BFC 74 06              1430 	mov	a,#0x06
   0BFE 2D                 1431 	add	a,r5
   0BFF FA                 1432 	mov	r2,a
   0C00 E4                 1433 	clr	a
   0C01 3E                 1434 	addc	a,r6
   0C02 FB                 1435 	mov	r3,a
   0C03 8F 04              1436 	mov	ar4,r7
   0C05 8A 82              1437 	mov	dpl,r2
   0C07 8B 83              1438 	mov	dph,r3
   0C09 8C F0              1439 	mov	b,r4
   0C0B 12 3D 60           1440 	lcall	__gptrget
   0C0E F5 3B              1441 	mov	_iterateStateMachine_sloc6_1_0,a
   0C10 A3                 1442 	inc	dptr
   0C11 12 3D 60           1443 	lcall	__gptrget
   0C14 F5 3C              1444 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   0C16 A3                 1445 	inc	dptr
   0C17 12 3D 60           1446 	lcall	__gptrget
   0C1A F5 3D              1447 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
                           1448 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:207: state_t*	target	= sm->nextState ;
   0C1C 85 29 82           1449 	mov	dpl,_iterateStateMachine_sloc0_1_0
   0C1F 85 2A 83           1450 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   0C22 85 2B F0           1451 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   0C25 12 3D 60           1452 	lcall	__gptrget
   0C28 F5 42              1453 	mov	_iterateStateMachine_sloc9_1_0,a
   0C2A A3                 1454 	inc	dptr
   0C2B 12 3D 60           1455 	lcall	__gptrget
   0C2E F5 43              1456 	mov	(_iterateStateMachine_sloc9_1_0 + 1),a
   0C30 A3                 1457 	inc	dptr
   0C31 12 3D 60           1458 	lcall	__gptrget
   0C34 F5 44              1459 	mov	(_iterateStateMachine_sloc9_1_0 + 2),a
                           1460 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:213: if(source == target)
   0C36 E5 42              1461 	mov	a,_iterateStateMachine_sloc9_1_0
   0C38 B5 3B 0C           1462 	cjne	a,_iterateStateMachine_sloc6_1_0,00205$
   0C3B E5 43              1463 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0C3D B5 3C 07           1464 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00205$
   0C40 E5 44              1465 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0C42 B5 3D 02           1466 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00205$
   0C45 80 03              1467 	sjmp	00206$
   0C47                    1468 00205$:
   0C47 02 0D 01           1469 	ljmp	00151$
   0C4A                    1470 00206$:
                           1471 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:215: printf("\t\t\t\tSelf transition.\n") ;
   0C4A C0 05              1472 	push	ar5
   0C4C C0 06              1473 	push	ar6
   0C4E C0 07              1474 	push	ar7
   0C50 74 4B              1475 	mov	a,#__str_10
   0C52 C0 E0              1476 	push	acc
   0C54 74 3E              1477 	mov	a,#(__str_10 >> 8)
   0C56 C0 E0              1478 	push	acc
   0C58 74 80              1479 	mov	a,#0x80
   0C5A C0 E0              1480 	push	acc
   0C5C 12 35 14           1481 	lcall	_printf
   0C5F 15 81              1482 	dec	sp
   0C61 15 81              1483 	dec	sp
   0C63 15 81              1484 	dec	sp
   0C65 D0 07              1485 	pop	ar7
   0C67 D0 06              1486 	pop	ar6
   0C69 D0 05              1487 	pop	ar5
                           1488 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:219: callStateHandler(sm, source, &exitEvent) ;
   0C6B 90 00 C4           1489 	mov	dptr,#_callStateHandler_PARM_2
   0C6E E5 3B              1490 	mov	a,_iterateStateMachine_sloc6_1_0
   0C70 F0                 1491 	movx	@dptr,a
   0C71 A3                 1492 	inc	dptr
   0C72 E5 3C              1493 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0C74 F0                 1494 	movx	@dptr,a
   0C75 A3                 1495 	inc	dptr
   0C76 E5 3D              1496 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0C78 F0                 1497 	movx	@dptr,a
   0C79 90 00 C7           1498 	mov	dptr,#_callStateHandler_PARM_3
   0C7C 74 D2              1499 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0C7E F0                 1500 	movx	@dptr,a
   0C7F A3                 1501 	inc	dptr
   0C80 74 00              1502 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0C82 F0                 1503 	movx	@dptr,a
   0C83 A3                 1504 	inc	dptr
   0C84 E4                 1505 	clr	a
   0C85 F0                 1506 	movx	@dptr,a
   0C86 8D 82              1507 	mov	dpl,r5
   0C88 8E 83              1508 	mov	dph,r6
   0C8A 8F F0              1509 	mov	b,r7
   0C8C C0 05              1510 	push	ar5
   0C8E C0 06              1511 	push	ar6
   0C90 C0 07              1512 	push	ar7
   0C92 12 06 D3           1513 	lcall	_callStateHandler
                           1514 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:220: sm->currentState = target ;
   0C95 90 00 CD           1515 	mov	dptr,#_iterateStateMachine_sm_1_1
   0C98 E0                 1516 	movx	a,@dptr
   0C99 F5 45              1517 	mov	_iterateStateMachine_sloc10_1_0,a
   0C9B A3                 1518 	inc	dptr
   0C9C E0                 1519 	movx	a,@dptr
   0C9D F5 46              1520 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0C9F A3                 1521 	inc	dptr
   0CA0 E0                 1522 	movx	a,@dptr
   0CA1 F5 47              1523 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0CA3 74 06              1524 	mov	a,#0x06
   0CA5 25 45              1525 	add	a,_iterateStateMachine_sloc10_1_0
   0CA7 FE                 1526 	mov	r6,a
   0CA8 E4                 1527 	clr	a
   0CA9 35 46              1528 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0CAB FF                 1529 	mov	r7,a
   0CAC AD 47              1530 	mov	r5,(_iterateStateMachine_sloc10_1_0 + 2)
   0CAE 8E 82              1531 	mov	dpl,r6
   0CB0 8F 83              1532 	mov	dph,r7
   0CB2 8D F0              1533 	mov	b,r5
   0CB4 E5 42              1534 	mov	a,_iterateStateMachine_sloc9_1_0
   0CB6 12 31 54           1535 	lcall	__gptrput
   0CB9 A3                 1536 	inc	dptr
   0CBA E5 43              1537 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0CBC 12 31 54           1538 	lcall	__gptrput
   0CBF A3                 1539 	inc	dptr
   0CC0 E5 44              1540 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0CC2 12 31 54           1541 	lcall	__gptrput
                           1542 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:221: callStateHandler(sm, target, &enterEvent) ;
   0CC5 90 00 C4           1543 	mov	dptr,#_callStateHandler_PARM_2
   0CC8 E5 42              1544 	mov	a,_iterateStateMachine_sloc9_1_0
   0CCA F0                 1545 	movx	@dptr,a
   0CCB A3                 1546 	inc	dptr
   0CCC E5 43              1547 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0CCE F0                 1548 	movx	@dptr,a
   0CCF A3                 1549 	inc	dptr
   0CD0 E5 44              1550 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0CD2 F0                 1551 	movx	@dptr,a
   0CD3 90 00 C7           1552 	mov	dptr,#_callStateHandler_PARM_3
   0CD6 74 D1              1553 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0CD8 F0                 1554 	movx	@dptr,a
   0CD9 A3                 1555 	inc	dptr
   0CDA 74 00              1556 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0CDC F0                 1557 	movx	@dptr,a
   0CDD A3                 1558 	inc	dptr
   0CDE E4                 1559 	clr	a
   0CDF F0                 1560 	movx	@dptr,a
   0CE0 85 45 82           1561 	mov	dpl,_iterateStateMachine_sloc10_1_0
   0CE3 85 46 83           1562 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   0CE6 85 47 F0           1563 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   0CE9 C0 05              1564 	push	ar5
   0CEB C0 06              1565 	push	ar6
   0CED C0 07              1566 	push	ar7
   0CEF 12 06 D3           1567 	lcall	_callStateHandler
   0CF2 D0 07              1568 	pop	ar7
   0CF4 D0 06              1569 	pop	ar6
   0CF6 D0 05              1570 	pop	ar5
   0CF8 D0 07              1571 	pop	ar7
   0CFA D0 06              1572 	pop	ar6
   0CFC D0 05              1573 	pop	ar5
   0CFE 02 17 07           1574 	ljmp	00152$
   0D01                    1575 00151$:
                           1576 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:223: else if(source == (state_t*)(target->parent))
   0D01 C0 02              1577 	push	ar2
   0D03 C0 03              1578 	push	ar3
   0D05 C0 04              1579 	push	ar4
   0D07 85 42 82           1580 	mov	dpl,_iterateStateMachine_sloc9_1_0
   0D0A 85 43 83           1581 	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
   0D0D 85 44 F0           1582 	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
   0D10 12 3D 60           1583 	lcall	__gptrget
   0D13 F8                 1584 	mov	r0,a
   0D14 A3                 1585 	inc	dptr
   0D15 12 3D 60           1586 	lcall	__gptrget
   0D18 F9                 1587 	mov	r1,a
   0D19 A3                 1588 	inc	dptr
   0D1A 12 3D 60           1589 	lcall	__gptrget
   0D1D FA                 1590 	mov	r2,a
   0D1E E8                 1591 	mov	a,r0
   0D1F B5 3B 0A           1592 	cjne	a,_iterateStateMachine_sloc6_1_0,00207$
   0D22 E9                 1593 	mov	a,r1
   0D23 B5 3C 06           1594 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00207$
   0D26 EA                 1595 	mov	a,r2
   0D27 B5 3D 02           1596 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00207$
   0D2A 80 08              1597 	sjmp	00208$
   0D2C                    1598 00207$:
   0D2C D0 04              1599 	pop	ar4
   0D2E D0 03              1600 	pop	ar3
   0D30 D0 02              1601 	pop	ar2
   0D32 80 71              1602 	sjmp	00148$
   0D34                    1603 00208$:
                           1604 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:225: printf("\t\t\t\tTransition to direct child.\n") ;
   0D34 C0 05              1605 	push	ar5
   0D36 C0 06              1606 	push	ar6
   0D38 C0 07              1607 	push	ar7
   0D3A 74 61              1608 	mov	a,#__str_11
   0D3C C0 E0              1609 	push	acc
   0D3E 74 3E              1610 	mov	a,#(__str_11 >> 8)
   0D40 C0 E0              1611 	push	acc
   0D42 74 80              1612 	mov	a,#0x80
   0D44 C0 E0              1613 	push	acc
   0D46 12 35 14           1614 	lcall	_printf
   0D49 15 81              1615 	dec	sp
   0D4B 15 81              1616 	dec	sp
   0D4D 15 81              1617 	dec	sp
   0D4F D0 07              1618 	pop	ar7
   0D51 D0 06              1619 	pop	ar6
   0D53 D0 05              1620 	pop	ar5
   0D55 D0 04              1621 	pop	ar4
   0D57 D0 03              1622 	pop	ar3
   0D59 D0 02              1623 	pop	ar2
                           1624 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:230: sm->currentState = target ;
   0D5B 8A 82              1625 	mov	dpl,r2
   0D5D 8B 83              1626 	mov	dph,r3
   0D5F 8C F0              1627 	mov	b,r4
   0D61 E5 42              1628 	mov	a,_iterateStateMachine_sloc9_1_0
   0D63 12 31 54           1629 	lcall	__gptrput
   0D66 A3                 1630 	inc	dptr
   0D67 E5 43              1631 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0D69 12 31 54           1632 	lcall	__gptrput
   0D6C A3                 1633 	inc	dptr
   0D6D E5 44              1634 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0D6F 12 31 54           1635 	lcall	__gptrput
                           1636 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: callStateHandler(sm, target, &enterEvent) ;
   0D72 90 00 C4           1637 	mov	dptr,#_callStateHandler_PARM_2
   0D75 E5 42              1638 	mov	a,_iterateStateMachine_sloc9_1_0
   0D77 F0                 1639 	movx	@dptr,a
   0D78 A3                 1640 	inc	dptr
   0D79 E5 43              1641 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0D7B F0                 1642 	movx	@dptr,a
   0D7C A3                 1643 	inc	dptr
   0D7D E5 44              1644 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0D7F F0                 1645 	movx	@dptr,a
   0D80 90 00 C7           1646 	mov	dptr,#_callStateHandler_PARM_3
   0D83 74 D1              1647 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0D85 F0                 1648 	movx	@dptr,a
   0D86 A3                 1649 	inc	dptr
   0D87 74 00              1650 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0D89 F0                 1651 	movx	@dptr,a
   0D8A A3                 1652 	inc	dptr
   0D8B E4                 1653 	clr	a
   0D8C F0                 1654 	movx	@dptr,a
   0D8D 8D 82              1655 	mov	dpl,r5
   0D8F 8E 83              1656 	mov	dph,r6
   0D91 8F F0              1657 	mov	b,r7
   0D93 C0 05              1658 	push	ar5
   0D95 C0 06              1659 	push	ar6
   0D97 C0 07              1660 	push	ar7
   0D99 12 06 D3           1661 	lcall	_callStateHandler
   0D9C D0 07              1662 	pop	ar7
   0D9E D0 06              1663 	pop	ar6
   0DA0 D0 05              1664 	pop	ar5
   0DA2 02 17 07           1665 	ljmp	00152$
   0DA5                    1666 00148$:
                           1667 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:233: else if((state_t*)(source->parent) == (state_t*)(target->parent))
   0DA5 C0 02              1668 	push	ar2
   0DA7 C0 03              1669 	push	ar3
   0DA9 C0 04              1670 	push	ar4
   0DAB 85 3B 82           1671 	mov	dpl,_iterateStateMachine_sloc6_1_0
   0DAE 85 3C 83           1672 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   0DB1 85 3D F0           1673 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   0DB4 12 3D 60           1674 	lcall	__gptrget
   0DB7 F5 45              1675 	mov	_iterateStateMachine_sloc10_1_0,a
   0DB9 A3                 1676 	inc	dptr
   0DBA 12 3D 60           1677 	lcall	__gptrget
   0DBD F5 46              1678 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0DBF A3                 1679 	inc	dptr
   0DC0 12 3D 60           1680 	lcall	__gptrget
   0DC3 F5 47              1681 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0DC5 85 42 82           1682 	mov	dpl,_iterateStateMachine_sloc9_1_0
   0DC8 85 43 83           1683 	mov	dph,(_iterateStateMachine_sloc9_1_0 + 1)
   0DCB 85 44 F0           1684 	mov	b,(_iterateStateMachine_sloc9_1_0 + 2)
   0DCE 12 3D 60           1685 	lcall	__gptrget
   0DD1 FB                 1686 	mov	r3,a
   0DD2 A3                 1687 	inc	dptr
   0DD3 12 3D 60           1688 	lcall	__gptrget
   0DD6 FC                 1689 	mov	r4,a
   0DD7 A3                 1690 	inc	dptr
   0DD8 12 3D 60           1691 	lcall	__gptrget
   0DDB FA                 1692 	mov	r2,a
   0DDC EB                 1693 	mov	a,r3
   0DDD B5 45 0A           1694 	cjne	a,_iterateStateMachine_sloc10_1_0,00209$
   0DE0 EC                 1695 	mov	a,r4
   0DE1 B5 46 06           1696 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00209$
   0DE4 EA                 1697 	mov	a,r2
   0DE5 B5 47 02           1698 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00209$
   0DE8 80 09              1699 	sjmp	00210$
   0DEA                    1700 00209$:
   0DEA D0 04              1701 	pop	ar4
   0DEC D0 03              1702 	pop	ar3
   0DEE D0 02              1703 	pop	ar2
   0DF0 02 0E B0           1704 	ljmp	00145$
   0DF3                    1705 00210$:
   0DF3 D0 04              1706 	pop	ar4
   0DF5 D0 03              1707 	pop	ar3
   0DF7 D0 02              1708 	pop	ar2
                           1709 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: printf("\t\t\t\tTransition to direct peer.\n") ;
   0DF9 C0 05              1710 	push	ar5
   0DFB C0 06              1711 	push	ar6
   0DFD C0 07              1712 	push	ar7
   0DFF 74 82              1713 	mov	a,#__str_12
   0E01 C0 E0              1714 	push	acc
   0E03 74 3E              1715 	mov	a,#(__str_12 >> 8)
   0E05 C0 E0              1716 	push	acc
   0E07 74 80              1717 	mov	a,#0x80
   0E09 C0 E0              1718 	push	acc
   0E0B 12 35 14           1719 	lcall	_printf
   0E0E 15 81              1720 	dec	sp
   0E10 15 81              1721 	dec	sp
   0E12 15 81              1722 	dec	sp
   0E14 D0 07              1723 	pop	ar7
   0E16 D0 06              1724 	pop	ar6
   0E18 D0 05              1725 	pop	ar5
                           1726 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:240: callStateHandler(sm, source, &exitEvent) ;
   0E1A 90 00 C4           1727 	mov	dptr,#_callStateHandler_PARM_2
   0E1D E5 3B              1728 	mov	a,_iterateStateMachine_sloc6_1_0
   0E1F F0                 1729 	movx	@dptr,a
   0E20 A3                 1730 	inc	dptr
   0E21 E5 3C              1731 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0E23 F0                 1732 	movx	@dptr,a
   0E24 A3                 1733 	inc	dptr
   0E25 E5 3D              1734 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0E27 F0                 1735 	movx	@dptr,a
   0E28 90 00 C7           1736 	mov	dptr,#_callStateHandler_PARM_3
   0E2B 74 D2              1737 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0E2D F0                 1738 	movx	@dptr,a
   0E2E A3                 1739 	inc	dptr
   0E2F 74 00              1740 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0E31 F0                 1741 	movx	@dptr,a
   0E32 A3                 1742 	inc	dptr
   0E33 E4                 1743 	clr	a
   0E34 F0                 1744 	movx	@dptr,a
   0E35 8D 82              1745 	mov	dpl,r5
   0E37 8E 83              1746 	mov	dph,r6
   0E39 8F F0              1747 	mov	b,r7
   0E3B C0 05              1748 	push	ar5
   0E3D C0 06              1749 	push	ar6
   0E3F C0 07              1750 	push	ar7
   0E41 12 06 D3           1751 	lcall	_callStateHandler
                           1752 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:241: sm->currentState = target ;
   0E44 90 00 CD           1753 	mov	dptr,#_iterateStateMachine_sm_1_1
   0E47 E0                 1754 	movx	a,@dptr
   0E48 F5 45              1755 	mov	_iterateStateMachine_sloc10_1_0,a
   0E4A A3                 1756 	inc	dptr
   0E4B E0                 1757 	movx	a,@dptr
   0E4C F5 46              1758 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0E4E A3                 1759 	inc	dptr
   0E4F E0                 1760 	movx	a,@dptr
   0E50 F5 47              1761 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0E52 74 06              1762 	mov	a,#0x06
   0E54 25 45              1763 	add	a,_iterateStateMachine_sloc10_1_0
   0E56 FE                 1764 	mov	r6,a
   0E57 E4                 1765 	clr	a
   0E58 35 46              1766 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0E5A FF                 1767 	mov	r7,a
   0E5B AD 47              1768 	mov	r5,(_iterateStateMachine_sloc10_1_0 + 2)
   0E5D 8E 82              1769 	mov	dpl,r6
   0E5F 8F 83              1770 	mov	dph,r7
   0E61 8D F0              1771 	mov	b,r5
   0E63 E5 42              1772 	mov	a,_iterateStateMachine_sloc9_1_0
   0E65 12 31 54           1773 	lcall	__gptrput
   0E68 A3                 1774 	inc	dptr
   0E69 E5 43              1775 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0E6B 12 31 54           1776 	lcall	__gptrput
   0E6E A3                 1777 	inc	dptr
   0E6F E5 44              1778 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0E71 12 31 54           1779 	lcall	__gptrput
                           1780 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:242: callStateHandler(sm, target, &enterEvent) ;
   0E74 90 00 C4           1781 	mov	dptr,#_callStateHandler_PARM_2
   0E77 E5 42              1782 	mov	a,_iterateStateMachine_sloc9_1_0
   0E79 F0                 1783 	movx	@dptr,a
   0E7A A3                 1784 	inc	dptr
   0E7B E5 43              1785 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0E7D F0                 1786 	movx	@dptr,a
   0E7E A3                 1787 	inc	dptr
   0E7F E5 44              1788 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0E81 F0                 1789 	movx	@dptr,a
   0E82 90 00 C7           1790 	mov	dptr,#_callStateHandler_PARM_3
   0E85 74 D1              1791 	mov	a,#_iterateStateMachine_enterEvent_1_1
   0E87 F0                 1792 	movx	@dptr,a
   0E88 A3                 1793 	inc	dptr
   0E89 74 00              1794 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   0E8B F0                 1795 	movx	@dptr,a
   0E8C A3                 1796 	inc	dptr
   0E8D E4                 1797 	clr	a
   0E8E F0                 1798 	movx	@dptr,a
   0E8F 85 45 82           1799 	mov	dpl,_iterateStateMachine_sloc10_1_0
   0E92 85 46 83           1800 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   0E95 85 47 F0           1801 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   0E98 C0 05              1802 	push	ar5
   0E9A C0 06              1803 	push	ar6
   0E9C C0 07              1804 	push	ar7
   0E9E 12 06 D3           1805 	lcall	_callStateHandler
   0EA1 D0 07              1806 	pop	ar7
   0EA3 D0 06              1807 	pop	ar6
   0EA5 D0 05              1808 	pop	ar5
   0EA7 D0 07              1809 	pop	ar7
   0EA9 D0 06              1810 	pop	ar6
   0EAB D0 05              1811 	pop	ar5
   0EAD 02 17 07           1812 	ljmp	00152$
   0EB0                    1813 00145$:
                           1814 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:244: else if((state_t*)(source->parent) == target)
   0EB0 C0 02              1815 	push	ar2
   0EB2 C0 03              1816 	push	ar3
   0EB4 C0 04              1817 	push	ar4
   0EB6 85 3B 82           1818 	mov	dpl,_iterateStateMachine_sloc6_1_0
   0EB9 85 3C 83           1819 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   0EBC 85 3D F0           1820 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   0EBF 12 3D 60           1821 	lcall	__gptrget
   0EC2 F8                 1822 	mov	r0,a
   0EC3 A3                 1823 	inc	dptr
   0EC4 12 3D 60           1824 	lcall	__gptrget
   0EC7 F9                 1825 	mov	r1,a
   0EC8 A3                 1826 	inc	dptr
   0EC9 12 3D 60           1827 	lcall	__gptrget
   0ECC FA                 1828 	mov	r2,a
   0ECD E8                 1829 	mov	a,r0
   0ECE B5 42 0A           1830 	cjne	a,_iterateStateMachine_sloc9_1_0,00211$
   0ED1 E9                 1831 	mov	a,r1
   0ED2 B5 43 06           1832 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00211$
   0ED5 EA                 1833 	mov	a,r2
   0ED6 B5 44 02           1834 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00211$
   0ED9 80 08              1835 	sjmp	00212$
   0EDB                    1836 00211$:
   0EDB D0 04              1837 	pop	ar4
   0EDD D0 03              1838 	pop	ar3
   0EDF D0 02              1839 	pop	ar2
   0EE1 80 71              1840 	sjmp	00142$
   0EE3                    1841 00212$:
                           1842 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:246: printf("\t\t\t\tTransition to direct parent.\n") ;
   0EE3 C0 05              1843 	push	ar5
   0EE5 C0 06              1844 	push	ar6
   0EE7 C0 07              1845 	push	ar7
   0EE9 74 A2              1846 	mov	a,#__str_13
   0EEB C0 E0              1847 	push	acc
   0EED 74 3E              1848 	mov	a,#(__str_13 >> 8)
   0EEF C0 E0              1849 	push	acc
   0EF1 74 80              1850 	mov	a,#0x80
   0EF3 C0 E0              1851 	push	acc
   0EF5 12 35 14           1852 	lcall	_printf
   0EF8 15 81              1853 	dec	sp
   0EFA 15 81              1854 	dec	sp
   0EFC 15 81              1855 	dec	sp
   0EFE D0 07              1856 	pop	ar7
   0F00 D0 06              1857 	pop	ar6
   0F02 D0 05              1858 	pop	ar5
   0F04 D0 04              1859 	pop	ar4
   0F06 D0 03              1860 	pop	ar3
   0F08 D0 02              1861 	pop	ar2
                           1862 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:252: sm->currentState = target ;
   0F0A 8A 82              1863 	mov	dpl,r2
   0F0C 8B 83              1864 	mov	dph,r3
   0F0E 8C F0              1865 	mov	b,r4
   0F10 E5 42              1866 	mov	a,_iterateStateMachine_sloc9_1_0
   0F12 12 31 54           1867 	lcall	__gptrput
   0F15 A3                 1868 	inc	dptr
   0F16 E5 43              1869 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   0F18 12 31 54           1870 	lcall	__gptrput
   0F1B A3                 1871 	inc	dptr
   0F1C E5 44              1872 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   0F1E 12 31 54           1873 	lcall	__gptrput
                           1874 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:253: callStateHandler(sm, source, &exitEvent) ;
   0F21 90 00 C4           1875 	mov	dptr,#_callStateHandler_PARM_2
   0F24 E5 3B              1876 	mov	a,_iterateStateMachine_sloc6_1_0
   0F26 F0                 1877 	movx	@dptr,a
   0F27 A3                 1878 	inc	dptr
   0F28 E5 3C              1879 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0F2A F0                 1880 	movx	@dptr,a
   0F2B A3                 1881 	inc	dptr
   0F2C E5 3D              1882 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0F2E F0                 1883 	movx	@dptr,a
   0F2F 90 00 C7           1884 	mov	dptr,#_callStateHandler_PARM_3
   0F32 74 D2              1885 	mov	a,#_iterateStateMachine_exitEvent_1_1
   0F34 F0                 1886 	movx	@dptr,a
   0F35 A3                 1887 	inc	dptr
   0F36 74 00              1888 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   0F38 F0                 1889 	movx	@dptr,a
   0F39 A3                 1890 	inc	dptr
   0F3A E4                 1891 	clr	a
   0F3B F0                 1892 	movx	@dptr,a
   0F3C 8D 82              1893 	mov	dpl,r5
   0F3E 8E 83              1894 	mov	dph,r6
   0F40 8F F0              1895 	mov	b,r7
   0F42 C0 05              1896 	push	ar5
   0F44 C0 06              1897 	push	ar6
   0F46 C0 07              1898 	push	ar7
   0F48 12 06 D3           1899 	lcall	_callStateHandler
   0F4B D0 07              1900 	pop	ar7
   0F4D D0 06              1901 	pop	ar6
   0F4F D0 05              1902 	pop	ar5
   0F51 02 17 07           1903 	ljmp	00152$
   0F54                    1904 00142$:
                           1905 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:267: printf("\t\t\t\tScanning source hierarchy...\n") ;
   0F54 C0 05              1906 	push	ar5
   0F56 C0 06              1907 	push	ar6
   0F58 C0 07              1908 	push	ar7
   0F5A 74 C4              1909 	mov	a,#__str_14
   0F5C C0 E0              1910 	push	acc
   0F5E 74 3E              1911 	mov	a,#(__str_14 >> 8)
   0F60 C0 E0              1912 	push	acc
   0F62 74 80              1913 	mov	a,#0x80
   0F64 C0 E0              1914 	push	acc
   0F66 12 35 14           1915 	lcall	_printf
   0F69 15 81              1916 	dec	sp
   0F6B 15 81              1917 	dec	sp
   0F6D 15 81              1918 	dec	sp
   0F6F D0 07              1919 	pop	ar7
   0F71 D0 06              1920 	pop	ar6
   0F73 D0 05              1921 	pop	ar5
                           1922 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:270: targetIndex			= 0 ;
   0F75 90 01 39           1923 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   0F78 E4                 1924 	clr	a
   0F79 F0                 1925 	movx	@dptr,a
                           1926 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:271: stateBeingProcessed	= source ;
   0F7A 90 00 D5           1927 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0F7D E5 3B              1928 	mov	a,_iterateStateMachine_sloc6_1_0
   0F7F F0                 1929 	movx	@dptr,a
   0F80 A3                 1930 	inc	dptr
   0F81 E5 3C              1931 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   0F83 F0                 1932 	movx	@dptr,a
   0F84 A3                 1933 	inc	dptr
   0F85 E5 3D              1934 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   0F87 F0                 1935 	movx	@dptr,a
                           1936 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:273: do
   0F88 7A 00              1937 	mov	r2,#0x00
   0F8A                    1938 00117$:
                           1939 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
   0F8A C0 05              1940 	push	ar5
   0F8C C0 06              1941 	push	ar6
   0F8E C0 07              1942 	push	ar7
   0F90 8A 03              1943 	mov	ar3,r2
   0F92 0A                 1944 	inc	r2
   0F93 90 01 08           1945 	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
   0F96 EA                 1946 	mov	a,r2
   0F97 F0                 1947 	movx	@dptr,a
   0F98 EB                 1948 	mov	a,r3
   0F99 75 F0 03           1949 	mov	b,#0x03
   0F9C A4                 1950 	mul	ab
   0F9D 24 D8              1951 	add	a,#_iterateStateMachine_sourceHierarchy_4_13
   0F9F FB                 1952 	mov	r3,a
   0FA0 E4                 1953 	clr	a
   0FA1 34 00              1954 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
   0FA3 FC                 1955 	mov	r4,a
   0FA4 90 00 D5           1956 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   0FA7 E0                 1957 	movx	a,@dptr
   0FA8 F5 45              1958 	mov	_iterateStateMachine_sloc10_1_0,a
   0FAA A3                 1959 	inc	dptr
   0FAB E0                 1960 	movx	a,@dptr
   0FAC F5 46              1961 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   0FAE A3                 1962 	inc	dptr
   0FAF E0                 1963 	movx	a,@dptr
   0FB0 F5 47              1964 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   0FB2 8B 82              1965 	mov	dpl,r3
   0FB4 8C 83              1966 	mov	dph,r4
   0FB6 E5 45              1967 	mov	a,_iterateStateMachine_sloc10_1_0
   0FB8 F0                 1968 	movx	@dptr,a
   0FB9 A3                 1969 	inc	dptr
   0FBA E5 46              1970 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0FBC F0                 1971 	movx	@dptr,a
   0FBD A3                 1972 	inc	dptr
   0FBE E5 47              1973 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   0FC0 F0                 1974 	movx	@dptr,a
                           1975 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:277: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
   0FC1 74 06              1976 	mov	a,#0x06
   0FC3 25 45              1977 	add	a,_iterateStateMachine_sloc10_1_0
   0FC5 FB                 1978 	mov	r3,a
   0FC6 E4                 1979 	clr	a
   0FC7 35 46              1980 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   0FC9 FC                 1981 	mov	r4,a
   0FCA A8 47              1982 	mov	r0,(_iterateStateMachine_sloc10_1_0 + 2)
   0FCC 8B 82              1983 	mov	dpl,r3
   0FCE 8C 83              1984 	mov	dph,r4
   0FD0 88 F0              1985 	mov	b,r0
   0FD2 12 3D 60           1986 	lcall	__gptrget
   0FD5 FB                 1987 	mov	r3,a
   0FD6 A3                 1988 	inc	dptr
   0FD7 12 3D 60           1989 	lcall	__gptrget
   0FDA FC                 1990 	mov	r4,a
   0FDB A3                 1991 	inc	dptr
   0FDC 12 3D 60           1992 	lcall	__gptrget
   0FDF F8                 1993 	mov	r0,a
   0FE0 8A 01              1994 	mov	ar1,r2
   0FE2 7D 00              1995 	mov	r5,#0x00
   0FE4 19                 1996 	dec	r1
   0FE5 B9 FF 01           1997 	cjne	r1,#0xff,00213$
   0FE8 1D                 1998 	dec	r5
   0FE9                    1999 00213$:
   0FE9 C0 02              2000 	push	ar2
   0FEB C0 05              2001 	push	ar5
   0FED C0 06              2002 	push	ar6
   0FEF C0 07              2003 	push	ar7
   0FF1 C0 03              2004 	push	ar3
   0FF3 C0 04              2005 	push	ar4
   0FF5 C0 00              2006 	push	ar0
   0FF7 C0 01              2007 	push	ar1
   0FF9 C0 05              2008 	push	ar5
   0FFB 74 E6              2009 	mov	a,#__str_15
   0FFD C0 E0              2010 	push	acc
   0FFF 74 3E              2011 	mov	a,#(__str_15 >> 8)
   1001 C0 E0              2012 	push	acc
   1003 74 80              2013 	mov	a,#0x80
   1005 C0 E0              2014 	push	acc
   1007 12 35 14           2015 	lcall	_printf
   100A E5 81              2016 	mov	a,sp
   100C 24 F8              2017 	add	a,#0xf8
   100E F5 81              2018 	mov	sp,a
   1010 D0 07              2019 	pop	ar7
   1012 D0 06              2020 	pop	ar6
   1014 D0 05              2021 	pop	ar5
   1016 D0 02              2022 	pop	ar2
                           2023 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:279: if(stateBeingProcessed == target)
   1018 E5 42              2024 	mov	a,_iterateStateMachine_sloc9_1_0
   101A B5 45 0C           2025 	cjne	a,_iterateStateMachine_sloc10_1_0,00214$
   101D E5 43              2026 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   101F B5 46 07           2027 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00214$
   1022 E5 44              2028 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   1024 B5 47 02           2029 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00214$
   1027 80 09              2030 	sjmp	00215$
   1029                    2031 00214$:
   1029 D0 07              2032 	pop	ar7
   102B D0 06              2033 	pop	ar6
   102D D0 05              2034 	pop	ar5
   102F 02 11 1C           2035 	ljmp	00116$
   1032                    2036 00215$:
   1032 D0 07              2037 	pop	ar7
   1034 D0 06              2038 	pop	ar6
   1036 D0 05              2039 	pop	ar5
                           2040 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:283: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
   1038 C0 02              2041 	push	ar2
   103A C0 05              2042 	push	ar5
   103C C0 06              2043 	push	ar6
   103E C0 07              2044 	push	ar7
   1040 74 05              2045 	mov	a,#__str_16
   1042 C0 E0              2046 	push	acc
   1044 74 3F              2047 	mov	a,#(__str_16 >> 8)
   1046 C0 E0              2048 	push	acc
   1048 74 80              2049 	mov	a,#0x80
   104A C0 E0              2050 	push	acc
   104C 12 35 14           2051 	lcall	_printf
   104F 15 81              2052 	dec	sp
   1051 15 81              2053 	dec	sp
   1053 15 81              2054 	dec	sp
   1055 D0 07              2055 	pop	ar7
   1057 D0 06              2056 	pop	ar6
   1059 D0 05              2057 	pop	ar5
   105B D0 02              2058 	pop	ar2
                           2059 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:285: sourceIndex-- ;
   105D EA                 2060 	mov	a,r2
   105E 14                 2061 	dec	a
   105F FB                 2062 	mov	r3,a
   1060 90 01 08           2063 	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
   1063 F0                 2064 	movx	@dptr,a
                           2065 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:287: while(exitIndex < sourceIndex)
   1064 8B 41              2066 	mov	_iterateStateMachine_sloc8_1_0,r3
   1066 7C 00              2067 	mov	r4,#0x00
   1068                    2068 00112$:
   1068 C3                 2069 	clr	c
   1069 EC                 2070 	mov	a,r4
   106A 95 41              2071 	subb	a,_iterateStateMachine_sloc8_1_0
   106C 40 03              2072 	jc	00216$
   106E 02 10 F8           2073 	ljmp	00114$
   1071                    2074 00216$:
                           2075 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:289: printf("\t\t\t\t") ;
   1071 C0 05              2076 	push	ar5
   1073 C0 06              2077 	push	ar6
   1075 C0 07              2078 	push	ar7
   1077 C0 04              2079 	push	ar4
   1079 C0 05              2080 	push	ar5
   107B C0 06              2081 	push	ar6
   107D C0 07              2082 	push	ar7
   107F 74 2F              2083 	mov	a,#__str_17
   1081 C0 E0              2084 	push	acc
   1083 74 3F              2085 	mov	a,#(__str_17 >> 8)
   1085 C0 E0              2086 	push	acc
   1087 74 80              2087 	mov	a,#0x80
   1089 C0 E0              2088 	push	acc
   108B 12 35 14           2089 	lcall	_printf
   108E 15 81              2090 	dec	sp
   1090 15 81              2091 	dec	sp
   1092 15 81              2092 	dec	sp
   1094 D0 07              2093 	pop	ar7
   1096 D0 06              2094 	pop	ar6
   1098 D0 05              2095 	pop	ar5
   109A D0 04              2096 	pop	ar4
                           2097 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:291: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   109C 90 00 CD           2098 	mov	dptr,#_iterateStateMachine_sm_1_1
   109F E0                 2099 	movx	a,@dptr
   10A0 F8                 2100 	mov	r0,a
   10A1 A3                 2101 	inc	dptr
   10A2 E0                 2102 	movx	a,@dptr
   10A3 F9                 2103 	mov	r1,a
   10A4 A3                 2104 	inc	dptr
   10A5 E0                 2105 	movx	a,@dptr
   10A6 FD                 2106 	mov	r5,a
   10A7 EC                 2107 	mov	a,r4
   10A8 75 F0 03           2108 	mov	b,#0x03
   10AB A4                 2109 	mul	ab
   10AC 24 D8              2110 	add	a,#_iterateStateMachine_sourceHierarchy_4_13
   10AE F5 82              2111 	mov	dpl,a
   10B0 E4                 2112 	clr	a
   10B1 34 00              2113 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
   10B3 F5 83              2114 	mov	dph,a
   10B5 E0                 2115 	movx	a,@dptr
   10B6 FE                 2116 	mov	r6,a
   10B7 A3                 2117 	inc	dptr
   10B8 E0                 2118 	movx	a,@dptr
   10B9 FF                 2119 	mov	r7,a
   10BA A3                 2120 	inc	dptr
   10BB E0                 2121 	movx	a,@dptr
   10BC FB                 2122 	mov	r3,a
   10BD 90 00 C4           2123 	mov	dptr,#_callStateHandler_PARM_2
   10C0 EE                 2124 	mov	a,r6
   10C1 F0                 2125 	movx	@dptr,a
   10C2 A3                 2126 	inc	dptr
   10C3 EF                 2127 	mov	a,r7
   10C4 F0                 2128 	movx	@dptr,a
   10C5 A3                 2129 	inc	dptr
   10C6 EB                 2130 	mov	a,r3
   10C7 F0                 2131 	movx	@dptr,a
   10C8 90 00 C7           2132 	mov	dptr,#_callStateHandler_PARM_3
   10CB 74 D2              2133 	mov	a,#_iterateStateMachine_exitEvent_1_1
   10CD F0                 2134 	movx	@dptr,a
   10CE A3                 2135 	inc	dptr
   10CF 74 00              2136 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   10D1 F0                 2137 	movx	@dptr,a
   10D2 A3                 2138 	inc	dptr
   10D3 E4                 2139 	clr	a
   10D4 F0                 2140 	movx	@dptr,a
   10D5 88 82              2141 	mov	dpl,r0
   10D7 89 83              2142 	mov	dph,r1
   10D9 8D F0              2143 	mov	b,r5
   10DB C0 04              2144 	push	ar4
   10DD C0 05              2145 	push	ar5
   10DF C0 06              2146 	push	ar6
   10E1 C0 07              2147 	push	ar7
   10E3 12 06 D3           2148 	lcall	_callStateHandler
   10E6 D0 07              2149 	pop	ar7
   10E8 D0 06              2150 	pop	ar6
   10EA D0 05              2151 	pop	ar5
   10EC D0 04              2152 	pop	ar4
                           2153 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:293: exitIndex++ ;
   10EE 0C                 2154 	inc	r4
   10EF D0 07              2155 	pop	ar7
   10F1 D0 06              2156 	pop	ar6
   10F3 D0 05              2157 	pop	ar5
   10F5 02 10 68           2158 	ljmp	00112$
   10F8                    2159 00114$:
                           2160 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:296: sm->currentState = target ;
   10F8 74 06              2161 	mov	a,#0x06
   10FA 25 2C              2162 	add	a,_iterateStateMachine_sloc1_1_0
   10FC FB                 2163 	mov	r3,a
   10FD E4                 2164 	clr	a
   10FE 35 2D              2165 	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
   1100 FC                 2166 	mov	r4,a
   1101 A8 2E              2167 	mov	r0,(_iterateStateMachine_sloc1_1_0 + 2)
   1103 8B 82              2168 	mov	dpl,r3
   1105 8C 83              2169 	mov	dph,r4
   1107 88 F0              2170 	mov	b,r0
   1109 E5 42              2171 	mov	a,_iterateStateMachine_sloc9_1_0
   110B 12 31 54           2172 	lcall	__gptrput
   110E A3                 2173 	inc	dptr
   110F E5 43              2174 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1111 12 31 54           2175 	lcall	__gptrput
   1114 A3                 2176 	inc	dptr
   1115 E5 44              2177 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   1117 12 31 54           2178 	lcall	__gptrput
                           2179 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:298: break ;
   111A 80 35              2180 	sjmp	00119$
   111C                    2181 00116$:
                           2182 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:301: stateBeingProcessed = stateBeingProcessed->parent ;
   111C 85 45 82           2183 	mov	dpl,_iterateStateMachine_sloc10_1_0
   111F 85 46 83           2184 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   1122 85 47 F0           2185 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   1125 12 3D 60           2186 	lcall	__gptrget
   1128 FB                 2187 	mov	r3,a
   1129 A3                 2188 	inc	dptr
   112A 12 3D 60           2189 	lcall	__gptrget
   112D FC                 2190 	mov	r4,a
   112E A3                 2191 	inc	dptr
   112F 12 3D 60           2192 	lcall	__gptrget
   1132 F8                 2193 	mov	r0,a
   1133 90 00 D5           2194 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1136 EB                 2195 	mov	a,r3
   1137 F0                 2196 	movx	@dptr,a
   1138 A3                 2197 	inc	dptr
   1139 EC                 2198 	mov	a,r4
   113A F0                 2199 	movx	@dptr,a
   113B A3                 2200 	inc	dptr
   113C E8                 2201 	mov	a,r0
   113D F0                 2202 	movx	@dptr,a
                           2203 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:302: } while(stateBeingProcessed) ;
   113E 90 00 D5           2204 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1141 E0                 2205 	movx	a,@dptr
   1142 FB                 2206 	mov	r3,a
   1143 A3                 2207 	inc	dptr
   1144 E0                 2208 	movx	a,@dptr
   1145 FC                 2209 	mov	r4,a
   1146 A3                 2210 	inc	dptr
   1147 E0                 2211 	movx	a,@dptr
   1148 F8                 2212 	mov	r0,a
   1149 EB                 2213 	mov	a,r3
   114A 4C                 2214 	orl	a,r4
   114B 48                 2215 	orl	a,r0
   114C 60 03              2216 	jz	00217$
   114E 02 0F 8A           2217 	ljmp	00117$
   1151                    2218 00217$:
   1151                    2219 00119$:
                           2220 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:304: if(sm->currentState != target)
   1151 85 32 82           2221 	mov	dpl,_iterateStateMachine_sloc3_1_0
   1154 85 33 83           2222 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   1157 85 34 F0           2223 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   115A 12 3D 60           2224 	lcall	__gptrget
   115D FA                 2225 	mov	r2,a
   115E A3                 2226 	inc	dptr
   115F 12 3D 60           2227 	lcall	__gptrget
   1162 FB                 2228 	mov	r3,a
   1163 A3                 2229 	inc	dptr
   1164 12 3D 60           2230 	lcall	__gptrget
   1167 FC                 2231 	mov	r4,a
   1168 EA                 2232 	mov	a,r2
   1169 B5 42 0B           2233 	cjne	a,_iterateStateMachine_sloc9_1_0,00218$
   116C EB                 2234 	mov	a,r3
   116D B5 43 07           2235 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00218$
   1170 EC                 2236 	mov	a,r4
   1171 B5 44 03           2237 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00218$
   1174 02 13 5B           2238 	ljmp	00129$
   1177                    2239 00218$:
                           2240 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:306: printf("\t\t\t\tScanning target hierarchy...\n") ;
   1177 C0 05              2241 	push	ar5
   1179 C0 06              2242 	push	ar6
   117B C0 07              2243 	push	ar7
   117D 74 34              2244 	mov	a,#__str_18
   117F C0 E0              2245 	push	acc
   1181 74 3F              2246 	mov	a,#(__str_18 >> 8)
   1183 C0 E0              2247 	push	acc
   1185 74 80              2248 	mov	a,#0x80
   1187 C0 E0              2249 	push	acc
   1189 12 35 14           2250 	lcall	_printf
   118C 15 81              2251 	dec	sp
   118E 15 81              2252 	dec	sp
   1190 15 81              2253 	dec	sp
   1192 D0 07              2254 	pop	ar7
   1194 D0 06              2255 	pop	ar6
   1196 D0 05              2256 	pop	ar5
                           2257 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:308: targetIndex			= 0 ;
   1198 90 01 39           2258 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   119B E4                 2259 	clr	a
   119C F0                 2260 	movx	@dptr,a
                           2261 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:309: stateBeingProcessed	= target ;
   119D 90 00 D5           2262 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   11A0 E5 42              2263 	mov	a,_iterateStateMachine_sloc9_1_0
   11A2 F0                 2264 	movx	@dptr,a
   11A3 A3                 2265 	inc	dptr
   11A4 E5 43              2266 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   11A6 F0                 2267 	movx	@dptr,a
   11A7 A3                 2268 	inc	dptr
   11A8 E5 44              2269 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   11AA F0                 2270 	movx	@dptr,a
                           2271 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:311: do
   11AB 7A 00              2272 	mov	r2,#0x00
   11AD                    2273 00125$:
                           2274 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:313: targetHierarchy[targetIndex] = stateBeingProcessed ;
   11AD C0 05              2275 	push	ar5
   11AF C0 06              2276 	push	ar6
   11B1 C0 07              2277 	push	ar7
   11B3 EA                 2278 	mov	a,r2
   11B4 75 F0 03           2279 	mov	b,#0x03
   11B7 A4                 2280 	mul	ab
   11B8 24 09              2281 	add	a,#_iterateStateMachine_targetHierarchy_4_13
   11BA FB                 2282 	mov	r3,a
   11BB E4                 2283 	clr	a
   11BC 34 01              2284 	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
   11BE FC                 2285 	mov	r4,a
   11BF 90 00 D5           2286 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   11C2 E0                 2287 	movx	a,@dptr
   11C3 F5 45              2288 	mov	_iterateStateMachine_sloc10_1_0,a
   11C5 A3                 2289 	inc	dptr
   11C6 E0                 2290 	movx	a,@dptr
   11C7 F5 46              2291 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   11C9 A3                 2292 	inc	dptr
   11CA E0                 2293 	movx	a,@dptr
   11CB F5 47              2294 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   11CD 8B 82              2295 	mov	dpl,r3
   11CF 8C 83              2296 	mov	dph,r4
   11D1 E5 45              2297 	mov	a,_iterateStateMachine_sloc10_1_0
   11D3 F0                 2298 	movx	@dptr,a
   11D4 A3                 2299 	inc	dptr
   11D5 E5 46              2300 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   11D7 F0                 2301 	movx	@dptr,a
   11D8 A3                 2302 	inc	dptr
   11D9 E5 47              2303 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   11DB F0                 2304 	movx	@dptr,a
                           2305 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:315: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
   11DC 74 06              2306 	mov	a,#0x06
   11DE 25 45              2307 	add	a,_iterateStateMachine_sloc10_1_0
   11E0 FB                 2308 	mov	r3,a
   11E1 E4                 2309 	clr	a
   11E2 35 46              2310 	addc	a,(_iterateStateMachine_sloc10_1_0 + 1)
   11E4 FC                 2311 	mov	r4,a
   11E5 A8 47              2312 	mov	r0,(_iterateStateMachine_sloc10_1_0 + 2)
   11E7 8B 82              2313 	mov	dpl,r3
   11E9 8C 83              2314 	mov	dph,r4
   11EB 88 F0              2315 	mov	b,r0
   11ED 12 3D 60           2316 	lcall	__gptrget
   11F0 FB                 2317 	mov	r3,a
   11F1 A3                 2318 	inc	dptr
   11F2 12 3D 60           2319 	lcall	__gptrget
   11F5 FC                 2320 	mov	r4,a
   11F6 A3                 2321 	inc	dptr
   11F7 12 3D 60           2322 	lcall	__gptrget
   11FA F8                 2323 	mov	r0,a
   11FB 8A 01              2324 	mov	ar1,r2
   11FD 7D 00              2325 	mov	r5,#0x00
   11FF C0 02              2326 	push	ar2
   1201 C0 05              2327 	push	ar5
   1203 C0 06              2328 	push	ar6
   1205 C0 07              2329 	push	ar7
   1207 C0 03              2330 	push	ar3
   1209 C0 04              2331 	push	ar4
   120B C0 00              2332 	push	ar0
   120D C0 01              2333 	push	ar1
   120F C0 05              2334 	push	ar5
   1211 74 56              2335 	mov	a,#__str_19
   1213 C0 E0              2336 	push	acc
   1215 74 3F              2337 	mov	a,#(__str_19 >> 8)
   1217 C0 E0              2338 	push	acc
   1219 74 80              2339 	mov	a,#0x80
   121B C0 E0              2340 	push	acc
   121D 12 35 14           2341 	lcall	_printf
   1220 E5 81              2342 	mov	a,sp
   1222 24 F8              2343 	add	a,#0xf8
   1224 F5 81              2344 	mov	sp,a
   1226 D0 07              2345 	pop	ar7
   1228 D0 06              2346 	pop	ar6
   122A D0 05              2347 	pop	ar5
   122C D0 02              2348 	pop	ar2
                           2349 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:317: if(stateBeingProcessed == source)
   122E E5 3B              2350 	mov	a,_iterateStateMachine_sloc6_1_0
   1230 B5 45 0C           2351 	cjne	a,_iterateStateMachine_sloc10_1_0,00219$
   1233 E5 3C              2352 	mov	a,(_iterateStateMachine_sloc6_1_0 + 1)
   1235 B5 46 07           2353 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00219$
   1238 E5 3D              2354 	mov	a,(_iterateStateMachine_sloc6_1_0 + 2)
   123A B5 47 02           2355 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00219$
   123D 80 09              2356 	sjmp	00220$
   123F                    2357 00219$:
   123F D0 07              2358 	pop	ar7
   1241 D0 06              2359 	pop	ar6
   1243 D0 05              2360 	pop	ar5
   1245 02 13 20           2361 	ljmp	00124$
   1248                    2362 00220$:
                           2363 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:319: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
   1248 74 75              2364 	mov	a,#__str_20
   124A C0 E0              2365 	push	acc
   124C 74 3F              2366 	mov	a,#(__str_20 >> 8)
   124E C0 E0              2367 	push	acc
   1250 74 80              2368 	mov	a,#0x80
   1252 C0 E0              2369 	push	acc
   1254 12 35 14           2370 	lcall	_printf
   1257 15 81              2371 	dec	sp
   1259 15 81              2372 	dec	sp
   125B 15 81              2373 	dec	sp
   125D D0 07              2374 	pop	ar7
   125F D0 06              2375 	pop	ar6
   1261 D0 05              2376 	pop	ar5
                           2377 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:321: while(targetIndex--)
   1263 90 01 39           2378 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   1266 E0                 2379 	movx	a,@dptr
   1267 FB                 2380 	mov	r3,a
   1268                    2381 00120$:
   1268 8B 04              2382 	mov	ar4,r3
   126A 1B                 2383 	dec	r3
   126B EC                 2384 	mov	a,r4
   126C 70 03              2385 	jnz	00221$
   126E 02 12 F7           2386 	ljmp	00192$
   1271                    2387 00221$:
                           2388 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:323: printf("\t\t\t\t") ;
   1271 C0 05              2389 	push	ar5
   1273 C0 06              2390 	push	ar6
   1275 C0 07              2391 	push	ar7
   1277 C0 03              2392 	push	ar3
   1279 C0 05              2393 	push	ar5
   127B C0 06              2394 	push	ar6
   127D C0 07              2395 	push	ar7
   127F 74 2F              2396 	mov	a,#__str_17
   1281 C0 E0              2397 	push	acc
   1283 74 3F              2398 	mov	a,#(__str_17 >> 8)
   1285 C0 E0              2399 	push	acc
   1287 74 80              2400 	mov	a,#0x80
   1289 C0 E0              2401 	push	acc
   128B 12 35 14           2402 	lcall	_printf
   128E 15 81              2403 	dec	sp
   1290 15 81              2404 	dec	sp
   1292 15 81              2405 	dec	sp
   1294 D0 07              2406 	pop	ar7
   1296 D0 06              2407 	pop	ar6
   1298 D0 05              2408 	pop	ar5
   129A D0 03              2409 	pop	ar3
                           2410 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:324: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   129C 90 00 CD           2411 	mov	dptr,#_iterateStateMachine_sm_1_1
   129F E0                 2412 	movx	a,@dptr
   12A0 FC                 2413 	mov	r4,a
   12A1 A3                 2414 	inc	dptr
   12A2 E0                 2415 	movx	a,@dptr
   12A3 F8                 2416 	mov	r0,a
   12A4 A3                 2417 	inc	dptr
   12A5 E0                 2418 	movx	a,@dptr
   12A6 F9                 2419 	mov	r1,a
   12A7 EB                 2420 	mov	a,r3
   12A8 75 F0 03           2421 	mov	b,#0x03
   12AB A4                 2422 	mul	ab
   12AC 24 09              2423 	add	a,#_iterateStateMachine_targetHierarchy_4_13
   12AE F5 82              2424 	mov	dpl,a
   12B0 E4                 2425 	clr	a
   12B1 34 01              2426 	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
   12B3 F5 83              2427 	mov	dph,a
   12B5 E0                 2428 	movx	a,@dptr
   12B6 FD                 2429 	mov	r5,a
   12B7 A3                 2430 	inc	dptr
   12B8 E0                 2431 	movx	a,@dptr
   12B9 FE                 2432 	mov	r6,a
   12BA A3                 2433 	inc	dptr
   12BB E0                 2434 	movx	a,@dptr
   12BC FF                 2435 	mov	r7,a
   12BD 90 00 C4           2436 	mov	dptr,#_callStateHandler_PARM_2
   12C0 ED                 2437 	mov	a,r5
   12C1 F0                 2438 	movx	@dptr,a
   12C2 A3                 2439 	inc	dptr
   12C3 EE                 2440 	mov	a,r6
   12C4 F0                 2441 	movx	@dptr,a
   12C5 A3                 2442 	inc	dptr
   12C6 EF                 2443 	mov	a,r7
   12C7 F0                 2444 	movx	@dptr,a
   12C8 90 00 C7           2445 	mov	dptr,#_callStateHandler_PARM_3
   12CB 74 D1              2446 	mov	a,#_iterateStateMachine_enterEvent_1_1
   12CD F0                 2447 	movx	@dptr,a
   12CE A3                 2448 	inc	dptr
   12CF 74 00              2449 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   12D1 F0                 2450 	movx	@dptr,a
   12D2 A3                 2451 	inc	dptr
   12D3 E4                 2452 	clr	a
   12D4 F0                 2453 	movx	@dptr,a
   12D5 8C 82              2454 	mov	dpl,r4
   12D7 88 83              2455 	mov	dph,r0
   12D9 89 F0              2456 	mov	b,r1
   12DB C0 03              2457 	push	ar3
   12DD C0 05              2458 	push	ar5
   12DF C0 06              2459 	push	ar6
   12E1 C0 07              2460 	push	ar7
   12E3 12 06 D3           2461 	lcall	_callStateHandler
   12E6 D0 07              2462 	pop	ar7
   12E8 D0 06              2463 	pop	ar6
   12EA D0 05              2464 	pop	ar5
   12EC D0 03              2465 	pop	ar3
   12EE D0 07              2466 	pop	ar7
   12F0 D0 06              2467 	pop	ar6
   12F2 D0 05              2468 	pop	ar5
   12F4 02 12 68           2469 	ljmp	00120$
   12F7                    2470 00192$:
   12F7 90 01 39           2471 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   12FA EB                 2472 	mov	a,r3
   12FB F0                 2473 	movx	@dptr,a
                           2474 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:327: sm->currentState = target ;
   12FC 74 06              2475 	mov	a,#0x06
   12FE 25 2F              2476 	add	a,_iterateStateMachine_sloc2_1_0
   1300 FB                 2477 	mov	r3,a
   1301 E4                 2478 	clr	a
   1302 35 30              2479 	addc	a,(_iterateStateMachine_sloc2_1_0 + 1)
   1304 FC                 2480 	mov	r4,a
   1305 A8 31              2481 	mov	r0,(_iterateStateMachine_sloc2_1_0 + 2)
   1307 8B 82              2482 	mov	dpl,r3
   1309 8C 83              2483 	mov	dph,r4
   130B 88 F0              2484 	mov	b,r0
   130D E5 42              2485 	mov	a,_iterateStateMachine_sloc9_1_0
   130F 12 31 54           2486 	lcall	__gptrput
   1312 A3                 2487 	inc	dptr
   1313 E5 43              2488 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1315 12 31 54           2489 	lcall	__gptrput
   1318 A3                 2490 	inc	dptr
   1319 E5 44              2491 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   131B 12 31 54           2492 	lcall	__gptrput
                           2493 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:329: break ;
   131E 80 3B              2494 	sjmp	00129$
   1320                    2495 00124$:
                           2496 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:332: targetIndex++ ;
   1320 0A                 2497 	inc	r2
   1321 90 01 39           2498 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   1324 EA                 2499 	mov	a,r2
   1325 F0                 2500 	movx	@dptr,a
                           2501 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:333: stateBeingProcessed = stateBeingProcessed->parent ;
   1326 85 45 82           2502 	mov	dpl,_iterateStateMachine_sloc10_1_0
   1329 85 46 83           2503 	mov	dph,(_iterateStateMachine_sloc10_1_0 + 1)
   132C 85 47 F0           2504 	mov	b,(_iterateStateMachine_sloc10_1_0 + 2)
   132F 12 3D 60           2505 	lcall	__gptrget
   1332 FB                 2506 	mov	r3,a
   1333 A3                 2507 	inc	dptr
   1334 12 3D 60           2508 	lcall	__gptrget
   1337 FC                 2509 	mov	r4,a
   1338 A3                 2510 	inc	dptr
   1339 12 3D 60           2511 	lcall	__gptrget
   133C F8                 2512 	mov	r0,a
   133D 90 00 D5           2513 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   1340 EB                 2514 	mov	a,r3
   1341 F0                 2515 	movx	@dptr,a
   1342 A3                 2516 	inc	dptr
   1343 EC                 2517 	mov	a,r4
   1344 F0                 2518 	movx	@dptr,a
   1345 A3                 2519 	inc	dptr
   1346 E8                 2520 	mov	a,r0
   1347 F0                 2521 	movx	@dptr,a
                           2522 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: } while(stateBeingProcessed) ;
   1348 90 00 D5           2523 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   134B E0                 2524 	movx	a,@dptr
   134C FB                 2525 	mov	r3,a
   134D A3                 2526 	inc	dptr
   134E E0                 2527 	movx	a,@dptr
   134F FC                 2528 	mov	r4,a
   1350 A3                 2529 	inc	dptr
   1351 E0                 2530 	movx	a,@dptr
   1352 F8                 2531 	mov	r0,a
   1353 EB                 2532 	mov	a,r3
   1354 4C                 2533 	orl	a,r4
   1355 48                 2534 	orl	a,r0
   1356 60 03              2535 	jz	00222$
   1358 02 11 AD           2536 	ljmp	00125$
   135B                    2537 00222$:
   135B                    2538 00129$:
                           2539 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:337: if(sm->currentState != target)
   135B 85 32 82           2540 	mov	dpl,_iterateStateMachine_sloc3_1_0
   135E 85 33 83           2541 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   1361 85 34 F0           2542 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   1364 12 3D 60           2543 	lcall	__gptrget
   1367 FA                 2544 	mov	r2,a
   1368 A3                 2545 	inc	dptr
   1369 12 3D 60           2546 	lcall	__gptrget
   136C FB                 2547 	mov	r3,a
   136D A3                 2548 	inc	dptr
   136E 12 3D 60           2549 	lcall	__gptrget
   1371 FC                 2550 	mov	r4,a
   1372 EA                 2551 	mov	a,r2
   1373 B5 42 0B           2552 	cjne	a,_iterateStateMachine_sloc9_1_0,00223$
   1376 EB                 2553 	mov	a,r3
   1377 B5 43 07           2554 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 1),00223$
   137A EC                 2555 	mov	a,r4
   137B B5 44 03           2556 	cjne	a,(_iterateStateMachine_sloc9_1_0 + 2),00223$
   137E 02 17 07           2557 	ljmp	00152$
   1381                    2558 00223$:
                           2559 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:341: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
   1381 C0 05              2560 	push	ar5
   1383 C0 06              2561 	push	ar6
   1385 C0 07              2562 	push	ar7
   1387 C0 05              2563 	push	ar5
   1389 C0 06              2564 	push	ar6
   138B C0 07              2565 	push	ar7
   138D 74 9F              2566 	mov	a,#__str_21
   138F C0 E0              2567 	push	acc
   1391 74 3F              2568 	mov	a,#(__str_21 >> 8)
   1393 C0 E0              2569 	push	acc
   1395 74 80              2570 	mov	a,#0x80
   1397 C0 E0              2571 	push	acc
   1399 12 35 14           2572 	lcall	_printf
   139C 15 81              2573 	dec	sp
   139E 15 81              2574 	dec	sp
   13A0 15 81              2575 	dec	sp
   13A2 D0 07              2576 	pop	ar7
   13A4 D0 06              2577 	pop	ar6
   13A6 D0 05              2578 	pop	ar5
                           2579 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: LCA			= 0 ;
   13A8 90 01 3A           2580 	mov	dptr,#_iterateStateMachine_LCA_4_13
   13AB E4                 2581 	clr	a
   13AC F0                 2582 	movx	@dptr,a
   13AD A3                 2583 	inc	dptr
   13AE F0                 2584 	movx	@dptr,a
   13AF A3                 2585 	inc	dptr
   13B0 F0                 2586 	movx	@dptr,a
                           2587 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:343: entryIndex	= targetIndex - 1 ;
   13B1 90 01 39           2588 	mov	dptr,#_iterateStateMachine_targetIndex_4_13
   13B4 E0                 2589 	movx	a,@dptr
   13B5 FA                 2590 	mov	r2,a
   13B6 1A                 2591 	dec	r2
   13B7 90 01 3D           2592 	mov	dptr,#_iterateStateMachine_entryIndex_4_13
   13BA EA                 2593 	mov	a,r2
   13BB F0                 2594 	movx	@dptr,a
                           2595 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:344: exitIndex	= sourceIndex - 1 ;
   13BC 90 01 08           2596 	mov	dptr,#_iterateStateMachine_sourceIndex_4_13
   13BF E0                 2597 	movx	a,@dptr
   13C0 FB                 2598 	mov	r3,a
   13C1 1B                 2599 	dec	r3
                           2600 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   13C2 8B 04              2601 	mov	ar4,r3
   13C4 78 00              2602 	mov	r0,#0x00
   13C6 8A 01              2603 	mov	ar1,r2
   13C8 7D 00              2604 	mov	r5,#0x00
   13CA C0 02              2605 	push	ar2
   13CC C0 03              2606 	push	ar3
   13CE C0 05              2607 	push	ar5
   13D0 C0 06              2608 	push	ar6
   13D2 C0 07              2609 	push	ar7
   13D4 C0 04              2610 	push	ar4
   13D6 C0 00              2611 	push	ar0
   13D8 C0 01              2612 	push	ar1
   13DA C0 05              2613 	push	ar5
   13DC 74 DA              2614 	mov	a,#__str_22
   13DE C0 E0              2615 	push	acc
   13E0 74 3F              2616 	mov	a,#(__str_22 >> 8)
   13E2 C0 E0              2617 	push	acc
   13E4 74 80              2618 	mov	a,#0x80
   13E6 C0 E0              2619 	push	acc
   13E8 12 35 14           2620 	lcall	_printf
   13EB E5 81              2621 	mov	a,sp
   13ED 24 F9              2622 	add	a,#0xf9
   13EF F5 81              2623 	mov	sp,a
   13F1 D0 07              2624 	pop	ar7
   13F3 D0 06              2625 	pop	ar6
   13F5 D0 05              2626 	pop	ar5
   13F7 D0 03              2627 	pop	ar3
   13F9 D0 02              2628 	pop	ar2
                           2629 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
   13FB D0 07              2630 	pop	ar7
   13FD D0 06              2631 	pop	ar6
   13FF D0 05              2632 	pop	ar5
                           2633 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
   1401 7C 00              2634 	mov	r4,#0x00
   1403                    2635 00130$:
   1403 C0 05              2636 	push	ar5
   1405 C0 06              2637 	push	ar6
   1407 C0 07              2638 	push	ar7
   1409 EB                 2639 	mov	a,r3
   140A 75 F0 03           2640 	mov	b,#0x03
   140D A4                 2641 	mul	ab
   140E 24 D8              2642 	add	a,#_iterateStateMachine_sourceHierarchy_4_13
   1410 F5 82              2643 	mov	dpl,a
   1412 E4                 2644 	clr	a
   1413 34 00              2645 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
   1415 F5 83              2646 	mov	dph,a
   1417 E0                 2647 	movx	a,@dptr
   1418 F5 45              2648 	mov	_iterateStateMachine_sloc10_1_0,a
   141A A3                 2649 	inc	dptr
   141B E0                 2650 	movx	a,@dptr
   141C F5 46              2651 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   141E A3                 2652 	inc	dptr
   141F E0                 2653 	movx	a,@dptr
   1420 F5 47              2654 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   1422 EA                 2655 	mov	a,r2
   1423 75 F0 03           2656 	mov	b,#0x03
   1426 A4                 2657 	mul	ab
   1427 24 09              2658 	add	a,#_iterateStateMachine_targetHierarchy_4_13
   1429 F5 82              2659 	mov	dpl,a
   142B E4                 2660 	clr	a
   142C 34 01              2661 	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
   142E F5 83              2662 	mov	dph,a
   1430 E0                 2663 	movx	a,@dptr
   1431 F8                 2664 	mov	r0,a
   1432 A3                 2665 	inc	dptr
   1433 E0                 2666 	movx	a,@dptr
   1434 F9                 2667 	mov	r1,a
   1435 A3                 2668 	inc	dptr
   1436 E0                 2669 	movx	a,@dptr
   1437 FD                 2670 	mov	r5,a
   1438 E8                 2671 	mov	a,r0
   1439 B5 45 0A           2672 	cjne	a,_iterateStateMachine_sloc10_1_0,00224$
   143C E9                 2673 	mov	a,r1
   143D B5 46 06           2674 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 1),00224$
   1440 ED                 2675 	mov	a,r5
   1441 B5 47 02           2676 	cjne	a,(_iterateStateMachine_sloc10_1_0 + 2),00224$
   1444 80 09              2677 	sjmp	00225$
   1446                    2678 00224$:
   1446 D0 07              2679 	pop	ar7
   1448 D0 06              2680 	pop	ar6
   144A D0 05              2681 	pop	ar5
   144C 02 14 CF           2682 	ljmp	00193$
   144F                    2683 00225$:
   144F D0 07              2684 	pop	ar7
   1451 D0 06              2685 	pop	ar6
                           2686 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:349: LCA = sourceHierarchy[exitIndex] ;
   1453 C0 06              2687 	push	ar6
   1455 C0 07              2688 	push	ar7
   1457 90 01 3A           2689 	mov	dptr,#_iterateStateMachine_LCA_4_13
   145A E5 45              2690 	mov	a,_iterateStateMachine_sloc10_1_0
   145C F0                 2691 	movx	@dptr,a
   145D A3                 2692 	inc	dptr
   145E E5 46              2693 	mov	a,(_iterateStateMachine_sloc10_1_0 + 1)
   1460 F0                 2694 	movx	@dptr,a
   1461 A3                 2695 	inc	dptr
   1462 E5 47              2696 	mov	a,(_iterateStateMachine_sloc10_1_0 + 2)
   1464 F0                 2697 	movx	@dptr,a
                           2698 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:351: entryIndex-- ;
   1465 1A                 2699 	dec	r2
   1466 90 01 3D           2700 	mov	dptr,#_iterateStateMachine_entryIndex_4_13
   1469 EA                 2701 	mov	a,r2
   146A F0                 2702 	movx	@dptr,a
                           2703 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: exitIndex-- ;
   146B 1B                 2704 	dec	r3
                           2705 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:354: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
   146C 90 01 3A           2706 	mov	dptr,#_iterateStateMachine_LCA_4_13
   146F E0                 2707 	movx	a,@dptr
   1470 F8                 2708 	mov	r0,a
   1471 A3                 2709 	inc	dptr
   1472 E0                 2710 	movx	a,@dptr
   1473 F9                 2711 	mov	r1,a
   1474 A3                 2712 	inc	dptr
   1475 E0                 2713 	movx	a,@dptr
   1476 FD                 2714 	mov	r5,a
   1477 74 06              2715 	mov	a,#0x06
   1479 28                 2716 	add	a,r0
   147A F8                 2717 	mov	r0,a
   147B E4                 2718 	clr	a
   147C 39                 2719 	addc	a,r1
   147D F9                 2720 	mov	r1,a
   147E 88 82              2721 	mov	dpl,r0
   1480 89 83              2722 	mov	dph,r1
   1482 8D F0              2723 	mov	b,r5
   1484 12 3D 60           2724 	lcall	__gptrget
   1487 F8                 2725 	mov	r0,a
   1488 A3                 2726 	inc	dptr
   1489 12 3D 60           2727 	lcall	__gptrget
   148C F9                 2728 	mov	r1,a
   148D A3                 2729 	inc	dptr
   148E 12 3D 60           2730 	lcall	__gptrget
   1491 FD                 2731 	mov	r5,a
   1492 C0 02              2732 	push	ar2
   1494 C0 03              2733 	push	ar3
   1496 C0 04              2734 	push	ar4
   1498 C0 05              2735 	push	ar5
   149A C0 06              2736 	push	ar6
   149C C0 07              2737 	push	ar7
   149E C0 00              2738 	push	ar0
   14A0 C0 01              2739 	push	ar1
   14A2 C0 05              2740 	push	ar5
   14A4 74 00              2741 	mov	a,#__str_23
   14A6 C0 E0              2742 	push	acc
   14A8 74 40              2743 	mov	a,#(__str_23 >> 8)
   14AA C0 E0              2744 	push	acc
   14AC 74 80              2745 	mov	a,#0x80
   14AE C0 E0              2746 	push	acc
   14B0 12 35 14           2747 	lcall	_printf
   14B3 E5 81              2748 	mov	a,sp
   14B5 24 FA              2749 	add	a,#0xfa
   14B7 F5 81              2750 	mov	sp,a
   14B9 D0 07              2751 	pop	ar7
   14BB D0 06              2752 	pop	ar6
   14BD D0 05              2753 	pop	ar5
   14BF D0 04              2754 	pop	ar4
   14C1 D0 03              2755 	pop	ar3
   14C3 D0 02              2756 	pop	ar2
                           2757 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:356: LCAindex++ ;
   14C5 0C                 2758 	inc	r4
   14C6 D0 07              2759 	pop	ar7
   14C8 D0 06              2760 	pop	ar6
   14CA D0 05              2761 	pop	ar5
   14CC 02 14 03           2762 	ljmp	00130$
   14CF                    2763 00193$:
   14CF 90 01 3D           2764 	mov	dptr,#_iterateStateMachine_entryIndex_4_13
   14D2 EA                 2765 	mov	a,r2
   14D3 F0                 2766 	movx	@dptr,a
                           2767 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:359: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
   14D4 C0 05              2768 	push	ar5
   14D6 C0 06              2769 	push	ar6
   14D8 C0 07              2770 	push	ar7
   14DA 90 01 3A           2771 	mov	dptr,#_iterateStateMachine_LCA_4_13
   14DD E0                 2772 	movx	a,@dptr
   14DE FC                 2773 	mov	r4,a
   14DF A3                 2774 	inc	dptr
   14E0 E0                 2775 	movx	a,@dptr
   14E1 F8                 2776 	mov	r0,a
   14E2 A3                 2777 	inc	dptr
   14E3 E0                 2778 	movx	a,@dptr
   14E4 F9                 2779 	mov	r1,a
   14E5 74 06              2780 	mov	a,#0x06
   14E7 2C                 2781 	add	a,r4
   14E8 FC                 2782 	mov	r4,a
   14E9 E4                 2783 	clr	a
   14EA 38                 2784 	addc	a,r0
   14EB F8                 2785 	mov	r0,a
   14EC 8C 82              2786 	mov	dpl,r4
   14EE 88 83              2787 	mov	dph,r0
   14F0 89 F0              2788 	mov	b,r1
   14F2 12 3D 60           2789 	lcall	__gptrget
   14F5 FC                 2790 	mov	r4,a
   14F6 A3                 2791 	inc	dptr
   14F7 12 3D 60           2792 	lcall	__gptrget
   14FA F8                 2793 	mov	r0,a
   14FB A3                 2794 	inc	dptr
   14FC 12 3D 60           2795 	lcall	__gptrget
   14FF F9                 2796 	mov	r1,a
   1500 74 06              2797 	mov	a,#0x06
   1502 25 42              2798 	add	a,_iterateStateMachine_sloc9_1_0
   1504 FD                 2799 	mov	r5,a
   1505 E4                 2800 	clr	a
   1506 35 43              2801 	addc	a,(_iterateStateMachine_sloc9_1_0 + 1)
   1508 FE                 2802 	mov	r6,a
   1509 AF 44              2803 	mov	r7,(_iterateStateMachine_sloc9_1_0 + 2)
   150B 8D 82              2804 	mov	dpl,r5
   150D 8E 83              2805 	mov	dph,r6
   150F 8F F0              2806 	mov	b,r7
   1511 12 3D 60           2807 	lcall	__gptrget
   1514 F5 45              2808 	mov	_iterateStateMachine_sloc10_1_0,a
   1516 A3                 2809 	inc	dptr
   1517 12 3D 60           2810 	lcall	__gptrget
   151A F5 46              2811 	mov	(_iterateStateMachine_sloc10_1_0 + 1),a
   151C A3                 2812 	inc	dptr
   151D 12 3D 60           2813 	lcall	__gptrget
   1520 F5 47              2814 	mov	(_iterateStateMachine_sloc10_1_0 + 2),a
   1522 74 06              2815 	mov	a,#0x06
   1524 25 3B              2816 	add	a,_iterateStateMachine_sloc6_1_0
   1526 FD                 2817 	mov	r5,a
   1527 E4                 2818 	clr	a
   1528 35 3C              2819 	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
   152A FE                 2820 	mov	r6,a
   152B AF 3D              2821 	mov	r7,(_iterateStateMachine_sloc6_1_0 + 2)
   152D 8D 82              2822 	mov	dpl,r5
   152F 8E 83              2823 	mov	dph,r6
   1531 8F F0              2824 	mov	b,r7
   1533 12 3D 60           2825 	lcall	__gptrget
   1536 FD                 2826 	mov	r5,a
   1537 A3                 2827 	inc	dptr
   1538 12 3D 60           2828 	lcall	__gptrget
   153B FE                 2829 	mov	r6,a
   153C A3                 2830 	inc	dptr
   153D 12 3D 60           2831 	lcall	__gptrget
   1540 FF                 2832 	mov	r7,a
   1541 C0 02              2833 	push	ar2
   1543 C0 03              2834 	push	ar3
   1545 C0 05              2835 	push	ar5
   1547 C0 06              2836 	push	ar6
   1549 C0 07              2837 	push	ar7
   154B C0 04              2838 	push	ar4
   154D C0 00              2839 	push	ar0
   154F C0 01              2840 	push	ar1
   1551 C0 45              2841 	push	_iterateStateMachine_sloc10_1_0
   1553 C0 46              2842 	push	(_iterateStateMachine_sloc10_1_0 + 1)
   1555 C0 47              2843 	push	(_iterateStateMachine_sloc10_1_0 + 2)
   1557 C0 05              2844 	push	ar5
   1559 C0 06              2845 	push	ar6
   155B C0 07              2846 	push	ar7
   155D 74 20              2847 	mov	a,#__str_24
   155F C0 E0              2848 	push	acc
   1561 74 40              2849 	mov	a,#(__str_24 >> 8)
   1563 C0 E0              2850 	push	acc
   1565 74 80              2851 	mov	a,#0x80
   1567 C0 E0              2852 	push	acc
   1569 12 35 14           2853 	lcall	_printf
   156C E5 81              2854 	mov	a,sp
   156E 24 F4              2855 	add	a,#0xf4
   1570 F5 81              2856 	mov	sp,a
   1572 D0 07              2857 	pop	ar7
   1574 D0 06              2858 	pop	ar6
   1576 D0 05              2859 	pop	ar5
   1578 D0 03              2860 	pop	ar3
   157A D0 02              2861 	pop	ar2
                           2862 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:360: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   157C 8B 04              2863 	mov	ar4,r3
   157E 7D 00              2864 	mov	r5,#0x00
   1580 7E 00              2865 	mov	r6,#0x00
   1582 C0 03              2866 	push	ar3
   1584 C0 05              2867 	push	ar5
   1586 C0 06              2868 	push	ar6
   1588 C0 07              2869 	push	ar7
   158A C0 04              2870 	push	ar4
   158C C0 05              2871 	push	ar5
   158E C0 02              2872 	push	ar2
   1590 C0 06              2873 	push	ar6
   1592 74 DA              2874 	mov	a,#__str_22
   1594 C0 E0              2875 	push	acc
   1596 74 3F              2876 	mov	a,#(__str_22 >> 8)
   1598 C0 E0              2877 	push	acc
   159A 74 80              2878 	mov	a,#0x80
   159C C0 E0              2879 	push	acc
   159E 12 35 14           2880 	lcall	_printf
   15A1 E5 81              2881 	mov	a,sp
   15A3 24 F9              2882 	add	a,#0xf9
   15A5 F5 81              2883 	mov	sp,a
   15A7 D0 07              2884 	pop	ar7
   15A9 D0 06              2885 	pop	ar6
   15AB D0 05              2886 	pop	ar5
   15AD D0 03              2887 	pop	ar3
                           2888 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:362: sourceIndex	= exitIndex + 1 ;
   15AF EB                 2889 	mov	a,r3
   15B0 04                 2890 	inc	a
   15B1 F5 45              2891 	mov	_iterateStateMachine_sloc10_1_0,a
                           2892 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
   15B3 D0 07              2893 	pop	ar7
   15B5 D0 06              2894 	pop	ar6
   15B7 D0 05              2895 	pop	ar5
                           2896 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:365: while(exitIndex < sourceIndex)
   15B9 AA 45              2897 	mov	r2,_iterateStateMachine_sloc10_1_0
   15BB 7B 00              2898 	mov	r3,#0x00
   15BD                    2899 00133$:
   15BD C3                 2900 	clr	c
   15BE EB                 2901 	mov	a,r3
   15BF 9A                 2902 	subb	a,r2
   15C0 40 03              2903 	jc	00226$
   15C2 02 16 50           2904 	ljmp	00135$
   15C5                    2905 00226$:
                           2906 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:367: printf("\t\t\t\t") ;
   15C5 C0 05              2907 	push	ar5
   15C7 C0 06              2908 	push	ar6
   15C9 C0 07              2909 	push	ar7
   15CB C0 02              2910 	push	ar2
   15CD C0 03              2911 	push	ar3
   15CF C0 05              2912 	push	ar5
   15D1 C0 06              2913 	push	ar6
   15D3 C0 07              2914 	push	ar7
   15D5 74 2F              2915 	mov	a,#__str_17
   15D7 C0 E0              2916 	push	acc
   15D9 74 3F              2917 	mov	a,#(__str_17 >> 8)
   15DB C0 E0              2918 	push	acc
   15DD 74 80              2919 	mov	a,#0x80
   15DF C0 E0              2920 	push	acc
   15E1 12 35 14           2921 	lcall	_printf
   15E4 15 81              2922 	dec	sp
   15E6 15 81              2923 	dec	sp
   15E8 15 81              2924 	dec	sp
   15EA D0 07              2925 	pop	ar7
   15EC D0 06              2926 	pop	ar6
   15EE D0 05              2927 	pop	ar5
   15F0 D0 03              2928 	pop	ar3
                           2929 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:369: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   15F2 90 00 CD           2930 	mov	dptr,#_iterateStateMachine_sm_1_1
   15F5 E0                 2931 	movx	a,@dptr
   15F6 FC                 2932 	mov	r4,a
   15F7 A3                 2933 	inc	dptr
   15F8 E0                 2934 	movx	a,@dptr
   15F9 F8                 2935 	mov	r0,a
   15FA A3                 2936 	inc	dptr
   15FB E0                 2937 	movx	a,@dptr
   15FC F9                 2938 	mov	r1,a
   15FD EB                 2939 	mov	a,r3
   15FE 75 F0 03           2940 	mov	b,#0x03
   1601 A4                 2941 	mul	ab
   1602 24 D8              2942 	add	a,#_iterateStateMachine_sourceHierarchy_4_13
   1604 F5 82              2943 	mov	dpl,a
   1606 E4                 2944 	clr	a
   1607 34 00              2945 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_13 >> 8)
   1609 F5 83              2946 	mov	dph,a
   160B E0                 2947 	movx	a,@dptr
   160C FD                 2948 	mov	r5,a
   160D A3                 2949 	inc	dptr
   160E E0                 2950 	movx	a,@dptr
   160F FE                 2951 	mov	r6,a
   1610 A3                 2952 	inc	dptr
   1611 E0                 2953 	movx	a,@dptr
   1612 FF                 2954 	mov	r7,a
   1613 90 00 C4           2955 	mov	dptr,#_callStateHandler_PARM_2
   1616 ED                 2956 	mov	a,r5
   1617 F0                 2957 	movx	@dptr,a
   1618 A3                 2958 	inc	dptr
   1619 EE                 2959 	mov	a,r6
   161A F0                 2960 	movx	@dptr,a
   161B A3                 2961 	inc	dptr
   161C EF                 2962 	mov	a,r7
   161D F0                 2963 	movx	@dptr,a
   161E 90 00 C7           2964 	mov	dptr,#_callStateHandler_PARM_3
   1621 74 D2              2965 	mov	a,#_iterateStateMachine_exitEvent_1_1
   1623 F0                 2966 	movx	@dptr,a
   1624 A3                 2967 	inc	dptr
   1625 74 00              2968 	mov	a,#(_iterateStateMachine_exitEvent_1_1 >> 8)
   1627 F0                 2969 	movx	@dptr,a
   1628 A3                 2970 	inc	dptr
   1629 E4                 2971 	clr	a
   162A F0                 2972 	movx	@dptr,a
   162B 8C 82              2973 	mov	dpl,r4
   162D 88 83              2974 	mov	dph,r0
   162F 89 F0              2975 	mov	b,r1
   1631 C0 03              2976 	push	ar3
   1633 C0 05              2977 	push	ar5
   1635 C0 06              2978 	push	ar6
   1637 C0 07              2979 	push	ar7
   1639 12 06 D3           2980 	lcall	_callStateHandler
   163C D0 07              2981 	pop	ar7
   163E D0 06              2982 	pop	ar6
   1640 D0 05              2983 	pop	ar5
   1642 D0 03              2984 	pop	ar3
   1644 D0 02              2985 	pop	ar2
                           2986 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:371: exitIndex++ ;
   1646 0B                 2987 	inc	r3
   1647 D0 07              2988 	pop	ar7
   1649 D0 06              2989 	pop	ar6
   164B D0 05              2990 	pop	ar5
   164D 02 15 BD           2991 	ljmp	00133$
   1650                    2992 00135$:
                           2993 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:374: targetIndex = entryIndex + 1 ;
   1650 90 01 3D           2994 	mov	dptr,#_iterateStateMachine_entryIndex_4_13
   1653 E0                 2995 	movx	a,@dptr
   1654 FA                 2996 	mov	r2,a
   1655 0A                 2997 	inc	r2
                           2998 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: while(targetIndex--)
   1656                    2999 00136$:
   1656 8A 03              3000 	mov	ar3,r2
   1658 1A                 3001 	dec	r2
   1659 EB                 3002 	mov	a,r3
   165A 70 03              3003 	jnz	00227$
   165C 02 16 E5           3004 	ljmp	00138$
   165F                    3005 00227$:
                           3006 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:378: printf("\t\t\t\t") ;
   165F C0 05              3007 	push	ar5
   1661 C0 06              3008 	push	ar6
   1663 C0 07              3009 	push	ar7
   1665 C0 02              3010 	push	ar2
   1667 C0 05              3011 	push	ar5
   1669 C0 06              3012 	push	ar6
   166B C0 07              3013 	push	ar7
   166D 74 2F              3014 	mov	a,#__str_17
   166F C0 E0              3015 	push	acc
   1671 74 3F              3016 	mov	a,#(__str_17 >> 8)
   1673 C0 E0              3017 	push	acc
   1675 74 80              3018 	mov	a,#0x80
   1677 C0 E0              3019 	push	acc
   1679 12 35 14           3020 	lcall	_printf
   167C 15 81              3021 	dec	sp
   167E 15 81              3022 	dec	sp
   1680 15 81              3023 	dec	sp
   1682 D0 07              3024 	pop	ar7
   1684 D0 06              3025 	pop	ar6
   1686 D0 05              3026 	pop	ar5
   1688 D0 02              3027 	pop	ar2
                           3028 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:379: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   168A 90 00 CD           3029 	mov	dptr,#_iterateStateMachine_sm_1_1
   168D E0                 3030 	movx	a,@dptr
   168E FB                 3031 	mov	r3,a
   168F A3                 3032 	inc	dptr
   1690 E0                 3033 	movx	a,@dptr
   1691 FC                 3034 	mov	r4,a
   1692 A3                 3035 	inc	dptr
   1693 E0                 3036 	movx	a,@dptr
   1694 F8                 3037 	mov	r0,a
   1695 EA                 3038 	mov	a,r2
   1696 75 F0 03           3039 	mov	b,#0x03
   1699 A4                 3040 	mul	ab
   169A 24 09              3041 	add	a,#_iterateStateMachine_targetHierarchy_4_13
   169C F5 82              3042 	mov	dpl,a
   169E E4                 3043 	clr	a
   169F 34 01              3044 	addc	a,#(_iterateStateMachine_targetHierarchy_4_13 >> 8)
   16A1 F5 83              3045 	mov	dph,a
   16A3 E0                 3046 	movx	a,@dptr
   16A4 F9                 3047 	mov	r1,a
   16A5 A3                 3048 	inc	dptr
   16A6 E0                 3049 	movx	a,@dptr
   16A7 FD                 3050 	mov	r5,a
   16A8 A3                 3051 	inc	dptr
   16A9 E0                 3052 	movx	a,@dptr
   16AA FE                 3053 	mov	r6,a
   16AB 90 00 C4           3054 	mov	dptr,#_callStateHandler_PARM_2
   16AE E9                 3055 	mov	a,r1
   16AF F0                 3056 	movx	@dptr,a
   16B0 A3                 3057 	inc	dptr
   16B1 ED                 3058 	mov	a,r5
   16B2 F0                 3059 	movx	@dptr,a
   16B3 A3                 3060 	inc	dptr
   16B4 EE                 3061 	mov	a,r6
   16B5 F0                 3062 	movx	@dptr,a
   16B6 90 00 C7           3063 	mov	dptr,#_callStateHandler_PARM_3
   16B9 74 D1              3064 	mov	a,#_iterateStateMachine_enterEvent_1_1
   16BB F0                 3065 	movx	@dptr,a
   16BC A3                 3066 	inc	dptr
   16BD 74 00              3067 	mov	a,#(_iterateStateMachine_enterEvent_1_1 >> 8)
   16BF F0                 3068 	movx	@dptr,a
   16C0 A3                 3069 	inc	dptr
   16C1 E4                 3070 	clr	a
   16C2 F0                 3071 	movx	@dptr,a
   16C3 8B 82              3072 	mov	dpl,r3
   16C5 8C 83              3073 	mov	dph,r4
   16C7 88 F0              3074 	mov	b,r0
   16C9 C0 02              3075 	push	ar2
   16CB C0 05              3076 	push	ar5
   16CD C0 06              3077 	push	ar6
   16CF C0 07              3078 	push	ar7
   16D1 12 06 D3           3079 	lcall	_callStateHandler
   16D4 D0 07              3080 	pop	ar7
   16D6 D0 06              3081 	pop	ar6
   16D8 D0 05              3082 	pop	ar5
   16DA D0 02              3083 	pop	ar2
   16DC D0 07              3084 	pop	ar7
   16DE D0 06              3085 	pop	ar6
   16E0 D0 05              3086 	pop	ar5
   16E2 02 16 56           3087 	ljmp	00136$
   16E5                    3088 00138$:
                           3089 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:382: sm->currentState = target ;
   16E5 74 06              3090 	mov	a,#0x06
   16E7 25 35              3091 	add	a,_iterateStateMachine_sloc4_1_0
   16E9 FA                 3092 	mov	r2,a
   16EA E4                 3093 	clr	a
   16EB 35 36              3094 	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
   16ED FB                 3095 	mov	r3,a
   16EE AC 37              3096 	mov	r4,(_iterateStateMachine_sloc4_1_0 + 2)
   16F0 8A 82              3097 	mov	dpl,r2
   16F2 8B 83              3098 	mov	dph,r3
   16F4 8C F0              3099 	mov	b,r4
   16F6 E5 42              3100 	mov	a,_iterateStateMachine_sloc9_1_0
   16F8 12 31 54           3101 	lcall	__gptrput
   16FB A3                 3102 	inc	dptr
   16FC E5 43              3103 	mov	a,(_iterateStateMachine_sloc9_1_0 + 1)
   16FE 12 31 54           3104 	lcall	__gptrput
   1701 A3                 3105 	inc	dptr
   1702 E5 44              3106 	mov	a,(_iterateStateMachine_sloc9_1_0 + 2)
   1704 12 31 54           3107 	lcall	__gptrput
   1707                    3108 00152$:
                           3109 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:390: NormalInsert(&sm->eventQueue, &initialTransitionEvent) ;
   1707 74 0C              3110 	mov	a,#0x0C
   1709 25 38              3111 	add	a,_iterateStateMachine_sloc5_1_0
   170B FA                 3112 	mov	r2,a
   170C E4                 3113 	clr	a
   170D 35 39              3114 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   170F FB                 3115 	mov	r3,a
   1710 AC 3A              3116 	mov	r4,(_iterateStateMachine_sloc5_1_0 + 2)
   1712 90 00 14           3117 	mov	dptr,#_NormalInsert_PARM_2
   1715 74 D0              3118 	mov	a,#_iterateStateMachine_initialTransitionEvent_1_1
   1717 F0                 3119 	movx	@dptr,a
   1718 A3                 3120 	inc	dptr
   1719 74 00              3121 	mov	a,#(_iterateStateMachine_initialTransitionEvent_1_1 >> 8)
   171B F0                 3122 	movx	@dptr,a
   171C A3                 3123 	inc	dptr
   171D E4                 3124 	clr	a
   171E F0                 3125 	movx	@dptr,a
   171F 8A 82              3126 	mov	dpl,r2
   1721 8B 83              3127 	mov	dph,r3
   1723 8C F0              3128 	mov	b,r4
   1725 C0 05              3129 	push	ar5
   1727 C0 06              3130 	push	ar6
   1729 C0 07              3131 	push	ar7
   172B 12 02 41           3132 	lcall	_NormalInsert
   172E D0 07              3133 	pop	ar7
   1730 D0 06              3134 	pop	ar6
   1732 D0 05              3135 	pop	ar5
   1734 02 0A 04           3136 	ljmp	00155$
   1737                    3137 00157$:
                           3138 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:394: printf("\t\tEvent queue empty.\n") ;
   1737 74 3E              3139 	mov	a,#__str_25
   1739 C0 E0              3140 	push	acc
   173B 74 40              3141 	mov	a,#(__str_25 >> 8)
   173D C0 E0              3142 	push	acc
   173F 74 80              3143 	mov	a,#0x80
   1741 C0 E0              3144 	push	acc
   1743 12 35 14           3145 	lcall	_printf
   1746 15 81              3146 	dec	sp
   1748 15 81              3147 	dec	sp
   174A 15 81              3148 	dec	sp
   174C 22                 3149 	ret
                           3150 	.area CSEG    (CODE)
                           3151 	.area CONST   (CODE)
   3DA8                    3152 __str_0:
   3DA8 09                 3153 	.db 0x09
   3DA9 09                 3154 	.db 0x09
   3DAA 09                 3155 	.db 0x09
   3DAB 43 61 6C 6C 69 6E  3156 	.ascii "Calling state: %s, event: %s, "
        67 20 73 74 61 74
        65 3A 20 25 73 2C
        20 65 76 65 6E 74
        3A 20 25 73 2C 20
   3DC9 00                 3157 	.db 0x00
   3DCA                    3158 __str_1:
   3DCA 3C 55 53 45 52 5F  3159 	.ascii "<USER_EVENT>"
        45 56 45 4E 54 3E
   3DD6 00                 3160 	.db 0x00
   3DD7                    3161 __str_2:
   3DD7 72 65 73 70 6F 6E  3162 	.ascii "response: %s "
        73 65 3A 20 25 73
        20
   3DE4 00                 3163 	.db 0x00
   3DE5                    3164 __str_3:
   3DE5 74 6F 20 25 73 20  3165 	.ascii "to %s "
   3DEB 00                 3166 	.db 0x00
   3DEC                    3167 __str_4:
   3DEC 0A                 3168 	.db 0x0A
   3DED 00                 3169 	.db 0x00
   3DEE                    3170 __str_5:
   3DEE 09                 3171 	.db 0x09
   3DEF 69 74 65 72 61 74  3172 	.ascii "iterating %s"
        69 6E 67 20 25 73
   3DFB 0A                 3173 	.db 0x0A
   3DFC 00                 3174 	.db 0x00
   3DFD                    3175 __str_6:
   3DFD 09                 3176 	.db 0x09
   3DFE 09                 3177 	.db 0x09
   3DFF 69 6E 69 74 69 61  3178 	.ascii "initializing..."
        6C 69 7A 69 6E 67
        2E 2E 2E
   3E0E 0A                 3179 	.db 0x0A
   3E0F 00                 3180 	.db 0x00
   3E10                    3181 __str_7:
   3E10 09                 3182 	.db 0x09
   3E11 09                 3183 	.db 0x09
   3E12 50 72 6F 63 65 73  3184 	.ascii "Processing event..."
        73 69 6E 67 20 65
        76 65 6E 74 2E 2E
        2E
   3E25 0A                 3185 	.db 0x0A
   3E26 00                 3186 	.db 0x00
   3E27                    3187 __str_8:
   3E27 09                 3188 	.db 0x09
   3E28 09                 3189 	.db 0x09
   3E29 09                 3190 	.db 0x09
   3E2A 09                 3191 	.db 0x09
   3E2B 09                 3192 	.db 0x09
   3E2C 09                 3193 	.db 0x09
   3E2D 09                 3194 	.db 0x09
   3E2E 6D 6F 76 69 6E 67  3195 	.ascii "moving to parent: %s"
        20 74 6F 20 70 61
        72 65 6E 74 3A 20
        25 73
   3E42 0A                 3196 	.db 0x0A
   3E43 00                 3197 	.db 0x00
   3E44                    3198 __str_9:
   3E44 3C 72 6F 6F 74 3E  3199 	.ascii "<root>"
   3E4A 00                 3200 	.db 0x00
   3E4B                    3201 __str_10:
   3E4B 09                 3202 	.db 0x09
   3E4C 09                 3203 	.db 0x09
   3E4D 09                 3204 	.db 0x09
   3E4E 09                 3205 	.db 0x09
   3E4F 53 65 6C 66 20 74  3206 	.ascii "Self transition."
        72 61 6E 73 69 74
        69 6F 6E 2E
   3E5F 0A                 3207 	.db 0x0A
   3E60 00                 3208 	.db 0x00
   3E61                    3209 __str_11:
   3E61 09                 3210 	.db 0x09
   3E62 09                 3211 	.db 0x09
   3E63 09                 3212 	.db 0x09
   3E64 09                 3213 	.db 0x09
   3E65 54 72 61 6E 73 69  3214 	.ascii "Transition to direct child."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 63 68 69
        6C 64 2E
   3E80 0A                 3215 	.db 0x0A
   3E81 00                 3216 	.db 0x00
   3E82                    3217 __str_12:
   3E82 09                 3218 	.db 0x09
   3E83 09                 3219 	.db 0x09
   3E84 09                 3220 	.db 0x09
   3E85 09                 3221 	.db 0x09
   3E86 54 72 61 6E 73 69  3222 	.ascii "Transition to direct peer."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 65 65
        72 2E
   3EA0 0A                 3223 	.db 0x0A
   3EA1 00                 3224 	.db 0x00
   3EA2                    3225 __str_13:
   3EA2 09                 3226 	.db 0x09
   3EA3 09                 3227 	.db 0x09
   3EA4 09                 3228 	.db 0x09
   3EA5 09                 3229 	.db 0x09
   3EA6 54 72 61 6E 73 69  3230 	.ascii "Transition to direct parent."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 61 72
        65 6E 74 2E
   3EC2 0A                 3231 	.db 0x0A
   3EC3 00                 3232 	.db 0x00
   3EC4                    3233 __str_14:
   3EC4 09                 3234 	.db 0x09
   3EC5 09                 3235 	.db 0x09
   3EC6 09                 3236 	.db 0x09
   3EC7 09                 3237 	.db 0x09
   3EC8 53 63 61 6E 6E 69  3238 	.ascii "Scanning source hierarchy..."
        6E 67 20 73 6F 75
        72 63 65 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   3EE4 0A                 3239 	.db 0x0A
   3EE5 00                 3240 	.db 0x00
   3EE6                    3241 __str_15:
   3EE6 09                 3242 	.db 0x09
   3EE7 09                 3243 	.db 0x09
   3EE8 09                 3244 	.db 0x09
   3EE9 09                 3245 	.db 0x09
   3EEA 09                 3246 	.db 0x09
   3EEB 73 6F 75 72 63 65  3247 	.ascii "sourceHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   3F03 0A                 3248 	.db 0x0A
   3F04 00                 3249 	.db 0x00
   3F05                    3250 __str_16:
   3F05 09                 3251 	.db 0x09
   3F06 09                 3252 	.db 0x09
   3F07 09                 3253 	.db 0x09
   3F08 09                 3254 	.db 0x09
   3F09 09                 3255 	.db 0x09
   3F0A 09                 3256 	.db 0x09
   3F0B 46 6F 75 6E 64 20  3257 	.ascii "Found target as ancestor of source"
        74 61 72 67 65 74
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 73 6F
        75 72 63 65
   3F2D 0A                 3258 	.db 0x0A
   3F2E 00                 3259 	.db 0x00
   3F2F                    3260 __str_17:
   3F2F 09                 3261 	.db 0x09
   3F30 09                 3262 	.db 0x09
   3F31 09                 3263 	.db 0x09
   3F32 09                 3264 	.db 0x09
   3F33 00                 3265 	.db 0x00
   3F34                    3266 __str_18:
   3F34 09                 3267 	.db 0x09
   3F35 09                 3268 	.db 0x09
   3F36 09                 3269 	.db 0x09
   3F37 09                 3270 	.db 0x09
   3F38 53 63 61 6E 6E 69  3271 	.ascii "Scanning target hierarchy..."
        6E 67 20 74 61 72
        67 65 74 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   3F54 0A                 3272 	.db 0x0A
   3F55 00                 3273 	.db 0x00
   3F56                    3274 __str_19:
   3F56 09                 3275 	.db 0x09
   3F57 09                 3276 	.db 0x09
   3F58 09                 3277 	.db 0x09
   3F59 09                 3278 	.db 0x09
   3F5A 09                 3279 	.db 0x09
   3F5B 74 61 72 67 65 74  3280 	.ascii "targetHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   3F73 0A                 3281 	.db 0x0A
   3F74 00                 3282 	.db 0x00
   3F75                    3283 __str_20:
   3F75 09                 3284 	.db 0x09
   3F76 09                 3285 	.db 0x09
   3F77 09                 3286 	.db 0x09
   3F78 09                 3287 	.db 0x09
   3F79 09                 3288 	.db 0x09
   3F7A 09                 3289 	.db 0x09
   3F7B 46 6F 75 6E 64 20  3290 	.ascii "Found source as ancestor of target"
        73 6F 75 72 63 65
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 74 61
        72 67 65 74
   3F9D 0A                 3291 	.db 0x0A
   3F9E 00                 3292 	.db 0x00
   3F9F                    3293 __str_21:
   3F9F 09                 3294 	.db 0x09
   3FA0 09                 3295 	.db 0x09
   3FA1 09                 3296 	.db 0x09
   3FA2 09                 3297 	.db 0x09
   3FA3 53 74 69 6C 6C 20  3298 	.ascii "Still haven't found relationship. Scanning for LCA..."
        68 61 76 65 6E 27
        74 20 66 6F 75 6E
        64 20 72 65 6C 61
        74 69 6F 6E 73 68
        69 70 2E 20 53 63
        61 6E 6E 69 6E 67
        20 66 6F 72 20 4C
        43 41 2E 2E 2E
   3FD8 0A                 3299 	.db 0x0A
   3FD9 00                 3300 	.db 0x00
   3FDA                    3301 __str_22:
   3FDA 09                 3302 	.db 0x09
   3FDB 09                 3303 	.db 0x09
   3FDC 09                 3304 	.db 0x09
   3FDD 09                 3305 	.db 0x09
   3FDE 09                 3306 	.db 0x09
   3FDF 65 6E 74 72 79 49  3307 	.ascii "entryIndex = %d, exitIndex = %d"
        6E 64 65 78 20 3D
        20 25 64 2C 20 65
        78 69 74 49 6E 64
        65 78 20 3D 20 25
        64
   3FFE 0A                 3308 	.db 0x0A
   3FFF 00                 3309 	.db 0x00
   4000                    3310 __str_23:
   4000 09                 3311 	.db 0x09
   4001 09                 3312 	.db 0x09
   4002 09                 3313 	.db 0x09
   4003 09                 3314 	.db 0x09
   4004 09                 3315 	.db 0x09
   4005 43 75 72 72 65 6E  3316 	.ascii "Current LCA candidate: %s"
        74 20 4C 43 41 20
        63 61 6E 64 69 64
        61 74 65 3A 20 25
        73
   401E 0A                 3317 	.db 0x0A
   401F 00                 3318 	.db 0x00
   4020                    3319 __str_24:
   4020 09                 3320 	.db 0x09
   4021 09                 3321 	.db 0x09
   4022 09                 3322 	.db 0x09
   4023 09                 3323 	.db 0x09
   4024 09                 3324 	.db 0x09
   4025 4C 43 41 20 6F 66  3325 	.ascii "LCA of %s and %s is: %s"
        20 25 73 20 61 6E
        64 20 25 73 20 69
        73 3A 20 25 73
   403C 0A                 3326 	.db 0x0A
   403D 00                 3327 	.db 0x00
   403E                    3328 __str_25:
   403E 09                 3329 	.db 0x09
   403F 09                 3330 	.db 0x09
   4040 45 76 65 6E 74 20  3331 	.ascii "Event queue empty."
        71 75 65 75 65 20
        65 6D 70 74 79 2E
   4052 0A                 3332 	.db 0x0A
   4053 00                 3333 	.db 0x00
   4054                    3334 __str_26:
   4054 53 55 42 53 54 41  3335 	.ascii "SUBSTATE_GET_INFO"
        54 45 5F 47 45 54
        5F 49 4E 46 4F
   4065 00                 3336 	.db 0x00
   4066                    3337 __str_27:
   4066 53 55 42 53 54 41  3338 	.ascii "SUBSTATE_ENTRY"
        54 45 5F 45 4E 54
        52 59
   4074 00                 3339 	.db 0x00
   4075                    3340 __str_28:
   4075 53 55 42 53 54 41  3341 	.ascii "SUBSTATE_INITIAL_TRANSITION"
        54 45 5F 49 4E 49
        54 49 41 4C 5F 54
        52 41 4E 53 49 54
        49 4F 4E
   4090 00                 3342 	.db 0x00
   4091                    3343 __str_29:
   4091 53 55 42 53 54 41  3344 	.ascii "SUBSTATE_EXIT"
        54 45 5F 45 58 49
        54
   409E 00                 3345 	.db 0x00
   409F                    3346 __str_30:
   409F 49 47 4E 4F 52 45  3347 	.ascii "IGNORED"
        44
   40A6 00                 3348 	.db 0x00
   40A7                    3349 __str_31:
   40A7 48 41 4E 44 4C 45  3350 	.ascii "HANDLED"
        44
   40AE 00                 3351 	.db 0x00
   40AF                    3352 __str_32:
   40AF 54 52 41 4E 53 49  3353 	.ascii "TRANSITION"
        54 49 4F 4E
   40B9 00                 3354 	.db 0x00
                           3355 	.area XINIT   (CODE)
   42B6                    3356 __xinit__eventTypes:
   42B6 54 40 80           3357 	.byte __str_26,(__str_26 >> 8),#0x80
   42B9 66 40 80           3358 	.byte __str_27,(__str_27 >> 8),#0x80
   42BC 75 40 80           3359 	.byte __str_28,(__str_28 >> 8),#0x80
   42BF 91 40 80           3360 	.byte __str_29,(__str_29 >> 8),#0x80
   42C2                    3361 __xinit__responseTypes:
   42C2 9F 40 80           3362 	.byte __str_30,(__str_30 >> 8),#0x80
   42C5 A7 40 80           3363 	.byte __str_31,(__str_31 >> 8),#0x80
   42C8 AF 40 80           3364 	.byte __str_32,(__str_32 >> 8),#0x80
                           3365 	.area CABS    (ABS,CODE)
