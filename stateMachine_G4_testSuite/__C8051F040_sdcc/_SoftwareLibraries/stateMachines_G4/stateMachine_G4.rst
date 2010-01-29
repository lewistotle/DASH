                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sat Jan 02 19:57:10 2010
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
                             17 	.globl _deallocateStateMachineMemory_PARM_2
                             18 	.globl _allocateStateMachineMemory_PARM_2
                             19 	.globl _stateMachines
                             20 	.globl _allocateStateMachineMemory
                             21 	.globl _deallocateStateMachineMemory
                             22 	.globl _registerStateMachine
                             23 	.globl _unregisterStateMachine
                             24 	.globl _iterateAllStateMachines
                             25 	.globl _iterateStateMachine
                             26 ;--------------------------------------------------------
                             27 ; special function registers
                             28 ;--------------------------------------------------------
                             29 	.area RSEG    (DATA)
                             30 ;--------------------------------------------------------
                             31 ; special function bits
                             32 ;--------------------------------------------------------
                             33 	.area RSEG    (DATA)
                             34 ;--------------------------------------------------------
                             35 ; overlayable register banks
                             36 ;--------------------------------------------------------
                             37 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      38 	.ds 8
                             39 ;--------------------------------------------------------
                             40 ; internal ram data
                             41 ;--------------------------------------------------------
                             42 	.area DSEG    (DATA)
   003C                      43 _allocateStateMachineMemory_sloc0_1_0:
   003C                      44 	.ds 2
   003E                      45 _allocateStateMachineMemory_sloc1_1_0:
   003E                      46 	.ds 3
   0041                      47 _callStateHandler_sloc0_1_0:
   0041                      48 	.ds 3
   0044                      49 _callStateHandler_sloc1_1_0:
   0044                      50 	.ds 1
   0045                      51 _callStateHandler_sloc2_1_0:
   0045                      52 	.ds 3
   0048                      53 _iterateStateMachine_sloc0_1_0:
   0048                      54 	.ds 3
   004B                      55 _iterateStateMachine_sloc1_1_0:
   004B                      56 	.ds 3
   004E                      57 _iterateStateMachine_sloc2_1_0:
   004E                      58 	.ds 3
   0051                      59 _iterateStateMachine_sloc3_1_0:
   0051                      60 	.ds 3
   0054                      61 _iterateStateMachine_sloc4_1_0:
   0054                      62 	.ds 3
   0057                      63 _iterateStateMachine_sloc5_1_0:
   0057                      64 	.ds 3
   005A                      65 _iterateStateMachine_sloc6_1_0:
   005A                      66 	.ds 3
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
   0955                      92 _stateMachines::
   0955                      93 	.ds 150
   09EB                      94 _allocateStateMachineMemory_PARM_2:
   09EB                      95 	.ds 2
   09ED                      96 _allocateStateMachineMemory_eventQueueDepth_1_1:
   09ED                      97 	.ds 2
   09EF                      98 _deallocateStateMachineMemory_PARM_2:
   09EF                      99 	.ds 2
   09F1                     100 _deallocateStateMachineMemory_instance_1_1:
   09F1                     101 	.ds 3
   09F4                     102 _registerStateMachine_sm_1_1:
   09F4                     103 	.ds 3
   09F7                     104 _unregisterStateMachine_sm_1_1:
   09F7                     105 	.ds 3
   09FA                     106 _callStateHandler_PARM_2:
   09FA                     107 	.ds 3
   09FD                     108 _callStateHandler_PARM_3:
   09FD                     109 	.ds 3
   0A00                     110 _callStateHandler_sm_1_1:
   0A00                     111 	.ds 3
   0A03                     112 _callStateHandler_response_1_1:
   0A03                     113 	.ds 1
   0A04                     114 _iterateStateMachine_sm_1_1:
   0A04                     115 	.ds 3
   0A07                     116 _iterateStateMachine_eventToProcess_2_3:
   0A07                     117 	.ds 3
   0A0A                     118 _iterateStateMachine_stateBeingProcessed_2_3:
   0A0A                     119 	.ds 3
   0A0D                     120 _iterateStateMachine_action_2_3:
   0A0D                     121 	.ds 1
   0A0E                     122 _iterateStateMachine_sourceHierarchy_4_19:
   0A0E                     123 	.ds 48
   0A3E                     124 _iterateStateMachine_sourceIndex_4_19:
   0A3E                     125 	.ds 1
   0A3F                     126 _iterateStateMachine_targetHierarchy_4_19:
   0A3F                     127 	.ds 48
   0A6F                     128 _iterateStateMachine_targetIndex_4_19:
   0A6F                     129 	.ds 1
   0A70                     130 _iterateStateMachine_LCA_4_19:
   0A70                     131 	.ds 3
   0A73                     132 _iterateStateMachine_entryIndex_4_19:
   0A73                     133 	.ds 1
                            134 ;--------------------------------------------------------
                            135 ; absolute external ram data
                            136 ;--------------------------------------------------------
                            137 	.area XABS    (ABS,XDATA)
                            138 ;--------------------------------------------------------
                            139 ; external initialized ram data
                            140 ;--------------------------------------------------------
                            141 	.area XISEG   (XDATA)
   0EEF                     142 _eventTypes::
   0EEF                     143 	.ds 18
   0F01                     144 _responseTypes::
   0F01                     145 	.ds 12
   0F0D                     146 _initialTransitionEvent:
   0F0D                     147 	.ds 1
   0F0E                     148 _jumpToHistoryEvent:
   0F0E                     149 	.ds 1
   0F0F                     150 _doEvent:
   0F0F                     151 	.ds 1
   0F10                     152 _enterEvent:
   0F10                     153 	.ds 1
   0F11                     154 _exitEvent:
   0F11                     155 	.ds 1
                            156 	.area HOME    (CODE)
                            157 	.area GSINIT0 (CODE)
                            158 	.area GSINIT1 (CODE)
                            159 	.area GSINIT2 (CODE)
                            160 	.area GSINIT3 (CODE)
                            161 	.area GSINIT4 (CODE)
                            162 	.area GSINIT5 (CODE)
                            163 	.area GSINIT  (CODE)
                            164 	.area GSFINAL (CODE)
                            165 	.area CSEG    (CODE)
                            166 ;--------------------------------------------------------
                            167 ; global & static initialisations
                            168 ;--------------------------------------------------------
                            169 	.area HOME    (CODE)
                            170 	.area GSINIT  (CODE)
                            171 	.area GSFINAL (CODE)
                            172 	.area GSINIT  (CODE)
                            173 ;--------------------------------------------------------
                            174 ; Home
                            175 ;--------------------------------------------------------
                            176 	.area HOME    (CODE)
                            177 	.area HOME    (CODE)
                            178 ;--------------------------------------------------------
                            179 ; code
                            180 ;--------------------------------------------------------
                            181 	.area CSEG    (CODE)
                            182 ;------------------------------------------------------------
                            183 ;Allocation info for local variables in function 'allocateStateMachineMemory'
                            184 ;------------------------------------------------------------
                            185 ;sloc0                     Allocated with name '_allocateStateMachineMemory_sloc0_1_0'
                            186 ;sloc1                     Allocated with name '_allocateStateMachineMemory_sloc1_1_0'
                            187 ;constructor               Allocated with name '_allocateStateMachineMemory_PARM_2'
                            188 ;eventQueueDepth           Allocated with name '_allocateStateMachineMemory_eventQueueDepth_1_1'
                            189 ;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
                            190 ;eventQueue                Allocated with name '_allocateStateMachineMemory_eventQueue_2_2'
                            191 ;typesOfEventsToDefer      Allocated with name '_allocateStateMachineMemory_typesOfEventsToDefer_3_3'
                            192 ;deferredEventQueue        Allocated with name '_allocateStateMachineMemory_deferredEventQueue_4_4'
                            193 ;------------------------------------------------------------
                            194 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: stateMachine_t* allocateStateMachineMemory(		uint16_t eventQueueDepth,
                            195 ;	-----------------------------------------
                            196 ;	 function allocateStateMachineMemory
                            197 ;	-----------------------------------------
   2870                     198 _allocateStateMachineMemory:
                    0002    199 	ar2 = 0x02
                    0003    200 	ar3 = 0x03
                    0004    201 	ar4 = 0x04
                    0005    202 	ar5 = 0x05
                    0006    203 	ar6 = 0x06
                    0007    204 	ar7 = 0x07
                    0000    205 	ar0 = 0x00
                    0001    206 	ar1 = 0x01
   2870 AA 83               207 	mov	r2,dph
   2872 E5 82               208 	mov	a,dpl
   2874 90 09 ED            209 	mov	dptr,#_allocateStateMachineMemory_eventQueueDepth_1_1
   2877 F0                  210 	movx	@dptr,a
   2878 A3                  211 	inc	dptr
   2879 EA                  212 	mov	a,r2
   287A F0                  213 	movx	@dptr,a
                            214 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:39: stateMachine_t*	instance = malloc(sizeof(stateMachine_t)) ;
   287B 90 00 2B            215 	mov	dptr,#0x002B
   287E 12 42 D9            216 	lcall	_malloc
   2881 AA 82               217 	mov	r2,dpl
   2883 AB 83               218 	mov	r3,dph
   2885 7C 00               219 	mov	r4,#0x00
                            220 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:41: if(instance)
   2887 EA                  221 	mov	a,r2
   2888 4B                  222 	orl	a,r3
   2889 4C                  223 	orl	a,r4
   288A 70 03               224 	jnz	00115$
   288C 02 2A 6E            225 	ljmp	00108$
   288F                     226 00115$:
                            227 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:45: memset((char*)instance, 0, sizeof(stateMachine_t)) ;
   288F 90 0A A0            228 	mov	dptr,#_memset_PARM_2
   2892 E4                  229 	clr	a
   2893 F0                  230 	movx	@dptr,a
   2894 90 0A A1            231 	mov	dptr,#_memset_PARM_3
   2897 74 2B               232 	mov	a,#0x2B
   2899 F0                  233 	movx	@dptr,a
   289A E4                  234 	clr	a
   289B A3                  235 	inc	dptr
   289C F0                  236 	movx	@dptr,a
   289D 8A 82               237 	mov	dpl,r2
   289F 8B 83               238 	mov	dph,r3
   28A1 8C F0               239 	mov	b,r4
   28A3 C0 02               240 	push	ar2
   28A5 C0 03               241 	push	ar3
   28A7 C0 04               242 	push	ar4
   28A9 12 42 1A            243 	lcall	_memset
                            244 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: eventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
   28AC 90 09 ED            245 	mov	dptr,#_allocateStateMachineMemory_eventQueueDepth_1_1
   28AF E0                  246 	movx	a,@dptr
   28B0 F5 3C               247 	mov	_allocateStateMachineMemory_sloc0_1_0,a
   28B2 A3                  248 	inc	dptr
   28B3 E0                  249 	movx	a,@dptr
   28B4 F5 3D               250 	mov	(_allocateStateMachineMemory_sloc0_1_0 + 1),a
   28B6 90 0A AE            251 	mov	dptr,#__mulint_PARM_2
   28B9 E5 3C               252 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   28BB F0                  253 	movx	@dptr,a
   28BC A3                  254 	inc	dptr
   28BD E5 3D               255 	mov	a,(_allocateStateMachineMemory_sloc0_1_0 + 1)
   28BF F0                  256 	movx	@dptr,a
   28C0 90 00 03            257 	mov	dptr,#0x0003
   28C3 12 44 23            258 	lcall	__mulint
   28C6 AF 82               259 	mov	r7,dpl
   28C8 A8 83               260 	mov  r0,dph
   28CA C0 07               261 	push	ar7
   28CC C0 00               262 	push	ar0
   28CE 12 42 D9            263 	lcall	_malloc
   28D1 A9 82               264 	mov	r1,dpl
   28D3 AD 83               265 	mov	r5,dph
   28D5 D0 00               266 	pop	ar0
   28D7 D0 07               267 	pop	ar7
   28D9 D0 04               268 	pop	ar4
   28DB D0 03               269 	pop	ar3
   28DD D0 02               270 	pop	ar2
   28DF 89 3E               271 	mov	_allocateStateMachineMemory_sloc1_1_0,r1
   28E1 8D 3F               272 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r5
   28E3 75 40 00            273 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
                            274 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: if(eventQueue)
   28E6 E5 3E               275 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   28E8 45 3F               276 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   28EA 45 40               277 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   28EC 70 03               278 	jnz	00116$
   28EE 02 2A 6E            279 	ljmp	00108$
   28F1                     280 00116$:
                            281 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:53: memset((char*)eventQueue, 0, eventQueueDepth * sizeof(event_t*)) ;
   28F1 90 0A A0            282 	mov	dptr,#_memset_PARM_2
   28F4 E4                  283 	clr	a
   28F5 F0                  284 	movx	@dptr,a
   28F6 90 0A A1            285 	mov	dptr,#_memset_PARM_3
   28F9 EF                  286 	mov	a,r7
   28FA F0                  287 	movx	@dptr,a
   28FB A3                  288 	inc	dptr
   28FC E8                  289 	mov	a,r0
   28FD F0                  290 	movx	@dptr,a
   28FE 85 3E 82            291 	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
   2901 85 3F 83            292 	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2904 85 40 F0            293 	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2907 C0 02               294 	push	ar2
   2909 C0 03               295 	push	ar3
   290B C0 04               296 	push	ar4
   290D C0 07               297 	push	ar7
   290F C0 00               298 	push	ar0
   2911 12 42 1A            299 	lcall	_memset
   2914 D0 00               300 	pop	ar0
   2916 D0 07               301 	pop	ar7
   2918 D0 04               302 	pop	ar4
   291A D0 03               303 	pop	ar3
   291C D0 02               304 	pop	ar2
                            305 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:54: eventQueue_initialize(&instance->eventQueue, eventQueue, eventQueueDepth) ;
   291E 74 0B               306 	mov	a,#0x0B
   2920 2A                  307 	add	a,r2
   2921 FD                  308 	mov	r5,a
   2922 E4                  309 	clr	a
   2923 3B                  310 	addc	a,r3
   2924 FE                  311 	mov	r6,a
   2925 8C 01               312 	mov	ar1,r4
   2927 90 09 25            313 	mov	dptr,#_eventQueue_initialize_PARM_2
   292A E5 3E               314 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   292C F0                  315 	movx	@dptr,a
   292D A3                  316 	inc	dptr
   292E E5 3F               317 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2930 F0                  318 	movx	@dptr,a
   2931 A3                  319 	inc	dptr
   2932 E5 40               320 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2934 F0                  321 	movx	@dptr,a
   2935 90 09 28            322 	mov	dptr,#_eventQueue_initialize_PARM_3
   2938 E5 3C               323 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   293A F0                  324 	movx	@dptr,a
   293B 8D 82               325 	mov	dpl,r5
   293D 8E 83               326 	mov	dph,r6
   293F 89 F0               327 	mov	b,r1
   2941 C0 02               328 	push	ar2
   2943 C0 03               329 	push	ar3
   2945 C0 04               330 	push	ar4
   2947 C0 07               331 	push	ar7
   2949 C0 00               332 	push	ar0
   294B 12 20 6D            333 	lcall	_eventQueue_initialize
   294E D0 00               334 	pop	ar0
   2950 D0 07               335 	pop	ar7
                            336 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:56: typesOfEventsToDefer = (eventType_t*)malloc(eventQueueDepth * sizeof(eventType_t*)) ;
   2952 8F 82               337 	mov	dpl,r7
   2954 88 83               338 	mov	dph,r0
   2956 C0 07               339 	push	ar7
   2958 C0 00               340 	push	ar0
   295A 12 42 D9            341 	lcall	_malloc
   295D AD 82               342 	mov	r5,dpl
   295F AE 83               343 	mov	r6,dph
   2961 D0 00               344 	pop	ar0
   2963 D0 07               345 	pop	ar7
   2965 D0 04               346 	pop	ar4
   2967 D0 03               347 	pop	ar3
   2969 D0 02               348 	pop	ar2
   296B 8D 3E               349 	mov	_allocateStateMachineMemory_sloc1_1_0,r5
   296D 8E 3F               350 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r6
   296F 75 40 00            351 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
                            352 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:58: if(typesOfEventsToDefer)
   2972 E5 3E               353 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   2974 45 3F               354 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2976 45 40               355 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2978 70 03               356 	jnz	00117$
   297A 02 2A 6E            357 	ljmp	00108$
   297D                     358 00117$:
                            359 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:62: instance->maxDepthOfEventsToDeferList		= eventQueueDepth ;
   297D 74 12               360 	mov	a,#0x12
   297F 2A                  361 	add	a,r2
   2980 FD                  362 	mov	r5,a
   2981 E4                  363 	clr	a
   2982 3B                  364 	addc	a,r3
   2983 FE                  365 	mov	r6,a
   2984 8C 01               366 	mov	ar1,r4
   2986 8D 82               367 	mov	dpl,r5
   2988 8E 83               368 	mov	dph,r6
   298A 89 F0               369 	mov	b,r1
   298C E5 3C               370 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   298E 12 42 42            371 	lcall	__gptrput
                            372 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:63: instance->currentDepthOfEventsToDeferList	= 0 ;
   2991 74 13               373 	mov	a,#0x13
   2993 2A                  374 	add	a,r2
   2994 FD                  375 	mov	r5,a
   2995 E4                  376 	clr	a
   2996 3B                  377 	addc	a,r3
   2997 FE                  378 	mov	r6,a
   2998 8C 01               379 	mov	ar1,r4
   299A 8D 82               380 	mov	dpl,r5
   299C 8E 83               381 	mov	dph,r6
   299E 89 F0               382 	mov	b,r1
   29A0 E4                  383 	clr	a
   29A1 12 42 42            384 	lcall	__gptrput
                            385 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:64: instance->typesOfEventsToDefer				= typesOfEventsToDefer ;
   29A4 74 14               386 	mov	a,#0x14
   29A6 2A                  387 	add	a,r2
   29A7 FD                  388 	mov	r5,a
   29A8 E4                  389 	clr	a
   29A9 3B                  390 	addc	a,r3
   29AA FE                  391 	mov	r6,a
   29AB 8C 01               392 	mov	ar1,r4
   29AD 8D 82               393 	mov	dpl,r5
   29AF 8E 83               394 	mov	dph,r6
   29B1 89 F0               395 	mov	b,r1
   29B3 E5 3E               396 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   29B5 12 42 42            397 	lcall	__gptrput
   29B8 A3                  398 	inc	dptr
   29B9 E5 3F               399 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   29BB 12 42 42            400 	lcall	__gptrput
   29BE A3                  401 	inc	dptr
   29BF E5 40               402 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   29C1 12 42 42            403 	lcall	__gptrput
                            404 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:66: deferredEventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
   29C4 8F 82               405 	mov	dpl,r7
   29C6 88 83               406 	mov	dph,r0
   29C8 C0 02               407 	push	ar2
   29CA C0 03               408 	push	ar3
   29CC C0 04               409 	push	ar4
   29CE C0 07               410 	push	ar7
   29D0 C0 00               411 	push	ar0
   29D2 12 42 D9            412 	lcall	_malloc
   29D5 AD 82               413 	mov	r5,dpl
   29D7 AE 83               414 	mov	r6,dph
   29D9 D0 00               415 	pop	ar0
   29DB D0 07               416 	pop	ar7
   29DD D0 04               417 	pop	ar4
   29DF D0 03               418 	pop	ar3
   29E1 D0 02               419 	pop	ar2
   29E3 8D 3E               420 	mov	_allocateStateMachineMemory_sloc1_1_0,r5
   29E5 8E 3F               421 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r6
   29E7 75 40 00            422 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
                            423 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:68: if(deferredEventQueue)
   29EA E5 3E               424 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   29EC 45 3F               425 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   29EE 45 40               426 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   29F0 60 7C               427 	jz	00108$
                            428 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:70: memset((char*)deferredEventQueue, 0, eventQueueDepth * sizeof(event_t*)) ;
   29F2 90 0A A0            429 	mov	dptr,#_memset_PARM_2
   29F5 E4                  430 	clr	a
   29F6 F0                  431 	movx	@dptr,a
   29F7 90 0A A1            432 	mov	dptr,#_memset_PARM_3
   29FA EF                  433 	mov	a,r7
   29FB F0                  434 	movx	@dptr,a
   29FC A3                  435 	inc	dptr
   29FD E8                  436 	mov	a,r0
   29FE F0                  437 	movx	@dptr,a
   29FF 85 3E 82            438 	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
   2A02 85 3F 83            439 	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2A05 85 40 F0            440 	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2A08 C0 02               441 	push	ar2
   2A0A C0 03               442 	push	ar3
   2A0C C0 04               443 	push	ar4
   2A0E 12 42 1A            444 	lcall	_memset
   2A11 D0 04               445 	pop	ar4
   2A13 D0 03               446 	pop	ar3
   2A15 D0 02               447 	pop	ar2
                            448 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:71: eventQueue_initialize(&instance->deferredEventQueue, deferredEventQueue, eventQueueDepth) ;
   2A17 74 17               449 	mov	a,#0x17
   2A19 2A                  450 	add	a,r2
   2A1A FF                  451 	mov	r7,a
   2A1B E4                  452 	clr	a
   2A1C 3B                  453 	addc	a,r3
   2A1D F8                  454 	mov	r0,a
   2A1E 8C 05               455 	mov	ar5,r4
   2A20 90 09 25            456 	mov	dptr,#_eventQueue_initialize_PARM_2
   2A23 E5 3E               457 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   2A25 F0                  458 	movx	@dptr,a
   2A26 A3                  459 	inc	dptr
   2A27 E5 3F               460 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2A29 F0                  461 	movx	@dptr,a
   2A2A A3                  462 	inc	dptr
   2A2B E5 40               463 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2A2D F0                  464 	movx	@dptr,a
   2A2E 90 09 28            465 	mov	dptr,#_eventQueue_initialize_PARM_3
   2A31 E5 3C               466 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   2A33 F0                  467 	movx	@dptr,a
   2A34 8F 82               468 	mov	dpl,r7
   2A36 88 83               469 	mov	dph,r0
   2A38 8D F0               470 	mov	b,r5
   2A3A C0 02               471 	push	ar2
   2A3C C0 03               472 	push	ar3
   2A3E C0 04               473 	push	ar4
   2A40 12 20 6D            474 	lcall	_eventQueue_initialize
   2A43 D0 04               475 	pop	ar4
   2A45 D0 03               476 	pop	ar3
   2A47 D0 02               477 	pop	ar2
                            478 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:73: constructor(instance) ;
   2A49 C0 02               479 	push	ar2
   2A4B C0 03               480 	push	ar3
   2A4D C0 04               481 	push	ar4
   2A4F 74 68               482 	mov	a,#00119$
   2A51 C0 E0               483 	push	acc
   2A53 74 2A               484 	mov	a,#(00119$ >> 8)
   2A55 C0 E0               485 	push	acc
   2A57 90 09 EB            486 	mov	dptr,#_allocateStateMachineMemory_PARM_2
   2A5A E0                  487 	movx	a,@dptr
   2A5B C0 E0               488 	push	acc
   2A5D A3                  489 	inc	dptr
   2A5E E0                  490 	movx	a,@dptr
   2A5F C0 E0               491 	push	acc
   2A61 8A 82               492 	mov	dpl,r2
   2A63 8B 83               493 	mov	dph,r3
   2A65 8C F0               494 	mov	b,r4
   2A67 22                  495 	ret
   2A68                     496 00119$:
   2A68 D0 04               497 	pop	ar4
   2A6A D0 03               498 	pop	ar3
   2A6C D0 02               499 	pop	ar2
   2A6E                     500 00108$:
                            501 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:79: return instance ;
   2A6E 8A 82               502 	mov	dpl,r2
   2A70 8B 83               503 	mov	dph,r3
   2A72 8C F0               504 	mov	b,r4
   2A74 22                  505 	ret
                            506 ;------------------------------------------------------------
                            507 ;Allocation info for local variables in function 'deallocateStateMachineMemory'
                            508 ;------------------------------------------------------------
                            509 ;destructor                Allocated with name '_deallocateStateMachineMemory_PARM_2'
                            510 ;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
                            511 ;------------------------------------------------------------
                            512 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:83: void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachine_destructor_t destructor)
                            513 ;	-----------------------------------------
                            514 ;	 function deallocateStateMachineMemory
                            515 ;	-----------------------------------------
   2A75                     516 _deallocateStateMachineMemory:
   2A75 AA F0               517 	mov	r2,b
   2A77 AB 83               518 	mov	r3,dph
   2A79 E5 82               519 	mov	a,dpl
   2A7B 90 09 F1            520 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   2A7E F0                  521 	movx	@dptr,a
   2A7F A3                  522 	inc	dptr
   2A80 EB                  523 	mov	a,r3
   2A81 F0                  524 	movx	@dptr,a
   2A82 A3                  525 	inc	dptr
   2A83 EA                  526 	mov	a,r2
   2A84 F0                  527 	movx	@dptr,a
                            528 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:85: if(instance != 0)
   2A85 90 09 F1            529 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   2A88 E0                  530 	movx	a,@dptr
   2A89 FA                  531 	mov	r2,a
   2A8A A3                  532 	inc	dptr
   2A8B E0                  533 	movx	a,@dptr
   2A8C FB                  534 	mov	r3,a
   2A8D A3                  535 	inc	dptr
   2A8E E0                  536 	movx	a,@dptr
   2A8F FC                  537 	mov	r4,a
   2A90 EA                  538 	mov	a,r2
   2A91 4B                  539 	orl	a,r3
   2A92 4C                  540 	orl	a,r4
   2A93 60 2D               541 	jz	00103$
                            542 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:87: destructor(instance) ;
   2A95 74 AE               543 	mov	a,#00107$
   2A97 C0 E0               544 	push	acc
   2A99 74 2A               545 	mov	a,#(00107$ >> 8)
   2A9B C0 E0               546 	push	acc
   2A9D 90 09 EF            547 	mov	dptr,#_deallocateStateMachineMemory_PARM_2
   2AA0 E0                  548 	movx	a,@dptr
   2AA1 C0 E0               549 	push	acc
   2AA3 A3                  550 	inc	dptr
   2AA4 E0                  551 	movx	a,@dptr
   2AA5 C0 E0               552 	push	acc
   2AA7 8A 82               553 	mov	dpl,r2
   2AA9 8B 83               554 	mov	dph,r3
   2AAB 8C F0               555 	mov	b,r4
   2AAD 22                  556 	ret
   2AAE                     557 00107$:
                            558 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:89: free((char*)instance) ;
   2AAE 90 09 F1            559 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   2AB1 E0                  560 	movx	a,@dptr
   2AB2 FA                  561 	mov	r2,a
   2AB3 A3                  562 	inc	dptr
   2AB4 E0                  563 	movx	a,@dptr
   2AB5 FB                  564 	mov	r3,a
   2AB6 A3                  565 	inc	dptr
   2AB7 E0                  566 	movx	a,@dptr
   2AB8 FC                  567 	mov	r4,a
   2AB9 8A 82               568 	mov	dpl,r2
   2ABB 8B 83               569 	mov	dph,r3
   2ABD 8C F0               570 	mov	b,r4
   2ABF 02 41 C8            571 	ljmp	_free
   2AC2                     572 00103$:
   2AC2 22                  573 	ret
                            574 ;------------------------------------------------------------
                            575 ;Allocation info for local variables in function 'registerStateMachine'
                            576 ;------------------------------------------------------------
                            577 ;sm                        Allocated with name '_registerStateMachine_sm_1_1'
                            578 ;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
                            579 ;------------------------------------------------------------
                            580 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:94: bool registerStateMachine(			stateMachine_t* sm)
                            581 ;	-----------------------------------------
                            582 ;	 function registerStateMachine
                            583 ;	-----------------------------------------
   2AC3                     584 _registerStateMachine:
   2AC3 AA F0               585 	mov	r2,b
   2AC5 AB 83               586 	mov	r3,dph
   2AC7 E5 82               587 	mov	a,dpl
   2AC9 90 09 F4            588 	mov	dptr,#_registerStateMachine_sm_1_1
   2ACC F0                  589 	movx	@dptr,a
   2ACD A3                  590 	inc	dptr
   2ACE EB                  591 	mov	a,r3
   2ACF F0                  592 	movx	@dptr,a
   2AD0 A3                  593 	inc	dptr
   2AD1 EA                  594 	mov	a,r2
   2AD2 F0                  595 	movx	@dptr,a
                            596 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:96: if(sm)
   2AD3 90 09 F4            597 	mov	dptr,#_registerStateMachine_sm_1_1
   2AD6 E0                  598 	movx	a,@dptr
   2AD7 FA                  599 	mov	r2,a
   2AD8 A3                  600 	inc	dptr
   2AD9 E0                  601 	movx	a,@dptr
   2ADA FB                  602 	mov	r3,a
   2ADB A3                  603 	inc	dptr
   2ADC E0                  604 	movx	a,@dptr
   2ADD FC                  605 	mov	r4,a
   2ADE EA                  606 	mov	a,r2
   2ADF 4B                  607 	orl	a,r3
   2AE0 4C                  608 	orl	a,r4
   2AE1 60 44               609 	jz	00104$
                            610 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2AE3 7A 00               611 	mov	r2,#0x00
   2AE5                     612 00105$:
   2AE5 BA 32 00            613 	cjne	r2,#0x32,00116$
   2AE8                     614 00116$:
   2AE8 50 3D               615 	jnc	00104$
                            616 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:102: if(stateMachines[statetMachineIndex] == NULL)
   2AEA EA                  617 	mov	a,r2
   2AEB 75 F0 03            618 	mov	b,#0x03
   2AEE A4                  619 	mul	ab
   2AEF 24 55               620 	add	a,#_stateMachines
   2AF1 FB                  621 	mov	r3,a
   2AF2 E4                  622 	clr	a
   2AF3 34 09               623 	addc	a,#(_stateMachines >> 8)
   2AF5 FC                  624 	mov	r4,a
   2AF6 8B 82               625 	mov	dpl,r3
   2AF8 8C 83               626 	mov	dph,r4
   2AFA E0                  627 	movx	a,@dptr
   2AFB FD                  628 	mov	r5,a
   2AFC A3                  629 	inc	dptr
   2AFD E0                  630 	movx	a,@dptr
   2AFE FE                  631 	mov	r6,a
   2AFF A3                  632 	inc	dptr
   2B00 E0                  633 	movx	a,@dptr
   2B01 FF                  634 	mov	r7,a
   2B02 BD 00 1F            635 	cjne	r5,#0x00,00107$
   2B05 BE 00 1C            636 	cjne	r6,#0x00,00107$
   2B08 BF 00 19            637 	cjne	r7,#0x00,00107$
                            638 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:104: stateMachines[statetMachineIndex] = sm ;
   2B0B 90 09 F4            639 	mov	dptr,#_registerStateMachine_sm_1_1
   2B0E E0                  640 	movx	a,@dptr
   2B0F FD                  641 	mov	r5,a
   2B10 A3                  642 	inc	dptr
   2B11 E0                  643 	movx	a,@dptr
   2B12 FE                  644 	mov	r6,a
   2B13 A3                  645 	inc	dptr
   2B14 E0                  646 	movx	a,@dptr
   2B15 FF                  647 	mov	r7,a
   2B16 8B 82               648 	mov	dpl,r3
   2B18 8C 83               649 	mov	dph,r4
   2B1A ED                  650 	mov	a,r5
   2B1B F0                  651 	movx	@dptr,a
   2B1C A3                  652 	inc	dptr
   2B1D EE                  653 	mov	a,r6
   2B1E F0                  654 	movx	@dptr,a
   2B1F A3                  655 	inc	dptr
   2B20 EF                  656 	mov	a,r7
   2B21 F0                  657 	movx	@dptr,a
                            658 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:106: return true ;
   2B22 D3                  659 	setb	c
   2B23 22                  660 	ret
   2B24                     661 00107$:
                            662 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2B24 0A                  663 	inc	r2
   2B25 80 BE               664 	sjmp	00105$
   2B27                     665 00104$:
                            666 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:111: return false ;
   2B27 C3                  667 	clr	c
   2B28 22                  668 	ret
                            669 ;------------------------------------------------------------
                            670 ;Allocation info for local variables in function 'unregisterStateMachine'
                            671 ;------------------------------------------------------------
                            672 ;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
                            673 ;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
                            674 ;------------------------------------------------------------
                            675 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:114: bool unregisterStateMachine(		stateMachine_t* sm)
                            676 ;	-----------------------------------------
                            677 ;	 function unregisterStateMachine
                            678 ;	-----------------------------------------
   2B29                     679 _unregisterStateMachine:
   2B29 AA F0               680 	mov	r2,b
   2B2B AB 83               681 	mov	r3,dph
   2B2D E5 82               682 	mov	a,dpl
   2B2F 90 09 F7            683 	mov	dptr,#_unregisterStateMachine_sm_1_1
   2B32 F0                  684 	movx	@dptr,a
   2B33 A3                  685 	inc	dptr
   2B34 EB                  686 	mov	a,r3
   2B35 F0                  687 	movx	@dptr,a
   2B36 A3                  688 	inc	dptr
   2B37 EA                  689 	mov	a,r2
   2B38 F0                  690 	movx	@dptr,a
                            691 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:116: if(sm)
   2B39 90 09 F7            692 	mov	dptr,#_unregisterStateMachine_sm_1_1
   2B3C E0                  693 	movx	a,@dptr
   2B3D FA                  694 	mov	r2,a
   2B3E A3                  695 	inc	dptr
   2B3F E0                  696 	movx	a,@dptr
   2B40 FB                  697 	mov	r3,a
   2B41 A3                  698 	inc	dptr
   2B42 E0                  699 	movx	a,@dptr
   2B43 FC                  700 	mov	r4,a
   2B44 EA                  701 	mov	a,r2
   2B45 4B                  702 	orl	a,r3
   2B46 4C                  703 	orl	a,r4
   2B47 60 44               704 	jz	00104$
                            705 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:120: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2B49 7D 00               706 	mov	r5,#0x00
   2B4B                     707 00105$:
   2B4B BD 32 00            708 	cjne	r5,#0x32,00116$
   2B4E                     709 00116$:
   2B4E 50 3D               710 	jnc	00104$
                            711 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:122: if(stateMachines[statetMachineIndex] == sm)
   2B50 ED                  712 	mov	a,r5
   2B51 75 F0 03            713 	mov	b,#0x03
   2B54 A4                  714 	mul	ab
   2B55 24 55               715 	add	a,#_stateMachines
   2B57 FE                  716 	mov	r6,a
   2B58 E4                  717 	clr	a
   2B59 34 09               718 	addc	a,#(_stateMachines >> 8)
   2B5B FF                  719 	mov	r7,a
   2B5C C0 05               720 	push	ar5
   2B5E 8E 82               721 	mov	dpl,r6
   2B60 8F 83               722 	mov	dph,r7
   2B62 E0                  723 	movx	a,@dptr
   2B63 F8                  724 	mov	r0,a
   2B64 A3                  725 	inc	dptr
   2B65 E0                  726 	movx	a,@dptr
   2B66 F9                  727 	mov	r1,a
   2B67 A3                  728 	inc	dptr
   2B68 E0                  729 	movx	a,@dptr
   2B69 FD                  730 	mov	r5,a
   2B6A E8                  731 	mov	a,r0
   2B6B B5 02 0A            732 	cjne	a,ar2,00118$
   2B6E E9                  733 	mov	a,r1
   2B6F B5 03 06            734 	cjne	a,ar3,00118$
   2B72 ED                  735 	mov	a,r5
   2B73 B5 04 02            736 	cjne	a,ar4,00118$
   2B76 80 04               737 	sjmp	00119$
   2B78                     738 00118$:
   2B78 D0 05               739 	pop	ar5
   2B7A 80 0E               740 	sjmp	00107$
   2B7C                     741 00119$:
   2B7C D0 05               742 	pop	ar5
                            743 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:124: stateMachines[statetMachineIndex] = NULL ;
   2B7E 8E 82               744 	mov	dpl,r6
   2B80 8F 83               745 	mov	dph,r7
   2B82 E4                  746 	clr	a
   2B83 F0                  747 	movx	@dptr,a
   2B84 A3                  748 	inc	dptr
   2B85 F0                  749 	movx	@dptr,a
   2B86 A3                  750 	inc	dptr
   2B87 F0                  751 	movx	@dptr,a
                            752 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:126: return true ;
   2B88 D3                  753 	setb	c
   2B89 22                  754 	ret
   2B8A                     755 00107$:
                            756 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:120: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2B8A 0D                  757 	inc	r5
   2B8B 80 BE               758 	sjmp	00105$
   2B8D                     759 00104$:
                            760 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:131: return false ;
   2B8D C3                  761 	clr	c
   2B8E 22                  762 	ret
                            763 ;------------------------------------------------------------
                            764 ;Allocation info for local variables in function 'iterateAllStateMachines'
                            765 ;------------------------------------------------------------
                            766 ;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
                            767 ;------------------------------------------------------------
                            768 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:135: void iterateAllStateMachines(	void)
                            769 ;	-----------------------------------------
                            770 ;	 function iterateAllStateMachines
                            771 ;	-----------------------------------------
   2B8F                     772 _iterateAllStateMachines:
                            773 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2B8F 7A 00               774 	mov	r2,#0x00
   2B91                     775 00103$:
   2B91 BA 32 00            776 	cjne	r2,#0x32,00113$
   2B94                     777 00113$:
   2B94 50 31               778 	jnc	00107$
                            779 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:141: if(stateMachines[statetMachineIndex] != NULL)
   2B96 EA                  780 	mov	a,r2
   2B97 75 F0 03            781 	mov	b,#0x03
   2B9A A4                  782 	mul	ab
   2B9B 24 55               783 	add	a,#_stateMachines
   2B9D F5 82               784 	mov	dpl,a
   2B9F E4                  785 	clr	a
   2BA0 34 09               786 	addc	a,#(_stateMachines >> 8)
   2BA2 F5 83               787 	mov	dph,a
   2BA4 E0                  788 	movx	a,@dptr
   2BA5 FB                  789 	mov	r3,a
   2BA6 A3                  790 	inc	dptr
   2BA7 E0                  791 	movx	a,@dptr
   2BA8 FC                  792 	mov	r4,a
   2BA9 A3                  793 	inc	dptr
   2BAA E0                  794 	movx	a,@dptr
   2BAB FD                  795 	mov	r5,a
   2BAC BB 00 08            796 	cjne	r3,#0x00,00115$
   2BAF BC 00 05            797 	cjne	r4,#0x00,00115$
   2BB2 BD 00 02            798 	cjne	r5,#0x00,00115$
   2BB5 80 0D               799 	sjmp	00105$
   2BB7                     800 00115$:
                            801 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:143: iterateStateMachine(stateMachines[statetMachineIndex]) ;
   2BB7 8B 82               802 	mov	dpl,r3
   2BB9 8C 83               803 	mov	dph,r4
   2BBB 8D F0               804 	mov	b,r5
   2BBD C0 02               805 	push	ar2
   2BBF 12 2F C7            806 	lcall	_iterateStateMachine
   2BC2 D0 02               807 	pop	ar2
   2BC4                     808 00105$:
                            809 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2BC4 0A                  810 	inc	r2
   2BC5 80 CA               811 	sjmp	00103$
   2BC7                     812 00107$:
   2BC7 22                  813 	ret
                            814 ;------------------------------------------------------------
                            815 ;Allocation info for local variables in function 'callStateHandler'
                            816 ;------------------------------------------------------------
                            817 ;sloc0                     Allocated with name '_callStateHandler_sloc0_1_0'
                            818 ;sloc1                     Allocated with name '_callStateHandler_sloc1_1_0'
                            819 ;sloc2                     Allocated with name '_callStateHandler_sloc2_1_0'
                            820 ;state                     Allocated with name '_callStateHandler_PARM_2'
                            821 ;event                     Allocated with name '_callStateHandler_PARM_3'
                            822 ;sm                        Allocated with name '_callStateHandler_sm_1_1'
                            823 ;response                  Allocated with name '_callStateHandler_response_1_1'
                            824 ;------------------------------------------------------------
                            825 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:158: stateMachine_stateResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
                            826 ;	-----------------------------------------
                            827 ;	 function callStateHandler
                            828 ;	-----------------------------------------
   2BC8                     829 _callStateHandler:
   2BC8 AA F0               830 	mov	r2,b
   2BCA AB 83               831 	mov	r3,dph
   2BCC E5 82               832 	mov	a,dpl
   2BCE 90 0A 00            833 	mov	dptr,#_callStateHandler_sm_1_1
   2BD1 F0                  834 	movx	@dptr,a
   2BD2 A3                  835 	inc	dptr
   2BD3 EB                  836 	mov	a,r3
   2BD4 F0                  837 	movx	@dptr,a
   2BD5 A3                  838 	inc	dptr
   2BD6 EA                  839 	mov	a,r2
   2BD7 F0                  840 	movx	@dptr,a
                            841 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:163: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
   2BD8 90 09 FD            842 	mov	dptr,#_callStateHandler_PARM_3
   2BDB E0                  843 	movx	a,@dptr
   2BDC FA                  844 	mov	r2,a
   2BDD A3                  845 	inc	dptr
   2BDE E0                  846 	movx	a,@dptr
   2BDF FB                  847 	mov	r3,a
   2BE0 A3                  848 	inc	dptr
   2BE1 E0                  849 	movx	a,@dptr
   2BE2 FC                  850 	mov	r4,a
   2BE3 8A 82               851 	mov	dpl,r2
   2BE5 8B 83               852 	mov	dph,r3
   2BE7 8C F0               853 	mov	b,r4
   2BE9 12 4E 6E            854 	lcall	__gptrget
   2BEC FD                  855 	mov	r5,a
   2BED C3                  856 	clr	c
   2BEE 74 05               857 	mov	a,#0x05
   2BF0 9D                  858 	subb	a,r5
   2BF1 B3                  859 	cpl	c
   2BF2 E4                  860 	clr	a
   2BF3 33                  861 	rlc	a
   2BF4 FE                  862 	mov	r6,a
   2BF5 60 18               863 	jz	00117$
   2BF7 ED                  864 	mov	a,r5
   2BF8 75 F0 03            865 	mov	b,#0x03
   2BFB A4                  866 	mul	ab
   2BFC 24 EF               867 	add	a,#_eventTypes
   2BFE F5 82               868 	mov	dpl,a
   2C00 E4                  869 	clr	a
   2C01 34 0E               870 	addc	a,#(_eventTypes >> 8)
   2C03 F5 83               871 	mov	dph,a
   2C05 E0                  872 	movx	a,@dptr
   2C06 FD                  873 	mov	r5,a
   2C07 A3                  874 	inc	dptr
   2C08 E0                  875 	movx	a,@dptr
   2C09 FE                  876 	mov	r6,a
   2C0A A3                  877 	inc	dptr
   2C0B E0                  878 	movx	a,@dptr
   2C0C FF                  879 	mov	r7,a
   2C0D 80 06               880 	sjmp	00118$
   2C0F                     881 00117$:
   2C0F 7D 82               882 	mov	r5,#__str_1
   2C11 7E 52               883 	mov	r6,#(__str_1 >> 8)
   2C13 7F 80               884 	mov	r7,#0x80
   2C15                     885 00118$:
   2C15 C0 02               886 	push	ar2
   2C17 C0 03               887 	push	ar3
   2C19 C0 04               888 	push	ar4
   2C1B 90 09 FA            889 	mov	dptr,#_callStateHandler_PARM_2
   2C1E E0                  890 	movx	a,@dptr
   2C1F F5 41               891 	mov	_callStateHandler_sloc0_1_0,a
   2C21 A3                  892 	inc	dptr
   2C22 E0                  893 	movx	a,@dptr
   2C23 F5 42               894 	mov	(_callStateHandler_sloc0_1_0 + 1),a
   2C25 A3                  895 	inc	dptr
   2C26 E0                  896 	movx	a,@dptr
   2C27 F5 43               897 	mov	(_callStateHandler_sloc0_1_0 + 2),a
   2C29 74 06               898 	mov	a,#0x06
   2C2B 25 41               899 	add	a,_callStateHandler_sloc0_1_0
   2C2D F8                  900 	mov	r0,a
   2C2E E4                  901 	clr	a
   2C2F 35 42               902 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2C31 F9                  903 	mov	r1,a
   2C32 AA 43               904 	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
   2C34 88 82               905 	mov	dpl,r0
   2C36 89 83               906 	mov	dph,r1
   2C38 8A F0               907 	mov	b,r2
   2C3A 12 4E 6E            908 	lcall	__gptrget
   2C3D F8                  909 	mov	r0,a
   2C3E A3                  910 	inc	dptr
   2C3F 12 4E 6E            911 	lcall	__gptrget
   2C42 F9                  912 	mov	r1,a
   2C43 A3                  913 	inc	dptr
   2C44 12 4E 6E            914 	lcall	__gptrget
   2C47 FA                  915 	mov	r2,a
   2C48 C0 02               916 	push	ar2
   2C4A C0 03               917 	push	ar3
   2C4C C0 04               918 	push	ar4
   2C4E C0 05               919 	push	ar5
   2C50 C0 06               920 	push	ar6
   2C52 C0 07               921 	push	ar7
   2C54 C0 00               922 	push	ar0
   2C56 C0 01               923 	push	ar1
   2C58 C0 02               924 	push	ar2
   2C5A 74 60               925 	mov	a,#__str_0
   2C5C C0 E0               926 	push	acc
   2C5E 74 52               927 	mov	a,#(__str_0 >> 8)
   2C60 C0 E0               928 	push	acc
   2C62 74 80               929 	mov	a,#0x80
   2C64 C0 E0               930 	push	acc
   2C66 12 46 22            931 	lcall	_printf
   2C69 E5 81               932 	mov	a,sp
   2C6B 24 F7               933 	add	a,#0xf7
   2C6D F5 81               934 	mov	sp,a
   2C6F D0 04               935 	pop	ar4
   2C71 D0 03               936 	pop	ar3
   2C73 D0 02               937 	pop	ar2
                            938 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:166: if(state->type == CHOICE_PSUEDOSTATE)
   2C75 74 03               939 	mov	a,#0x03
   2C77 25 41               940 	add	a,_callStateHandler_sloc0_1_0
   2C79 FA                  941 	mov	r2,a
   2C7A E4                  942 	clr	a
   2C7B 35 42               943 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2C7D FB                  944 	mov	r3,a
   2C7E AC 43               945 	mov	r4,(_callStateHandler_sloc0_1_0 + 2)
   2C80 8A 82               946 	mov	dpl,r2
   2C82 8B 83               947 	mov	dph,r3
   2C84 8C F0               948 	mov	b,r4
   2C86 12 4E 6E            949 	lcall	__gptrget
   2C89 F5 44               950 	mov	_callStateHandler_sloc1_1_0,a
   2C8B 74 01               951 	mov	a,#0x01
   2C8D B5 44 02            952 	cjne	a,_callStateHandler_sloc1_1_0,00128$
   2C90 80 08               953 	sjmp	00129$
   2C92                     954 00128$:
   2C92 D0 04               955 	pop	ar4
   2C94 D0 03               956 	pop	ar3
   2C96 D0 02               957 	pop	ar2
   2C98 80 4C               958 	sjmp	00111$
   2C9A                     959 00129$:
   2C9A D0 04               960 	pop	ar4
   2C9C D0 03               961 	pop	ar3
   2C9E D0 02               962 	pop	ar2
                            963 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:168: response = ((stateMachine_choiceStateHandler_t)(state->handler))(sm) ;
   2CA0 74 04               964 	mov	a,#0x04
   2CA2 25 41               965 	add	a,_callStateHandler_sloc0_1_0
   2CA4 FD                  966 	mov	r5,a
   2CA5 E4                  967 	clr	a
   2CA6 35 42               968 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2CA8 FE                  969 	mov	r6,a
   2CA9 AF 43               970 	mov	r7,(_callStateHandler_sloc0_1_0 + 2)
   2CAB 8D 82               971 	mov	dpl,r5
   2CAD 8E 83               972 	mov	dph,r6
   2CAF 8F F0               973 	mov	b,r7
   2CB1 12 4E 6E            974 	lcall	__gptrget
   2CB4 FD                  975 	mov	r5,a
   2CB5 A3                  976 	inc	dptr
   2CB6 12 4E 6E            977 	lcall	__gptrget
   2CB9 FE                  978 	mov	r6,a
   2CBA 90 0A 00            979 	mov	dptr,#_callStateHandler_sm_1_1
   2CBD E0                  980 	movx	a,@dptr
   2CBE FF                  981 	mov	r7,a
   2CBF A3                  982 	inc	dptr
   2CC0 E0                  983 	movx	a,@dptr
   2CC1 F8                  984 	mov	r0,a
   2CC2 A3                  985 	inc	dptr
   2CC3 E0                  986 	movx	a,@dptr
   2CC4 F9                  987 	mov	r1,a
   2CC5 C0 06               988 	push	ar6
   2CC7 74 DA               989 	mov	a,#00130$
   2CC9 C0 E0               990 	push	acc
   2CCB 74 2C               991 	mov	a,#(00130$ >> 8)
   2CCD C0 E0               992 	push	acc
   2CCF C0 05               993 	push	ar5
   2CD1 C0 06               994 	push	ar6
   2CD3 8F 82               995 	mov	dpl,r7
   2CD5 88 83               996 	mov	dph,r0
   2CD7 89 F0               997 	mov	b,r1
   2CD9 22                  998 	ret
   2CDA                     999 00130$:
   2CDA AD 82              1000 	mov	r5,dpl
   2CDC D0 06              1001 	pop	ar6
   2CDE 90 0A 03           1002 	mov	dptr,#_callStateHandler_response_1_1
   2CE1 ED                 1003 	mov	a,r5
   2CE2 F0                 1004 	movx	@dptr,a
   2CE3 02 2F 13           1005 	ljmp	00112$
   2CE6                    1006 00111$:
                           1007 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:172: if(event == &enterEvent)
   2CE6 EA                 1008 	mov	a,r2
   2CE7 B4 10 31           1009 	cjne	a,#_enterEvent,00102$
   2CEA EB                 1010 	mov	a,r3
   2CEB B4 0F 2D           1011 	cjne	a,#(_enterEvent >> 8),00102$
   2CEE EC                 1012 	mov	a,r4
   2CEF B4 00 29           1013 	cjne	a,#0x00,00102$
                           1014 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:174: sm->mostRecentlyEnteredState = state ;
   2CF2 90 0A 00           1015 	mov	dptr,#_callStateHandler_sm_1_1
   2CF5 E0                 1016 	movx	a,@dptr
   2CF6 FD                 1017 	mov	r5,a
   2CF7 A3                 1018 	inc	dptr
   2CF8 E0                 1019 	movx	a,@dptr
   2CF9 FE                 1020 	mov	r6,a
   2CFA A3                 1021 	inc	dptr
   2CFB E0                 1022 	movx	a,@dptr
   2CFC FF                 1023 	mov	r7,a
   2CFD 74 25              1024 	mov	a,#0x25
   2CFF 2D                 1025 	add	a,r5
   2D00 FD                 1026 	mov	r5,a
   2D01 E4                 1027 	clr	a
   2D02 3E                 1028 	addc	a,r6
   2D03 FE                 1029 	mov	r6,a
   2D04 8D 82              1030 	mov	dpl,r5
   2D06 8E 83              1031 	mov	dph,r6
   2D08 8F F0              1032 	mov	b,r7
   2D0A E5 41              1033 	mov	a,_callStateHandler_sloc0_1_0
   2D0C 12 42 42           1034 	lcall	__gptrput
   2D0F A3                 1035 	inc	dptr
   2D10 E5 42              1036 	mov	a,(_callStateHandler_sloc0_1_0 + 1)
   2D12 12 42 42           1037 	lcall	__gptrput
   2D15 A3                 1038 	inc	dptr
   2D16 E5 43              1039 	mov	a,(_callStateHandler_sloc0_1_0 + 2)
   2D18 12 42 42           1040 	lcall	__gptrput
   2D1B                    1041 00102$:
                           1042 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:176: if(event == &exitEvent)
   2D1B EA                 1043 	mov	a,r2
   2D1C B4 11 0A           1044 	cjne	a,#_exitEvent,00133$
   2D1F EB                 1045 	mov	a,r3
   2D20 B4 0F 06           1046 	cjne	a,#(_exitEvent >> 8),00133$
   2D23 EC                 1047 	mov	a,r4
   2D24 B4 00 02           1048 	cjne	a,#0x00,00133$
   2D27 80 03              1049 	sjmp	00134$
   2D29                    1050 00133$:
   2D29 02 2E C4           1051 	ljmp	00109$
   2D2C                    1052 00134$:
                           1053 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:178: if(state->type == STATE_WITH_SHALLOW_HISTORY)
   2D2C 74 02              1054 	mov	a,#0x02
   2D2E B5 44 02           1055 	cjne	a,_callStateHandler_sloc1_1_0,00135$
   2D31 80 03              1056 	sjmp	00136$
   2D33                    1057 00135$:
   2D33 02 2D E5           1058 	ljmp	00106$
   2D36                    1059 00136$:
                           1060 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:182: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyExitedState ;
   2D36 C0 02              1061 	push	ar2
   2D38 C0 03              1062 	push	ar3
   2D3A C0 04              1063 	push	ar4
   2D3C 90 0A 00           1064 	mov	dptr,#_callStateHandler_sm_1_1
   2D3F E0                 1065 	movx	a,@dptr
   2D40 FD                 1066 	mov	r5,a
   2D41 A3                 1067 	inc	dptr
   2D42 E0                 1068 	movx	a,@dptr
   2D43 FE                 1069 	mov	r6,a
   2D44 A3                 1070 	inc	dptr
   2D45 E0                 1071 	movx	a,@dptr
   2D46 FF                 1072 	mov	r7,a
   2D47 74 22              1073 	mov	a,#0x22
   2D49 2D                 1074 	add	a,r5
   2D4A F8                 1075 	mov	r0,a
   2D4B E4                 1076 	clr	a
   2D4C 3E                 1077 	addc	a,r6
   2D4D F9                 1078 	mov	r1,a
   2D4E 8F 02              1079 	mov	ar2,r7
   2D50 88 82              1080 	mov	dpl,r0
   2D52 89 83              1081 	mov	dph,r1
   2D54 8A F0              1082 	mov	b,r2
   2D56 12 4E 6E           1083 	lcall	__gptrget
   2D59 F5 45              1084 	mov	_callStateHandler_sloc2_1_0,a
   2D5B A3                 1085 	inc	dptr
   2D5C 12 4E 6E           1086 	lcall	__gptrget
   2D5F F5 46              1087 	mov	(_callStateHandler_sloc2_1_0 + 1),a
   2D61 A3                 1088 	inc	dptr
   2D62 12 4E 6E           1089 	lcall	__gptrget
   2D65 F5 47              1090 	mov	(_callStateHandler_sloc2_1_0 + 2),a
   2D67 74 09              1091 	mov	a,#0x09
   2D69 25 41              1092 	add	a,_callStateHandler_sloc0_1_0
   2D6B FB                 1093 	mov	r3,a
   2D6C E4                 1094 	clr	a
   2D6D 35 42              1095 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2D6F FC                 1096 	mov	r4,a
   2D70 AA 43              1097 	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
   2D72 8B 82              1098 	mov	dpl,r3
   2D74 8C 83              1099 	mov	dph,r4
   2D76 8A F0              1100 	mov	b,r2
   2D78 12 4E 6E           1101 	lcall	__gptrget
   2D7B FB                 1102 	mov	r3,a
   2D7C A3                 1103 	inc	dptr
   2D7D 12 4E 6E           1104 	lcall	__gptrget
   2D80 FC                 1105 	mov	r4,a
   2D81 90 0A AE           1106 	mov	dptr,#__mulint_PARM_2
   2D84 EB                 1107 	mov	a,r3
   2D85 F0                 1108 	movx	@dptr,a
   2D86 A3                 1109 	inc	dptr
   2D87 EC                 1110 	mov	a,r4
   2D88 F0                 1111 	movx	@dptr,a
   2D89 90 00 03           1112 	mov	dptr,#0x0003
   2D8C C0 04              1113 	push	ar4
   2D8E C0 05              1114 	push	ar5
   2D90 C0 06              1115 	push	ar6
   2D92 C0 07              1116 	push	ar7
   2D94 12 44 23           1117 	lcall	__mulint
   2D97 AA 82              1118 	mov	r2,dpl
   2D99 AB 83              1119 	mov	r3,dph
   2D9B D0 07              1120 	pop	ar7
   2D9D D0 06              1121 	pop	ar6
   2D9F D0 05              1122 	pop	ar5
   2DA1 D0 04              1123 	pop	ar4
   2DA3 EA                 1124 	mov	a,r2
   2DA4 25 45              1125 	add	a,_callStateHandler_sloc2_1_0
   2DA6 FA                 1126 	mov	r2,a
   2DA7 EB                 1127 	mov	a,r3
   2DA8 35 46              1128 	addc	a,(_callStateHandler_sloc2_1_0 + 1)
   2DAA FB                 1129 	mov	r3,a
   2DAB AC 47              1130 	mov	r4,(_callStateHandler_sloc2_1_0 + 2)
   2DAD 74 28              1131 	mov	a,#0x28
   2DAF 2D                 1132 	add	a,r5
   2DB0 FD                 1133 	mov	r5,a
   2DB1 E4                 1134 	clr	a
   2DB2 3E                 1135 	addc	a,r6
   2DB3 FE                 1136 	mov	r6,a
   2DB4 8D 82              1137 	mov	dpl,r5
   2DB6 8E 83              1138 	mov	dph,r6
   2DB8 8F F0              1139 	mov	b,r7
   2DBA 12 4E 6E           1140 	lcall	__gptrget
   2DBD FD                 1141 	mov	r5,a
   2DBE A3                 1142 	inc	dptr
   2DBF 12 4E 6E           1143 	lcall	__gptrget
   2DC2 FE                 1144 	mov	r6,a
   2DC3 A3                 1145 	inc	dptr
   2DC4 12 4E 6E           1146 	lcall	__gptrget
   2DC7 FF                 1147 	mov	r7,a
   2DC8 8A 82              1148 	mov	dpl,r2
   2DCA 8B 83              1149 	mov	dph,r3
   2DCC 8C F0              1150 	mov	b,r4
   2DCE ED                 1151 	mov	a,r5
   2DCF 12 42 42           1152 	lcall	__gptrput
   2DD2 A3                 1153 	inc	dptr
   2DD3 EE                 1154 	mov	a,r6
   2DD4 12 42 42           1155 	lcall	__gptrput
   2DD7 A3                 1156 	inc	dptr
   2DD8 EF                 1157 	mov	a,r7
   2DD9 12 42 42           1158 	lcall	__gptrput
   2DDC D0 04              1159 	pop	ar4
   2DDE D0 03              1160 	pop	ar3
   2DE0 D0 02              1161 	pop	ar2
   2DE2 02 2E 9B           1162 	ljmp	00107$
   2DE5                    1163 00106$:
                           1164 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:184: else if(state->type == STATE_WITH_DEEP_HISTORY)
   2DE5 74 03              1165 	mov	a,#0x03
   2DE7 B5 44 02           1166 	cjne	a,_callStateHandler_sloc1_1_0,00137$
   2DEA 80 03              1167 	sjmp	00138$
   2DEC                    1168 00137$:
   2DEC 02 2E 9B           1169 	ljmp	00107$
   2DEF                    1170 00138$:
                           1171 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:188: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
   2DEF C0 02              1172 	push	ar2
   2DF1 C0 03              1173 	push	ar3
   2DF3 C0 04              1174 	push	ar4
   2DF5 90 0A 00           1175 	mov	dptr,#_callStateHandler_sm_1_1
   2DF8 E0                 1176 	movx	a,@dptr
   2DF9 FD                 1177 	mov	r5,a
   2DFA A3                 1178 	inc	dptr
   2DFB E0                 1179 	movx	a,@dptr
   2DFC FE                 1180 	mov	r6,a
   2DFD A3                 1181 	inc	dptr
   2DFE E0                 1182 	movx	a,@dptr
   2DFF FF                 1183 	mov	r7,a
   2E00 74 22              1184 	mov	a,#0x22
   2E02 2D                 1185 	add	a,r5
   2E03 F8                 1186 	mov	r0,a
   2E04 E4                 1187 	clr	a
   2E05 3E                 1188 	addc	a,r6
   2E06 F9                 1189 	mov	r1,a
   2E07 8F 02              1190 	mov	ar2,r7
   2E09 88 82              1191 	mov	dpl,r0
   2E0B 89 83              1192 	mov	dph,r1
   2E0D 8A F0              1193 	mov	b,r2
   2E0F 12 4E 6E           1194 	lcall	__gptrget
   2E12 F5 45              1195 	mov	_callStateHandler_sloc2_1_0,a
   2E14 A3                 1196 	inc	dptr
   2E15 12 4E 6E           1197 	lcall	__gptrget
   2E18 F5 46              1198 	mov	(_callStateHandler_sloc2_1_0 + 1),a
   2E1A A3                 1199 	inc	dptr
   2E1B 12 4E 6E           1200 	lcall	__gptrget
   2E1E F5 47              1201 	mov	(_callStateHandler_sloc2_1_0 + 2),a
   2E20 74 09              1202 	mov	a,#0x09
   2E22 25 41              1203 	add	a,_callStateHandler_sloc0_1_0
   2E24 FB                 1204 	mov	r3,a
   2E25 E4                 1205 	clr	a
   2E26 35 42              1206 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2E28 FC                 1207 	mov	r4,a
   2E29 AA 43              1208 	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
   2E2B 8B 82              1209 	mov	dpl,r3
   2E2D 8C 83              1210 	mov	dph,r4
   2E2F 8A F0              1211 	mov	b,r2
   2E31 12 4E 6E           1212 	lcall	__gptrget
   2E34 FB                 1213 	mov	r3,a
   2E35 A3                 1214 	inc	dptr
   2E36 12 4E 6E           1215 	lcall	__gptrget
   2E39 FC                 1216 	mov	r4,a
   2E3A 90 0A AE           1217 	mov	dptr,#__mulint_PARM_2
   2E3D EB                 1218 	mov	a,r3
   2E3E F0                 1219 	movx	@dptr,a
   2E3F A3                 1220 	inc	dptr
   2E40 EC                 1221 	mov	a,r4
   2E41 F0                 1222 	movx	@dptr,a
   2E42 90 00 03           1223 	mov	dptr,#0x0003
   2E45 C0 04              1224 	push	ar4
   2E47 C0 05              1225 	push	ar5
   2E49 C0 06              1226 	push	ar6
   2E4B C0 07              1227 	push	ar7
   2E4D 12 44 23           1228 	lcall	__mulint
   2E50 AA 82              1229 	mov	r2,dpl
   2E52 AB 83              1230 	mov	r3,dph
   2E54 D0 07              1231 	pop	ar7
   2E56 D0 06              1232 	pop	ar6
   2E58 D0 05              1233 	pop	ar5
   2E5A D0 04              1234 	pop	ar4
   2E5C EA                 1235 	mov	a,r2
   2E5D 25 45              1236 	add	a,_callStateHandler_sloc2_1_0
   2E5F FA                 1237 	mov	r2,a
   2E60 EB                 1238 	mov	a,r3
   2E61 35 46              1239 	addc	a,(_callStateHandler_sloc2_1_0 + 1)
   2E63 FB                 1240 	mov	r3,a
   2E64 AC 47              1241 	mov	r4,(_callStateHandler_sloc2_1_0 + 2)
   2E66 74 25              1242 	mov	a,#0x25
   2E68 2D                 1243 	add	a,r5
   2E69 FD                 1244 	mov	r5,a
   2E6A E4                 1245 	clr	a
   2E6B 3E                 1246 	addc	a,r6
   2E6C FE                 1247 	mov	r6,a
   2E6D 8D 82              1248 	mov	dpl,r5
   2E6F 8E 83              1249 	mov	dph,r6
   2E71 8F F0              1250 	mov	b,r7
   2E73 12 4E 6E           1251 	lcall	__gptrget
   2E76 FD                 1252 	mov	r5,a
   2E77 A3                 1253 	inc	dptr
   2E78 12 4E 6E           1254 	lcall	__gptrget
   2E7B FE                 1255 	mov	r6,a
   2E7C A3                 1256 	inc	dptr
   2E7D 12 4E 6E           1257 	lcall	__gptrget
   2E80 FF                 1258 	mov	r7,a
   2E81 8A 82              1259 	mov	dpl,r2
   2E83 8B 83              1260 	mov	dph,r3
   2E85 8C F0              1261 	mov	b,r4
   2E87 ED                 1262 	mov	a,r5
   2E88 12 42 42           1263 	lcall	__gptrput
   2E8B A3                 1264 	inc	dptr
   2E8C EE                 1265 	mov	a,r6
   2E8D 12 42 42           1266 	lcall	__gptrput
   2E90 A3                 1267 	inc	dptr
   2E91 EF                 1268 	mov	a,r7
   2E92 12 42 42           1269 	lcall	__gptrput
                           1270 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:212: return response ;
   2E95 D0 04              1271 	pop	ar4
   2E97 D0 03              1272 	pop	ar3
   2E99 D0 02              1273 	pop	ar2
                           1274 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:188: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
   2E9B                    1275 00107$:
                           1276 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:191: sm->mostRecentlyExitedState = (void*)state ;
   2E9B 90 0A 00           1277 	mov	dptr,#_callStateHandler_sm_1_1
   2E9E E0                 1278 	movx	a,@dptr
   2E9F FD                 1279 	mov	r5,a
   2EA0 A3                 1280 	inc	dptr
   2EA1 E0                 1281 	movx	a,@dptr
   2EA2 FE                 1282 	mov	r6,a
   2EA3 A3                 1283 	inc	dptr
   2EA4 E0                 1284 	movx	a,@dptr
   2EA5 FF                 1285 	mov	r7,a
   2EA6 74 28              1286 	mov	a,#0x28
   2EA8 2D                 1287 	add	a,r5
   2EA9 FD                 1288 	mov	r5,a
   2EAA E4                 1289 	clr	a
   2EAB 3E                 1290 	addc	a,r6
   2EAC FE                 1291 	mov	r6,a
   2EAD 8D 82              1292 	mov	dpl,r5
   2EAF 8E 83              1293 	mov	dph,r6
   2EB1 8F F0              1294 	mov	b,r7
   2EB3 E5 41              1295 	mov	a,_callStateHandler_sloc0_1_0
   2EB5 12 42 42           1296 	lcall	__gptrput
   2EB8 A3                 1297 	inc	dptr
   2EB9 E5 42              1298 	mov	a,(_callStateHandler_sloc0_1_0 + 1)
   2EBB 12 42 42           1299 	lcall	__gptrput
   2EBE A3                 1300 	inc	dptr
   2EBF E5 43              1301 	mov	a,(_callStateHandler_sloc0_1_0 + 2)
   2EC1 12 42 42           1302 	lcall	__gptrput
   2EC4                    1303 00109$:
                           1304 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:194: response = ((stateMachine_callStateHandler_t)(state->handler))(sm, event) ;
   2EC4 74 04              1305 	mov	a,#0x04
   2EC6 25 41              1306 	add	a,_callStateHandler_sloc0_1_0
   2EC8 FD                 1307 	mov	r5,a
   2EC9 E4                 1308 	clr	a
   2ECA 35 42              1309 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2ECC FE                 1310 	mov	r6,a
   2ECD AF 43              1311 	mov	r7,(_callStateHandler_sloc0_1_0 + 2)
   2ECF 8D 82              1312 	mov	dpl,r5
   2ED1 8E 83              1313 	mov	dph,r6
   2ED3 8F F0              1314 	mov	b,r7
   2ED5 12 4E 6E           1315 	lcall	__gptrget
   2ED8 FD                 1316 	mov	r5,a
   2ED9 A3                 1317 	inc	dptr
   2EDA 12 4E 6E           1318 	lcall	__gptrget
   2EDD FE                 1319 	mov	r6,a
   2EDE 90 0A 00           1320 	mov	dptr,#_callStateHandler_sm_1_1
   2EE1 E0                 1321 	movx	a,@dptr
   2EE2 FF                 1322 	mov	r7,a
   2EE3 A3                 1323 	inc	dptr
   2EE4 E0                 1324 	movx	a,@dptr
   2EE5 F8                 1325 	mov	r0,a
   2EE6 A3                 1326 	inc	dptr
   2EE7 E0                 1327 	movx	a,@dptr
   2EE8 F9                 1328 	mov	r1,a
   2EE9 C0 06              1329 	push	ar6
   2EEB C0 02              1330 	push	ar2
   2EED C0 03              1331 	push	ar3
   2EEF C0 04              1332 	push	ar4
   2EF1 74 04              1333 	mov	a,#00139$
   2EF3 C0 E0              1334 	push	acc
   2EF5 74 2F              1335 	mov	a,#(00139$ >> 8)
   2EF7 C0 E0              1336 	push	acc
   2EF9 C0 05              1337 	push	ar5
   2EFB C0 06              1338 	push	ar6
   2EFD 8F 82              1339 	mov	dpl,r7
   2EFF 88 83              1340 	mov	dph,r0
   2F01 89 F0              1341 	mov	b,r1
   2F03 22                 1342 	ret
   2F04                    1343 00139$:
   2F04 AD 82              1344 	mov	r5,dpl
   2F06 15 81              1345 	dec	sp
   2F08 15 81              1346 	dec	sp
   2F0A 15 81              1347 	dec	sp
   2F0C D0 06              1348 	pop	ar6
   2F0E 90 0A 03           1349 	mov	dptr,#_callStateHandler_response_1_1
   2F11 ED                 1350 	mov	a,r5
   2F12 F0                 1351 	movx	@dptr,a
   2F13                    1352 00112$:
                           1353 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:198: printf("response: %s ", responseTypes[response]) ;
   2F13 90 0A 03           1354 	mov	dptr,#_callStateHandler_response_1_1
   2F16 E0                 1355 	movx	a,@dptr
   2F17 FA                 1356 	mov	r2,a
   2F18 75 F0 03           1357 	mov	b,#0x03
   2F1B A4                 1358 	mul	ab
   2F1C 24 01              1359 	add	a,#_responseTypes
   2F1E F5 82              1360 	mov	dpl,a
   2F20 E4                 1361 	clr	a
   2F21 34 0F              1362 	addc	a,#(_responseTypes >> 8)
   2F23 F5 83              1363 	mov	dph,a
   2F25 E0                 1364 	movx	a,@dptr
   2F26 FB                 1365 	mov	r3,a
   2F27 A3                 1366 	inc	dptr
   2F28 E0                 1367 	movx	a,@dptr
   2F29 FC                 1368 	mov	r4,a
   2F2A A3                 1369 	inc	dptr
   2F2B E0                 1370 	movx	a,@dptr
   2F2C FD                 1371 	mov	r5,a
   2F2D C0 02              1372 	push	ar2
   2F2F C0 03              1373 	push	ar3
   2F31 C0 04              1374 	push	ar4
   2F33 C0 05              1375 	push	ar5
   2F35 74 8F              1376 	mov	a,#__str_2
   2F37 C0 E0              1377 	push	acc
   2F39 74 52              1378 	mov	a,#(__str_2 >> 8)
   2F3B C0 E0              1379 	push	acc
   2F3D 74 80              1380 	mov	a,#0x80
   2F3F C0 E0              1381 	push	acc
   2F41 12 46 22           1382 	lcall	_printf
   2F44 E5 81              1383 	mov	a,sp
   2F46 24 FA              1384 	add	a,#0xfa
   2F48 F5 81              1385 	mov	sp,a
   2F4A D0 02              1386 	pop	ar2
                           1387 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:201: if(response == TRANSITION)
   2F4C BA 02 5C           1388 	cjne	r2,#0x02,00114$
                           1389 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:204: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
   2F4F 90 0A 00           1390 	mov	dptr,#_callStateHandler_sm_1_1
   2F52 E0                 1391 	movx	a,@dptr
   2F53 FA                 1392 	mov	r2,a
   2F54 A3                 1393 	inc	dptr
   2F55 E0                 1394 	movx	a,@dptr
   2F56 FB                 1395 	mov	r3,a
   2F57 A3                 1396 	inc	dptr
   2F58 E0                 1397 	movx	a,@dptr
   2F59 FC                 1398 	mov	r4,a
   2F5A 74 08              1399 	mov	a,#0x08
   2F5C 2A                 1400 	add	a,r2
   2F5D FA                 1401 	mov	r2,a
   2F5E E4                 1402 	clr	a
   2F5F 3B                 1403 	addc	a,r3
   2F60 FB                 1404 	mov	r3,a
   2F61 8A 82              1405 	mov	dpl,r2
   2F63 8B 83              1406 	mov	dph,r3
   2F65 8C F0              1407 	mov	b,r4
   2F67 12 4E 6E           1408 	lcall	__gptrget
   2F6A FA                 1409 	mov	r2,a
   2F6B A3                 1410 	inc	dptr
   2F6C 12 4E 6E           1411 	lcall	__gptrget
   2F6F FB                 1412 	mov	r3,a
   2F70 A3                 1413 	inc	dptr
   2F71 12 4E 6E           1414 	lcall	__gptrget
   2F74 FC                 1415 	mov	r4,a
   2F75 74 06              1416 	mov	a,#0x06
   2F77 2A                 1417 	add	a,r2
   2F78 FA                 1418 	mov	r2,a
   2F79 E4                 1419 	clr	a
   2F7A 3B                 1420 	addc	a,r3
   2F7B FB                 1421 	mov	r3,a
   2F7C 8A 82              1422 	mov	dpl,r2
   2F7E 8B 83              1423 	mov	dph,r3
   2F80 8C F0              1424 	mov	b,r4
   2F82 12 4E 6E           1425 	lcall	__gptrget
   2F85 FA                 1426 	mov	r2,a
   2F86 A3                 1427 	inc	dptr
   2F87 12 4E 6E           1428 	lcall	__gptrget
   2F8A FB                 1429 	mov	r3,a
   2F8B A3                 1430 	inc	dptr
   2F8C 12 4E 6E           1431 	lcall	__gptrget
   2F8F FC                 1432 	mov	r4,a
   2F90 C0 02              1433 	push	ar2
   2F92 C0 03              1434 	push	ar3
   2F94 C0 04              1435 	push	ar4
   2F96 74 9D              1436 	mov	a,#__str_3
   2F98 C0 E0              1437 	push	acc
   2F9A 74 52              1438 	mov	a,#(__str_3 >> 8)
   2F9C C0 E0              1439 	push	acc
   2F9E 74 80              1440 	mov	a,#0x80
   2FA0 C0 E0              1441 	push	acc
   2FA2 12 46 22           1442 	lcall	_printf
   2FA5 E5 81              1443 	mov	a,sp
   2FA7 24 FA              1444 	add	a,#0xfa
   2FA9 F5 81              1445 	mov	sp,a
   2FAB                    1446 00114$:
                           1447 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:209: printf("\n") ;
   2FAB 74 A4              1448 	mov	a,#__str_4
   2FAD C0 E0              1449 	push	acc
   2FAF 74 52              1450 	mov	a,#(__str_4 >> 8)
   2FB1 C0 E0              1451 	push	acc
   2FB3 74 80              1452 	mov	a,#0x80
   2FB5 C0 E0              1453 	push	acc
   2FB7 12 46 22           1454 	lcall	_printf
   2FBA 15 81              1455 	dec	sp
   2FBC 15 81              1456 	dec	sp
   2FBE 15 81              1457 	dec	sp
                           1458 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:212: return response ;
   2FC0 90 0A 03           1459 	mov	dptr,#_callStateHandler_response_1_1
   2FC3 E0                 1460 	movx	a,@dptr
   2FC4 F5 82              1461 	mov	dpl,a
   2FC6 22                 1462 	ret
                           1463 ;------------------------------------------------------------
                           1464 ;Allocation info for local variables in function 'iterateStateMachine'
                           1465 ;------------------------------------------------------------
                           1466 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                           1467 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                           1468 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                           1469 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                           1470 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                           1471 ;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
                           1472 ;sloc6                     Allocated with name '_iterateStateMachine_sloc6_1_0'
                           1473 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                           1474 ;action                    Allocated with name '_iterateStateMachine_action_1_1'
                           1475 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                           1476 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                           1477 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                           1478 ;nextState                 Allocated with name '_iterateStateMachine_nextState_4_11'
                           1479 ;source                    Allocated with name '_iterateStateMachine_source_3_14'
                           1480 ;target                    Allocated with name '_iterateStateMachine_target_3_14'
                           1481 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_19'
                           1482 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_19'
                           1483 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_19'
                           1484 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_19'
                           1485 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_19'
                           1486 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_19'
                           1487 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_19'
                           1488 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_21'
                           1489 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_27'
                           1490 ;------------------------------------------------------------
                           1491 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:216: void iterateStateMachine(	stateMachine_t* sm)
                           1492 ;	-----------------------------------------
                           1493 ;	 function iterateStateMachine
                           1494 ;	-----------------------------------------
   2FC7                    1495 _iterateStateMachine:
   2FC7 AA F0              1496 	mov	r2,b
   2FC9 AB 83              1497 	mov	r3,dph
   2FCB E5 82              1498 	mov	a,dpl
   2FCD 90 0A 04           1499 	mov	dptr,#_iterateStateMachine_sm_1_1
   2FD0 F0                 1500 	movx	@dptr,a
   2FD1 A3                 1501 	inc	dptr
   2FD2 EB                 1502 	mov	a,r3
   2FD3 F0                 1503 	movx	@dptr,a
   2FD4 A3                 1504 	inc	dptr
   2FD5 EA                 1505 	mov	a,r2
   2FD6 F0                 1506 	movx	@dptr,a
                           1507 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:221: printf("\titerating %s\n", sm->stateMachineName) ;
   2FD7 90 0A 04           1508 	mov	dptr,#_iterateStateMachine_sm_1_1
   2FDA E0                 1509 	movx	a,@dptr
   2FDB FA                 1510 	mov	r2,a
   2FDC A3                 1511 	inc	dptr
   2FDD E0                 1512 	movx	a,@dptr
   2FDE FB                 1513 	mov	r3,a
   2FDF A3                 1514 	inc	dptr
   2FE0 E0                 1515 	movx	a,@dptr
   2FE1 FC                 1516 	mov	r4,a
   2FE2 74 02              1517 	mov	a,#0x02
   2FE4 2A                 1518 	add	a,r2
   2FE5 FD                 1519 	mov	r5,a
   2FE6 E4                 1520 	clr	a
   2FE7 3B                 1521 	addc	a,r3
   2FE8 FE                 1522 	mov	r6,a
   2FE9 8C 07              1523 	mov	ar7,r4
   2FEB 8D 82              1524 	mov	dpl,r5
   2FED 8E 83              1525 	mov	dph,r6
   2FEF 8F F0              1526 	mov	b,r7
   2FF1 12 4E 6E           1527 	lcall	__gptrget
   2FF4 FD                 1528 	mov	r5,a
   2FF5 A3                 1529 	inc	dptr
   2FF6 12 4E 6E           1530 	lcall	__gptrget
   2FF9 FE                 1531 	mov	r6,a
   2FFA A3                 1532 	inc	dptr
   2FFB 12 4E 6E           1533 	lcall	__gptrget
   2FFE FF                 1534 	mov	r7,a
   2FFF C0 02              1535 	push	ar2
   3001 C0 03              1536 	push	ar3
   3003 C0 04              1537 	push	ar4
   3005 C0 05              1538 	push	ar5
   3007 C0 06              1539 	push	ar6
   3009 C0 07              1540 	push	ar7
   300B 74 A6              1541 	mov	a,#__str_5
   300D C0 E0              1542 	push	acc
   300F 74 52              1543 	mov	a,#(__str_5 >> 8)
   3011 C0 E0              1544 	push	acc
   3013 74 80              1545 	mov	a,#0x80
   3015 C0 E0              1546 	push	acc
   3017 12 46 22           1547 	lcall	_printf
   301A E5 81              1548 	mov	a,sp
   301C 24 FA              1549 	add	a,#0xfa
   301E F5 81              1550 	mov	sp,a
   3020 D0 04              1551 	pop	ar4
   3022 D0 03              1552 	pop	ar3
   3024 D0 02              1553 	pop	ar2
                           1554 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:228: if(!sm->stateMachineInitialized)
   3026 74 1E              1555 	mov	a,#0x1E
   3028 2A                 1556 	add	a,r2
   3029 FD                 1557 	mov	r5,a
   302A E4                 1558 	clr	a
   302B 3B                 1559 	addc	a,r3
   302C FE                 1560 	mov	r6,a
   302D 8C 07              1561 	mov	ar7,r4
   302F 8D 82              1562 	mov	dpl,r5
   3031 8E 83              1563 	mov	dph,r6
   3033 8F F0              1564 	mov	b,r7
   3035 12 4E 6E           1565 	lcall	__gptrget
   3038 60 03              1566 	jz	00214$
   303A 02 30 E3           1567 	ljmp	00102$
   303D                    1568 00214$:
                           1569 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: printf("\t\tinitializing...\n") ;
   303D C0 02              1570 	push	ar2
   303F C0 03              1571 	push	ar3
   3041 C0 04              1572 	push	ar4
   3043 74 B5              1573 	mov	a,#__str_6
   3045 C0 E0              1574 	push	acc
   3047 74 52              1575 	mov	a,#(__str_6 >> 8)
   3049 C0 E0              1576 	push	acc
   304B 74 80              1577 	mov	a,#0x80
   304D C0 E0              1578 	push	acc
   304F 12 46 22           1579 	lcall	_printf
   3052 15 81              1580 	dec	sp
   3054 15 81              1581 	dec	sp
   3056 15 81              1582 	dec	sp
   3058 D0 04              1583 	pop	ar4
   305A D0 03              1584 	pop	ar3
   305C D0 02              1585 	pop	ar2
                           1586 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:234: sm->currentState = (state_t*)sm->topState ;
   305E 74 05              1587 	mov	a,#0x05
   3060 2A                 1588 	add	a,r2
   3061 F5 48              1589 	mov	_iterateStateMachine_sloc0_1_0,a
   3063 E4                 1590 	clr	a
   3064 3B                 1591 	addc	a,r3
   3065 F5 49              1592 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   3067 8C 4A              1593 	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
   3069 8A 82              1594 	mov	dpl,r2
   306B 8B 83              1595 	mov	dph,r3
   306D 8C F0              1596 	mov	b,r4
   306F 12 4E 6E           1597 	lcall	__gptrget
   3072 F8                 1598 	mov	r0,a
   3073 A3                 1599 	inc	dptr
   3074 12 4E 6E           1600 	lcall	__gptrget
   3077 F9                 1601 	mov	r1,a
   3078 7D 80              1602 	mov	r5,#0x80
   307A 85 48 82           1603 	mov	dpl,_iterateStateMachine_sloc0_1_0
   307D 85 49 83           1604 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   3080 85 4A F0           1605 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   3083 E8                 1606 	mov	a,r0
   3084 12 42 42           1607 	lcall	__gptrput
   3087 A3                 1608 	inc	dptr
   3088 E9                 1609 	mov	a,r1
   3089 12 42 42           1610 	lcall	__gptrput
   308C A3                 1611 	inc	dptr
   308D ED                 1612 	mov	a,r5
   308E 12 42 42           1613 	lcall	__gptrput
                           1614 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: callStateHandler(sm, sm->currentState, &enterEvent) ;
   3091 90 09 FA           1615 	mov	dptr,#_callStateHandler_PARM_2
   3094 E8                 1616 	mov	a,r0
   3095 F0                 1617 	movx	@dptr,a
   3096 A3                 1618 	inc	dptr
   3097 E9                 1619 	mov	a,r1
   3098 F0                 1620 	movx	@dptr,a
   3099 A3                 1621 	inc	dptr
   309A ED                 1622 	mov	a,r5
   309B F0                 1623 	movx	@dptr,a
   309C 90 09 FD           1624 	mov	dptr,#_callStateHandler_PARM_3
   309F 74 10              1625 	mov	a,#_enterEvent
   30A1 F0                 1626 	movx	@dptr,a
   30A2 A3                 1627 	inc	dptr
   30A3 74 0F              1628 	mov	a,#(_enterEvent >> 8)
   30A5 F0                 1629 	movx	@dptr,a
   30A6 A3                 1630 	inc	dptr
   30A7 E4                 1631 	clr	a
   30A8 F0                 1632 	movx	@dptr,a
   30A9 8A 82              1633 	mov	dpl,r2
   30AB 8B 83              1634 	mov	dph,r3
   30AD 8C F0              1635 	mov	b,r4
   30AF 12 2B C8           1636 	lcall	_callStateHandler
                           1637 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:238: sm->stateMachineInitialized	= true ;
   30B2 90 0A 04           1638 	mov	dptr,#_iterateStateMachine_sm_1_1
   30B5 E0                 1639 	movx	a,@dptr
   30B6 FA                 1640 	mov	r2,a
   30B7 A3                 1641 	inc	dptr
   30B8 E0                 1642 	movx	a,@dptr
   30B9 FB                 1643 	mov	r3,a
   30BA A3                 1644 	inc	dptr
   30BB E0                 1645 	movx	a,@dptr
   30BC FC                 1646 	mov	r4,a
   30BD 74 1E              1647 	mov	a,#0x1E
   30BF 2A                 1648 	add	a,r2
   30C0 FD                 1649 	mov	r5,a
   30C1 E4                 1650 	clr	a
   30C2 3B                 1651 	addc	a,r3
   30C3 FE                 1652 	mov	r6,a
   30C4 8C 07              1653 	mov	ar7,r4
   30C6 8D 82              1654 	mov	dpl,r5
   30C8 8E 83              1655 	mov	dph,r6
   30CA 8F F0              1656 	mov	b,r7
   30CC 74 01              1657 	mov	a,#0x01
   30CE 12 42 42           1658 	lcall	__gptrput
                           1659 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:239: sm->forceTransition			= true ;
   30D1 74 1F              1660 	mov	a,#0x1F
   30D3 2A                 1661 	add	a,r2
   30D4 FA                 1662 	mov	r2,a
   30D5 E4                 1663 	clr	a
   30D6 3B                 1664 	addc	a,r3
   30D7 FB                 1665 	mov	r3,a
   30D8 8A 82              1666 	mov	dpl,r2
   30DA 8B 83              1667 	mov	dph,r3
   30DC 8C F0              1668 	mov	b,r4
   30DE 74 01              1669 	mov	a,#0x01
   30E0 12 42 42           1670 	lcall	__gptrput
   30E3                    1671 00102$:
                           1672 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:244: if((!eventQueue_isEmpty(&sm->eventQueue)) || (sm->forceTransition))
   30E3 90 0A 04           1673 	mov	dptr,#_iterateStateMachine_sm_1_1
   30E6 E0                 1674 	movx	a,@dptr
   30E7 FA                 1675 	mov	r2,a
   30E8 A3                 1676 	inc	dptr
   30E9 E0                 1677 	movx	a,@dptr
   30EA FB                 1678 	mov	r3,a
   30EB A3                 1679 	inc	dptr
   30EC E0                 1680 	movx	a,@dptr
   30ED FC                 1681 	mov	r4,a
   30EE 74 0B              1682 	mov	a,#0x0B
   30F0 2A                 1683 	add	a,r2
   30F1 FD                 1684 	mov	r5,a
   30F2 E4                 1685 	clr	a
   30F3 3B                 1686 	addc	a,r3
   30F4 FE                 1687 	mov	r6,a
   30F5 8C 07              1688 	mov	ar7,r4
   30F7 8D 82              1689 	mov	dpl,r5
   30F9 8E 83              1690 	mov	dph,r6
   30FB 8F F0              1691 	mov	b,r7
   30FD C0 02              1692 	push	ar2
   30FF C0 03              1693 	push	ar3
   3101 C0 04              1694 	push	ar4
   3103 12 20 F7           1695 	lcall	_eventQueue_isEmpty
   3106 E5 82              1696 	mov	a,dpl
   3108 D0 04              1697 	pop	ar4
   310A D0 03              1698 	pop	ar3
   310C D0 02              1699 	pop	ar2
   310E 60 17              1700 	jz	00168$
   3110 74 1F              1701 	mov	a,#0x1F
   3112 2A                 1702 	add	a,r2
   3113 FD                 1703 	mov	r5,a
   3114 E4                 1704 	clr	a
   3115 3B                 1705 	addc	a,r3
   3116 FE                 1706 	mov	r6,a
   3117 8C 07              1707 	mov	ar7,r4
   3119 8D 82              1708 	mov	dpl,r5
   311B 8E 83              1709 	mov	dph,r6
   311D 8F F0              1710 	mov	b,r7
   311F 12 4E 6E           1711 	lcall	__gptrget
   3122 70 03              1712 	jnz	00216$
   3124 02 3E E9           1713 	ljmp	00169$
   3127                    1714 00216$:
   3127                    1715 00168$:
                           1716 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:247: state_t*						stateBeingProcessed	= sm->currentState ;
   3127 90 0A 04           1717 	mov	dptr,#_iterateStateMachine_sm_1_1
   312A E0                 1718 	movx	a,@dptr
   312B F5 48              1719 	mov	_iterateStateMachine_sloc0_1_0,a
   312D A3                 1720 	inc	dptr
   312E E0                 1721 	movx	a,@dptr
   312F F5 49              1722 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   3131 A3                 1723 	inc	dptr
   3132 E0                 1724 	movx	a,@dptr
   3133 F5 4A              1725 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   3135 74 05              1726 	mov	a,#0x05
   3137 25 48              1727 	add	a,_iterateStateMachine_sloc0_1_0
   3139 F5 4B              1728 	mov	_iterateStateMachine_sloc1_1_0,a
   313B E4                 1729 	clr	a
   313C 35 49              1730 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   313E F5 4C              1731 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   3140 85 4A 4D           1732 	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
   3143 85 4B 82           1733 	mov	dpl,_iterateStateMachine_sloc1_1_0
   3146 85 4C 83           1734 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   3149 85 4D F0           1735 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   314C 12 4E 6E           1736 	lcall	__gptrget
   314F F5 4B              1737 	mov	_iterateStateMachine_sloc1_1_0,a
   3151 A3                 1738 	inc	dptr
   3152 12 4E 6E           1739 	lcall	__gptrget
   3155 F5 4C              1740 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   3157 A3                 1741 	inc	dptr
   3158 12 4E 6E           1742 	lcall	__gptrget
   315B F5 4D              1743 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   315D 90 0A 0A           1744 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3160 E5 4B              1745 	mov	a,_iterateStateMachine_sloc1_1_0
   3162 F0                 1746 	movx	@dptr,a
   3163 A3                 1747 	inc	dptr
   3164 E5 4C              1748 	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
   3166 F0                 1749 	movx	@dptr,a
   3167 A3                 1750 	inc	dptr
   3168 E5 4D              1751 	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
   316A F0                 1752 	movx	@dptr,a
                           1753 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:250: if(sm->forceTransition)
   316B 74 1F              1754 	mov	a,#0x1F
   316D 25 48              1755 	add	a,_iterateStateMachine_sloc0_1_0
   316F F5 4B              1756 	mov	_iterateStateMachine_sloc1_1_0,a
   3171 E4                 1757 	clr	a
   3172 35 49              1758 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3174 F5 4C              1759 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   3176 85 4A 4D           1760 	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
   3179 85 4B 82           1761 	mov	dpl,_iterateStateMachine_sloc1_1_0
   317C 85 4C 83           1762 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   317F 85 4D F0           1763 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   3182 12 4E 6E           1764 	lcall	__gptrget
   3185 60 1C              1765 	jz	00104$
                           1766 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:252: sm->forceTransition	= false ;
   3187 85 4B 82           1767 	mov	dpl,_iterateStateMachine_sloc1_1_0
   318A 85 4C 83           1768 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   318D 85 4D F0           1769 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   3190 E4                 1770 	clr	a
   3191 12 42 42           1771 	lcall	__gptrput
                           1772 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:253: eventToProcess		= &initialTransitionEvent ;
   3194 90 0A 07           1773 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   3197 74 0D              1774 	mov	a,#_initialTransitionEvent
   3199 F0                 1775 	movx	@dptr,a
   319A A3                 1776 	inc	dptr
   319B 74 0F              1777 	mov	a,#(_initialTransitionEvent >> 8)
   319D F0                 1778 	movx	@dptr,a
   319E A3                 1779 	inc	dptr
   319F E4                 1780 	clr	a
   31A0 F0                 1781 	movx	@dptr,a
   31A1 80 31              1782 	sjmp	00105$
   31A3                    1783 00104$:
                           1784 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:257: eventToProcess = eventQueue_remove(&sm->eventQueue) ; ;
   31A3 74 0B              1785 	mov	a,#0x0B
   31A5 25 48              1786 	add	a,_iterateStateMachine_sloc0_1_0
   31A7 F5 4B              1787 	mov	_iterateStateMachine_sloc1_1_0,a
   31A9 E4                 1788 	clr	a
   31AA 35 49              1789 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   31AC F5 4C              1790 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   31AE 85 4A 4D           1791 	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
   31B1 85 4B 82           1792 	mov	dpl,_iterateStateMachine_sloc1_1_0
   31B4 85 4C 83           1793 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   31B7 85 4D F0           1794 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   31BA 12 23 05           1795 	lcall	_eventQueue_remove
   31BD 85 82 4B           1796 	mov	_iterateStateMachine_sloc1_1_0,dpl
   31C0 85 83 4C           1797 	mov	(_iterateStateMachine_sloc1_1_0 + 1),dph
   31C3 85 F0 4D           1798 	mov	(_iterateStateMachine_sloc1_1_0 + 2),b
   31C6 90 0A 07           1799 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   31C9 E5 4B              1800 	mov	a,_iterateStateMachine_sloc1_1_0
   31CB F0                 1801 	movx	@dptr,a
   31CC A3                 1802 	inc	dptr
   31CD E5 4C              1803 	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
   31CF F0                 1804 	movx	@dptr,a
   31D0 A3                 1805 	inc	dptr
   31D1 E5 4D              1806 	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
   31D3 F0                 1807 	movx	@dptr,a
   31D4                    1808 00105$:
                           1809 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:260: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
   31D4 90 0A 04           1810 	mov	dptr,#_iterateStateMachine_sm_1_1
   31D7 E0                 1811 	movx	a,@dptr
   31D8 F5 4B              1812 	mov	_iterateStateMachine_sloc1_1_0,a
   31DA A3                 1813 	inc	dptr
   31DB E0                 1814 	movx	a,@dptr
   31DC F5 4C              1815 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   31DE A3                 1816 	inc	dptr
   31DF E0                 1817 	movx	a,@dptr
   31E0 F5 4D              1818 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   31E2 74 08              1819 	mov	a,#0x08
   31E4 25 4B              1820 	add	a,_iterateStateMachine_sloc1_1_0
   31E6 F5 4B              1821 	mov	_iterateStateMachine_sloc1_1_0,a
   31E8 E4                 1822 	clr	a
   31E9 35 4C              1823 	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
   31EB F5 4C              1824 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   31ED 85 4B 82           1825 	mov	dpl,_iterateStateMachine_sloc1_1_0
   31F0 85 4C 83           1826 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   31F3 85 4D F0           1827 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   31F6 E4                 1828 	clr	a
   31F7 12 42 42           1829 	lcall	__gptrput
   31FA A3                 1830 	inc	dptr
   31FB E4                 1831 	clr	a
   31FC 12 42 42           1832 	lcall	__gptrput
   31FF A3                 1833 	inc	dptr
   3200 E4                 1834 	clr	a
   3201 12 42 42           1835 	lcall	__gptrput
                           1836 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:263: printf("\t\tProcessing event...\n") ;
   3204 74 C8              1837 	mov	a,#__str_7
   3206 C0 E0              1838 	push	acc
   3208 74 52              1839 	mov	a,#(__str_7 >> 8)
   320A C0 E0              1840 	push	acc
   320C 74 80              1841 	mov	a,#0x80
   320E C0 E0              1842 	push	acc
   3210 12 46 22           1843 	lcall	_printf
   3213 15 81              1844 	dec	sp
   3215 15 81              1845 	dec	sp
   3217 15 81              1846 	dec	sp
                           1847 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:273: do
   3219 90 0A 07           1848 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   321C E0                 1849 	movx	a,@dptr
   321D F5 4B              1850 	mov	_iterateStateMachine_sloc1_1_0,a
   321F A3                 1851 	inc	dptr
   3220 E0                 1852 	movx	a,@dptr
   3221 F5 4C              1853 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   3223 A3                 1854 	inc	dptr
   3224 E0                 1855 	movx	a,@dptr
   3225 F5 4D              1856 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   3227                    1857 00110$:
                           1858 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:275: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
   3227 90 0A 04           1859 	mov	dptr,#_iterateStateMachine_sm_1_1
   322A E0                 1860 	movx	a,@dptr
   322B F5 48              1861 	mov	_iterateStateMachine_sloc0_1_0,a
   322D A3                 1862 	inc	dptr
   322E E0                 1863 	movx	a,@dptr
   322F F5 49              1864 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   3231 A3                 1865 	inc	dptr
   3232 E0                 1866 	movx	a,@dptr
   3233 F5 4A              1867 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   3235 90 0A 0A           1868 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3238 E0                 1869 	movx	a,@dptr
   3239 F5 4E              1870 	mov	_iterateStateMachine_sloc2_1_0,a
   323B A3                 1871 	inc	dptr
   323C E0                 1872 	movx	a,@dptr
   323D F5 4F              1873 	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
   323F A3                 1874 	inc	dptr
   3240 E0                 1875 	movx	a,@dptr
   3241 F5 50              1876 	mov	(_iterateStateMachine_sloc2_1_0 + 2),a
   3243 90 0A 07           1877 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   3246 E0                 1878 	movx	a,@dptr
   3247 F5 51              1879 	mov	_iterateStateMachine_sloc3_1_0,a
   3249 A3                 1880 	inc	dptr
   324A E0                 1881 	movx	a,@dptr
   324B F5 52              1882 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   324D A3                 1883 	inc	dptr
   324E E0                 1884 	movx	a,@dptr
   324F F5 53              1885 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   3251 90 09 FA           1886 	mov	dptr,#_callStateHandler_PARM_2
   3254 E5 4E              1887 	mov	a,_iterateStateMachine_sloc2_1_0
   3256 F0                 1888 	movx	@dptr,a
   3257 A3                 1889 	inc	dptr
   3258 E5 4F              1890 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   325A F0                 1891 	movx	@dptr,a
   325B A3                 1892 	inc	dptr
   325C E5 50              1893 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   325E F0                 1894 	movx	@dptr,a
   325F 90 09 FD           1895 	mov	dptr,#_callStateHandler_PARM_3
   3262 E5 51              1896 	mov	a,_iterateStateMachine_sloc3_1_0
   3264 F0                 1897 	movx	@dptr,a
   3265 A3                 1898 	inc	dptr
   3266 E5 52              1899 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3268 F0                 1900 	movx	@dptr,a
   3269 A3                 1901 	inc	dptr
   326A E5 53              1902 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   326C F0                 1903 	movx	@dptr,a
   326D 85 48 82           1904 	mov	dpl,_iterateStateMachine_sloc0_1_0
   3270 85 49 83           1905 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   3273 85 4A F0           1906 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   3276 12 2B C8           1907 	lcall	_callStateHandler
   3279 A8 82              1908 	mov	r0,dpl
   327B 90 0A 0D           1909 	mov	dptr,#_iterateStateMachine_action_2_3
   327E E8                 1910 	mov	a,r0
   327F F0                 1911 	movx	@dptr,a
                           1912 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:277: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
   3280 E8                 1913 	mov	a,r0
   3281 60 03              1914 	jz	00218$
   3283 02 33 4A           1915 	ljmp	00186$
   3286                    1916 00218$:
   3286 85 4B 82           1917 	mov	dpl,_iterateStateMachine_sloc1_1_0
   3289 85 4C 83           1918 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   328C 85 4D F0           1919 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   328F 12 4E 6E           1920 	lcall	__gptrget
   3292 F8                 1921 	mov  r0,a
   3293 24 FA              1922 	add	a,#0xff - 0x05
   3295 40 03              1923 	jc	00219$
   3297 02 33 4A           1924 	ljmp	00186$
   329A                    1925 00219$:
                           1926 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:279: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   329A 90 0A 0A           1927 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   329D E0                 1928 	movx	a,@dptr
   329E F5 51              1929 	mov	_iterateStateMachine_sloc3_1_0,a
   32A0 A3                 1930 	inc	dptr
   32A1 E0                 1931 	movx	a,@dptr
   32A2 F5 52              1932 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   32A4 A3                 1933 	inc	dptr
   32A5 E0                 1934 	movx	a,@dptr
   32A6 F5 53              1935 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   32A8 85 51 82           1936 	mov	dpl,_iterateStateMachine_sloc3_1_0
   32AB 85 52 83           1937 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   32AE 85 53 F0           1938 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   32B1 12 4E 6E           1939 	lcall	__gptrget
   32B4 F5 51              1940 	mov	_iterateStateMachine_sloc3_1_0,a
   32B6 A3                 1941 	inc	dptr
   32B7 12 4E 6E           1942 	lcall	__gptrget
   32BA F5 52              1943 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   32BC A3                 1944 	inc	dptr
   32BD 12 4E 6E           1945 	lcall	__gptrget
   32C0 F5 53              1946 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   32C2 90 0A 0A           1947 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   32C5 E5 51              1948 	mov	a,_iterateStateMachine_sloc3_1_0
   32C7 F0                 1949 	movx	@dptr,a
   32C8 A3                 1950 	inc	dptr
   32C9 E5 52              1951 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   32CB F0                 1952 	movx	@dptr,a
   32CC A3                 1953 	inc	dptr
   32CD E5 53              1954 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   32CF F0                 1955 	movx	@dptr,a
                           1956 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:282: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
   32D0 90 0A 0A           1957 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   32D3 E0                 1958 	movx	a,@dptr
   32D4 F5 51              1959 	mov	_iterateStateMachine_sloc3_1_0,a
   32D6 A3                 1960 	inc	dptr
   32D7 E0                 1961 	movx	a,@dptr
   32D8 F5 52              1962 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   32DA A3                 1963 	inc	dptr
   32DB E0                 1964 	movx	a,@dptr
   32DC F5 53              1965 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   32DE E5 51              1966 	mov	a,_iterateStateMachine_sloc3_1_0
   32E0 45 52              1967 	orl	a,(_iterateStateMachine_sloc3_1_0 + 1)
   32E2 45 53              1968 	orl	a,(_iterateStateMachine_sloc3_1_0 + 2)
   32E4 60 27              1969 	jz	00174$
   32E6 74 06              1970 	mov	a,#0x06
   32E8 25 51              1971 	add	a,_iterateStateMachine_sloc3_1_0
   32EA F5 51              1972 	mov	_iterateStateMachine_sloc3_1_0,a
   32EC E4                 1973 	clr	a
   32ED 35 52              1974 	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
   32EF F5 52              1975 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   32F1 85 51 82           1976 	mov	dpl,_iterateStateMachine_sloc3_1_0
   32F4 85 52 83           1977 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   32F7 85 53 F0           1978 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   32FA 12 4E 6E           1979 	lcall	__gptrget
   32FD F5 51              1980 	mov	_iterateStateMachine_sloc3_1_0,a
   32FF A3                 1981 	inc	dptr
   3300 12 4E 6E           1982 	lcall	__gptrget
   3303 F5 52              1983 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   3305 A3                 1984 	inc	dptr
   3306 12 4E 6E           1985 	lcall	__gptrget
   3309 F5 53              1986 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   330B 80 09              1987 	sjmp	00175$
   330D                    1988 00174$:
   330D 75 51 FC           1989 	mov	_iterateStateMachine_sloc3_1_0,#__str_9
   3310 75 52 52           1990 	mov	(_iterateStateMachine_sloc3_1_0 + 1),#(__str_9 >> 8)
   3313 75 53 80           1991 	mov	(_iterateStateMachine_sloc3_1_0 + 2),#0x80
   3316                    1992 00175$:
   3316 C0 51              1993 	push	_iterateStateMachine_sloc3_1_0
   3318 C0 52              1994 	push	(_iterateStateMachine_sloc3_1_0 + 1)
   331A C0 53              1995 	push	(_iterateStateMachine_sloc3_1_0 + 2)
   331C 74 DF              1996 	mov	a,#__str_8
   331E C0 E0              1997 	push	acc
   3320 74 52              1998 	mov	a,#(__str_8 >> 8)
   3322 C0 E0              1999 	push	acc
   3324 74 80              2000 	mov	a,#0x80
   3326 C0 E0              2001 	push	acc
   3328 12 46 22           2002 	lcall	_printf
   332B E5 81              2003 	mov	a,sp
   332D 24 FA              2004 	add	a,#0xfa
   332F F5 81              2005 	mov	sp,a
                           2006 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:292: } while(stateBeingProcessed) ;
   3331 90 0A 0A           2007 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3334 E0                 2008 	movx	a,@dptr
   3335 F5 51              2009 	mov	_iterateStateMachine_sloc3_1_0,a
   3337 A3                 2010 	inc	dptr
   3338 E0                 2011 	movx	a,@dptr
   3339 F5 52              2012 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   333B A3                 2013 	inc	dptr
   333C E0                 2014 	movx	a,@dptr
   333D F5 53              2015 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   333F E5 51              2016 	mov	a,_iterateStateMachine_sloc3_1_0
   3341 45 52              2017 	orl	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3343 45 53              2018 	orl	a,(_iterateStateMachine_sloc3_1_0 + 2)
   3345 60 03              2019 	jz	00221$
   3347 02 32 27           2020 	ljmp	00110$
   334A                    2021 00221$:
                           2022 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:294: while(action == TRANSITION_TO_HISTORY)
   334A                    2023 00186$:
   334A 90 0A 04           2024 	mov	dptr,#_iterateStateMachine_sm_1_1
   334D E0                 2025 	movx	a,@dptr
   334E F5 51              2026 	mov	_iterateStateMachine_sloc3_1_0,a
   3350 A3                 2027 	inc	dptr
   3351 E0                 2028 	movx	a,@dptr
   3352 F5 52              2029 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   3354 A3                 2030 	inc	dptr
   3355 E0                 2031 	movx	a,@dptr
   3356 F5 53              2032 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   3358 74 08              2033 	mov	a,#0x08
   335A 25 51              2034 	add	a,_iterateStateMachine_sloc3_1_0
   335C F5 4E              2035 	mov	_iterateStateMachine_sloc2_1_0,a
   335E E4                 2036 	clr	a
   335F 35 52              2037 	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3361 F5 4F              2038 	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
   3363 85 53 50           2039 	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc3_1_0 + 2)
   3366 85 51 4B           2040 	mov	_iterateStateMachine_sloc1_1_0,_iterateStateMachine_sloc3_1_0
   3369 85 52 4C           2041 	mov	(_iterateStateMachine_sloc1_1_0 + 1),(_iterateStateMachine_sloc3_1_0 + 1)
   336C 85 53 4D           2042 	mov	(_iterateStateMachine_sloc1_1_0 + 2),(_iterateStateMachine_sloc3_1_0 + 2)
   336F 74 22              2043 	mov	a,#0x22
   3371 25 51              2044 	add	a,_iterateStateMachine_sloc3_1_0
   3373 F5 51              2045 	mov	_iterateStateMachine_sloc3_1_0,a
   3375 E4                 2046 	clr	a
   3376 35 52              2047 	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3378 F5 52              2048 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   337A                    2049 00120$:
   337A 90 0A 0D           2050 	mov	dptr,#_iterateStateMachine_action_2_3
   337D E0                 2051 	movx	a,@dptr
   337E F8                 2052 	mov	r0,a
   337F B8 03 02           2053 	cjne	r0,#0x03,00222$
   3382 80 03              2054 	sjmp	00223$
   3384                    2055 00222$:
   3384 02 34 D2           2056 	ljmp	00122$
   3387                    2057 00223$:
                           2058 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:296: if(		(((state_t*)(sm->nextState))->type != STATE_WITH_SHALLOW_HISTORY)
   3387 85 4E 82           2059 	mov	dpl,_iterateStateMachine_sloc2_1_0
   338A 85 4F 83           2060 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   338D 85 50 F0           2061 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   3390 12 4E 6E           2062 	lcall	__gptrget
   3393 F5 48              2063 	mov	_iterateStateMachine_sloc0_1_0,a
   3395 A3                 2064 	inc	dptr
   3396 12 4E 6E           2065 	lcall	__gptrget
   3399 F5 49              2066 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   339B A3                 2067 	inc	dptr
   339C 12 4E 6E           2068 	lcall	__gptrget
   339F F5 4A              2069 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   33A1 74 03              2070 	mov	a,#0x03
   33A3 25 48              2071 	add	a,_iterateStateMachine_sloc0_1_0
   33A5 F5 48              2072 	mov	_iterateStateMachine_sloc0_1_0,a
   33A7 E4                 2073 	clr	a
   33A8 35 49              2074 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   33AA F5 49              2075 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   33AC 85 48 82           2076 	mov	dpl,_iterateStateMachine_sloc0_1_0
   33AF 85 49 83           2077 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   33B2 85 4A F0           2078 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   33B5 12 4E 6E           2079 	lcall	__gptrget
   33B8 F8                 2080 	mov	r0,a
   33B9 B8 02 02           2081 	cjne	r0,#0x02,00224$
   33BC 80 08              2082 	sjmp	00117$
   33BE                    2083 00224$:
                           2084 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:297: &&	(((state_t*)(sm->nextState))->type != STATE_WITH_DEEP_HISTORY))
   33BE B8 03 02           2085 	cjne	r0,#0x03,00225$
   33C1 80 03              2086 	sjmp	00226$
   33C3                    2087 00225$:
   33C3 02 34 D2           2088 	ljmp	00122$
   33C6                    2089 00226$:
                           2090 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:303: break ;
   33C6                    2091 00117$:
                           2092 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:307: state_t* nextState = sm->historicalMarkers[((state_with_history_t*)(sm->nextState))->historyMarkerIndex] ;
   33C6 85 51 82           2093 	mov	dpl,_iterateStateMachine_sloc3_1_0
   33C9 85 52 83           2094 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   33CC 85 53 F0           2095 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   33CF 12 4E 6E           2096 	lcall	__gptrget
   33D2 F5 48              2097 	mov	_iterateStateMachine_sloc0_1_0,a
   33D4 A3                 2098 	inc	dptr
   33D5 12 4E 6E           2099 	lcall	__gptrget
   33D8 F5 49              2100 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   33DA A3                 2101 	inc	dptr
   33DB 12 4E 6E           2102 	lcall	__gptrget
   33DE F5 4A              2103 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   33E0 74 08              2104 	mov	a,#0x08
   33E2 25 4B              2105 	add	a,_iterateStateMachine_sloc1_1_0
   33E4 F5 54              2106 	mov	_iterateStateMachine_sloc4_1_0,a
   33E6 E4                 2107 	clr	a
   33E7 35 4C              2108 	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
   33E9 F5 55              2109 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   33EB 85 4D 56           2110 	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc1_1_0 + 2)
   33EE 85 54 82           2111 	mov	dpl,_iterateStateMachine_sloc4_1_0
   33F1 85 55 83           2112 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   33F4 85 56 F0           2113 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   33F7 12 4E 6E           2114 	lcall	__gptrget
   33FA F5 57              2115 	mov	_iterateStateMachine_sloc5_1_0,a
   33FC A3                 2116 	inc	dptr
   33FD 12 4E 6E           2117 	lcall	__gptrget
   3400 F5 58              2118 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3402 A3                 2119 	inc	dptr
   3403 12 4E 6E           2120 	lcall	__gptrget
   3406 F5 59              2121 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3408 74 09              2122 	mov	a,#0x09
   340A 25 57              2123 	add	a,_iterateStateMachine_sloc5_1_0
   340C F5 57              2124 	mov	_iterateStateMachine_sloc5_1_0,a
   340E E4                 2125 	clr	a
   340F 35 58              2126 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3411 F5 58              2127 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3413 85 57 82           2128 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3416 85 58 83           2129 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3419 85 59 F0           2130 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   341C 12 4E 6E           2131 	lcall	__gptrget
   341F F8                 2132 	mov	r0,a
   3420 A3                 2133 	inc	dptr
   3421 12 4E 6E           2134 	lcall	__gptrget
   3424 F9                 2135 	mov	r1,a
   3425 90 0A AE           2136 	mov	dptr,#__mulint_PARM_2
   3428 E8                 2137 	mov	a,r0
   3429 F0                 2138 	movx	@dptr,a
   342A A3                 2139 	inc	dptr
   342B E9                 2140 	mov	a,r1
   342C F0                 2141 	movx	@dptr,a
   342D 90 00 03           2142 	mov	dptr,#0x0003
   3430 12 44 23           2143 	lcall	__mulint
   3433 A8 82              2144 	mov	r0,dpl
   3435 A9 83              2145 	mov	r1,dph
   3437 E8                 2146 	mov	a,r0
   3438 25 48              2147 	add	a,_iterateStateMachine_sloc0_1_0
   343A F5 57              2148 	mov	_iterateStateMachine_sloc5_1_0,a
   343C E9                 2149 	mov	a,r1
   343D 35 49              2150 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   343F F5 58              2151 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3441 85 4A 59           2152 	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
   3444 85 57 82           2153 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3447 85 58 83           2154 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   344A 85 59 F0           2155 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   344D 12 4E 6E           2156 	lcall	__gptrget
   3450 F5 57              2157 	mov	_iterateStateMachine_sloc5_1_0,a
   3452 A3                 2158 	inc	dptr
   3453 12 4E 6E           2159 	lcall	__gptrget
   3456 F5 58              2160 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3458 A3                 2161 	inc	dptr
   3459 12 4E 6E           2162 	lcall	__gptrget
   345C F5 59              2163 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
                           2164 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:312: if(nextState != (void*)0)
   345E E4                 2165 	clr	a
   345F B5 57 0A           2166 	cjne	a,_iterateStateMachine_sloc5_1_0,00227$
   3462 E4                 2167 	clr	a
   3463 B5 58 06           2168 	cjne	a,(_iterateStateMachine_sloc5_1_0 + 1),00227$
   3466 E4                 2169 	clr	a
   3467 B5 59 02           2170 	cjne	a,(_iterateStateMachine_sloc5_1_0 + 2),00227$
   346A 80 1C              2171 	sjmp	00114$
   346C                    2172 00227$:
                           2173 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:319: sm->nextState = nextState ;
   346C 85 54 82           2174 	mov	dpl,_iterateStateMachine_sloc4_1_0
   346F 85 55 83           2175 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   3472 85 56 F0           2176 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3475 E5 57              2177 	mov	a,_iterateStateMachine_sloc5_1_0
   3477 12 42 42           2178 	lcall	__gptrput
   347A A3                 2179 	inc	dptr
   347B E5 58              2180 	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
   347D 12 42 42           2181 	lcall	__gptrput
   3480 A3                 2182 	inc	dptr
   3481 E5 59              2183 	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
   3483 12 42 42           2184 	lcall	__gptrput
   3486 80 41              2185 	sjmp	00118$
   3488                    2186 00114$:
                           2187 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:334: action = callStateHandler(sm, (state_t*)(sm->nextState), &jumpToHistoryEvent) ;
   3488 85 54 82           2188 	mov	dpl,_iterateStateMachine_sloc4_1_0
   348B 85 55 83           2189 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   348E 85 56 F0           2190 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3491 12 4E 6E           2191 	lcall	__gptrget
   3494 F5 57              2192 	mov	_iterateStateMachine_sloc5_1_0,a
   3496 A3                 2193 	inc	dptr
   3497 12 4E 6E           2194 	lcall	__gptrget
   349A F5 58              2195 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   349C A3                 2196 	inc	dptr
   349D 12 4E 6E           2197 	lcall	__gptrget
   34A0 F5 59              2198 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   34A2 90 09 FA           2199 	mov	dptr,#_callStateHandler_PARM_2
   34A5 E5 57              2200 	mov	a,_iterateStateMachine_sloc5_1_0
   34A7 F0                 2201 	movx	@dptr,a
   34A8 A3                 2202 	inc	dptr
   34A9 E5 58              2203 	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
   34AB F0                 2204 	movx	@dptr,a
   34AC A3                 2205 	inc	dptr
   34AD E5 59              2206 	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
   34AF F0                 2207 	movx	@dptr,a
   34B0 90 09 FD           2208 	mov	dptr,#_callStateHandler_PARM_3
   34B3 74 0E              2209 	mov	a,#_jumpToHistoryEvent
   34B5 F0                 2210 	movx	@dptr,a
   34B6 A3                 2211 	inc	dptr
   34B7 74 0F              2212 	mov	a,#(_jumpToHistoryEvent >> 8)
   34B9 F0                 2213 	movx	@dptr,a
   34BA A3                 2214 	inc	dptr
   34BB E4                 2215 	clr	a
   34BC F0                 2216 	movx	@dptr,a
   34BD 85 4B 82           2217 	mov	dpl,_iterateStateMachine_sloc1_1_0
   34C0 85 4C 83           2218 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   34C3 85 4D F0           2219 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   34C6 12 2B C8           2220 	lcall	_callStateHandler
   34C9                    2221 00118$:
                           2222 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: action = TRANSITION ;
   34C9 90 0A 0D           2223 	mov	dptr,#_iterateStateMachine_action_2_3
   34CC 74 02              2224 	mov	a,#0x02
   34CE F0                 2225 	movx	@dptr,a
   34CF 02 33 7A           2226 	ljmp	00120$
   34D2                    2227 00122$:
                           2228 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: if(action == TRANSITION)
   34D2 90 0A 0D           2229 	mov	dptr,#_iterateStateMachine_action_2_3
   34D5 E0                 2230 	movx	a,@dptr
   34D6 F8                 2231 	mov	r0,a
   34D7 B8 02 02           2232 	cjne	r0,#0x02,00228$
   34DA 80 03              2233 	sjmp	00229$
   34DC                    2234 00228$:
   34DC 02 3F 59           2235 	ljmp	00170$
   34DF                    2236 00229$:
                           2237 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:347: state_t*	source	= sm->currentState ;
   34DF 90 0A 04           2238 	mov	dptr,#_iterateStateMachine_sm_1_1
   34E2 E0                 2239 	movx	a,@dptr
   34E3 F5 57              2240 	mov	_iterateStateMachine_sloc5_1_0,a
   34E5 A3                 2241 	inc	dptr
   34E6 E0                 2242 	movx	a,@dptr
   34E7 F5 58              2243 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   34E9 A3                 2244 	inc	dptr
   34EA E0                 2245 	movx	a,@dptr
   34EB F5 59              2246 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   34ED 74 05              2247 	mov	a,#0x05
   34EF 25 57              2248 	add	a,_iterateStateMachine_sloc5_1_0
   34F1 F5 54              2249 	mov	_iterateStateMachine_sloc4_1_0,a
   34F3 E4                 2250 	clr	a
   34F4 35 58              2251 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   34F6 F5 55              2252 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   34F8 85 59 56           2253 	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc5_1_0 + 2)
   34FB 85 54 82           2254 	mov	dpl,_iterateStateMachine_sloc4_1_0
   34FE 85 55 83           2255 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   3501 85 56 F0           2256 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3504 12 4E 6E           2257 	lcall	__gptrget
   3507 F5 51              2258 	mov	_iterateStateMachine_sloc3_1_0,a
   3509 A3                 2259 	inc	dptr
   350A 12 4E 6E           2260 	lcall	__gptrget
   350D F5 52              2261 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   350F A3                 2262 	inc	dptr
   3510 12 4E 6E           2263 	lcall	__gptrget
   3513 F5 53              2264 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
                           2265 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:348: state_t*	target	= sm->nextState ;
   3515 74 08              2266 	mov	a,#0x08
   3517 25 57              2267 	add	a,_iterateStateMachine_sloc5_1_0
   3519 F5 4E              2268 	mov	_iterateStateMachine_sloc2_1_0,a
   351B E4                 2269 	clr	a
   351C 35 58              2270 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   351E F5 4F              2271 	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
   3520 85 59 50           2272 	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc5_1_0 + 2)
   3523 85 4E 82           2273 	mov	dpl,_iterateStateMachine_sloc2_1_0
   3526 85 4F 83           2274 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   3529 85 50 F0           2275 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   352C 12 4E 6E           2276 	lcall	__gptrget
   352F F5 4E              2277 	mov	_iterateStateMachine_sloc2_1_0,a
   3531 A3                 2278 	inc	dptr
   3532 12 4E 6E           2279 	lcall	__gptrget
   3535 F5 4F              2280 	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
   3537 A3                 2281 	inc	dptr
   3538 12 4E 6E           2282 	lcall	__gptrget
   353B F5 50              2283 	mov	(_iterateStateMachine_sloc2_1_0 + 2),a
                           2284 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: if(source == target)
   353D E5 4E              2285 	mov	a,_iterateStateMachine_sloc2_1_0
   353F B5 51 0C           2286 	cjne	a,_iterateStateMachine_sloc3_1_0,00230$
   3542 E5 4F              2287 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3544 B5 52 07           2288 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00230$
   3547 E5 50              2289 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3549 B5 53 02           2290 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00230$
   354C 80 03              2291 	sjmp	00231$
   354E                    2292 00230$:
   354E 02 35 ED           2293 	ljmp	00162$
   3551                    2294 00231$:
                           2295 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:355: printf("\t\t\t\tSelf transition.\n") ;
   3551 74 03              2296 	mov	a,#__str_10
   3553 C0 E0              2297 	push	acc
   3555 74 53              2298 	mov	a,#(__str_10 >> 8)
   3557 C0 E0              2299 	push	acc
   3559 74 80              2300 	mov	a,#0x80
   355B C0 E0              2301 	push	acc
   355D 12 46 22           2302 	lcall	_printf
   3560 15 81              2303 	dec	sp
   3562 15 81              2304 	dec	sp
   3564 15 81              2305 	dec	sp
                           2306 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:360: callStateHandler(sm, source, &exitEvent) ;
   3566 90 09 FA           2307 	mov	dptr,#_callStateHandler_PARM_2
   3569 E5 51              2308 	mov	a,_iterateStateMachine_sloc3_1_0
   356B F0                 2309 	movx	@dptr,a
   356C A3                 2310 	inc	dptr
   356D E5 52              2311 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   356F F0                 2312 	movx	@dptr,a
   3570 A3                 2313 	inc	dptr
   3571 E5 53              2314 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   3573 F0                 2315 	movx	@dptr,a
   3574 90 09 FD           2316 	mov	dptr,#_callStateHandler_PARM_3
   3577 74 11              2317 	mov	a,#_exitEvent
   3579 F0                 2318 	movx	@dptr,a
   357A A3                 2319 	inc	dptr
   357B 74 0F              2320 	mov	a,#(_exitEvent >> 8)
   357D F0                 2321 	movx	@dptr,a
   357E A3                 2322 	inc	dptr
   357F E4                 2323 	clr	a
   3580 F0                 2324 	movx	@dptr,a
   3581 85 57 82           2325 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3584 85 58 83           2326 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3587 85 59 F0           2327 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   358A 12 2B C8           2328 	lcall	_callStateHandler
                           2329 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:361: sm->currentState = target ;
   358D 90 0A 04           2330 	mov	dptr,#_iterateStateMachine_sm_1_1
   3590 E0                 2331 	movx	a,@dptr
   3591 F5 4B              2332 	mov	_iterateStateMachine_sloc1_1_0,a
   3593 A3                 2333 	inc	dptr
   3594 E0                 2334 	movx	a,@dptr
   3595 F5 4C              2335 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   3597 A3                 2336 	inc	dptr
   3598 E0                 2337 	movx	a,@dptr
   3599 F5 4D              2338 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   359B 74 05              2339 	mov	a,#0x05
   359D 25 4B              2340 	add	a,_iterateStateMachine_sloc1_1_0
   359F F5 48              2341 	mov	_iterateStateMachine_sloc0_1_0,a
   35A1 E4                 2342 	clr	a
   35A2 35 4C              2343 	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
   35A4 F5 49              2344 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   35A6 85 4D 4A           2345 	mov	(_iterateStateMachine_sloc0_1_0 + 2),(_iterateStateMachine_sloc1_1_0 + 2)
   35A9 85 48 82           2346 	mov	dpl,_iterateStateMachine_sloc0_1_0
   35AC 85 49 83           2347 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   35AF 85 4A F0           2348 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   35B2 E5 4E              2349 	mov	a,_iterateStateMachine_sloc2_1_0
   35B4 12 42 42           2350 	lcall	__gptrput
   35B7 A3                 2351 	inc	dptr
   35B8 E5 4F              2352 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   35BA 12 42 42           2353 	lcall	__gptrput
   35BD A3                 2354 	inc	dptr
   35BE E5 50              2355 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   35C0 12 42 42           2356 	lcall	__gptrput
                           2357 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:362: callStateHandler(sm, target, &enterEvent) ;
   35C3 90 09 FA           2358 	mov	dptr,#_callStateHandler_PARM_2
   35C6 E5 4E              2359 	mov	a,_iterateStateMachine_sloc2_1_0
   35C8 F0                 2360 	movx	@dptr,a
   35C9 A3                 2361 	inc	dptr
   35CA E5 4F              2362 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   35CC F0                 2363 	movx	@dptr,a
   35CD A3                 2364 	inc	dptr
   35CE E5 50              2365 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   35D0 F0                 2366 	movx	@dptr,a
   35D1 90 09 FD           2367 	mov	dptr,#_callStateHandler_PARM_3
   35D4 74 10              2368 	mov	a,#_enterEvent
   35D6 F0                 2369 	movx	@dptr,a
   35D7 A3                 2370 	inc	dptr
   35D8 74 0F              2371 	mov	a,#(_enterEvent >> 8)
   35DA F0                 2372 	movx	@dptr,a
   35DB A3                 2373 	inc	dptr
   35DC E4                 2374 	clr	a
   35DD F0                 2375 	movx	@dptr,a
   35DE 85 4B 82           2376 	mov	dpl,_iterateStateMachine_sloc1_1_0
   35E1 85 4C 83           2377 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   35E4 85 4D F0           2378 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   35E7 12 2B C8           2379 	lcall	_callStateHandler
   35EA 02 3E C0           2380 	ljmp	00163$
   35ED                    2381 00162$:
                           2382 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: else if(source == (state_t*)(target->parent))
   35ED 85 4E 82           2383 	mov	dpl,_iterateStateMachine_sloc2_1_0
   35F0 85 4F 83           2384 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   35F3 85 50 F0           2385 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   35F6 12 4E 6E           2386 	lcall	__gptrget
   35F9 F5 4B              2387 	mov	_iterateStateMachine_sloc1_1_0,a
   35FB A3                 2388 	inc	dptr
   35FC 12 4E 6E           2389 	lcall	__gptrget
   35FF F5 4C              2390 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   3601 A3                 2391 	inc	dptr
   3602 12 4E 6E           2392 	lcall	__gptrget
   3605 F5 4D              2393 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   3607 E5 4B              2394 	mov	a,_iterateStateMachine_sloc1_1_0
   3609 B5 51 63           2395 	cjne	a,_iterateStateMachine_sloc3_1_0,00159$
   360C E5 4C              2396 	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
   360E B5 52 5E           2397 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00159$
   3611 E5 4D              2398 	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
   3613 B5 53 59           2399 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00159$
                           2400 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:367: printf("\t\t\t\tTransition to direct child.\n") ;
   3616 74 19              2401 	mov	a,#__str_11
   3618 C0 E0              2402 	push	acc
   361A 74 53              2403 	mov	a,#(__str_11 >> 8)
   361C C0 E0              2404 	push	acc
   361E 74 80              2405 	mov	a,#0x80
   3620 C0 E0              2406 	push	acc
   3622 12 46 22           2407 	lcall	_printf
   3625 15 81              2408 	dec	sp
   3627 15 81              2409 	dec	sp
   3629 15 81              2410 	dec	sp
                           2411 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:373: sm->currentState = target ;
   362B 85 54 82           2412 	mov	dpl,_iterateStateMachine_sloc4_1_0
   362E 85 55 83           2413 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   3631 85 56 F0           2414 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3634 E5 4E              2415 	mov	a,_iterateStateMachine_sloc2_1_0
   3636 12 42 42           2416 	lcall	__gptrput
   3639 A3                 2417 	inc	dptr
   363A E5 4F              2418 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   363C 12 42 42           2419 	lcall	__gptrput
   363F A3                 2420 	inc	dptr
   3640 E5 50              2421 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3642 12 42 42           2422 	lcall	__gptrput
                           2423 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:374: callStateHandler(sm, target, &enterEvent) ;
   3645 90 09 FA           2424 	mov	dptr,#_callStateHandler_PARM_2
   3648 E5 4E              2425 	mov	a,_iterateStateMachine_sloc2_1_0
   364A F0                 2426 	movx	@dptr,a
   364B A3                 2427 	inc	dptr
   364C E5 4F              2428 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   364E F0                 2429 	movx	@dptr,a
   364F A3                 2430 	inc	dptr
   3650 E5 50              2431 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3652 F0                 2432 	movx	@dptr,a
   3653 90 09 FD           2433 	mov	dptr,#_callStateHandler_PARM_3
   3656 74 10              2434 	mov	a,#_enterEvent
   3658 F0                 2435 	movx	@dptr,a
   3659 A3                 2436 	inc	dptr
   365A 74 0F              2437 	mov	a,#(_enterEvent >> 8)
   365C F0                 2438 	movx	@dptr,a
   365D A3                 2439 	inc	dptr
   365E E4                 2440 	clr	a
   365F F0                 2441 	movx	@dptr,a
   3660 85 57 82           2442 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3663 85 58 83           2443 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3666 85 59 F0           2444 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3669 12 2B C8           2445 	lcall	_callStateHandler
   366C 02 3E C0           2446 	ljmp	00163$
   366F                    2447 00159$:
                           2448 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: else if((state_t*)(source->parent) == (state_t*)(target->parent))
   366F 85 51 82           2449 	mov	dpl,_iterateStateMachine_sloc3_1_0
   3672 85 52 83           2450 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   3675 85 53 F0           2451 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   3678 12 4E 6E           2452 	lcall	__gptrget
   367B F5 48              2453 	mov	_iterateStateMachine_sloc0_1_0,a
   367D A3                 2454 	inc	dptr
   367E 12 4E 6E           2455 	lcall	__gptrget
   3681 F5 49              2456 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   3683 A3                 2457 	inc	dptr
   3684 12 4E 6E           2458 	lcall	__gptrget
   3687 F5 4A              2459 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   3689 E5 4B              2460 	mov	a,_iterateStateMachine_sloc1_1_0
   368B B5 48 0C           2461 	cjne	a,_iterateStateMachine_sloc0_1_0,00234$
   368E E5 4C              2462 	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
   3690 B5 49 07           2463 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00234$
   3693 E5 4D              2464 	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
   3695 B5 4A 02           2465 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00234$
   3698 80 03              2466 	sjmp	00235$
   369A                    2467 00234$:
   369A 02 37 39           2468 	ljmp	00156$
   369D                    2469 00235$:
                           2470 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:379: printf("\t\t\t\tTransition to direct peer.\n") ;
   369D 74 3A              2471 	mov	a,#__str_12
   369F C0 E0              2472 	push	acc
   36A1 74 53              2473 	mov	a,#(__str_12 >> 8)
   36A3 C0 E0              2474 	push	acc
   36A5 74 80              2475 	mov	a,#0x80
   36A7 C0 E0              2476 	push	acc
   36A9 12 46 22           2477 	lcall	_printf
   36AC 15 81              2478 	dec	sp
   36AE 15 81              2479 	dec	sp
   36B0 15 81              2480 	dec	sp
                           2481 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:385: callStateHandler(sm, source, &exitEvent) ;
   36B2 90 09 FA           2482 	mov	dptr,#_callStateHandler_PARM_2
   36B5 E5 51              2483 	mov	a,_iterateStateMachine_sloc3_1_0
   36B7 F0                 2484 	movx	@dptr,a
   36B8 A3                 2485 	inc	dptr
   36B9 E5 52              2486 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   36BB F0                 2487 	movx	@dptr,a
   36BC A3                 2488 	inc	dptr
   36BD E5 53              2489 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   36BF F0                 2490 	movx	@dptr,a
   36C0 90 09 FD           2491 	mov	dptr,#_callStateHandler_PARM_3
   36C3 74 11              2492 	mov	a,#_exitEvent
   36C5 F0                 2493 	movx	@dptr,a
   36C6 A3                 2494 	inc	dptr
   36C7 74 0F              2495 	mov	a,#(_exitEvent >> 8)
   36C9 F0                 2496 	movx	@dptr,a
   36CA A3                 2497 	inc	dptr
   36CB E4                 2498 	clr	a
   36CC F0                 2499 	movx	@dptr,a
   36CD 85 57 82           2500 	mov	dpl,_iterateStateMachine_sloc5_1_0
   36D0 85 58 83           2501 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   36D3 85 59 F0           2502 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   36D6 12 2B C8           2503 	lcall	_callStateHandler
                           2504 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:386: sm->currentState = target ;
   36D9 90 0A 04           2505 	mov	dptr,#_iterateStateMachine_sm_1_1
   36DC E0                 2506 	movx	a,@dptr
   36DD F5 4B              2507 	mov	_iterateStateMachine_sloc1_1_0,a
   36DF A3                 2508 	inc	dptr
   36E0 E0                 2509 	movx	a,@dptr
   36E1 F5 4C              2510 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   36E3 A3                 2511 	inc	dptr
   36E4 E0                 2512 	movx	a,@dptr
   36E5 F5 4D              2513 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   36E7 74 05              2514 	mov	a,#0x05
   36E9 25 4B              2515 	add	a,_iterateStateMachine_sloc1_1_0
   36EB F5 5A              2516 	mov	_iterateStateMachine_sloc6_1_0,a
   36ED E4                 2517 	clr	a
   36EE 35 4C              2518 	addc	a,(_iterateStateMachine_sloc1_1_0 + 1)
   36F0 F5 5B              2519 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   36F2 85 4D 5C           2520 	mov	(_iterateStateMachine_sloc6_1_0 + 2),(_iterateStateMachine_sloc1_1_0 + 2)
   36F5 85 5A 82           2521 	mov	dpl,_iterateStateMachine_sloc6_1_0
   36F8 85 5B 83           2522 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   36FB 85 5C F0           2523 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   36FE E5 4E              2524 	mov	a,_iterateStateMachine_sloc2_1_0
   3700 12 42 42           2525 	lcall	__gptrput
   3703 A3                 2526 	inc	dptr
   3704 E5 4F              2527 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3706 12 42 42           2528 	lcall	__gptrput
   3709 A3                 2529 	inc	dptr
   370A E5 50              2530 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   370C 12 42 42           2531 	lcall	__gptrput
                           2532 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:387: callStateHandler(sm, target, &enterEvent) ;
   370F 90 09 FA           2533 	mov	dptr,#_callStateHandler_PARM_2
   3712 E5 4E              2534 	mov	a,_iterateStateMachine_sloc2_1_0
   3714 F0                 2535 	movx	@dptr,a
   3715 A3                 2536 	inc	dptr
   3716 E5 4F              2537 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3718 F0                 2538 	movx	@dptr,a
   3719 A3                 2539 	inc	dptr
   371A E5 50              2540 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   371C F0                 2541 	movx	@dptr,a
   371D 90 09 FD           2542 	mov	dptr,#_callStateHandler_PARM_3
   3720 74 10              2543 	mov	a,#_enterEvent
   3722 F0                 2544 	movx	@dptr,a
   3723 A3                 2545 	inc	dptr
   3724 74 0F              2546 	mov	a,#(_enterEvent >> 8)
   3726 F0                 2547 	movx	@dptr,a
   3727 A3                 2548 	inc	dptr
   3728 E4                 2549 	clr	a
   3729 F0                 2550 	movx	@dptr,a
   372A 85 4B 82           2551 	mov	dpl,_iterateStateMachine_sloc1_1_0
   372D 85 4C 83           2552 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   3730 85 4D F0           2553 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   3733 12 2B C8           2554 	lcall	_callStateHandler
   3736 02 3E C0           2555 	ljmp	00163$
   3739                    2556 00156$:
                           2557 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:389: else if((state_t*)(source->parent) == target)
   3739 E5 4E              2558 	mov	a,_iterateStateMachine_sloc2_1_0
   373B B5 48 63           2559 	cjne	a,_iterateStateMachine_sloc0_1_0,00153$
   373E E5 4F              2560 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3740 B5 49 5E           2561 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00153$
   3743 E5 50              2562 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3745 B5 4A 59           2563 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00153$
                           2564 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:392: printf("\t\t\t\tTransition to direct parent.\n") ;
   3748 74 5A              2565 	mov	a,#__str_13
   374A C0 E0              2566 	push	acc
   374C 74 53              2567 	mov	a,#(__str_13 >> 8)
   374E C0 E0              2568 	push	acc
   3750 74 80              2569 	mov	a,#0x80
   3752 C0 E0              2570 	push	acc
   3754 12 46 22           2571 	lcall	_printf
   3757 15 81              2572 	dec	sp
   3759 15 81              2573 	dec	sp
   375B 15 81              2574 	dec	sp
                           2575 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:399: sm->currentState = target ;
   375D 85 54 82           2576 	mov	dpl,_iterateStateMachine_sloc4_1_0
   3760 85 55 83           2577 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   3763 85 56 F0           2578 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3766 E5 4E              2579 	mov	a,_iterateStateMachine_sloc2_1_0
   3768 12 42 42           2580 	lcall	__gptrput
   376B A3                 2581 	inc	dptr
   376C E5 4F              2582 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   376E 12 42 42           2583 	lcall	__gptrput
   3771 A3                 2584 	inc	dptr
   3772 E5 50              2585 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3774 12 42 42           2586 	lcall	__gptrput
                           2587 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:400: callStateHandler(sm, source, &exitEvent) ;
   3777 90 09 FA           2588 	mov	dptr,#_callStateHandler_PARM_2
   377A E5 51              2589 	mov	a,_iterateStateMachine_sloc3_1_0
   377C F0                 2590 	movx	@dptr,a
   377D A3                 2591 	inc	dptr
   377E E5 52              2592 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3780 F0                 2593 	movx	@dptr,a
   3781 A3                 2594 	inc	dptr
   3782 E5 53              2595 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   3784 F0                 2596 	movx	@dptr,a
   3785 90 09 FD           2597 	mov	dptr,#_callStateHandler_PARM_3
   3788 74 11              2598 	mov	a,#_exitEvent
   378A F0                 2599 	movx	@dptr,a
   378B A3                 2600 	inc	dptr
   378C 74 0F              2601 	mov	a,#(_exitEvent >> 8)
   378E F0                 2602 	movx	@dptr,a
   378F A3                 2603 	inc	dptr
   3790 E4                 2604 	clr	a
   3791 F0                 2605 	movx	@dptr,a
   3792 85 57 82           2606 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3795 85 58 83           2607 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3798 85 59 F0           2608 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   379B 12 2B C8           2609 	lcall	_callStateHandler
   379E 02 3E C0           2610 	ljmp	00163$
   37A1                    2611 00153$:
                           2612 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:415: printf("\t\t\t\tScanning source hierarchy...\n") ;
   37A1 74 7C              2613 	mov	a,#__str_14
   37A3 C0 E0              2614 	push	acc
   37A5 74 53              2615 	mov	a,#(__str_14 >> 8)
   37A7 C0 E0              2616 	push	acc
   37A9 74 80              2617 	mov	a,#0x80
   37AB C0 E0              2618 	push	acc
   37AD 12 46 22           2619 	lcall	_printf
   37B0 15 81              2620 	dec	sp
   37B2 15 81              2621 	dec	sp
   37B4 15 81              2622 	dec	sp
                           2623 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:419: targetIndex			= 0 ;
   37B6 90 0A 6F           2624 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   37B9 E4                 2625 	clr	a
   37BA F0                 2626 	movx	@dptr,a
                           2627 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:420: stateBeingProcessed	= source ;
   37BB 90 0A 0A           2628 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   37BE E5 51              2629 	mov	a,_iterateStateMachine_sloc3_1_0
   37C0 F0                 2630 	movx	@dptr,a
   37C1 A3                 2631 	inc	dptr
   37C2 E5 52              2632 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   37C4 F0                 2633 	movx	@dptr,a
   37C5 A3                 2634 	inc	dptr
   37C6 E5 53              2635 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   37C8 F0                 2636 	movx	@dptr,a
                           2637 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:422: do
   37C9 75 5A 00           2638 	mov	_iterateStateMachine_sloc6_1_0,#0x00
   37CC                    2639 00128$:
                           2640 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:424: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
   37CC A9 5A              2641 	mov	r1,_iterateStateMachine_sloc6_1_0
   37CE 05 5A              2642 	inc	_iterateStateMachine_sloc6_1_0
   37D0 90 0A 3E           2643 	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
   37D3 E5 5A              2644 	mov	a,_iterateStateMachine_sloc6_1_0
   37D5 F0                 2645 	movx	@dptr,a
   37D6 E9                 2646 	mov	a,r1
   37D7 75 F0 03           2647 	mov	b,#0x03
   37DA A4                 2648 	mul	ab
   37DB 24 0E              2649 	add	a,#_iterateStateMachine_sourceHierarchy_4_19
   37DD F9                 2650 	mov	r1,a
   37DE E4                 2651 	clr	a
   37DF 34 0A              2652 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
   37E1 F8                 2653 	mov	r0,a
   37E2 90 0A 0A           2654 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   37E5 E0                 2655 	movx	a,@dptr
   37E6 F5 57              2656 	mov	_iterateStateMachine_sloc5_1_0,a
   37E8 A3                 2657 	inc	dptr
   37E9 E0                 2658 	movx	a,@dptr
   37EA F5 58              2659 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   37EC A3                 2660 	inc	dptr
   37ED E0                 2661 	movx	a,@dptr
   37EE F5 59              2662 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   37F0 89 82              2663 	mov	dpl,r1
   37F2 88 83              2664 	mov	dph,r0
   37F4 E5 57              2665 	mov	a,_iterateStateMachine_sloc5_1_0
   37F6 F0                 2666 	movx	@dptr,a
   37F7 A3                 2667 	inc	dptr
   37F8 E5 58              2668 	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
   37FA F0                 2669 	movx	@dptr,a
   37FB A3                 2670 	inc	dptr
   37FC E5 59              2671 	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
   37FE F0                 2672 	movx	@dptr,a
                           2673 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:427: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
   37FF 74 06              2674 	mov	a,#0x06
   3801 25 57              2675 	add	a,_iterateStateMachine_sloc5_1_0
   3803 F5 54              2676 	mov	_iterateStateMachine_sloc4_1_0,a
   3805 E4                 2677 	clr	a
   3806 35 58              2678 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3808 F5 55              2679 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   380A 85 59 56           2680 	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc5_1_0 + 2)
   380D 85 54 82           2681 	mov	dpl,_iterateStateMachine_sloc4_1_0
   3810 85 55 83           2682 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   3813 85 56 F0           2683 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3816 12 4E 6E           2684 	lcall	__gptrget
   3819 F5 54              2685 	mov	_iterateStateMachine_sloc4_1_0,a
   381B A3                 2686 	inc	dptr
   381C 12 4E 6E           2687 	lcall	__gptrget
   381F F5 55              2688 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3821 A3                 2689 	inc	dptr
   3822 12 4E 6E           2690 	lcall	__gptrget
   3825 F5 56              2691 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   3827 A8 5A              2692 	mov	r0,_iterateStateMachine_sloc6_1_0
   3829 79 00              2693 	mov	r1,#0x00
   382B 18                 2694 	dec	r0
   382C B8 FF 01           2695 	cjne	r0,#0xff,00238$
   382F 19                 2696 	dec	r1
   3830                    2697 00238$:
   3830 C0 54              2698 	push	_iterateStateMachine_sloc4_1_0
   3832 C0 55              2699 	push	(_iterateStateMachine_sloc4_1_0 + 1)
   3834 C0 56              2700 	push	(_iterateStateMachine_sloc4_1_0 + 2)
   3836 C0 00              2701 	push	ar0
   3838 C0 01              2702 	push	ar1
   383A 74 9E              2703 	mov	a,#__str_15
   383C C0 E0              2704 	push	acc
   383E 74 53              2705 	mov	a,#(__str_15 >> 8)
   3840 C0 E0              2706 	push	acc
   3842 74 80              2707 	mov	a,#0x80
   3844 C0 E0              2708 	push	acc
   3846 12 46 22           2709 	lcall	_printf
   3849 E5 81              2710 	mov	a,sp
   384B 24 F8              2711 	add	a,#0xf8
   384D F5 81              2712 	mov	sp,a
                           2713 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:430: if(stateBeingProcessed == target)
   384F E5 4E              2714 	mov	a,_iterateStateMachine_sloc2_1_0
   3851 B5 57 0C           2715 	cjne	a,_iterateStateMachine_sloc5_1_0,00239$
   3854 E5 4F              2716 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3856 B5 58 07           2717 	cjne	a,(_iterateStateMachine_sloc5_1_0 + 1),00239$
   3859 E5 50              2718 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   385B B5 59 02           2719 	cjne	a,(_iterateStateMachine_sloc5_1_0 + 2),00239$
   385E 80 03              2720 	sjmp	00240$
   3860                    2721 00239$:
   3860 02 39 2E           2722 	ljmp	00127$
   3863                    2723 00240$:
                           2724 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:435: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
   3863 74 BD              2725 	mov	a,#__str_16
   3865 C0 E0              2726 	push	acc
   3867 74 53              2727 	mov	a,#(__str_16 >> 8)
   3869 C0 E0              2728 	push	acc
   386B 74 80              2729 	mov	a,#0x80
   386D C0 E0              2730 	push	acc
   386F 12 46 22           2731 	lcall	_printf
   3872 15 81              2732 	dec	sp
   3874 15 81              2733 	dec	sp
   3876 15 81              2734 	dec	sp
                           2735 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:438: sourceIndex-- ;
   3878 E5 5A              2736 	mov	a,_iterateStateMachine_sloc6_1_0
   387A 14                 2737 	dec	a
   387B F8                 2738 	mov	r0,a
   387C 90 0A 3E           2739 	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
   387F F0                 2740 	movx	@dptr,a
                           2741 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:440: while(exitIndex < sourceIndex)
   3880 75 54 00           2742 	mov	_iterateStateMachine_sloc4_1_0,#0x00
   3883                    2743 00123$:
   3883 C3                 2744 	clr	c
   3884 E5 54              2745 	mov	a,_iterateStateMachine_sloc4_1_0
   3886 98                 2746 	subb	a,r0
   3887 50 70              2747 	jnc	00125$
                           2748 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:443: printf("\t\t\t\t") ;
   3889 C0 00              2749 	push	ar0
   388B C0 00              2750 	push	ar0
   388D 74 E7              2751 	mov	a,#__str_17
   388F C0 E0              2752 	push	acc
   3891 74 53              2753 	mov	a,#(__str_17 >> 8)
   3893 C0 E0              2754 	push	acc
   3895 74 80              2755 	mov	a,#0x80
   3897 C0 E0              2756 	push	acc
   3899 12 46 22           2757 	lcall	_printf
   389C 15 81              2758 	dec	sp
   389E 15 81              2759 	dec	sp
   38A0 15 81              2760 	dec	sp
                           2761 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:446: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   38A2 90 0A 04           2762 	mov	dptr,#_iterateStateMachine_sm_1_1
   38A5 E0                 2763 	movx	a,@dptr
   38A6 F5 4B              2764 	mov	_iterateStateMachine_sloc1_1_0,a
   38A8 A3                 2765 	inc	dptr
   38A9 E0                 2766 	movx	a,@dptr
   38AA F5 4C              2767 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   38AC A3                 2768 	inc	dptr
   38AD E0                 2769 	movx	a,@dptr
   38AE F5 4D              2770 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   38B0 E5 54              2771 	mov	a,_iterateStateMachine_sloc4_1_0
   38B2 75 F0 03           2772 	mov	b,#0x03
   38B5 A4                 2773 	mul	ab
   38B6 24 0E              2774 	add	a,#_iterateStateMachine_sourceHierarchy_4_19
   38B8 F5 82              2775 	mov	dpl,a
   38BA E4                 2776 	clr	a
   38BB 34 0A              2777 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
   38BD F5 83              2778 	mov	dph,a
   38BF E0                 2779 	movx	a,@dptr
   38C0 F5 48              2780 	mov	_iterateStateMachine_sloc0_1_0,a
   38C2 A3                 2781 	inc	dptr
   38C3 E0                 2782 	movx	a,@dptr
   38C4 F5 49              2783 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   38C6 A3                 2784 	inc	dptr
   38C7 E0                 2785 	movx	a,@dptr
   38C8 F5 4A              2786 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   38CA 90 09 FA           2787 	mov	dptr,#_callStateHandler_PARM_2
   38CD E5 48              2788 	mov	a,_iterateStateMachine_sloc0_1_0
   38CF F0                 2789 	movx	@dptr,a
   38D0 A3                 2790 	inc	dptr
   38D1 E5 49              2791 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   38D3 F0                 2792 	movx	@dptr,a
   38D4 A3                 2793 	inc	dptr
   38D5 E5 4A              2794 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   38D7 F0                 2795 	movx	@dptr,a
   38D8 90 09 FD           2796 	mov	dptr,#_callStateHandler_PARM_3
   38DB 74 11              2797 	mov	a,#_exitEvent
   38DD F0                 2798 	movx	@dptr,a
   38DE A3                 2799 	inc	dptr
   38DF 74 0F              2800 	mov	a,#(_exitEvent >> 8)
   38E1 F0                 2801 	movx	@dptr,a
   38E2 A3                 2802 	inc	dptr
   38E3 E4                 2803 	clr	a
   38E4 F0                 2804 	movx	@dptr,a
   38E5 85 4B 82           2805 	mov	dpl,_iterateStateMachine_sloc1_1_0
   38E8 85 4C 83           2806 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   38EB 85 4D F0           2807 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   38EE 12 2B C8           2808 	lcall	_callStateHandler
   38F1 D0 00              2809 	pop	ar0
                           2810 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:448: exitIndex++ ;
   38F3 05 54              2811 	inc	_iterateStateMachine_sloc4_1_0
   38F5 D0 00              2812 	pop	ar0
   38F7 80 8A              2813 	sjmp	00123$
   38F9                    2814 00125$:
                           2815 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:451: sm->currentState = target ;
   38F9 90 0A 04           2816 	mov	dptr,#_iterateStateMachine_sm_1_1
   38FC E0                 2817 	movx	a,@dptr
   38FD F5 54              2818 	mov	_iterateStateMachine_sloc4_1_0,a
   38FF A3                 2819 	inc	dptr
   3900 E0                 2820 	movx	a,@dptr
   3901 F5 55              2821 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3903 A3                 2822 	inc	dptr
   3904 E0                 2823 	movx	a,@dptr
   3905 F5 56              2824 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   3907 74 05              2825 	mov	a,#0x05
   3909 25 54              2826 	add	a,_iterateStateMachine_sloc4_1_0
   390B F5 54              2827 	mov	_iterateStateMachine_sloc4_1_0,a
   390D E4                 2828 	clr	a
   390E 35 55              2829 	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
   3910 F5 55              2830 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3912 85 54 82           2831 	mov	dpl,_iterateStateMachine_sloc4_1_0
   3915 85 55 83           2832 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   3918 85 56 F0           2833 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   391B E5 4E              2834 	mov	a,_iterateStateMachine_sloc2_1_0
   391D 12 42 42           2835 	lcall	__gptrput
   3920 A3                 2836 	inc	dptr
   3921 E5 4F              2837 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3923 12 42 42           2838 	lcall	__gptrput
   3926 A3                 2839 	inc	dptr
   3927 E5 50              2840 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3929 12 42 42           2841 	lcall	__gptrput
                           2842 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:453: break ;
   392C 80 41              2843 	sjmp	00130$
   392E                    2844 00127$:
                           2845 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:456: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   392E 85 57 82           2846 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3931 85 58 83           2847 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3934 85 59 F0           2848 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3937 12 4E 6E           2849 	lcall	__gptrget
   393A F5 57              2850 	mov	_iterateStateMachine_sloc5_1_0,a
   393C A3                 2851 	inc	dptr
   393D 12 4E 6E           2852 	lcall	__gptrget
   3940 F5 58              2853 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3942 A3                 2854 	inc	dptr
   3943 12 4E 6E           2855 	lcall	__gptrget
   3946 F5 59              2856 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3948 90 0A 0A           2857 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   394B E5 57              2858 	mov	a,_iterateStateMachine_sloc5_1_0
   394D F0                 2859 	movx	@dptr,a
   394E A3                 2860 	inc	dptr
   394F E5 58              2861 	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3951 F0                 2862 	movx	@dptr,a
   3952 A3                 2863 	inc	dptr
   3953 E5 59              2864 	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
   3955 F0                 2865 	movx	@dptr,a
                           2866 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:457: } while(stateBeingProcessed) ;
   3956 90 0A 0A           2867 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3959 E0                 2868 	movx	a,@dptr
   395A F5 57              2869 	mov	_iterateStateMachine_sloc5_1_0,a
   395C A3                 2870 	inc	dptr
   395D E0                 2871 	movx	a,@dptr
   395E F5 58              2872 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3960 A3                 2873 	inc	dptr
   3961 E0                 2874 	movx	a,@dptr
   3962 F5 59              2875 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3964 E5 57              2876 	mov	a,_iterateStateMachine_sloc5_1_0
   3966 45 58              2877 	orl	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3968 45 59              2878 	orl	a,(_iterateStateMachine_sloc5_1_0 + 2)
   396A 60 03              2879 	jz	00242$
   396C 02 37 CC           2880 	ljmp	00128$
   396F                    2881 00242$:
   396F                    2882 00130$:
                           2883 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:459: if(sm->currentState != target)
   396F 90 0A 04           2884 	mov	dptr,#_iterateStateMachine_sm_1_1
   3972 E0                 2885 	movx	a,@dptr
   3973 F5 5A              2886 	mov	_iterateStateMachine_sloc6_1_0,a
   3975 A3                 2887 	inc	dptr
   3976 E0                 2888 	movx	a,@dptr
   3977 F5 5B              2889 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3979 A3                 2890 	inc	dptr
   397A E0                 2891 	movx	a,@dptr
   397B F5 5C              2892 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
   397D 74 05              2893 	mov	a,#0x05
   397F 25 5A              2894 	add	a,_iterateStateMachine_sloc6_1_0
   3981 F5 5A              2895 	mov	_iterateStateMachine_sloc6_1_0,a
   3983 E4                 2896 	clr	a
   3984 35 5B              2897 	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
   3986 F5 5B              2898 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3988 85 5A 82           2899 	mov	dpl,_iterateStateMachine_sloc6_1_0
   398B 85 5B 83           2900 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   398E 85 5C F0           2901 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   3991 12 4E 6E           2902 	lcall	__gptrget
   3994 F5 5A              2903 	mov	_iterateStateMachine_sloc6_1_0,a
   3996 A3                 2904 	inc	dptr
   3997 12 4E 6E           2905 	lcall	__gptrget
   399A F5 5B              2906 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   399C A3                 2907 	inc	dptr
   399D 12 4E 6E           2908 	lcall	__gptrget
   39A0 F5 5C              2909 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
   39A2 E5 4E              2910 	mov	a,_iterateStateMachine_sloc2_1_0
   39A4 B5 5A 0D           2911 	cjne	a,_iterateStateMachine_sloc6_1_0,00243$
   39A7 E5 4F              2912 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   39A9 B5 5B 08           2913 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00243$
   39AC E5 50              2914 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   39AE B5 5C 03           2915 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00243$
   39B1 02 3B 74           2916 	ljmp	00140$
   39B4                    2917 00243$:
                           2918 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:462: printf("\t\t\t\tScanning target hierarchy...\n") ;
   39B4 74 EC              2919 	mov	a,#__str_18
   39B6 C0 E0              2920 	push	acc
   39B8 74 53              2921 	mov	a,#(__str_18 >> 8)
   39BA C0 E0              2922 	push	acc
   39BC 74 80              2923 	mov	a,#0x80
   39BE C0 E0              2924 	push	acc
   39C0 12 46 22           2925 	lcall	_printf
   39C3 15 81              2926 	dec	sp
   39C5 15 81              2927 	dec	sp
   39C7 15 81              2928 	dec	sp
                           2929 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:465: targetIndex			= 0 ;
   39C9 90 0A 6F           2930 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   39CC E4                 2931 	clr	a
   39CD F0                 2932 	movx	@dptr,a
                           2933 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:466: stateBeingProcessed	= target ;
   39CE 90 0A 0A           2934 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   39D1 E5 4E              2935 	mov	a,_iterateStateMachine_sloc2_1_0
   39D3 F0                 2936 	movx	@dptr,a
   39D4 A3                 2937 	inc	dptr
   39D5 E5 4F              2938 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   39D7 F0                 2939 	movx	@dptr,a
   39D8 A3                 2940 	inc	dptr
   39D9 E5 50              2941 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   39DB F0                 2942 	movx	@dptr,a
                           2943 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:468: do
   39DC 75 5A 00           2944 	mov	_iterateStateMachine_sloc6_1_0,#0x00
   39DF                    2945 00136$:
                           2946 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:470: targetHierarchy[targetIndex] = stateBeingProcessed ;
   39DF E5 5A              2947 	mov	a,_iterateStateMachine_sloc6_1_0
   39E1 75 F0 03           2948 	mov	b,#0x03
   39E4 A4                 2949 	mul	ab
   39E5 24 3F              2950 	add	a,#_iterateStateMachine_targetHierarchy_4_19
   39E7 F9                 2951 	mov	r1,a
   39E8 E4                 2952 	clr	a
   39E9 34 0A              2953 	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
   39EB F8                 2954 	mov	r0,a
   39EC 90 0A 0A           2955 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   39EF E0                 2956 	movx	a,@dptr
   39F0 F5 57              2957 	mov	_iterateStateMachine_sloc5_1_0,a
   39F2 A3                 2958 	inc	dptr
   39F3 E0                 2959 	movx	a,@dptr
   39F4 F5 58              2960 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   39F6 A3                 2961 	inc	dptr
   39F7 E0                 2962 	movx	a,@dptr
   39F8 F5 59              2963 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   39FA 89 82              2964 	mov	dpl,r1
   39FC 88 83              2965 	mov	dph,r0
   39FE E5 57              2966 	mov	a,_iterateStateMachine_sloc5_1_0
   3A00 F0                 2967 	movx	@dptr,a
   3A01 A3                 2968 	inc	dptr
   3A02 E5 58              2969 	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3A04 F0                 2970 	movx	@dptr,a
   3A05 A3                 2971 	inc	dptr
   3A06 E5 59              2972 	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
   3A08 F0                 2973 	movx	@dptr,a
                           2974 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:473: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
   3A09 74 06              2975 	mov	a,#0x06
   3A0B 25 57              2976 	add	a,_iterateStateMachine_sloc5_1_0
   3A0D F5 54              2977 	mov	_iterateStateMachine_sloc4_1_0,a
   3A0F E4                 2978 	clr	a
   3A10 35 58              2979 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3A12 F5 55              2980 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3A14 85 59 56           2981 	mov	(_iterateStateMachine_sloc4_1_0 + 2),(_iterateStateMachine_sloc5_1_0 + 2)
   3A17 85 54 82           2982 	mov	dpl,_iterateStateMachine_sloc4_1_0
   3A1A 85 55 83           2983 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   3A1D 85 56 F0           2984 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3A20 12 4E 6E           2985 	lcall	__gptrget
   3A23 F5 54              2986 	mov	_iterateStateMachine_sloc4_1_0,a
   3A25 A3                 2987 	inc	dptr
   3A26 12 4E 6E           2988 	lcall	__gptrget
   3A29 F5 55              2989 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3A2B A3                 2990 	inc	dptr
   3A2C 12 4E 6E           2991 	lcall	__gptrget
   3A2F F5 56              2992 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   3A31 A8 5A              2993 	mov	r0,_iterateStateMachine_sloc6_1_0
   3A33 79 00              2994 	mov	r1,#0x00
   3A35 C0 54              2995 	push	_iterateStateMachine_sloc4_1_0
   3A37 C0 55              2996 	push	(_iterateStateMachine_sloc4_1_0 + 1)
   3A39 C0 56              2997 	push	(_iterateStateMachine_sloc4_1_0 + 2)
   3A3B C0 00              2998 	push	ar0
   3A3D C0 01              2999 	push	ar1
   3A3F 74 0E              3000 	mov	a,#__str_19
   3A41 C0 E0              3001 	push	acc
   3A43 74 54              3002 	mov	a,#(__str_19 >> 8)
   3A45 C0 E0              3003 	push	acc
   3A47 74 80              3004 	mov	a,#0x80
   3A49 C0 E0              3005 	push	acc
   3A4B 12 46 22           3006 	lcall	_printf
   3A4E E5 81              3007 	mov	a,sp
   3A50 24 F8              3008 	add	a,#0xf8
   3A52 F5 81              3009 	mov	sp,a
                           3010 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:476: if(stateBeingProcessed == source)
   3A54 E5 51              3011 	mov	a,_iterateStateMachine_sloc3_1_0
   3A56 B5 57 0C           3012 	cjne	a,_iterateStateMachine_sloc5_1_0,00244$
   3A59 E5 52              3013 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3A5B B5 58 07           3014 	cjne	a,(_iterateStateMachine_sloc5_1_0 + 1),00244$
   3A5E E5 53              3015 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   3A60 B5 59 02           3016 	cjne	a,(_iterateStateMachine_sloc5_1_0 + 2),00244$
   3A63 80 03              3017 	sjmp	00245$
   3A65                    3018 00244$:
   3A65 02 3B 2B           3019 	ljmp	00135$
   3A68                    3020 00245$:
                           3021 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:479: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
   3A68 74 2D              3022 	mov	a,#__str_20
   3A6A C0 E0              3023 	push	acc
   3A6C 74 54              3024 	mov	a,#(__str_20 >> 8)
   3A6E C0 E0              3025 	push	acc
   3A70 74 80              3026 	mov	a,#0x80
   3A72 C0 E0              3027 	push	acc
   3A74 12 46 22           3028 	lcall	_printf
   3A77 15 81              3029 	dec	sp
   3A79 15 81              3030 	dec	sp
   3A7B 15 81              3031 	dec	sp
                           3032 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:482: while(targetIndex--)
   3A7D 90 0A 6F           3033 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3A80 E0                 3034 	movx	a,@dptr
   3A81 F5 54              3035 	mov	_iterateStateMachine_sloc4_1_0,a
   3A83                    3036 00131$:
   3A83 A9 54              3037 	mov	r1,_iterateStateMachine_sloc4_1_0
   3A85 15 54              3038 	dec	_iterateStateMachine_sloc4_1_0
   3A87 E9                 3039 	mov	a,r1
   3A88 60 66              3040 	jz	00210$
                           3041 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:485: printf("\t\t\t\t") ;
   3A8A 74 E7              3042 	mov	a,#__str_17
   3A8C C0 E0              3043 	push	acc
   3A8E 74 53              3044 	mov	a,#(__str_17 >> 8)
   3A90 C0 E0              3045 	push	acc
   3A92 74 80              3046 	mov	a,#0x80
   3A94 C0 E0              3047 	push	acc
   3A96 12 46 22           3048 	lcall	_printf
   3A99 15 81              3049 	dec	sp
   3A9B 15 81              3050 	dec	sp
   3A9D 15 81              3051 	dec	sp
                           3052 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:487: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   3A9F 90 0A 04           3053 	mov	dptr,#_iterateStateMachine_sm_1_1
   3AA2 E0                 3054 	movx	a,@dptr
   3AA3 F5 4B              3055 	mov	_iterateStateMachine_sloc1_1_0,a
   3AA5 A3                 3056 	inc	dptr
   3AA6 E0                 3057 	movx	a,@dptr
   3AA7 F5 4C              3058 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   3AA9 A3                 3059 	inc	dptr
   3AAA E0                 3060 	movx	a,@dptr
   3AAB F5 4D              3061 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   3AAD E5 54              3062 	mov	a,_iterateStateMachine_sloc4_1_0
   3AAF 75 F0 03           3063 	mov	b,#0x03
   3AB2 A4                 3064 	mul	ab
   3AB3 24 3F              3065 	add	a,#_iterateStateMachine_targetHierarchy_4_19
   3AB5 F5 82              3066 	mov	dpl,a
   3AB7 E4                 3067 	clr	a
   3AB8 34 0A              3068 	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
   3ABA F5 83              3069 	mov	dph,a
   3ABC E0                 3070 	movx	a,@dptr
   3ABD F5 48              3071 	mov	_iterateStateMachine_sloc0_1_0,a
   3ABF A3                 3072 	inc	dptr
   3AC0 E0                 3073 	movx	a,@dptr
   3AC1 F5 49              3074 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   3AC3 A3                 3075 	inc	dptr
   3AC4 E0                 3076 	movx	a,@dptr
   3AC5 F5 4A              3077 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   3AC7 90 09 FA           3078 	mov	dptr,#_callStateHandler_PARM_2
   3ACA E5 48              3079 	mov	a,_iterateStateMachine_sloc0_1_0
   3ACC F0                 3080 	movx	@dptr,a
   3ACD A3                 3081 	inc	dptr
   3ACE E5 49              3082 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3AD0 F0                 3083 	movx	@dptr,a
   3AD1 A3                 3084 	inc	dptr
   3AD2 E5 4A              3085 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3AD4 F0                 3086 	movx	@dptr,a
   3AD5 90 09 FD           3087 	mov	dptr,#_callStateHandler_PARM_3
   3AD8 74 10              3088 	mov	a,#_enterEvent
   3ADA F0                 3089 	movx	@dptr,a
   3ADB A3                 3090 	inc	dptr
   3ADC 74 0F              3091 	mov	a,#(_enterEvent >> 8)
   3ADE F0                 3092 	movx	@dptr,a
   3ADF A3                 3093 	inc	dptr
   3AE0 E4                 3094 	clr	a
   3AE1 F0                 3095 	movx	@dptr,a
   3AE2 85 4B 82           3096 	mov	dpl,_iterateStateMachine_sloc1_1_0
   3AE5 85 4C 83           3097 	mov	dph,(_iterateStateMachine_sloc1_1_0 + 1)
   3AE8 85 4D F0           3098 	mov	b,(_iterateStateMachine_sloc1_1_0 + 2)
   3AEB 12 2B C8           3099 	lcall	_callStateHandler
   3AEE 80 93              3100 	sjmp	00131$
   3AF0                    3101 00210$:
   3AF0 90 0A 6F           3102 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3AF3 E5 54              3103 	mov	a,_iterateStateMachine_sloc4_1_0
   3AF5 F0                 3104 	movx	@dptr,a
                           3105 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:490: sm->currentState = target ;
   3AF6 90 0A 04           3106 	mov	dptr,#_iterateStateMachine_sm_1_1
   3AF9 E0                 3107 	movx	a,@dptr
   3AFA F5 54              3108 	mov	_iterateStateMachine_sloc4_1_0,a
   3AFC A3                 3109 	inc	dptr
   3AFD E0                 3110 	movx	a,@dptr
   3AFE F5 55              3111 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3B00 A3                 3112 	inc	dptr
   3B01 E0                 3113 	movx	a,@dptr
   3B02 F5 56              3114 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   3B04 74 05              3115 	mov	a,#0x05
   3B06 25 54              3116 	add	a,_iterateStateMachine_sloc4_1_0
   3B08 F5 54              3117 	mov	_iterateStateMachine_sloc4_1_0,a
   3B0A E4                 3118 	clr	a
   3B0B 35 55              3119 	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
   3B0D F5 55              3120 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3B0F 85 54 82           3121 	mov	dpl,_iterateStateMachine_sloc4_1_0
   3B12 85 55 83           3122 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   3B15 85 56 F0           3123 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   3B18 E5 4E              3124 	mov	a,_iterateStateMachine_sloc2_1_0
   3B1A 12 42 42           3125 	lcall	__gptrput
   3B1D A3                 3126 	inc	dptr
   3B1E E5 4F              3127 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3B20 12 42 42           3128 	lcall	__gptrput
   3B23 A3                 3129 	inc	dptr
   3B24 E5 50              3130 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3B26 12 42 42           3131 	lcall	__gptrput
                           3132 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:492: break ;
   3B29 80 49              3133 	sjmp	00140$
   3B2B                    3134 00135$:
                           3135 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:495: targetIndex++ ;
   3B2B 05 5A              3136 	inc	_iterateStateMachine_sloc6_1_0
   3B2D 90 0A 6F           3137 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3B30 E5 5A              3138 	mov	a,_iterateStateMachine_sloc6_1_0
   3B32 F0                 3139 	movx	@dptr,a
                           3140 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:496: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   3B33 85 57 82           3141 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3B36 85 58 83           3142 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3B39 85 59 F0           3143 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3B3C 12 4E 6E           3144 	lcall	__gptrget
   3B3F F5 57              3145 	mov	_iterateStateMachine_sloc5_1_0,a
   3B41 A3                 3146 	inc	dptr
   3B42 12 4E 6E           3147 	lcall	__gptrget
   3B45 F5 58              3148 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3B47 A3                 3149 	inc	dptr
   3B48 12 4E 6E           3150 	lcall	__gptrget
   3B4B F5 59              3151 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3B4D 90 0A 0A           3152 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3B50 E5 57              3153 	mov	a,_iterateStateMachine_sloc5_1_0
   3B52 F0                 3154 	movx	@dptr,a
   3B53 A3                 3155 	inc	dptr
   3B54 E5 58              3156 	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3B56 F0                 3157 	movx	@dptr,a
   3B57 A3                 3158 	inc	dptr
   3B58 E5 59              3159 	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
   3B5A F0                 3160 	movx	@dptr,a
                           3161 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:497: } while(stateBeingProcessed) ;
   3B5B 90 0A 0A           3162 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3B5E E0                 3163 	movx	a,@dptr
   3B5F F5 57              3164 	mov	_iterateStateMachine_sloc5_1_0,a
   3B61 A3                 3165 	inc	dptr
   3B62 E0                 3166 	movx	a,@dptr
   3B63 F5 58              3167 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3B65 A3                 3168 	inc	dptr
   3B66 E0                 3169 	movx	a,@dptr
   3B67 F5 59              3170 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3B69 E5 57              3171 	mov	a,_iterateStateMachine_sloc5_1_0
   3B6B 45 58              3172 	orl	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3B6D 45 59              3173 	orl	a,(_iterateStateMachine_sloc5_1_0 + 2)
   3B6F 60 03              3174 	jz	00247$
   3B71 02 39 DF           3175 	ljmp	00136$
   3B74                    3176 00247$:
   3B74                    3177 00140$:
                           3178 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:500: if(sm->currentState != target)
   3B74 90 0A 04           3179 	mov	dptr,#_iterateStateMachine_sm_1_1
   3B77 E0                 3180 	movx	a,@dptr
   3B78 F5 5A              3181 	mov	_iterateStateMachine_sloc6_1_0,a
   3B7A A3                 3182 	inc	dptr
   3B7B E0                 3183 	movx	a,@dptr
   3B7C F5 5B              3184 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3B7E A3                 3185 	inc	dptr
   3B7F E0                 3186 	movx	a,@dptr
   3B80 F5 5C              3187 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
   3B82 74 05              3188 	mov	a,#0x05
   3B84 25 5A              3189 	add	a,_iterateStateMachine_sloc6_1_0
   3B86 F5 5A              3190 	mov	_iterateStateMachine_sloc6_1_0,a
   3B88 E4                 3191 	clr	a
   3B89 35 5B              3192 	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
   3B8B F5 5B              3193 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3B8D 85 5A 82           3194 	mov	dpl,_iterateStateMachine_sloc6_1_0
   3B90 85 5B 83           3195 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   3B93 85 5C F0           3196 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   3B96 12 4E 6E           3197 	lcall	__gptrget
   3B99 F5 5A              3198 	mov	_iterateStateMachine_sloc6_1_0,a
   3B9B A3                 3199 	inc	dptr
   3B9C 12 4E 6E           3200 	lcall	__gptrget
   3B9F F5 5B              3201 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3BA1 A3                 3202 	inc	dptr
   3BA2 12 4E 6E           3203 	lcall	__gptrget
   3BA5 F5 5C              3204 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
   3BA7 E5 4E              3205 	mov	a,_iterateStateMachine_sloc2_1_0
   3BA9 B5 5A 0D           3206 	cjne	a,_iterateStateMachine_sloc6_1_0,00248$
   3BAC E5 4F              3207 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3BAE B5 5B 08           3208 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 1),00248$
   3BB1 E5 50              3209 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3BB3 B5 5C 03           3210 	cjne	a,(_iterateStateMachine_sloc6_1_0 + 2),00248$
   3BB6 02 3E C0           3211 	ljmp	00163$
   3BB9                    3212 00248$:
                           3213 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:505: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
   3BB9 74 57              3214 	mov	a,#__str_21
   3BBB C0 E0              3215 	push	acc
   3BBD 74 54              3216 	mov	a,#(__str_21 >> 8)
   3BBF C0 E0              3217 	push	acc
   3BC1 74 80              3218 	mov	a,#0x80
   3BC3 C0 E0              3219 	push	acc
   3BC5 12 46 22           3220 	lcall	_printf
   3BC8 15 81              3221 	dec	sp
   3BCA 15 81              3222 	dec	sp
   3BCC 15 81              3223 	dec	sp
                           3224 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:507: LCA			= 0 ;
   3BCE 90 0A 70           3225 	mov	dptr,#_iterateStateMachine_LCA_4_19
   3BD1 E4                 3226 	clr	a
   3BD2 F0                 3227 	movx	@dptr,a
   3BD3 A3                 3228 	inc	dptr
   3BD4 F0                 3229 	movx	@dptr,a
   3BD5 A3                 3230 	inc	dptr
   3BD6 F0                 3231 	movx	@dptr,a
                           3232 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:508: entryIndex	= targetIndex - 1 ;
   3BD7 90 0A 6F           3233 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3BDA E0                 3234 	movx	a,@dptr
   3BDB 14                 3235 	dec	a
   3BDC F5 57              3236 	mov	_iterateStateMachine_sloc5_1_0,a
   3BDE 90 0A 73           3237 	mov	dptr,#_iterateStateMachine_entryIndex_4_19
   3BE1 F0                 3238 	movx	@dptr,a
                           3239 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:509: exitIndex	= sourceIndex - 1 ;
   3BE2 90 0A 3E           3240 	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
   3BE5 E0                 3241 	movx	a,@dptr
   3BE6 14                 3242 	dec	a
   3BE7 F5 5A              3243 	mov	_iterateStateMachine_sloc6_1_0,a
                           3244 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:511: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   3BE9 85 5A 54           3245 	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc6_1_0
   3BEC 75 55 00           3246 	mov	(_iterateStateMachine_sloc4_1_0 + 1),#0x00
   3BEF A8 57              3247 	mov	r0,_iterateStateMachine_sloc5_1_0
   3BF1 79 00              3248 	mov	r1,#0x00
   3BF3 C0 54              3249 	push	_iterateStateMachine_sloc4_1_0
   3BF5 C0 55              3250 	push	(_iterateStateMachine_sloc4_1_0 + 1)
   3BF7 C0 00              3251 	push	ar0
   3BF9 C0 01              3252 	push	ar1
   3BFB 74 92              3253 	mov	a,#__str_22
   3BFD C0 E0              3254 	push	acc
   3BFF 74 54              3255 	mov	a,#(__str_22 >> 8)
   3C01 C0 E0              3256 	push	acc
   3C03 74 80              3257 	mov	a,#0x80
   3C05 C0 E0              3258 	push	acc
   3C07 12 46 22           3259 	lcall	_printf
   3C0A E5 81              3260 	mov	a,sp
   3C0C 24 F9              3261 	add	a,#0xf9
   3C0E F5 81              3262 	mov	sp,a
                           3263 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:514: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
   3C10 85 57 54           3264 	mov	_iterateStateMachine_sloc4_1_0,_iterateStateMachine_sloc5_1_0
   3C13 85 5A 48           3265 	mov	_iterateStateMachine_sloc0_1_0,_iterateStateMachine_sloc6_1_0
   3C16 75 5A 00           3266 	mov	_iterateStateMachine_sloc6_1_0,#0x00
   3C19                    3267 00141$:
   3C19 E5 48              3268 	mov	a,_iterateStateMachine_sloc0_1_0
   3C1B 75 F0 03           3269 	mov	b,#0x03
   3C1E A4                 3270 	mul	ab
   3C1F 24 0E              3271 	add	a,#_iterateStateMachine_sourceHierarchy_4_19
   3C21 F5 82              3272 	mov	dpl,a
   3C23 E4                 3273 	clr	a
   3C24 34 0A              3274 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
   3C26 F5 83              3275 	mov	dph,a
   3C28 E0                 3276 	movx	a,@dptr
   3C29 F5 57              3277 	mov	_iterateStateMachine_sloc5_1_0,a
   3C2B A3                 3278 	inc	dptr
   3C2C E0                 3279 	movx	a,@dptr
   3C2D F5 58              3280 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3C2F A3                 3281 	inc	dptr
   3C30 E0                 3282 	movx	a,@dptr
   3C31 F5 59              3283 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3C33 E5 54              3284 	mov	a,_iterateStateMachine_sloc4_1_0
   3C35 75 F0 03           3285 	mov	b,#0x03
   3C38 A4                 3286 	mul	ab
   3C39 24 3F              3287 	add	a,#_iterateStateMachine_targetHierarchy_4_19
   3C3B F5 82              3288 	mov	dpl,a
   3C3D E4                 3289 	clr	a
   3C3E 34 0A              3290 	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
   3C40 F5 83              3291 	mov	dph,a
   3C42 E0                 3292 	movx	a,@dptr
   3C43 F5 4B              3293 	mov	_iterateStateMachine_sloc1_1_0,a
   3C45 A3                 3294 	inc	dptr
   3C46 E0                 3295 	movx	a,@dptr
   3C47 F5 4C              3296 	mov	(_iterateStateMachine_sloc1_1_0 + 1),a
   3C49 A3                 3297 	inc	dptr
   3C4A E0                 3298 	movx	a,@dptr
   3C4B F5 4D              3299 	mov	(_iterateStateMachine_sloc1_1_0 + 2),a
   3C4D E5 4B              3300 	mov	a,_iterateStateMachine_sloc1_1_0
   3C4F B5 57 75           3301 	cjne	a,_iterateStateMachine_sloc5_1_0,00211$
   3C52 E5 4C              3302 	mov	a,(_iterateStateMachine_sloc1_1_0 + 1)
   3C54 B5 58 70           3303 	cjne	a,(_iterateStateMachine_sloc5_1_0 + 1),00211$
   3C57 E5 4D              3304 	mov	a,(_iterateStateMachine_sloc1_1_0 + 2)
   3C59 B5 59 6B           3305 	cjne	a,(_iterateStateMachine_sloc5_1_0 + 2),00211$
                           3306 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:516: LCA = sourceHierarchy[exitIndex] ;
   3C5C 90 0A 70           3307 	mov	dptr,#_iterateStateMachine_LCA_4_19
   3C5F E5 57              3308 	mov	a,_iterateStateMachine_sloc5_1_0
   3C61 F0                 3309 	movx	@dptr,a
   3C62 A3                 3310 	inc	dptr
   3C63 E5 58              3311 	mov	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3C65 F0                 3312 	movx	@dptr,a
   3C66 A3                 3313 	inc	dptr
   3C67 E5 59              3314 	mov	a,(_iterateStateMachine_sloc5_1_0 + 2)
   3C69 F0                 3315 	movx	@dptr,a
                           3316 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:518: entryIndex-- ;
   3C6A 15 54              3317 	dec	_iterateStateMachine_sloc4_1_0
   3C6C 90 0A 73           3318 	mov	dptr,#_iterateStateMachine_entryIndex_4_19
   3C6F E5 54              3319 	mov	a,_iterateStateMachine_sloc4_1_0
   3C71 F0                 3320 	movx	@dptr,a
                           3321 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:519: exitIndex-- ;
   3C72 15 48              3322 	dec	_iterateStateMachine_sloc0_1_0
                           3323 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:522: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
   3C74 90 0A 70           3324 	mov	dptr,#_iterateStateMachine_LCA_4_19
   3C77 E0                 3325 	movx	a,@dptr
   3C78 F5 57              3326 	mov	_iterateStateMachine_sloc5_1_0,a
   3C7A A3                 3327 	inc	dptr
   3C7B E0                 3328 	movx	a,@dptr
   3C7C F5 58              3329 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3C7E A3                 3330 	inc	dptr
   3C7F E0                 3331 	movx	a,@dptr
   3C80 F5 59              3332 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3C82 74 06              3333 	mov	a,#0x06
   3C84 25 57              3334 	add	a,_iterateStateMachine_sloc5_1_0
   3C86 F5 57              3335 	mov	_iterateStateMachine_sloc5_1_0,a
   3C88 E4                 3336 	clr	a
   3C89 35 58              3337 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   3C8B F5 58              3338 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3C8D 85 57 82           3339 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3C90 85 58 83           3340 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3C93 85 59 F0           3341 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3C96 12 4E 6E           3342 	lcall	__gptrget
   3C99 F5 57              3343 	mov	_iterateStateMachine_sloc5_1_0,a
   3C9B A3                 3344 	inc	dptr
   3C9C 12 4E 6E           3345 	lcall	__gptrget
   3C9F F5 58              3346 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3CA1 A3                 3347 	inc	dptr
   3CA2 12 4E 6E           3348 	lcall	__gptrget
   3CA5 F5 59              3349 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3CA7 C0 57              3350 	push	_iterateStateMachine_sloc5_1_0
   3CA9 C0 58              3351 	push	(_iterateStateMachine_sloc5_1_0 + 1)
   3CAB C0 59              3352 	push	(_iterateStateMachine_sloc5_1_0 + 2)
   3CAD 74 B8              3353 	mov	a,#__str_23
   3CAF C0 E0              3354 	push	acc
   3CB1 74 54              3355 	mov	a,#(__str_23 >> 8)
   3CB3 C0 E0              3356 	push	acc
   3CB5 74 80              3357 	mov	a,#0x80
   3CB7 C0 E0              3358 	push	acc
   3CB9 12 46 22           3359 	lcall	_printf
   3CBC E5 81              3360 	mov	a,sp
   3CBE 24 FA              3361 	add	a,#0xfa
   3CC0 F5 81              3362 	mov	sp,a
                           3363 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:525: LCAindex++ ;
   3CC2 05 5A              3364 	inc	_iterateStateMachine_sloc6_1_0
   3CC4 02 3C 19           3365 	ljmp	00141$
   3CC7                    3366 00211$:
   3CC7 90 0A 73           3367 	mov	dptr,#_iterateStateMachine_entryIndex_4_19
   3CCA E5 54              3368 	mov	a,_iterateStateMachine_sloc4_1_0
   3CCC F0                 3369 	movx	@dptr,a
                           3370 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:529: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
   3CCD 90 0A 70           3371 	mov	dptr,#_iterateStateMachine_LCA_4_19
   3CD0 E0                 3372 	movx	a,@dptr
   3CD1 F5 5A              3373 	mov	_iterateStateMachine_sloc6_1_0,a
   3CD3 A3                 3374 	inc	dptr
   3CD4 E0                 3375 	movx	a,@dptr
   3CD5 F5 5B              3376 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3CD7 A3                 3377 	inc	dptr
   3CD8 E0                 3378 	movx	a,@dptr
   3CD9 F5 5C              3379 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
   3CDB 74 06              3380 	mov	a,#0x06
   3CDD 25 5A              3381 	add	a,_iterateStateMachine_sloc6_1_0
   3CDF F5 5A              3382 	mov	_iterateStateMachine_sloc6_1_0,a
   3CE1 E4                 3383 	clr	a
   3CE2 35 5B              3384 	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
   3CE4 F5 5B              3385 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3CE6 85 5A 82           3386 	mov	dpl,_iterateStateMachine_sloc6_1_0
   3CE9 85 5B 83           3387 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   3CEC 85 5C F0           3388 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   3CEF 12 4E 6E           3389 	lcall	__gptrget
   3CF2 F5 5A              3390 	mov	_iterateStateMachine_sloc6_1_0,a
   3CF4 A3                 3391 	inc	dptr
   3CF5 12 4E 6E           3392 	lcall	__gptrget
   3CF8 F5 5B              3393 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3CFA A3                 3394 	inc	dptr
   3CFB 12 4E 6E           3395 	lcall	__gptrget
   3CFE F5 5C              3396 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
   3D00 74 06              3397 	mov	a,#0x06
   3D02 25 4E              3398 	add	a,_iterateStateMachine_sloc2_1_0
   3D04 F5 57              3399 	mov	_iterateStateMachine_sloc5_1_0,a
   3D06 E4                 3400 	clr	a
   3D07 35 4F              3401 	addc	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3D09 F5 58              3402 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3D0B 85 50 59           3403 	mov	(_iterateStateMachine_sloc5_1_0 + 2),(_iterateStateMachine_sloc2_1_0 + 2)
   3D0E 85 57 82           3404 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3D11 85 58 83           3405 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3D14 85 59 F0           3406 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3D17 12 4E 6E           3407 	lcall	__gptrget
   3D1A F5 57              3408 	mov	_iterateStateMachine_sloc5_1_0,a
   3D1C A3                 3409 	inc	dptr
   3D1D 12 4E 6E           3410 	lcall	__gptrget
   3D20 F5 58              3411 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3D22 A3                 3412 	inc	dptr
   3D23 12 4E 6E           3413 	lcall	__gptrget
   3D26 F5 59              3414 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3D28 74 06              3415 	mov	a,#0x06
   3D2A 25 51              3416 	add	a,_iterateStateMachine_sloc3_1_0
   3D2C F5 51              3417 	mov	_iterateStateMachine_sloc3_1_0,a
   3D2E E4                 3418 	clr	a
   3D2F 35 52              3419 	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3D31 F5 52              3420 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   3D33 85 51 82           3421 	mov	dpl,_iterateStateMachine_sloc3_1_0
   3D36 85 52 83           3422 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   3D39 85 53 F0           3423 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   3D3C 12 4E 6E           3424 	lcall	__gptrget
   3D3F F5 51              3425 	mov	_iterateStateMachine_sloc3_1_0,a
   3D41 A3                 3426 	inc	dptr
   3D42 12 4E 6E           3427 	lcall	__gptrget
   3D45 F5 52              3428 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   3D47 A3                 3429 	inc	dptr
   3D48 12 4E 6E           3430 	lcall	__gptrget
   3D4B F5 53              3431 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   3D4D C0 5A              3432 	push	_iterateStateMachine_sloc6_1_0
   3D4F C0 5B              3433 	push	(_iterateStateMachine_sloc6_1_0 + 1)
   3D51 C0 5C              3434 	push	(_iterateStateMachine_sloc6_1_0 + 2)
   3D53 C0 57              3435 	push	_iterateStateMachine_sloc5_1_0
   3D55 C0 58              3436 	push	(_iterateStateMachine_sloc5_1_0 + 1)
   3D57 C0 59              3437 	push	(_iterateStateMachine_sloc5_1_0 + 2)
   3D59 C0 51              3438 	push	_iterateStateMachine_sloc3_1_0
   3D5B C0 52              3439 	push	(_iterateStateMachine_sloc3_1_0 + 1)
   3D5D C0 53              3440 	push	(_iterateStateMachine_sloc3_1_0 + 2)
   3D5F 74 D8              3441 	mov	a,#__str_24
   3D61 C0 E0              3442 	push	acc
   3D63 74 54              3443 	mov	a,#(__str_24 >> 8)
   3D65 C0 E0              3444 	push	acc
   3D67 74 80              3445 	mov	a,#0x80
   3D69 C0 E0              3446 	push	acc
   3D6B 12 46 22           3447 	lcall	_printf
   3D6E E5 81              3448 	mov	a,sp
   3D70 24 F4              3449 	add	a,#0xf4
   3D72 F5 81              3450 	mov	sp,a
                           3451 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:530: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   3D74 85 48 5A           3452 	mov	_iterateStateMachine_sloc6_1_0,_iterateStateMachine_sloc0_1_0
   3D77 75 5B 00           3453 	mov	(_iterateStateMachine_sloc6_1_0 + 1),#0x00
   3D7A A8 54              3454 	mov	r0,_iterateStateMachine_sloc4_1_0
   3D7C 79 00              3455 	mov	r1,#0x00
   3D7E C0 5A              3456 	push	_iterateStateMachine_sloc6_1_0
   3D80 C0 5B              3457 	push	(_iterateStateMachine_sloc6_1_0 + 1)
   3D82 C0 00              3458 	push	ar0
   3D84 C0 01              3459 	push	ar1
   3D86 74 92              3460 	mov	a,#__str_22
   3D88 C0 E0              3461 	push	acc
   3D8A 74 54              3462 	mov	a,#(__str_22 >> 8)
   3D8C C0 E0              3463 	push	acc
   3D8E 74 80              3464 	mov	a,#0x80
   3D90 C0 E0              3465 	push	acc
   3D92 12 46 22           3466 	lcall	_printf
   3D95 E5 81              3467 	mov	a,sp
   3D97 24 F9              3468 	add	a,#0xf9
   3D99 F5 81              3469 	mov	sp,a
                           3470 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:533: sourceIndex	= exitIndex + 1 ;
   3D9B E5 48              3471 	mov	a,_iterateStateMachine_sloc0_1_0
   3D9D 04                 3472 	inc	a
   3D9E F8                 3473 	mov	r0,a
                           3474 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:536: while(exitIndex < sourceIndex)
   3D9F 75 5A 00           3475 	mov	_iterateStateMachine_sloc6_1_0,#0x00
   3DA2                    3476 00144$:
   3DA2 C3                 3477 	clr	c
   3DA3 E5 5A              3478 	mov	a,_iterateStateMachine_sloc6_1_0
   3DA5 98                 3479 	subb	a,r0
   3DA6 50 70              3480 	jnc	00146$
                           3481 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:539: printf("\t\t\t\t") ;
   3DA8 C0 00              3482 	push	ar0
   3DAA C0 00              3483 	push	ar0
   3DAC 74 E7              3484 	mov	a,#__str_17
   3DAE C0 E0              3485 	push	acc
   3DB0 74 53              3486 	mov	a,#(__str_17 >> 8)
   3DB2 C0 E0              3487 	push	acc
   3DB4 74 80              3488 	mov	a,#0x80
   3DB6 C0 E0              3489 	push	acc
   3DB8 12 46 22           3490 	lcall	_printf
   3DBB 15 81              3491 	dec	sp
   3DBD 15 81              3492 	dec	sp
   3DBF 15 81              3493 	dec	sp
                           3494 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:542: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   3DC1 90 0A 04           3495 	mov	dptr,#_iterateStateMachine_sm_1_1
   3DC4 E0                 3496 	movx	a,@dptr
   3DC5 F5 57              3497 	mov	_iterateStateMachine_sloc5_1_0,a
   3DC7 A3                 3498 	inc	dptr
   3DC8 E0                 3499 	movx	a,@dptr
   3DC9 F5 58              3500 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3DCB A3                 3501 	inc	dptr
   3DCC E0                 3502 	movx	a,@dptr
   3DCD F5 59              3503 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3DCF E5 5A              3504 	mov	a,_iterateStateMachine_sloc6_1_0
   3DD1 75 F0 03           3505 	mov	b,#0x03
   3DD4 A4                 3506 	mul	ab
   3DD5 24 0E              3507 	add	a,#_iterateStateMachine_sourceHierarchy_4_19
   3DD7 F5 82              3508 	mov	dpl,a
   3DD9 E4                 3509 	clr	a
   3DDA 34 0A              3510 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
   3DDC F5 83              3511 	mov	dph,a
   3DDE E0                 3512 	movx	a,@dptr
   3DDF F5 54              3513 	mov	_iterateStateMachine_sloc4_1_0,a
   3DE1 A3                 3514 	inc	dptr
   3DE2 E0                 3515 	movx	a,@dptr
   3DE3 F5 55              3516 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3DE5 A3                 3517 	inc	dptr
   3DE6 E0                 3518 	movx	a,@dptr
   3DE7 F5 56              3519 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   3DE9 90 09 FA           3520 	mov	dptr,#_callStateHandler_PARM_2
   3DEC E5 54              3521 	mov	a,_iterateStateMachine_sloc4_1_0
   3DEE F0                 3522 	movx	@dptr,a
   3DEF A3                 3523 	inc	dptr
   3DF0 E5 55              3524 	mov	a,(_iterateStateMachine_sloc4_1_0 + 1)
   3DF2 F0                 3525 	movx	@dptr,a
   3DF3 A3                 3526 	inc	dptr
   3DF4 E5 56              3527 	mov	a,(_iterateStateMachine_sloc4_1_0 + 2)
   3DF6 F0                 3528 	movx	@dptr,a
   3DF7 90 09 FD           3529 	mov	dptr,#_callStateHandler_PARM_3
   3DFA 74 11              3530 	mov	a,#_exitEvent
   3DFC F0                 3531 	movx	@dptr,a
   3DFD A3                 3532 	inc	dptr
   3DFE 74 0F              3533 	mov	a,#(_exitEvent >> 8)
   3E00 F0                 3534 	movx	@dptr,a
   3E01 A3                 3535 	inc	dptr
   3E02 E4                 3536 	clr	a
   3E03 F0                 3537 	movx	@dptr,a
   3E04 85 57 82           3538 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3E07 85 58 83           3539 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3E0A 85 59 F0           3540 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3E0D 12 2B C8           3541 	lcall	_callStateHandler
   3E10 D0 00              3542 	pop	ar0
                           3543 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:544: exitIndex++ ;
   3E12 05 5A              3544 	inc	_iterateStateMachine_sloc6_1_0
   3E14 D0 00              3545 	pop	ar0
   3E16 80 8A              3546 	sjmp	00144$
   3E18                    3547 00146$:
                           3548 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:547: targetIndex = entryIndex + 1 ;
   3E18 90 0A 73           3549 	mov	dptr,#_iterateStateMachine_entryIndex_4_19
   3E1B E0                 3550 	movx	a,@dptr
   3E1C F8                 3551 	mov	r0,a
   3E1D 08                 3552 	inc	r0
                           3553 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:549: while(targetIndex--)
   3E1E 88 5A              3554 	mov	_iterateStateMachine_sloc6_1_0,r0
   3E20                    3555 00147$:
   3E20 A9 5A              3556 	mov	r1,_iterateStateMachine_sloc6_1_0
   3E22 15 5A              3557 	dec	_iterateStateMachine_sloc6_1_0
   3E24 E9                 3558 	mov	a,r1
   3E25 60 66              3559 	jz	00149$
                           3560 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:552: printf("\t\t\t\t") ;
   3E27 74 E7              3561 	mov	a,#__str_17
   3E29 C0 E0              3562 	push	acc
   3E2B 74 53              3563 	mov	a,#(__str_17 >> 8)
   3E2D C0 E0              3564 	push	acc
   3E2F 74 80              3565 	mov	a,#0x80
   3E31 C0 E0              3566 	push	acc
   3E33 12 46 22           3567 	lcall	_printf
   3E36 15 81              3568 	dec	sp
   3E38 15 81              3569 	dec	sp
   3E3A 15 81              3570 	dec	sp
                           3571 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:554: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   3E3C 90 0A 04           3572 	mov	dptr,#_iterateStateMachine_sm_1_1
   3E3F E0                 3573 	movx	a,@dptr
   3E40 F5 57              3574 	mov	_iterateStateMachine_sloc5_1_0,a
   3E42 A3                 3575 	inc	dptr
   3E43 E0                 3576 	movx	a,@dptr
   3E44 F5 58              3577 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3E46 A3                 3578 	inc	dptr
   3E47 E0                 3579 	movx	a,@dptr
   3E48 F5 59              3580 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3E4A E5 5A              3581 	mov	a,_iterateStateMachine_sloc6_1_0
   3E4C 75 F0 03           3582 	mov	b,#0x03
   3E4F A4                 3583 	mul	ab
   3E50 24 3F              3584 	add	a,#_iterateStateMachine_targetHierarchy_4_19
   3E52 F5 82              3585 	mov	dpl,a
   3E54 E4                 3586 	clr	a
   3E55 34 0A              3587 	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
   3E57 F5 83              3588 	mov	dph,a
   3E59 E0                 3589 	movx	a,@dptr
   3E5A F5 54              3590 	mov	_iterateStateMachine_sloc4_1_0,a
   3E5C A3                 3591 	inc	dptr
   3E5D E0                 3592 	movx	a,@dptr
   3E5E F5 55              3593 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3E60 A3                 3594 	inc	dptr
   3E61 E0                 3595 	movx	a,@dptr
   3E62 F5 56              3596 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   3E64 90 09 FA           3597 	mov	dptr,#_callStateHandler_PARM_2
   3E67 E5 54              3598 	mov	a,_iterateStateMachine_sloc4_1_0
   3E69 F0                 3599 	movx	@dptr,a
   3E6A A3                 3600 	inc	dptr
   3E6B E5 55              3601 	mov	a,(_iterateStateMachine_sloc4_1_0 + 1)
   3E6D F0                 3602 	movx	@dptr,a
   3E6E A3                 3603 	inc	dptr
   3E6F E5 56              3604 	mov	a,(_iterateStateMachine_sloc4_1_0 + 2)
   3E71 F0                 3605 	movx	@dptr,a
   3E72 90 09 FD           3606 	mov	dptr,#_callStateHandler_PARM_3
   3E75 74 10              3607 	mov	a,#_enterEvent
   3E77 F0                 3608 	movx	@dptr,a
   3E78 A3                 3609 	inc	dptr
   3E79 74 0F              3610 	mov	a,#(_enterEvent >> 8)
   3E7B F0                 3611 	movx	@dptr,a
   3E7C A3                 3612 	inc	dptr
   3E7D E4                 3613 	clr	a
   3E7E F0                 3614 	movx	@dptr,a
   3E7F 85 57 82           3615 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3E82 85 58 83           3616 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3E85 85 59 F0           3617 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3E88 12 2B C8           3618 	lcall	_callStateHandler
   3E8B 80 93              3619 	sjmp	00147$
   3E8D                    3620 00149$:
                           3621 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:557: sm->currentState = target ;
   3E8D 90 0A 04           3622 	mov	dptr,#_iterateStateMachine_sm_1_1
   3E90 E0                 3623 	movx	a,@dptr
   3E91 F5 5A              3624 	mov	_iterateStateMachine_sloc6_1_0,a
   3E93 A3                 3625 	inc	dptr
   3E94 E0                 3626 	movx	a,@dptr
   3E95 F5 5B              3627 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3E97 A3                 3628 	inc	dptr
   3E98 E0                 3629 	movx	a,@dptr
   3E99 F5 5C              3630 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
   3E9B 74 05              3631 	mov	a,#0x05
   3E9D 25 5A              3632 	add	a,_iterateStateMachine_sloc6_1_0
   3E9F F5 5A              3633 	mov	_iterateStateMachine_sloc6_1_0,a
   3EA1 E4                 3634 	clr	a
   3EA2 35 5B              3635 	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
   3EA4 F5 5B              3636 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3EA6 85 5A 82           3637 	mov	dpl,_iterateStateMachine_sloc6_1_0
   3EA9 85 5B 83           3638 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   3EAC 85 5C F0           3639 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   3EAF E5 4E              3640 	mov	a,_iterateStateMachine_sloc2_1_0
   3EB1 12 42 42           3641 	lcall	__gptrput
   3EB4 A3                 3642 	inc	dptr
   3EB5 E5 4F              3643 	mov	a,(_iterateStateMachine_sloc2_1_0 + 1)
   3EB7 12 42 42           3644 	lcall	__gptrput
   3EBA A3                 3645 	inc	dptr
   3EBB E5 50              3646 	mov	a,(_iterateStateMachine_sloc2_1_0 + 2)
   3EBD 12 42 42           3647 	lcall	__gptrput
   3EC0                    3648 00163$:
                           3649 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:565: sm->forceTransition = true ;
   3EC0 90 0A 04           3650 	mov	dptr,#_iterateStateMachine_sm_1_1
   3EC3 E0                 3651 	movx	a,@dptr
   3EC4 F5 5A              3652 	mov	_iterateStateMachine_sloc6_1_0,a
   3EC6 A3                 3653 	inc	dptr
   3EC7 E0                 3654 	movx	a,@dptr
   3EC8 F5 5B              3655 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3ECA A3                 3656 	inc	dptr
   3ECB E0                 3657 	movx	a,@dptr
   3ECC F5 5C              3658 	mov	(_iterateStateMachine_sloc6_1_0 + 2),a
   3ECE 74 1F              3659 	mov	a,#0x1F
   3ED0 25 5A              3660 	add	a,_iterateStateMachine_sloc6_1_0
   3ED2 F5 5A              3661 	mov	_iterateStateMachine_sloc6_1_0,a
   3ED4 E4                 3662 	clr	a
   3ED5 35 5B              3663 	addc	a,(_iterateStateMachine_sloc6_1_0 + 1)
   3ED7 F5 5B              3664 	mov	(_iterateStateMachine_sloc6_1_0 + 1),a
   3ED9 85 5A 82           3665 	mov	dpl,_iterateStateMachine_sloc6_1_0
   3EDC 85 5B 83           3666 	mov	dph,(_iterateStateMachine_sloc6_1_0 + 1)
   3EDF 85 5C F0           3667 	mov	b,(_iterateStateMachine_sloc6_1_0 + 2)
   3EE2 74 01              3668 	mov	a,#0x01
   3EE4 12 42 42           3669 	lcall	__gptrput
   3EE7 80 70              3670 	sjmp	00170$
   3EE9                    3671 00169$:
                           3672 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:570: action = callStateHandler(sm, (state_t*)(sm->currentState), &doEvent) ;
   3EE9 C0 05              3673 	push	ar5
   3EEB C0 06              3674 	push	ar6
   3EED C0 07              3675 	push	ar7
   3EEF 74 05              3676 	mov	a,#0x05
   3EF1 2A                 3677 	add	a,r2
   3EF2 F8                 3678 	mov	r0,a
   3EF3 E4                 3679 	clr	a
   3EF4 3B                 3680 	addc	a,r3
   3EF5 F9                 3681 	mov	r1,a
   3EF6 8C 05              3682 	mov	ar5,r4
   3EF8 88 82              3683 	mov	dpl,r0
   3EFA 89 83              3684 	mov	dph,r1
   3EFC 8D F0              3685 	mov	b,r5
   3EFE 12 4E 6E           3686 	lcall	__gptrget
   3F01 F8                 3687 	mov	r0,a
   3F02 A3                 3688 	inc	dptr
   3F03 12 4E 6E           3689 	lcall	__gptrget
   3F06 F9                 3690 	mov	r1,a
   3F07 A3                 3691 	inc	dptr
   3F08 12 4E 6E           3692 	lcall	__gptrget
   3F0B FD                 3693 	mov	r5,a
   3F0C 90 09 FA           3694 	mov	dptr,#_callStateHandler_PARM_2
   3F0F E8                 3695 	mov	a,r0
   3F10 F0                 3696 	movx	@dptr,a
   3F11 A3                 3697 	inc	dptr
   3F12 E9                 3698 	mov	a,r1
   3F13 F0                 3699 	movx	@dptr,a
   3F14 A3                 3700 	inc	dptr
   3F15 ED                 3701 	mov	a,r5
   3F16 F0                 3702 	movx	@dptr,a
   3F17 90 09 FD           3703 	mov	dptr,#_callStateHandler_PARM_3
   3F1A 74 0F              3704 	mov	a,#_doEvent
   3F1C F0                 3705 	movx	@dptr,a
   3F1D A3                 3706 	inc	dptr
   3F1E 74 0F              3707 	mov	a,#(_doEvent >> 8)
   3F20 F0                 3708 	movx	@dptr,a
   3F21 A3                 3709 	inc	dptr
   3F22 E4                 3710 	clr	a
   3F23 F0                 3711 	movx	@dptr,a
   3F24 8A 82              3712 	mov	dpl,r2
   3F26 8B 83              3713 	mov	dph,r3
   3F28 8C F0              3714 	mov	b,r4
   3F2A C0 05              3715 	push	ar5
   3F2C C0 06              3716 	push	ar6
   3F2E C0 07              3717 	push	ar7
   3F30 12 2B C8           3718 	lcall	_callStateHandler
   3F33 AA 82              3719 	mov	r2,dpl
   3F35 D0 07              3720 	pop	ar7
   3F37 D0 06              3721 	pop	ar6
   3F39 D0 05              3722 	pop	ar5
                           3723 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:572: if(action == TRANSITION)
   3F3B BA 02 02           3724 	cjne	r2,#0x02,00253$
   3F3E 80 08              3725 	sjmp	00254$
   3F40                    3726 00253$:
   3F40 D0 07              3727 	pop	ar7
   3F42 D0 06              3728 	pop	ar6
   3F44 D0 05              3729 	pop	ar5
   3F46 80 11              3730 	sjmp	00170$
   3F48                    3731 00254$:
   3F48 D0 07              3732 	pop	ar7
   3F4A D0 06              3733 	pop	ar6
   3F4C D0 05              3734 	pop	ar5
                           3735 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:574: sm->forceTransition = true ;
   3F4E 8D 82              3736 	mov	dpl,r5
   3F50 8E 83              3737 	mov	dph,r6
   3F52 8F F0              3738 	mov	b,r7
   3F54 74 01              3739 	mov	a,#0x01
   3F56 12 42 42           3740 	lcall	__gptrput
   3F59                    3741 00170$:
                           3742 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:579: printf("\t\tEvent queue empty.\n") ;
   3F59 74 F6              3743 	mov	a,#__str_25
   3F5B C0 E0              3744 	push	acc
   3F5D 74 54              3745 	mov	a,#(__str_25 >> 8)
   3F5F C0 E0              3746 	push	acc
   3F61 74 80              3747 	mov	a,#0x80
   3F63 C0 E0              3748 	push	acc
   3F65 12 46 22           3749 	lcall	_printf
   3F68 15 81              3750 	dec	sp
   3F6A 15 81              3751 	dec	sp
   3F6C 15 81              3752 	dec	sp
   3F6E 22                 3753 	ret
                           3754 	.area CSEG    (CODE)
                           3755 	.area CONST   (CODE)
   5260                    3756 __str_0:
   5260 09                 3757 	.db 0x09
   5261 09                 3758 	.db 0x09
   5262 09                 3759 	.db 0x09
   5263 43 61 6C 6C 69 6E  3760 	.ascii "Calling state: %s, event: %s, "
        67 20 73 74 61 74
        65 3A 20 25 73 2C
        20 65 76 65 6E 74
        3A 20 25 73 2C 20
   5281 00                 3761 	.db 0x00
   5282                    3762 __str_1:
   5282 3C 55 53 45 52 5F  3763 	.ascii "<USER_EVENT>"
        45 56 45 4E 54 3E
   528E 00                 3764 	.db 0x00
   528F                    3765 __str_2:
   528F 72 65 73 70 6F 6E  3766 	.ascii "response: %s "
        73 65 3A 20 25 73
        20
   529C 00                 3767 	.db 0x00
   529D                    3768 __str_3:
   529D 74 6F 20 25 73 20  3769 	.ascii "to %s "
   52A3 00                 3770 	.db 0x00
   52A4                    3771 __str_4:
   52A4 0A                 3772 	.db 0x0A
   52A5 00                 3773 	.db 0x00
   52A6                    3774 __str_5:
   52A6 09                 3775 	.db 0x09
   52A7 69 74 65 72 61 74  3776 	.ascii "iterating %s"
        69 6E 67 20 25 73
   52B3 0A                 3777 	.db 0x0A
   52B4 00                 3778 	.db 0x00
   52B5                    3779 __str_6:
   52B5 09                 3780 	.db 0x09
   52B6 09                 3781 	.db 0x09
   52B7 69 6E 69 74 69 61  3782 	.ascii "initializing..."
        6C 69 7A 69 6E 67
        2E 2E 2E
   52C6 0A                 3783 	.db 0x0A
   52C7 00                 3784 	.db 0x00
   52C8                    3785 __str_7:
   52C8 09                 3786 	.db 0x09
   52C9 09                 3787 	.db 0x09
   52CA 50 72 6F 63 65 73  3788 	.ascii "Processing event..."
        73 69 6E 67 20 65
        76 65 6E 74 2E 2E
        2E
   52DD 0A                 3789 	.db 0x0A
   52DE 00                 3790 	.db 0x00
   52DF                    3791 __str_8:
   52DF 09                 3792 	.db 0x09
   52E0 09                 3793 	.db 0x09
   52E1 09                 3794 	.db 0x09
   52E2 09                 3795 	.db 0x09
   52E3 09                 3796 	.db 0x09
   52E4 09                 3797 	.db 0x09
   52E5 09                 3798 	.db 0x09
   52E6 6D 6F 76 69 6E 67  3799 	.ascii "moving to parent: %s"
        20 74 6F 20 70 61
        72 65 6E 74 3A 20
        25 73
   52FA 0A                 3800 	.db 0x0A
   52FB 00                 3801 	.db 0x00
   52FC                    3802 __str_9:
   52FC 3C 72 6F 6F 74 3E  3803 	.ascii "<root>"
   5302 00                 3804 	.db 0x00
   5303                    3805 __str_10:
   5303 09                 3806 	.db 0x09
   5304 09                 3807 	.db 0x09
   5305 09                 3808 	.db 0x09
   5306 09                 3809 	.db 0x09
   5307 53 65 6C 66 20 74  3810 	.ascii "Self transition."
        72 61 6E 73 69 74
        69 6F 6E 2E
   5317 0A                 3811 	.db 0x0A
   5318 00                 3812 	.db 0x00
   5319                    3813 __str_11:
   5319 09                 3814 	.db 0x09
   531A 09                 3815 	.db 0x09
   531B 09                 3816 	.db 0x09
   531C 09                 3817 	.db 0x09
   531D 54 72 61 6E 73 69  3818 	.ascii "Transition to direct child."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 63 68 69
        6C 64 2E
   5338 0A                 3819 	.db 0x0A
   5339 00                 3820 	.db 0x00
   533A                    3821 __str_12:
   533A 09                 3822 	.db 0x09
   533B 09                 3823 	.db 0x09
   533C 09                 3824 	.db 0x09
   533D 09                 3825 	.db 0x09
   533E 54 72 61 6E 73 69  3826 	.ascii "Transition to direct peer."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 65 65
        72 2E
   5358 0A                 3827 	.db 0x0A
   5359 00                 3828 	.db 0x00
   535A                    3829 __str_13:
   535A 09                 3830 	.db 0x09
   535B 09                 3831 	.db 0x09
   535C 09                 3832 	.db 0x09
   535D 09                 3833 	.db 0x09
   535E 54 72 61 6E 73 69  3834 	.ascii "Transition to direct parent."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 61 72
        65 6E 74 2E
   537A 0A                 3835 	.db 0x0A
   537B 00                 3836 	.db 0x00
   537C                    3837 __str_14:
   537C 09                 3838 	.db 0x09
   537D 09                 3839 	.db 0x09
   537E 09                 3840 	.db 0x09
   537F 09                 3841 	.db 0x09
   5380 53 63 61 6E 6E 69  3842 	.ascii "Scanning source hierarchy..."
        6E 67 20 73 6F 75
        72 63 65 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   539C 0A                 3843 	.db 0x0A
   539D 00                 3844 	.db 0x00
   539E                    3845 __str_15:
   539E 09                 3846 	.db 0x09
   539F 09                 3847 	.db 0x09
   53A0 09                 3848 	.db 0x09
   53A1 09                 3849 	.db 0x09
   53A2 09                 3850 	.db 0x09
   53A3 73 6F 75 72 63 65  3851 	.ascii "sourceHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   53BB 0A                 3852 	.db 0x0A
   53BC 00                 3853 	.db 0x00
   53BD                    3854 __str_16:
   53BD 09                 3855 	.db 0x09
   53BE 09                 3856 	.db 0x09
   53BF 09                 3857 	.db 0x09
   53C0 09                 3858 	.db 0x09
   53C1 09                 3859 	.db 0x09
   53C2 09                 3860 	.db 0x09
   53C3 46 6F 75 6E 64 20  3861 	.ascii "Found target as ancestor of source"
        74 61 72 67 65 74
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 73 6F
        75 72 63 65
   53E5 0A                 3862 	.db 0x0A
   53E6 00                 3863 	.db 0x00
   53E7                    3864 __str_17:
   53E7 09                 3865 	.db 0x09
   53E8 09                 3866 	.db 0x09
   53E9 09                 3867 	.db 0x09
   53EA 09                 3868 	.db 0x09
   53EB 00                 3869 	.db 0x00
   53EC                    3870 __str_18:
   53EC 09                 3871 	.db 0x09
   53ED 09                 3872 	.db 0x09
   53EE 09                 3873 	.db 0x09
   53EF 09                 3874 	.db 0x09
   53F0 53 63 61 6E 6E 69  3875 	.ascii "Scanning target hierarchy..."
        6E 67 20 74 61 72
        67 65 74 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   540C 0A                 3876 	.db 0x0A
   540D 00                 3877 	.db 0x00
   540E                    3878 __str_19:
   540E 09                 3879 	.db 0x09
   540F 09                 3880 	.db 0x09
   5410 09                 3881 	.db 0x09
   5411 09                 3882 	.db 0x09
   5412 09                 3883 	.db 0x09
   5413 74 61 72 67 65 74  3884 	.ascii "targetHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   542B 0A                 3885 	.db 0x0A
   542C 00                 3886 	.db 0x00
   542D                    3887 __str_20:
   542D 09                 3888 	.db 0x09
   542E 09                 3889 	.db 0x09
   542F 09                 3890 	.db 0x09
   5430 09                 3891 	.db 0x09
   5431 09                 3892 	.db 0x09
   5432 09                 3893 	.db 0x09
   5433 46 6F 75 6E 64 20  3894 	.ascii "Found source as ancestor of target"
        73 6F 75 72 63 65
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 74 61
        72 67 65 74
   5455 0A                 3895 	.db 0x0A
   5456 00                 3896 	.db 0x00
   5457                    3897 __str_21:
   5457 09                 3898 	.db 0x09
   5458 09                 3899 	.db 0x09
   5459 09                 3900 	.db 0x09
   545A 09                 3901 	.db 0x09
   545B 53 74 69 6C 6C 20  3902 	.ascii "Still haven't found relationship. Scanning for LCA..."
        68 61 76 65 6E 27
        74 20 66 6F 75 6E
        64 20 72 65 6C 61
        74 69 6F 6E 73 68
        69 70 2E 20 53 63
        61 6E 6E 69 6E 67
        20 66 6F 72 20 4C
        43 41 2E 2E 2E
   5490 0A                 3903 	.db 0x0A
   5491 00                 3904 	.db 0x00
   5492                    3905 __str_22:
   5492 09                 3906 	.db 0x09
   5493 09                 3907 	.db 0x09
   5494 09                 3908 	.db 0x09
   5495 09                 3909 	.db 0x09
   5496 09                 3910 	.db 0x09
   5497 65 6E 74 72 79 49  3911 	.ascii "entryIndex = %d, exitIndex = %d"
        6E 64 65 78 20 3D
        20 25 64 2C 20 65
        78 69 74 49 6E 64
        65 78 20 3D 20 25
        64
   54B6 0A                 3912 	.db 0x0A
   54B7 00                 3913 	.db 0x00
   54B8                    3914 __str_23:
   54B8 09                 3915 	.db 0x09
   54B9 09                 3916 	.db 0x09
   54BA 09                 3917 	.db 0x09
   54BB 09                 3918 	.db 0x09
   54BC 09                 3919 	.db 0x09
   54BD 43 75 72 72 65 6E  3920 	.ascii "Current LCA candidate: %s"
        74 20 4C 43 41 20
        63 61 6E 64 69 64
        61 74 65 3A 20 25
        73
   54D6 0A                 3921 	.db 0x0A
   54D7 00                 3922 	.db 0x00
   54D8                    3923 __str_24:
   54D8 09                 3924 	.db 0x09
   54D9 09                 3925 	.db 0x09
   54DA 09                 3926 	.db 0x09
   54DB 09                 3927 	.db 0x09
   54DC 09                 3928 	.db 0x09
   54DD 4C 43 41 20 6F 66  3929 	.ascii "LCA of %s and %s is: %s"
        20 25 73 20 61 6E
        64 20 25 73 20 69
        73 3A 20 25 73
   54F4 0A                 3930 	.db 0x0A
   54F5 00                 3931 	.db 0x00
   54F6                    3932 __str_25:
   54F6 09                 3933 	.db 0x09
   54F7 09                 3934 	.db 0x09
   54F8 45 76 65 6E 74 20  3935 	.ascii "Event queue empty."
        71 75 65 75 65 20
        65 6D 70 74 79 2E
   550A 0A                 3936 	.db 0x0A
   550B 00                 3937 	.db 0x00
   550C                    3938 __str_26:
   550C 53 55 42 53 54 41  3939 	.ascii "SUBSTATE_GET_INFO"
        54 45 5F 47 45 54
        5F 49 4E 46 4F
   551D 00                 3940 	.db 0x00
   551E                    3941 __str_27:
   551E 53 55 42 53 54 41  3942 	.ascii "SUBSTATE_ENTRY"
        54 45 5F 45 4E 54
        52 59
   552C 00                 3943 	.db 0x00
   552D                    3944 __str_28:
   552D 53 55 42 53 54 41  3945 	.ascii "SUBSTATE_INITIAL_TRANSITION"
        54 45 5F 49 4E 49
        54 49 41 4C 5F 54
        52 41 4E 53 49 54
        49 4F 4E
   5548 00                 3946 	.db 0x00
   5549                    3947 __str_29:
   5549 53 55 42 53 54 41  3948 	.ascii "SUBSTATE_JUMP_TO_HISTORY_DEFAULT"
        54 45 5F 4A 55 4D
        50 5F 54 4F 5F 48
        49 53 54 4F 52 59
        5F 44 45 46 41 55
        4C 54
   5569 00                 3949 	.db 0x00
   556A                    3950 __str_30:
   556A 53 55 42 53 54 41  3951 	.ascii "SUBSTATE_DO"
        54 45 5F 44 4F
   5575 00                 3952 	.db 0x00
   5576                    3953 __str_31:
   5576 53 55 42 53 54 41  3954 	.ascii "SUBSTATE_EXIT"
        54 45 5F 45 58 49
        54
   5583 00                 3955 	.db 0x00
   5584                    3956 __str_32:
   5584 49 47 4E 4F 52 45  3957 	.ascii "IGNORED"
        44
   558B 00                 3958 	.db 0x00
   558C                    3959 __str_33:
   558C 48 41 4E 44 4C 45  3960 	.ascii "HANDLED"
        44
   5593 00                 3961 	.db 0x00
   5594                    3962 __str_34:
   5594 54 52 41 4E 53 49  3963 	.ascii "TRANSITION"
        54 49 4F 4E
   559E 00                 3964 	.db 0x00
   559F                    3965 __str_35:
   559F 54 52 41 4E 53 49  3966 	.ascii "TRANSITION_TO_HISTORY"
        54 49 4F 4E 5F 54
        4F 5F 48 49 53 54
        4F 52 59
   55B4 00                 3967 	.db 0x00
                           3968 	.area XINIT   (CODE)
   55D6                    3969 __xinit__eventTypes:
   55D6 0C 55 80           3970 	.byte __str_26,(__str_26 >> 8),#0x80
   55D9 1E 55 80           3971 	.byte __str_27,(__str_27 >> 8),#0x80
   55DC 2D 55 80           3972 	.byte __str_28,(__str_28 >> 8),#0x80
   55DF 49 55 80           3973 	.byte __str_29,(__str_29 >> 8),#0x80
   55E2 6A 55 80           3974 	.byte __str_30,(__str_30 >> 8),#0x80
   55E5 76 55 80           3975 	.byte __str_31,(__str_31 >> 8),#0x80
   55E8                    3976 __xinit__responseTypes:
   55E8 84 55 80           3977 	.byte __str_32,(__str_32 >> 8),#0x80
   55EB 8C 55 80           3978 	.byte __str_33,(__str_33 >> 8),#0x80
   55EE 94 55 80           3979 	.byte __str_34,(__str_34 >> 8),#0x80
   55F1 9F 55 80           3980 	.byte __str_35,(__str_35 >> 8),#0x80
   55F4                    3981 __xinit__initialTransitionEvent:
   55F4 02                 3982 	.db #0x02
   55F5                    3983 __xinit__jumpToHistoryEvent:
   55F5 03                 3984 	.db #0x03
   55F6                    3985 __xinit__doEvent:
   55F6 04                 3986 	.db #0x04
   55F7                    3987 __xinit__enterEvent:
   55F7 01                 3988 	.db #0x01
   55F8                    3989 __xinit__exitEvent:
   55F8 05                 3990 	.db #0x05
                           3991 	.area CABS    (ABS,CODE)
