                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sat Jan 02 19:24:46 2010
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
   004B                      56 	.ds 1
   004C                      57 _iterateStateMachine_sloc2_1_0:
   004C                      58 	.ds 3
   004F                      59 _iterateStateMachine_sloc3_1_0:
   004F                      60 	.ds 3
   0052                      61 _iterateStateMachine_sloc4_1_0:
   0052                      62 	.ds 3
   0055                      63 _iterateStateMachine_sloc5_1_0:
   0055                      64 	.ds 3
                             65 ;--------------------------------------------------------
                             66 ; overlayable items in internal ram 
                             67 ;--------------------------------------------------------
                             68 	.area OSEG    (OVR,DATA)
                             69 ;--------------------------------------------------------
                             70 ; indirectly addressable internal ram data
                             71 ;--------------------------------------------------------
                             72 	.area ISEG    (DATA)
                             73 ;--------------------------------------------------------
                             74 ; absolute internal ram data
                             75 ;--------------------------------------------------------
                             76 	.area IABS    (ABS,DATA)
                             77 	.area IABS    (ABS,DATA)
                             78 ;--------------------------------------------------------
                             79 ; bit data
                             80 ;--------------------------------------------------------
                             81 	.area BSEG    (BIT)
                             82 ;--------------------------------------------------------
                             83 ; paged external ram data
                             84 ;--------------------------------------------------------
                             85 	.area PSEG    (PAG,XDATA)
                             86 ;--------------------------------------------------------
                             87 ; external ram data
                             88 ;--------------------------------------------------------
                             89 	.area XSEG    (XDATA)
   0955                      90 _stateMachines::
   0955                      91 	.ds 150
   09EB                      92 _allocateStateMachineMemory_PARM_2:
   09EB                      93 	.ds 2
   09ED                      94 _allocateStateMachineMemory_eventQueueDepth_1_1:
   09ED                      95 	.ds 2
   09EF                      96 _deallocateStateMachineMemory_PARM_2:
   09EF                      97 	.ds 2
   09F1                      98 _deallocateStateMachineMemory_instance_1_1:
   09F1                      99 	.ds 3
   09F4                     100 _registerStateMachine_sm_1_1:
   09F4                     101 	.ds 3
   09F7                     102 _unregisterStateMachine_sm_1_1:
   09F7                     103 	.ds 3
   09FA                     104 _callStateHandler_PARM_2:
   09FA                     105 	.ds 3
   09FD                     106 _callStateHandler_PARM_3:
   09FD                     107 	.ds 3
   0A00                     108 _callStateHandler_sm_1_1:
   0A00                     109 	.ds 3
   0A03                     110 _callStateHandler_response_1_1:
   0A03                     111 	.ds 1
   0A04                     112 _iterateStateMachine_sm_1_1:
   0A04                     113 	.ds 3
   0A07                     114 _iterateStateMachine_eventToProcess_2_3:
   0A07                     115 	.ds 3
   0A0A                     116 _iterateStateMachine_stateBeingProcessed_2_3:
   0A0A                     117 	.ds 3
   0A0D                     118 _iterateStateMachine_action_2_3:
   0A0D                     119 	.ds 1
   0A0E                     120 _iterateStateMachine_sourceHierarchy_4_19:
   0A0E                     121 	.ds 48
   0A3E                     122 _iterateStateMachine_sourceIndex_4_19:
   0A3E                     123 	.ds 1
   0A3F                     124 _iterateStateMachine_targetHierarchy_4_19:
   0A3F                     125 	.ds 48
   0A6F                     126 _iterateStateMachine_targetIndex_4_19:
   0A6F                     127 	.ds 1
   0A70                     128 _iterateStateMachine_LCA_4_19:
   0A70                     129 	.ds 3
   0A73                     130 _iterateStateMachine_entryIndex_4_19:
   0A73                     131 	.ds 1
                            132 ;--------------------------------------------------------
                            133 ; absolute external ram data
                            134 ;--------------------------------------------------------
                            135 	.area XABS    (ABS,XDATA)
                            136 ;--------------------------------------------------------
                            137 ; external initialized ram data
                            138 ;--------------------------------------------------------
                            139 	.area XISEG   (XDATA)
   0EEF                     140 _eventTypes::
   0EEF                     141 	.ds 18
   0F01                     142 _responseTypes::
   0F01                     143 	.ds 12
   0F0D                     144 _initialTransitionEvent:
   0F0D                     145 	.ds 1
   0F0E                     146 _jumpToHistoryEvent:
   0F0E                     147 	.ds 1
   0F0F                     148 _enterEvent:
   0F0F                     149 	.ds 1
   0F10                     150 _exitEvent:
   0F10                     151 	.ds 1
                            152 	.area HOME    (CODE)
                            153 	.area GSINIT0 (CODE)
                            154 	.area GSINIT1 (CODE)
                            155 	.area GSINIT2 (CODE)
                            156 	.area GSINIT3 (CODE)
                            157 	.area GSINIT4 (CODE)
                            158 	.area GSINIT5 (CODE)
                            159 	.area GSINIT  (CODE)
                            160 	.area GSFINAL (CODE)
                            161 	.area CSEG    (CODE)
                            162 ;--------------------------------------------------------
                            163 ; global & static initialisations
                            164 ;--------------------------------------------------------
                            165 	.area HOME    (CODE)
                            166 	.area GSINIT  (CODE)
                            167 	.area GSFINAL (CODE)
                            168 	.area GSINIT  (CODE)
                            169 ;--------------------------------------------------------
                            170 ; Home
                            171 ;--------------------------------------------------------
                            172 	.area HOME    (CODE)
                            173 	.area HOME    (CODE)
                            174 ;--------------------------------------------------------
                            175 ; code
                            176 ;--------------------------------------------------------
                            177 	.area CSEG    (CODE)
                            178 ;------------------------------------------------------------
                            179 ;Allocation info for local variables in function 'allocateStateMachineMemory'
                            180 ;------------------------------------------------------------
                            181 ;sloc0                     Allocated with name '_allocateStateMachineMemory_sloc0_1_0'
                            182 ;sloc1                     Allocated with name '_allocateStateMachineMemory_sloc1_1_0'
                            183 ;constructor               Allocated with name '_allocateStateMachineMemory_PARM_2'
                            184 ;eventQueueDepth           Allocated with name '_allocateStateMachineMemory_eventQueueDepth_1_1'
                            185 ;instance                  Allocated with name '_allocateStateMachineMemory_instance_1_1'
                            186 ;eventQueue                Allocated with name '_allocateStateMachineMemory_eventQueue_2_2'
                            187 ;typesOfEventsToDefer      Allocated with name '_allocateStateMachineMemory_typesOfEventsToDefer_3_3'
                            188 ;deferredEventQueue        Allocated with name '_allocateStateMachineMemory_deferredEventQueue_4_4'
                            189 ;------------------------------------------------------------
                            190 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:36: stateMachine_t* allocateStateMachineMemory(		uint16_t eventQueueDepth,
                            191 ;	-----------------------------------------
                            192 ;	 function allocateStateMachineMemory
                            193 ;	-----------------------------------------
   2870                     194 _allocateStateMachineMemory:
                    0002    195 	ar2 = 0x02
                    0003    196 	ar3 = 0x03
                    0004    197 	ar4 = 0x04
                    0005    198 	ar5 = 0x05
                    0006    199 	ar6 = 0x06
                    0007    200 	ar7 = 0x07
                    0000    201 	ar0 = 0x00
                    0001    202 	ar1 = 0x01
   2870 AA 83               203 	mov	r2,dph
   2872 E5 82               204 	mov	a,dpl
   2874 90 09 ED            205 	mov	dptr,#_allocateStateMachineMemory_eventQueueDepth_1_1
   2877 F0                  206 	movx	@dptr,a
   2878 A3                  207 	inc	dptr
   2879 EA                  208 	mov	a,r2
   287A F0                  209 	movx	@dptr,a
                            210 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:39: stateMachine_t*	instance = malloc(sizeof(stateMachine_t)) ;
   287B 90 00 2B            211 	mov	dptr,#0x002B
   287E 12 41 A7            212 	lcall	_malloc
   2881 AA 82               213 	mov	r2,dpl
   2883 AB 83               214 	mov	r3,dph
   2885 7C 00               215 	mov	r4,#0x00
                            216 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:41: if(instance)
   2887 EA                  217 	mov	a,r2
   2888 4B                  218 	orl	a,r3
   2889 4C                  219 	orl	a,r4
   288A 70 03               220 	jnz	00115$
   288C 02 2A 6E            221 	ljmp	00108$
   288F                     222 00115$:
                            223 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:45: memset((char*)instance, 0, sizeof(stateMachine_t)) ;
   288F 90 0A A0            224 	mov	dptr,#_memset_PARM_2
   2892 E4                  225 	clr	a
   2893 F0                  226 	movx	@dptr,a
   2894 90 0A A1            227 	mov	dptr,#_memset_PARM_3
   2897 74 2B               228 	mov	a,#0x2B
   2899 F0                  229 	movx	@dptr,a
   289A E4                  230 	clr	a
   289B A3                  231 	inc	dptr
   289C F0                  232 	movx	@dptr,a
   289D 8A 82               233 	mov	dpl,r2
   289F 8B 83               234 	mov	dph,r3
   28A1 8C F0               235 	mov	b,r4
   28A3 C0 02               236 	push	ar2
   28A5 C0 03               237 	push	ar3
   28A7 C0 04               238 	push	ar4
   28A9 12 40 E8            239 	lcall	_memset
                            240 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:47: eventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
   28AC 90 09 ED            241 	mov	dptr,#_allocateStateMachineMemory_eventQueueDepth_1_1
   28AF E0                  242 	movx	a,@dptr
   28B0 F5 3C               243 	mov	_allocateStateMachineMemory_sloc0_1_0,a
   28B2 A3                  244 	inc	dptr
   28B3 E0                  245 	movx	a,@dptr
   28B4 F5 3D               246 	mov	(_allocateStateMachineMemory_sloc0_1_0 + 1),a
   28B6 90 0A AE            247 	mov	dptr,#__mulint_PARM_2
   28B9 E5 3C               248 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   28BB F0                  249 	movx	@dptr,a
   28BC A3                  250 	inc	dptr
   28BD E5 3D               251 	mov	a,(_allocateStateMachineMemory_sloc0_1_0 + 1)
   28BF F0                  252 	movx	@dptr,a
   28C0 90 00 03            253 	mov	dptr,#0x0003
   28C3 12 42 F1            254 	lcall	__mulint
   28C6 AF 82               255 	mov	r7,dpl
   28C8 A8 83               256 	mov  r0,dph
   28CA C0 07               257 	push	ar7
   28CC C0 00               258 	push	ar0
   28CE 12 41 A7            259 	lcall	_malloc
   28D1 A9 82               260 	mov	r1,dpl
   28D3 AD 83               261 	mov	r5,dph
   28D5 D0 00               262 	pop	ar0
   28D7 D0 07               263 	pop	ar7
   28D9 D0 04               264 	pop	ar4
   28DB D0 03               265 	pop	ar3
   28DD D0 02               266 	pop	ar2
   28DF 89 3E               267 	mov	_allocateStateMachineMemory_sloc1_1_0,r1
   28E1 8D 3F               268 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r5
   28E3 75 40 00            269 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
                            270 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:49: if(eventQueue)
   28E6 E5 3E               271 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   28E8 45 3F               272 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   28EA 45 40               273 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   28EC 70 03               274 	jnz	00116$
   28EE 02 2A 6E            275 	ljmp	00108$
   28F1                     276 00116$:
                            277 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:53: memset((char*)eventQueue, 0, eventQueueDepth * sizeof(event_t*)) ;
   28F1 90 0A A0            278 	mov	dptr,#_memset_PARM_2
   28F4 E4                  279 	clr	a
   28F5 F0                  280 	movx	@dptr,a
   28F6 90 0A A1            281 	mov	dptr,#_memset_PARM_3
   28F9 EF                  282 	mov	a,r7
   28FA F0                  283 	movx	@dptr,a
   28FB A3                  284 	inc	dptr
   28FC E8                  285 	mov	a,r0
   28FD F0                  286 	movx	@dptr,a
   28FE 85 3E 82            287 	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
   2901 85 3F 83            288 	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2904 85 40 F0            289 	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2907 C0 02               290 	push	ar2
   2909 C0 03               291 	push	ar3
   290B C0 04               292 	push	ar4
   290D C0 07               293 	push	ar7
   290F C0 00               294 	push	ar0
   2911 12 40 E8            295 	lcall	_memset
   2914 D0 00               296 	pop	ar0
   2916 D0 07               297 	pop	ar7
   2918 D0 04               298 	pop	ar4
   291A D0 03               299 	pop	ar3
   291C D0 02               300 	pop	ar2
                            301 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:54: eventQueue_initialize(&instance->eventQueue, eventQueue, eventQueueDepth) ;
   291E 74 0B               302 	mov	a,#0x0B
   2920 2A                  303 	add	a,r2
   2921 FD                  304 	mov	r5,a
   2922 E4                  305 	clr	a
   2923 3B                  306 	addc	a,r3
   2924 FE                  307 	mov	r6,a
   2925 8C 01               308 	mov	ar1,r4
   2927 90 09 25            309 	mov	dptr,#_eventQueue_initialize_PARM_2
   292A E5 3E               310 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   292C F0                  311 	movx	@dptr,a
   292D A3                  312 	inc	dptr
   292E E5 3F               313 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2930 F0                  314 	movx	@dptr,a
   2931 A3                  315 	inc	dptr
   2932 E5 40               316 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2934 F0                  317 	movx	@dptr,a
   2935 90 09 28            318 	mov	dptr,#_eventQueue_initialize_PARM_3
   2938 E5 3C               319 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   293A F0                  320 	movx	@dptr,a
   293B 8D 82               321 	mov	dpl,r5
   293D 8E 83               322 	mov	dph,r6
   293F 89 F0               323 	mov	b,r1
   2941 C0 02               324 	push	ar2
   2943 C0 03               325 	push	ar3
   2945 C0 04               326 	push	ar4
   2947 C0 07               327 	push	ar7
   2949 C0 00               328 	push	ar0
   294B 12 20 6D            329 	lcall	_eventQueue_initialize
   294E D0 00               330 	pop	ar0
   2950 D0 07               331 	pop	ar7
                            332 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:56: typesOfEventsToDefer = (eventType_t*)malloc(eventQueueDepth * sizeof(eventType_t*)) ;
   2952 8F 82               333 	mov	dpl,r7
   2954 88 83               334 	mov	dph,r0
   2956 C0 07               335 	push	ar7
   2958 C0 00               336 	push	ar0
   295A 12 41 A7            337 	lcall	_malloc
   295D AD 82               338 	mov	r5,dpl
   295F AE 83               339 	mov	r6,dph
   2961 D0 00               340 	pop	ar0
   2963 D0 07               341 	pop	ar7
   2965 D0 04               342 	pop	ar4
   2967 D0 03               343 	pop	ar3
   2969 D0 02               344 	pop	ar2
   296B 8D 3E               345 	mov	_allocateStateMachineMemory_sloc1_1_0,r5
   296D 8E 3F               346 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r6
   296F 75 40 00            347 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
                            348 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:58: if(typesOfEventsToDefer)
   2972 E5 3E               349 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   2974 45 3F               350 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2976 45 40               351 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2978 70 03               352 	jnz	00117$
   297A 02 2A 6E            353 	ljmp	00108$
   297D                     354 00117$:
                            355 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:62: instance->maxDepthOfEventsToDeferList		= eventQueueDepth ;
   297D 74 12               356 	mov	a,#0x12
   297F 2A                  357 	add	a,r2
   2980 FD                  358 	mov	r5,a
   2981 E4                  359 	clr	a
   2982 3B                  360 	addc	a,r3
   2983 FE                  361 	mov	r6,a
   2984 8C 01               362 	mov	ar1,r4
   2986 8D 82               363 	mov	dpl,r5
   2988 8E 83               364 	mov	dph,r6
   298A 89 F0               365 	mov	b,r1
   298C E5 3C               366 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   298E 12 41 10            367 	lcall	__gptrput
                            368 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:63: instance->currentDepthOfEventsToDeferList	= 0 ;
   2991 74 13               369 	mov	a,#0x13
   2993 2A                  370 	add	a,r2
   2994 FD                  371 	mov	r5,a
   2995 E4                  372 	clr	a
   2996 3B                  373 	addc	a,r3
   2997 FE                  374 	mov	r6,a
   2998 8C 01               375 	mov	ar1,r4
   299A 8D 82               376 	mov	dpl,r5
   299C 8E 83               377 	mov	dph,r6
   299E 89 F0               378 	mov	b,r1
   29A0 E4                  379 	clr	a
   29A1 12 41 10            380 	lcall	__gptrput
                            381 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:64: instance->typesOfEventsToDefer				= typesOfEventsToDefer ;
   29A4 74 14               382 	mov	a,#0x14
   29A6 2A                  383 	add	a,r2
   29A7 FD                  384 	mov	r5,a
   29A8 E4                  385 	clr	a
   29A9 3B                  386 	addc	a,r3
   29AA FE                  387 	mov	r6,a
   29AB 8C 01               388 	mov	ar1,r4
   29AD 8D 82               389 	mov	dpl,r5
   29AF 8E 83               390 	mov	dph,r6
   29B1 89 F0               391 	mov	b,r1
   29B3 E5 3E               392 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   29B5 12 41 10            393 	lcall	__gptrput
   29B8 A3                  394 	inc	dptr
   29B9 E5 3F               395 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   29BB 12 41 10            396 	lcall	__gptrput
   29BE A3                  397 	inc	dptr
   29BF E5 40               398 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   29C1 12 41 10            399 	lcall	__gptrput
                            400 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:66: deferredEventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;
   29C4 8F 82               401 	mov	dpl,r7
   29C6 88 83               402 	mov	dph,r0
   29C8 C0 02               403 	push	ar2
   29CA C0 03               404 	push	ar3
   29CC C0 04               405 	push	ar4
   29CE C0 07               406 	push	ar7
   29D0 C0 00               407 	push	ar0
   29D2 12 41 A7            408 	lcall	_malloc
   29D5 AD 82               409 	mov	r5,dpl
   29D7 AE 83               410 	mov	r6,dph
   29D9 D0 00               411 	pop	ar0
   29DB D0 07               412 	pop	ar7
   29DD D0 04               413 	pop	ar4
   29DF D0 03               414 	pop	ar3
   29E1 D0 02               415 	pop	ar2
   29E3 8D 3E               416 	mov	_allocateStateMachineMemory_sloc1_1_0,r5
   29E5 8E 3F               417 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 1),r6
   29E7 75 40 00            418 	mov	(_allocateStateMachineMemory_sloc1_1_0 + 2),#0x00
                            419 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:68: if(deferredEventQueue)
   29EA E5 3E               420 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   29EC 45 3F               421 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   29EE 45 40               422 	orl	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   29F0 60 7C               423 	jz	00108$
                            424 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:70: memset((char*)deferredEventQueue, 0, eventQueueDepth * sizeof(event_t*)) ;
   29F2 90 0A A0            425 	mov	dptr,#_memset_PARM_2
   29F5 E4                  426 	clr	a
   29F6 F0                  427 	movx	@dptr,a
   29F7 90 0A A1            428 	mov	dptr,#_memset_PARM_3
   29FA EF                  429 	mov	a,r7
   29FB F0                  430 	movx	@dptr,a
   29FC A3                  431 	inc	dptr
   29FD E8                  432 	mov	a,r0
   29FE F0                  433 	movx	@dptr,a
   29FF 85 3E 82            434 	mov	dpl,_allocateStateMachineMemory_sloc1_1_0
   2A02 85 3F 83            435 	mov	dph,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2A05 85 40 F0            436 	mov	b,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2A08 C0 02               437 	push	ar2
   2A0A C0 03               438 	push	ar3
   2A0C C0 04               439 	push	ar4
   2A0E 12 40 E8            440 	lcall	_memset
   2A11 D0 04               441 	pop	ar4
   2A13 D0 03               442 	pop	ar3
   2A15 D0 02               443 	pop	ar2
                            444 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:71: eventQueue_initialize(&instance->deferredEventQueue, deferredEventQueue, eventQueueDepth) ;
   2A17 74 17               445 	mov	a,#0x17
   2A19 2A                  446 	add	a,r2
   2A1A FF                  447 	mov	r7,a
   2A1B E4                  448 	clr	a
   2A1C 3B                  449 	addc	a,r3
   2A1D F8                  450 	mov	r0,a
   2A1E 8C 05               451 	mov	ar5,r4
   2A20 90 09 25            452 	mov	dptr,#_eventQueue_initialize_PARM_2
   2A23 E5 3E               453 	mov	a,_allocateStateMachineMemory_sloc1_1_0
   2A25 F0                  454 	movx	@dptr,a
   2A26 A3                  455 	inc	dptr
   2A27 E5 3F               456 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 1)
   2A29 F0                  457 	movx	@dptr,a
   2A2A A3                  458 	inc	dptr
   2A2B E5 40               459 	mov	a,(_allocateStateMachineMemory_sloc1_1_0 + 2)
   2A2D F0                  460 	movx	@dptr,a
   2A2E 90 09 28            461 	mov	dptr,#_eventQueue_initialize_PARM_3
   2A31 E5 3C               462 	mov	a,_allocateStateMachineMemory_sloc0_1_0
   2A33 F0                  463 	movx	@dptr,a
   2A34 8F 82               464 	mov	dpl,r7
   2A36 88 83               465 	mov	dph,r0
   2A38 8D F0               466 	mov	b,r5
   2A3A C0 02               467 	push	ar2
   2A3C C0 03               468 	push	ar3
   2A3E C0 04               469 	push	ar4
   2A40 12 20 6D            470 	lcall	_eventQueue_initialize
   2A43 D0 04               471 	pop	ar4
   2A45 D0 03               472 	pop	ar3
   2A47 D0 02               473 	pop	ar2
                            474 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:73: constructor(instance) ;
   2A49 C0 02               475 	push	ar2
   2A4B C0 03               476 	push	ar3
   2A4D C0 04               477 	push	ar4
   2A4F 74 68               478 	mov	a,#00119$
   2A51 C0 E0               479 	push	acc
   2A53 74 2A               480 	mov	a,#(00119$ >> 8)
   2A55 C0 E0               481 	push	acc
   2A57 90 09 EB            482 	mov	dptr,#_allocateStateMachineMemory_PARM_2
   2A5A E0                  483 	movx	a,@dptr
   2A5B C0 E0               484 	push	acc
   2A5D A3                  485 	inc	dptr
   2A5E E0                  486 	movx	a,@dptr
   2A5F C0 E0               487 	push	acc
   2A61 8A 82               488 	mov	dpl,r2
   2A63 8B 83               489 	mov	dph,r3
   2A65 8C F0               490 	mov	b,r4
   2A67 22                  491 	ret
   2A68                     492 00119$:
   2A68 D0 04               493 	pop	ar4
   2A6A D0 03               494 	pop	ar3
   2A6C D0 02               495 	pop	ar2
   2A6E                     496 00108$:
                            497 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:79: return instance ;
   2A6E 8A 82               498 	mov	dpl,r2
   2A70 8B 83               499 	mov	dph,r3
   2A72 8C F0               500 	mov	b,r4
   2A74 22                  501 	ret
                            502 ;------------------------------------------------------------
                            503 ;Allocation info for local variables in function 'deallocateStateMachineMemory'
                            504 ;------------------------------------------------------------
                            505 ;destructor                Allocated with name '_deallocateStateMachineMemory_PARM_2'
                            506 ;instance                  Allocated with name '_deallocateStateMachineMemory_instance_1_1'
                            507 ;------------------------------------------------------------
                            508 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:83: void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachine_destructor_t destructor)
                            509 ;	-----------------------------------------
                            510 ;	 function deallocateStateMachineMemory
                            511 ;	-----------------------------------------
   2A75                     512 _deallocateStateMachineMemory:
   2A75 AA F0               513 	mov	r2,b
   2A77 AB 83               514 	mov	r3,dph
   2A79 E5 82               515 	mov	a,dpl
   2A7B 90 09 F1            516 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   2A7E F0                  517 	movx	@dptr,a
   2A7F A3                  518 	inc	dptr
   2A80 EB                  519 	mov	a,r3
   2A81 F0                  520 	movx	@dptr,a
   2A82 A3                  521 	inc	dptr
   2A83 EA                  522 	mov	a,r2
   2A84 F0                  523 	movx	@dptr,a
                            524 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:85: if(instance != 0)
   2A85 90 09 F1            525 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   2A88 E0                  526 	movx	a,@dptr
   2A89 FA                  527 	mov	r2,a
   2A8A A3                  528 	inc	dptr
   2A8B E0                  529 	movx	a,@dptr
   2A8C FB                  530 	mov	r3,a
   2A8D A3                  531 	inc	dptr
   2A8E E0                  532 	movx	a,@dptr
   2A8F FC                  533 	mov	r4,a
   2A90 EA                  534 	mov	a,r2
   2A91 4B                  535 	orl	a,r3
   2A92 4C                  536 	orl	a,r4
   2A93 60 2D               537 	jz	00103$
                            538 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:87: destructor(instance) ;
   2A95 74 AE               539 	mov	a,#00107$
   2A97 C0 E0               540 	push	acc
   2A99 74 2A               541 	mov	a,#(00107$ >> 8)
   2A9B C0 E0               542 	push	acc
   2A9D 90 09 EF            543 	mov	dptr,#_deallocateStateMachineMemory_PARM_2
   2AA0 E0                  544 	movx	a,@dptr
   2AA1 C0 E0               545 	push	acc
   2AA3 A3                  546 	inc	dptr
   2AA4 E0                  547 	movx	a,@dptr
   2AA5 C0 E0               548 	push	acc
   2AA7 8A 82               549 	mov	dpl,r2
   2AA9 8B 83               550 	mov	dph,r3
   2AAB 8C F0               551 	mov	b,r4
   2AAD 22                  552 	ret
   2AAE                     553 00107$:
                            554 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:89: free((char*)instance) ;
   2AAE 90 09 F1            555 	mov	dptr,#_deallocateStateMachineMemory_instance_1_1
   2AB1 E0                  556 	movx	a,@dptr
   2AB2 FA                  557 	mov	r2,a
   2AB3 A3                  558 	inc	dptr
   2AB4 E0                  559 	movx	a,@dptr
   2AB5 FB                  560 	mov	r3,a
   2AB6 A3                  561 	inc	dptr
   2AB7 E0                  562 	movx	a,@dptr
   2AB8 FC                  563 	mov	r4,a
   2AB9 8A 82               564 	mov	dpl,r2
   2ABB 8B 83               565 	mov	dph,r3
   2ABD 8C F0               566 	mov	b,r4
   2ABF 02 40 96            567 	ljmp	_free
   2AC2                     568 00103$:
   2AC2 22                  569 	ret
                            570 ;------------------------------------------------------------
                            571 ;Allocation info for local variables in function 'registerStateMachine'
                            572 ;------------------------------------------------------------
                            573 ;sm                        Allocated with name '_registerStateMachine_sm_1_1'
                            574 ;statetMachineIndex        Allocated with name '_registerStateMachine_statetMachineIndex_2_2'
                            575 ;------------------------------------------------------------
                            576 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:94: bool registerStateMachine(			stateMachine_t* sm)
                            577 ;	-----------------------------------------
                            578 ;	 function registerStateMachine
                            579 ;	-----------------------------------------
   2AC3                     580 _registerStateMachine:
   2AC3 AA F0               581 	mov	r2,b
   2AC5 AB 83               582 	mov	r3,dph
   2AC7 E5 82               583 	mov	a,dpl
   2AC9 90 09 F4            584 	mov	dptr,#_registerStateMachine_sm_1_1
   2ACC F0                  585 	movx	@dptr,a
   2ACD A3                  586 	inc	dptr
   2ACE EB                  587 	mov	a,r3
   2ACF F0                  588 	movx	@dptr,a
   2AD0 A3                  589 	inc	dptr
   2AD1 EA                  590 	mov	a,r2
   2AD2 F0                  591 	movx	@dptr,a
                            592 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:96: if(sm)
   2AD3 90 09 F4            593 	mov	dptr,#_registerStateMachine_sm_1_1
   2AD6 E0                  594 	movx	a,@dptr
   2AD7 FA                  595 	mov	r2,a
   2AD8 A3                  596 	inc	dptr
   2AD9 E0                  597 	movx	a,@dptr
   2ADA FB                  598 	mov	r3,a
   2ADB A3                  599 	inc	dptr
   2ADC E0                  600 	movx	a,@dptr
   2ADD FC                  601 	mov	r4,a
   2ADE EA                  602 	mov	a,r2
   2ADF 4B                  603 	orl	a,r3
   2AE0 4C                  604 	orl	a,r4
   2AE1 60 44               605 	jz	00104$
                            606 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2AE3 7A 00               607 	mov	r2,#0x00
   2AE5                     608 00105$:
   2AE5 BA 32 00            609 	cjne	r2,#0x32,00116$
   2AE8                     610 00116$:
   2AE8 50 3D               611 	jnc	00104$
                            612 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:102: if(stateMachines[statetMachineIndex] == NULL)
   2AEA EA                  613 	mov	a,r2
   2AEB 75 F0 03            614 	mov	b,#0x03
   2AEE A4                  615 	mul	ab
   2AEF 24 55               616 	add	a,#_stateMachines
   2AF1 FB                  617 	mov	r3,a
   2AF2 E4                  618 	clr	a
   2AF3 34 09               619 	addc	a,#(_stateMachines >> 8)
   2AF5 FC                  620 	mov	r4,a
   2AF6 8B 82               621 	mov	dpl,r3
   2AF8 8C 83               622 	mov	dph,r4
   2AFA E0                  623 	movx	a,@dptr
   2AFB FD                  624 	mov	r5,a
   2AFC A3                  625 	inc	dptr
   2AFD E0                  626 	movx	a,@dptr
   2AFE FE                  627 	mov	r6,a
   2AFF A3                  628 	inc	dptr
   2B00 E0                  629 	movx	a,@dptr
   2B01 FF                  630 	mov	r7,a
   2B02 BD 00 1F            631 	cjne	r5,#0x00,00107$
   2B05 BE 00 1C            632 	cjne	r6,#0x00,00107$
   2B08 BF 00 19            633 	cjne	r7,#0x00,00107$
                            634 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:104: stateMachines[statetMachineIndex] = sm ;
   2B0B 90 09 F4            635 	mov	dptr,#_registerStateMachine_sm_1_1
   2B0E E0                  636 	movx	a,@dptr
   2B0F FD                  637 	mov	r5,a
   2B10 A3                  638 	inc	dptr
   2B11 E0                  639 	movx	a,@dptr
   2B12 FE                  640 	mov	r6,a
   2B13 A3                  641 	inc	dptr
   2B14 E0                  642 	movx	a,@dptr
   2B15 FF                  643 	mov	r7,a
   2B16 8B 82               644 	mov	dpl,r3
   2B18 8C 83               645 	mov	dph,r4
   2B1A ED                  646 	mov	a,r5
   2B1B F0                  647 	movx	@dptr,a
   2B1C A3                  648 	inc	dptr
   2B1D EE                  649 	mov	a,r6
   2B1E F0                  650 	movx	@dptr,a
   2B1F A3                  651 	inc	dptr
   2B20 EF                  652 	mov	a,r7
   2B21 F0                  653 	movx	@dptr,a
                            654 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:106: return true ;
   2B22 D3                  655 	setb	c
   2B23 22                  656 	ret
   2B24                     657 00107$:
                            658 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:100: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2B24 0A                  659 	inc	r2
   2B25 80 BE               660 	sjmp	00105$
   2B27                     661 00104$:
                            662 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:111: return false ;
   2B27 C3                  663 	clr	c
   2B28 22                  664 	ret
                            665 ;------------------------------------------------------------
                            666 ;Allocation info for local variables in function 'unregisterStateMachine'
                            667 ;------------------------------------------------------------
                            668 ;sm                        Allocated with name '_unregisterStateMachine_sm_1_1'
                            669 ;statetMachineIndex        Allocated with name '_unregisterStateMachine_statetMachineIndex_2_2'
                            670 ;------------------------------------------------------------
                            671 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:114: bool unregisterStateMachine(		stateMachine_t* sm)
                            672 ;	-----------------------------------------
                            673 ;	 function unregisterStateMachine
                            674 ;	-----------------------------------------
   2B29                     675 _unregisterStateMachine:
   2B29 AA F0               676 	mov	r2,b
   2B2B AB 83               677 	mov	r3,dph
   2B2D E5 82               678 	mov	a,dpl
   2B2F 90 09 F7            679 	mov	dptr,#_unregisterStateMachine_sm_1_1
   2B32 F0                  680 	movx	@dptr,a
   2B33 A3                  681 	inc	dptr
   2B34 EB                  682 	mov	a,r3
   2B35 F0                  683 	movx	@dptr,a
   2B36 A3                  684 	inc	dptr
   2B37 EA                  685 	mov	a,r2
   2B38 F0                  686 	movx	@dptr,a
                            687 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:116: if(sm)
   2B39 90 09 F7            688 	mov	dptr,#_unregisterStateMachine_sm_1_1
   2B3C E0                  689 	movx	a,@dptr
   2B3D FA                  690 	mov	r2,a
   2B3E A3                  691 	inc	dptr
   2B3F E0                  692 	movx	a,@dptr
   2B40 FB                  693 	mov	r3,a
   2B41 A3                  694 	inc	dptr
   2B42 E0                  695 	movx	a,@dptr
   2B43 FC                  696 	mov	r4,a
   2B44 EA                  697 	mov	a,r2
   2B45 4B                  698 	orl	a,r3
   2B46 4C                  699 	orl	a,r4
   2B47 60 44               700 	jz	00104$
                            701 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:120: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2B49 7D 00               702 	mov	r5,#0x00
   2B4B                     703 00105$:
   2B4B BD 32 00            704 	cjne	r5,#0x32,00116$
   2B4E                     705 00116$:
   2B4E 50 3D               706 	jnc	00104$
                            707 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:122: if(stateMachines[statetMachineIndex] == sm)
   2B50 ED                  708 	mov	a,r5
   2B51 75 F0 03            709 	mov	b,#0x03
   2B54 A4                  710 	mul	ab
   2B55 24 55               711 	add	a,#_stateMachines
   2B57 FE                  712 	mov	r6,a
   2B58 E4                  713 	clr	a
   2B59 34 09               714 	addc	a,#(_stateMachines >> 8)
   2B5B FF                  715 	mov	r7,a
   2B5C C0 05               716 	push	ar5
   2B5E 8E 82               717 	mov	dpl,r6
   2B60 8F 83               718 	mov	dph,r7
   2B62 E0                  719 	movx	a,@dptr
   2B63 F8                  720 	mov	r0,a
   2B64 A3                  721 	inc	dptr
   2B65 E0                  722 	movx	a,@dptr
   2B66 F9                  723 	mov	r1,a
   2B67 A3                  724 	inc	dptr
   2B68 E0                  725 	movx	a,@dptr
   2B69 FD                  726 	mov	r5,a
   2B6A E8                  727 	mov	a,r0
   2B6B B5 02 0A            728 	cjne	a,ar2,00118$
   2B6E E9                  729 	mov	a,r1
   2B6F B5 03 06            730 	cjne	a,ar3,00118$
   2B72 ED                  731 	mov	a,r5
   2B73 B5 04 02            732 	cjne	a,ar4,00118$
   2B76 80 04               733 	sjmp	00119$
   2B78                     734 00118$:
   2B78 D0 05               735 	pop	ar5
   2B7A 80 0E               736 	sjmp	00107$
   2B7C                     737 00119$:
   2B7C D0 05               738 	pop	ar5
                            739 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:124: stateMachines[statetMachineIndex] = NULL ;
   2B7E 8E 82               740 	mov	dpl,r6
   2B80 8F 83               741 	mov	dph,r7
   2B82 E4                  742 	clr	a
   2B83 F0                  743 	movx	@dptr,a
   2B84 A3                  744 	inc	dptr
   2B85 F0                  745 	movx	@dptr,a
   2B86 A3                  746 	inc	dptr
   2B87 F0                  747 	movx	@dptr,a
                            748 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:126: return true ;
   2B88 D3                  749 	setb	c
   2B89 22                  750 	ret
   2B8A                     751 00107$:
                            752 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:120: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2B8A 0D                  753 	inc	r5
   2B8B 80 BE               754 	sjmp	00105$
   2B8D                     755 00104$:
                            756 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:131: return false ;
   2B8D C3                  757 	clr	c
   2B8E 22                  758 	ret
                            759 ;------------------------------------------------------------
                            760 ;Allocation info for local variables in function 'iterateAllStateMachines'
                            761 ;------------------------------------------------------------
                            762 ;statetMachineIndex        Allocated with name '_iterateAllStateMachines_statetMachineIndex_1_1'
                            763 ;------------------------------------------------------------
                            764 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:135: void iterateAllStateMachines(	void)
                            765 ;	-----------------------------------------
                            766 ;	 function iterateAllStateMachines
                            767 ;	-----------------------------------------
   2B8F                     768 _iterateAllStateMachines:
                            769 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2B8F 7A 00               770 	mov	r2,#0x00
   2B91                     771 00103$:
   2B91 BA 32 00            772 	cjne	r2,#0x32,00113$
   2B94                     773 00113$:
   2B94 50 31               774 	jnc	00107$
                            775 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:141: if(stateMachines[statetMachineIndex] != NULL)
   2B96 EA                  776 	mov	a,r2
   2B97 75 F0 03            777 	mov	b,#0x03
   2B9A A4                  778 	mul	ab
   2B9B 24 55               779 	add	a,#_stateMachines
   2B9D F5 82               780 	mov	dpl,a
   2B9F E4                  781 	clr	a
   2BA0 34 09               782 	addc	a,#(_stateMachines >> 8)
   2BA2 F5 83               783 	mov	dph,a
   2BA4 E0                  784 	movx	a,@dptr
   2BA5 FB                  785 	mov	r3,a
   2BA6 A3                  786 	inc	dptr
   2BA7 E0                  787 	movx	a,@dptr
   2BA8 FC                  788 	mov	r4,a
   2BA9 A3                  789 	inc	dptr
   2BAA E0                  790 	movx	a,@dptr
   2BAB FD                  791 	mov	r5,a
   2BAC BB 00 08            792 	cjne	r3,#0x00,00115$
   2BAF BC 00 05            793 	cjne	r4,#0x00,00115$
   2BB2 BD 00 02            794 	cjne	r5,#0x00,00115$
   2BB5 80 0D               795 	sjmp	00105$
   2BB7                     796 00115$:
                            797 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:143: iterateStateMachine(stateMachines[statetMachineIndex]) ;
   2BB7 8B 82               798 	mov	dpl,r3
   2BB9 8C 83               799 	mov	dph,r4
   2BBB 8D F0               800 	mov	b,r5
   2BBD C0 02               801 	push	ar2
   2BBF 12 2F C7            802 	lcall	_iterateStateMachine
   2BC2 D0 02               803 	pop	ar2
   2BC4                     804 00105$:
                            805 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:139: for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
   2BC4 0A                  806 	inc	r2
   2BC5 80 CA               807 	sjmp	00103$
   2BC7                     808 00107$:
   2BC7 22                  809 	ret
                            810 ;------------------------------------------------------------
                            811 ;Allocation info for local variables in function 'callStateHandler'
                            812 ;------------------------------------------------------------
                            813 ;sloc0                     Allocated with name '_callStateHandler_sloc0_1_0'
                            814 ;sloc1                     Allocated with name '_callStateHandler_sloc1_1_0'
                            815 ;sloc2                     Allocated with name '_callStateHandler_sloc2_1_0'
                            816 ;state                     Allocated with name '_callStateHandler_PARM_2'
                            817 ;event                     Allocated with name '_callStateHandler_PARM_3'
                            818 ;sm                        Allocated with name '_callStateHandler_sm_1_1'
                            819 ;response                  Allocated with name '_callStateHandler_response_1_1'
                            820 ;------------------------------------------------------------
                            821 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:157: stateMachine_stateResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
                            822 ;	-----------------------------------------
                            823 ;	 function callStateHandler
                            824 ;	-----------------------------------------
   2BC8                     825 _callStateHandler:
   2BC8 AA F0               826 	mov	r2,b
   2BCA AB 83               827 	mov	r3,dph
   2BCC E5 82               828 	mov	a,dpl
   2BCE 90 0A 00            829 	mov	dptr,#_callStateHandler_sm_1_1
   2BD1 F0                  830 	movx	@dptr,a
   2BD2 A3                  831 	inc	dptr
   2BD3 EB                  832 	mov	a,r3
   2BD4 F0                  833 	movx	@dptr,a
   2BD5 A3                  834 	inc	dptr
   2BD6 EA                  835 	mov	a,r2
   2BD7 F0                  836 	movx	@dptr,a
                            837 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:162: printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
   2BD8 90 09 FD            838 	mov	dptr,#_callStateHandler_PARM_3
   2BDB E0                  839 	movx	a,@dptr
   2BDC FA                  840 	mov	r2,a
   2BDD A3                  841 	inc	dptr
   2BDE E0                  842 	movx	a,@dptr
   2BDF FB                  843 	mov	r3,a
   2BE0 A3                  844 	inc	dptr
   2BE1 E0                  845 	movx	a,@dptr
   2BE2 FC                  846 	mov	r4,a
   2BE3 8A 82               847 	mov	dpl,r2
   2BE5 8B 83               848 	mov	dph,r3
   2BE7 8C F0               849 	mov	b,r4
   2BE9 12 4D 3C            850 	lcall	__gptrget
   2BEC FD                  851 	mov	r5,a
   2BED C3                  852 	clr	c
   2BEE 74 05               853 	mov	a,#0x05
   2BF0 9D                  854 	subb	a,r5
   2BF1 B3                  855 	cpl	c
   2BF2 E4                  856 	clr	a
   2BF3 33                  857 	rlc	a
   2BF4 FE                  858 	mov	r6,a
   2BF5 60 18               859 	jz	00117$
   2BF7 ED                  860 	mov	a,r5
   2BF8 75 F0 03            861 	mov	b,#0x03
   2BFB A4                  862 	mul	ab
   2BFC 24 EF               863 	add	a,#_eventTypes
   2BFE F5 82               864 	mov	dpl,a
   2C00 E4                  865 	clr	a
   2C01 34 0E               866 	addc	a,#(_eventTypes >> 8)
   2C03 F5 83               867 	mov	dph,a
   2C05 E0                  868 	movx	a,@dptr
   2C06 FD                  869 	mov	r5,a
   2C07 A3                  870 	inc	dptr
   2C08 E0                  871 	movx	a,@dptr
   2C09 FE                  872 	mov	r6,a
   2C0A A3                  873 	inc	dptr
   2C0B E0                  874 	movx	a,@dptr
   2C0C FF                  875 	mov	r7,a
   2C0D 80 06               876 	sjmp	00118$
   2C0F                     877 00117$:
   2C0F 7D 50               878 	mov	r5,#__str_1
   2C11 7E 51               879 	mov	r6,#(__str_1 >> 8)
   2C13 7F 80               880 	mov	r7,#0x80
   2C15                     881 00118$:
   2C15 C0 02               882 	push	ar2
   2C17 C0 03               883 	push	ar3
   2C19 C0 04               884 	push	ar4
   2C1B 90 09 FA            885 	mov	dptr,#_callStateHandler_PARM_2
   2C1E E0                  886 	movx	a,@dptr
   2C1F F5 41               887 	mov	_callStateHandler_sloc0_1_0,a
   2C21 A3                  888 	inc	dptr
   2C22 E0                  889 	movx	a,@dptr
   2C23 F5 42               890 	mov	(_callStateHandler_sloc0_1_0 + 1),a
   2C25 A3                  891 	inc	dptr
   2C26 E0                  892 	movx	a,@dptr
   2C27 F5 43               893 	mov	(_callStateHandler_sloc0_1_0 + 2),a
   2C29 74 06               894 	mov	a,#0x06
   2C2B 25 41               895 	add	a,_callStateHandler_sloc0_1_0
   2C2D F8                  896 	mov	r0,a
   2C2E E4                  897 	clr	a
   2C2F 35 42               898 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2C31 F9                  899 	mov	r1,a
   2C32 AA 43               900 	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
   2C34 88 82               901 	mov	dpl,r0
   2C36 89 83               902 	mov	dph,r1
   2C38 8A F0               903 	mov	b,r2
   2C3A 12 4D 3C            904 	lcall	__gptrget
   2C3D F8                  905 	mov	r0,a
   2C3E A3                  906 	inc	dptr
   2C3F 12 4D 3C            907 	lcall	__gptrget
   2C42 F9                  908 	mov	r1,a
   2C43 A3                  909 	inc	dptr
   2C44 12 4D 3C            910 	lcall	__gptrget
   2C47 FA                  911 	mov	r2,a
   2C48 C0 02               912 	push	ar2
   2C4A C0 03               913 	push	ar3
   2C4C C0 04               914 	push	ar4
   2C4E C0 05               915 	push	ar5
   2C50 C0 06               916 	push	ar6
   2C52 C0 07               917 	push	ar7
   2C54 C0 00               918 	push	ar0
   2C56 C0 01               919 	push	ar1
   2C58 C0 02               920 	push	ar2
   2C5A 74 2E               921 	mov	a,#__str_0
   2C5C C0 E0               922 	push	acc
   2C5E 74 51               923 	mov	a,#(__str_0 >> 8)
   2C60 C0 E0               924 	push	acc
   2C62 74 80               925 	mov	a,#0x80
   2C64 C0 E0               926 	push	acc
   2C66 12 44 F0            927 	lcall	_printf
   2C69 E5 81               928 	mov	a,sp
   2C6B 24 F7               929 	add	a,#0xf7
   2C6D F5 81               930 	mov	sp,a
   2C6F D0 04               931 	pop	ar4
   2C71 D0 03               932 	pop	ar3
   2C73 D0 02               933 	pop	ar2
                            934 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:165: if(state->type == CHOICE_PSUEDOSTATE)
   2C75 74 03               935 	mov	a,#0x03
   2C77 25 41               936 	add	a,_callStateHandler_sloc0_1_0
   2C79 FA                  937 	mov	r2,a
   2C7A E4                  938 	clr	a
   2C7B 35 42               939 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2C7D FB                  940 	mov	r3,a
   2C7E AC 43               941 	mov	r4,(_callStateHandler_sloc0_1_0 + 2)
   2C80 8A 82               942 	mov	dpl,r2
   2C82 8B 83               943 	mov	dph,r3
   2C84 8C F0               944 	mov	b,r4
   2C86 12 4D 3C            945 	lcall	__gptrget
   2C89 F5 44               946 	mov	_callStateHandler_sloc1_1_0,a
   2C8B 74 01               947 	mov	a,#0x01
   2C8D B5 44 02            948 	cjne	a,_callStateHandler_sloc1_1_0,00128$
   2C90 80 08               949 	sjmp	00129$
   2C92                     950 00128$:
   2C92 D0 04               951 	pop	ar4
   2C94 D0 03               952 	pop	ar3
   2C96 D0 02               953 	pop	ar2
   2C98 80 4C               954 	sjmp	00111$
   2C9A                     955 00129$:
   2C9A D0 04               956 	pop	ar4
   2C9C D0 03               957 	pop	ar3
   2C9E D0 02               958 	pop	ar2
                            959 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:167: response = ((stateMachine_choiceStateHandler_t)(state->handler))(sm) ;
   2CA0 74 04               960 	mov	a,#0x04
   2CA2 25 41               961 	add	a,_callStateHandler_sloc0_1_0
   2CA4 FD                  962 	mov	r5,a
   2CA5 E4                  963 	clr	a
   2CA6 35 42               964 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2CA8 FE                  965 	mov	r6,a
   2CA9 AF 43               966 	mov	r7,(_callStateHandler_sloc0_1_0 + 2)
   2CAB 8D 82               967 	mov	dpl,r5
   2CAD 8E 83               968 	mov	dph,r6
   2CAF 8F F0               969 	mov	b,r7
   2CB1 12 4D 3C            970 	lcall	__gptrget
   2CB4 FD                  971 	mov	r5,a
   2CB5 A3                  972 	inc	dptr
   2CB6 12 4D 3C            973 	lcall	__gptrget
   2CB9 FE                  974 	mov	r6,a
   2CBA 90 0A 00            975 	mov	dptr,#_callStateHandler_sm_1_1
   2CBD E0                  976 	movx	a,@dptr
   2CBE FF                  977 	mov	r7,a
   2CBF A3                  978 	inc	dptr
   2CC0 E0                  979 	movx	a,@dptr
   2CC1 F8                  980 	mov	r0,a
   2CC2 A3                  981 	inc	dptr
   2CC3 E0                  982 	movx	a,@dptr
   2CC4 F9                  983 	mov	r1,a
   2CC5 C0 06               984 	push	ar6
   2CC7 74 DA               985 	mov	a,#00130$
   2CC9 C0 E0               986 	push	acc
   2CCB 74 2C               987 	mov	a,#(00130$ >> 8)
   2CCD C0 E0               988 	push	acc
   2CCF C0 05               989 	push	ar5
   2CD1 C0 06               990 	push	ar6
   2CD3 8F 82               991 	mov	dpl,r7
   2CD5 88 83               992 	mov	dph,r0
   2CD7 89 F0               993 	mov	b,r1
   2CD9 22                  994 	ret
   2CDA                     995 00130$:
   2CDA AD 82               996 	mov	r5,dpl
   2CDC D0 06               997 	pop	ar6
   2CDE 90 0A 03            998 	mov	dptr,#_callStateHandler_response_1_1
   2CE1 ED                  999 	mov	a,r5
   2CE2 F0                 1000 	movx	@dptr,a
   2CE3 02 2F 13           1001 	ljmp	00112$
   2CE6                    1002 00111$:
                           1003 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:171: if(event == &enterEvent)
   2CE6 EA                 1004 	mov	a,r2
   2CE7 B4 0F 31           1005 	cjne	a,#_enterEvent,00102$
   2CEA EB                 1006 	mov	a,r3
   2CEB B4 0F 2D           1007 	cjne	a,#(_enterEvent >> 8),00102$
   2CEE EC                 1008 	mov	a,r4
   2CEF B4 00 29           1009 	cjne	a,#0x00,00102$
                           1010 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:173: sm->mostRecentlyEnteredState = state ;
   2CF2 90 0A 00           1011 	mov	dptr,#_callStateHandler_sm_1_1
   2CF5 E0                 1012 	movx	a,@dptr
   2CF6 FD                 1013 	mov	r5,a
   2CF7 A3                 1014 	inc	dptr
   2CF8 E0                 1015 	movx	a,@dptr
   2CF9 FE                 1016 	mov	r6,a
   2CFA A3                 1017 	inc	dptr
   2CFB E0                 1018 	movx	a,@dptr
   2CFC FF                 1019 	mov	r7,a
   2CFD 74 25              1020 	mov	a,#0x25
   2CFF 2D                 1021 	add	a,r5
   2D00 FD                 1022 	mov	r5,a
   2D01 E4                 1023 	clr	a
   2D02 3E                 1024 	addc	a,r6
   2D03 FE                 1025 	mov	r6,a
   2D04 8D 82              1026 	mov	dpl,r5
   2D06 8E 83              1027 	mov	dph,r6
   2D08 8F F0              1028 	mov	b,r7
   2D0A E5 41              1029 	mov	a,_callStateHandler_sloc0_1_0
   2D0C 12 41 10           1030 	lcall	__gptrput
   2D0F A3                 1031 	inc	dptr
   2D10 E5 42              1032 	mov	a,(_callStateHandler_sloc0_1_0 + 1)
   2D12 12 41 10           1033 	lcall	__gptrput
   2D15 A3                 1034 	inc	dptr
   2D16 E5 43              1035 	mov	a,(_callStateHandler_sloc0_1_0 + 2)
   2D18 12 41 10           1036 	lcall	__gptrput
   2D1B                    1037 00102$:
                           1038 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:175: if(event == &exitEvent)
   2D1B EA                 1039 	mov	a,r2
   2D1C B4 10 0A           1040 	cjne	a,#_exitEvent,00133$
   2D1F EB                 1041 	mov	a,r3
   2D20 B4 0F 06           1042 	cjne	a,#(_exitEvent >> 8),00133$
   2D23 EC                 1043 	mov	a,r4
   2D24 B4 00 02           1044 	cjne	a,#0x00,00133$
   2D27 80 03              1045 	sjmp	00134$
   2D29                    1046 00133$:
   2D29 02 2E C4           1047 	ljmp	00109$
   2D2C                    1048 00134$:
                           1049 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:177: if(state->type == STATE_WITH_SHALLOW_HISTORY)
   2D2C 74 02              1050 	mov	a,#0x02
   2D2E B5 44 02           1051 	cjne	a,_callStateHandler_sloc1_1_0,00135$
   2D31 80 03              1052 	sjmp	00136$
   2D33                    1053 00135$:
   2D33 02 2D E5           1054 	ljmp	00106$
   2D36                    1055 00136$:
                           1056 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:181: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyExitedState ;
   2D36 C0 02              1057 	push	ar2
   2D38 C0 03              1058 	push	ar3
   2D3A C0 04              1059 	push	ar4
   2D3C 90 0A 00           1060 	mov	dptr,#_callStateHandler_sm_1_1
   2D3F E0                 1061 	movx	a,@dptr
   2D40 FD                 1062 	mov	r5,a
   2D41 A3                 1063 	inc	dptr
   2D42 E0                 1064 	movx	a,@dptr
   2D43 FE                 1065 	mov	r6,a
   2D44 A3                 1066 	inc	dptr
   2D45 E0                 1067 	movx	a,@dptr
   2D46 FF                 1068 	mov	r7,a
   2D47 74 22              1069 	mov	a,#0x22
   2D49 2D                 1070 	add	a,r5
   2D4A F8                 1071 	mov	r0,a
   2D4B E4                 1072 	clr	a
   2D4C 3E                 1073 	addc	a,r6
   2D4D F9                 1074 	mov	r1,a
   2D4E 8F 02              1075 	mov	ar2,r7
   2D50 88 82              1076 	mov	dpl,r0
   2D52 89 83              1077 	mov	dph,r1
   2D54 8A F0              1078 	mov	b,r2
   2D56 12 4D 3C           1079 	lcall	__gptrget
   2D59 F5 45              1080 	mov	_callStateHandler_sloc2_1_0,a
   2D5B A3                 1081 	inc	dptr
   2D5C 12 4D 3C           1082 	lcall	__gptrget
   2D5F F5 46              1083 	mov	(_callStateHandler_sloc2_1_0 + 1),a
   2D61 A3                 1084 	inc	dptr
   2D62 12 4D 3C           1085 	lcall	__gptrget
   2D65 F5 47              1086 	mov	(_callStateHandler_sloc2_1_0 + 2),a
   2D67 74 09              1087 	mov	a,#0x09
   2D69 25 41              1088 	add	a,_callStateHandler_sloc0_1_0
   2D6B FB                 1089 	mov	r3,a
   2D6C E4                 1090 	clr	a
   2D6D 35 42              1091 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2D6F FC                 1092 	mov	r4,a
   2D70 AA 43              1093 	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
   2D72 8B 82              1094 	mov	dpl,r3
   2D74 8C 83              1095 	mov	dph,r4
   2D76 8A F0              1096 	mov	b,r2
   2D78 12 4D 3C           1097 	lcall	__gptrget
   2D7B FB                 1098 	mov	r3,a
   2D7C A3                 1099 	inc	dptr
   2D7D 12 4D 3C           1100 	lcall	__gptrget
   2D80 FC                 1101 	mov	r4,a
   2D81 90 0A AE           1102 	mov	dptr,#__mulint_PARM_2
   2D84 EB                 1103 	mov	a,r3
   2D85 F0                 1104 	movx	@dptr,a
   2D86 A3                 1105 	inc	dptr
   2D87 EC                 1106 	mov	a,r4
   2D88 F0                 1107 	movx	@dptr,a
   2D89 90 00 03           1108 	mov	dptr,#0x0003
   2D8C C0 04              1109 	push	ar4
   2D8E C0 05              1110 	push	ar5
   2D90 C0 06              1111 	push	ar6
   2D92 C0 07              1112 	push	ar7
   2D94 12 42 F1           1113 	lcall	__mulint
   2D97 AA 82              1114 	mov	r2,dpl
   2D99 AB 83              1115 	mov	r3,dph
   2D9B D0 07              1116 	pop	ar7
   2D9D D0 06              1117 	pop	ar6
   2D9F D0 05              1118 	pop	ar5
   2DA1 D0 04              1119 	pop	ar4
   2DA3 EA                 1120 	mov	a,r2
   2DA4 25 45              1121 	add	a,_callStateHandler_sloc2_1_0
   2DA6 FA                 1122 	mov	r2,a
   2DA7 EB                 1123 	mov	a,r3
   2DA8 35 46              1124 	addc	a,(_callStateHandler_sloc2_1_0 + 1)
   2DAA FB                 1125 	mov	r3,a
   2DAB AC 47              1126 	mov	r4,(_callStateHandler_sloc2_1_0 + 2)
   2DAD 74 28              1127 	mov	a,#0x28
   2DAF 2D                 1128 	add	a,r5
   2DB0 FD                 1129 	mov	r5,a
   2DB1 E4                 1130 	clr	a
   2DB2 3E                 1131 	addc	a,r6
   2DB3 FE                 1132 	mov	r6,a
   2DB4 8D 82              1133 	mov	dpl,r5
   2DB6 8E 83              1134 	mov	dph,r6
   2DB8 8F F0              1135 	mov	b,r7
   2DBA 12 4D 3C           1136 	lcall	__gptrget
   2DBD FD                 1137 	mov	r5,a
   2DBE A3                 1138 	inc	dptr
   2DBF 12 4D 3C           1139 	lcall	__gptrget
   2DC2 FE                 1140 	mov	r6,a
   2DC3 A3                 1141 	inc	dptr
   2DC4 12 4D 3C           1142 	lcall	__gptrget
   2DC7 FF                 1143 	mov	r7,a
   2DC8 8A 82              1144 	mov	dpl,r2
   2DCA 8B 83              1145 	mov	dph,r3
   2DCC 8C F0              1146 	mov	b,r4
   2DCE ED                 1147 	mov	a,r5
   2DCF 12 41 10           1148 	lcall	__gptrput
   2DD2 A3                 1149 	inc	dptr
   2DD3 EE                 1150 	mov	a,r6
   2DD4 12 41 10           1151 	lcall	__gptrput
   2DD7 A3                 1152 	inc	dptr
   2DD8 EF                 1153 	mov	a,r7
   2DD9 12 41 10           1154 	lcall	__gptrput
   2DDC D0 04              1155 	pop	ar4
   2DDE D0 03              1156 	pop	ar3
   2DE0 D0 02              1157 	pop	ar2
   2DE2 02 2E 9B           1158 	ljmp	00107$
   2DE5                    1159 00106$:
                           1160 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:183: else if(state->type == STATE_WITH_DEEP_HISTORY)
   2DE5 74 03              1161 	mov	a,#0x03
   2DE7 B5 44 02           1162 	cjne	a,_callStateHandler_sloc1_1_0,00137$
   2DEA 80 03              1163 	sjmp	00138$
   2DEC                    1164 00137$:
   2DEC 02 2E 9B           1165 	ljmp	00107$
   2DEF                    1166 00138$:
                           1167 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
   2DEF C0 02              1168 	push	ar2
   2DF1 C0 03              1169 	push	ar3
   2DF3 C0 04              1170 	push	ar4
   2DF5 90 0A 00           1171 	mov	dptr,#_callStateHandler_sm_1_1
   2DF8 E0                 1172 	movx	a,@dptr
   2DF9 FD                 1173 	mov	r5,a
   2DFA A3                 1174 	inc	dptr
   2DFB E0                 1175 	movx	a,@dptr
   2DFC FE                 1176 	mov	r6,a
   2DFD A3                 1177 	inc	dptr
   2DFE E0                 1178 	movx	a,@dptr
   2DFF FF                 1179 	mov	r7,a
   2E00 74 22              1180 	mov	a,#0x22
   2E02 2D                 1181 	add	a,r5
   2E03 F8                 1182 	mov	r0,a
   2E04 E4                 1183 	clr	a
   2E05 3E                 1184 	addc	a,r6
   2E06 F9                 1185 	mov	r1,a
   2E07 8F 02              1186 	mov	ar2,r7
   2E09 88 82              1187 	mov	dpl,r0
   2E0B 89 83              1188 	mov	dph,r1
   2E0D 8A F0              1189 	mov	b,r2
   2E0F 12 4D 3C           1190 	lcall	__gptrget
   2E12 F5 45              1191 	mov	_callStateHandler_sloc2_1_0,a
   2E14 A3                 1192 	inc	dptr
   2E15 12 4D 3C           1193 	lcall	__gptrget
   2E18 F5 46              1194 	mov	(_callStateHandler_sloc2_1_0 + 1),a
   2E1A A3                 1195 	inc	dptr
   2E1B 12 4D 3C           1196 	lcall	__gptrget
   2E1E F5 47              1197 	mov	(_callStateHandler_sloc2_1_0 + 2),a
   2E20 74 09              1198 	mov	a,#0x09
   2E22 25 41              1199 	add	a,_callStateHandler_sloc0_1_0
   2E24 FB                 1200 	mov	r3,a
   2E25 E4                 1201 	clr	a
   2E26 35 42              1202 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2E28 FC                 1203 	mov	r4,a
   2E29 AA 43              1204 	mov	r2,(_callStateHandler_sloc0_1_0 + 2)
   2E2B 8B 82              1205 	mov	dpl,r3
   2E2D 8C 83              1206 	mov	dph,r4
   2E2F 8A F0              1207 	mov	b,r2
   2E31 12 4D 3C           1208 	lcall	__gptrget
   2E34 FB                 1209 	mov	r3,a
   2E35 A3                 1210 	inc	dptr
   2E36 12 4D 3C           1211 	lcall	__gptrget
   2E39 FC                 1212 	mov	r4,a
   2E3A 90 0A AE           1213 	mov	dptr,#__mulint_PARM_2
   2E3D EB                 1214 	mov	a,r3
   2E3E F0                 1215 	movx	@dptr,a
   2E3F A3                 1216 	inc	dptr
   2E40 EC                 1217 	mov	a,r4
   2E41 F0                 1218 	movx	@dptr,a
   2E42 90 00 03           1219 	mov	dptr,#0x0003
   2E45 C0 04              1220 	push	ar4
   2E47 C0 05              1221 	push	ar5
   2E49 C0 06              1222 	push	ar6
   2E4B C0 07              1223 	push	ar7
   2E4D 12 42 F1           1224 	lcall	__mulint
   2E50 AA 82              1225 	mov	r2,dpl
   2E52 AB 83              1226 	mov	r3,dph
   2E54 D0 07              1227 	pop	ar7
   2E56 D0 06              1228 	pop	ar6
   2E58 D0 05              1229 	pop	ar5
   2E5A D0 04              1230 	pop	ar4
   2E5C EA                 1231 	mov	a,r2
   2E5D 25 45              1232 	add	a,_callStateHandler_sloc2_1_0
   2E5F FA                 1233 	mov	r2,a
   2E60 EB                 1234 	mov	a,r3
   2E61 35 46              1235 	addc	a,(_callStateHandler_sloc2_1_0 + 1)
   2E63 FB                 1236 	mov	r3,a
   2E64 AC 47              1237 	mov	r4,(_callStateHandler_sloc2_1_0 + 2)
   2E66 74 25              1238 	mov	a,#0x25
   2E68 2D                 1239 	add	a,r5
   2E69 FD                 1240 	mov	r5,a
   2E6A E4                 1241 	clr	a
   2E6B 3E                 1242 	addc	a,r6
   2E6C FE                 1243 	mov	r6,a
   2E6D 8D 82              1244 	mov	dpl,r5
   2E6F 8E 83              1245 	mov	dph,r6
   2E71 8F F0              1246 	mov	b,r7
   2E73 12 4D 3C           1247 	lcall	__gptrget
   2E76 FD                 1248 	mov	r5,a
   2E77 A3                 1249 	inc	dptr
   2E78 12 4D 3C           1250 	lcall	__gptrget
   2E7B FE                 1251 	mov	r6,a
   2E7C A3                 1252 	inc	dptr
   2E7D 12 4D 3C           1253 	lcall	__gptrget
   2E80 FF                 1254 	mov	r7,a
   2E81 8A 82              1255 	mov	dpl,r2
   2E83 8B 83              1256 	mov	dph,r3
   2E85 8C F0              1257 	mov	b,r4
   2E87 ED                 1258 	mov	a,r5
   2E88 12 41 10           1259 	lcall	__gptrput
   2E8B A3                 1260 	inc	dptr
   2E8C EE                 1261 	mov	a,r6
   2E8D 12 41 10           1262 	lcall	__gptrput
   2E90 A3                 1263 	inc	dptr
   2E91 EF                 1264 	mov	a,r7
   2E92 12 41 10           1265 	lcall	__gptrput
                           1266 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:211: return response ;
   2E95 D0 04              1267 	pop	ar4
   2E97 D0 03              1268 	pop	ar3
   2E99 D0 02              1269 	pop	ar2
                           1270 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:187: sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
   2E9B                    1271 00107$:
                           1272 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:190: sm->mostRecentlyExitedState = (void*)state ;
   2E9B 90 0A 00           1273 	mov	dptr,#_callStateHandler_sm_1_1
   2E9E E0                 1274 	movx	a,@dptr
   2E9F FD                 1275 	mov	r5,a
   2EA0 A3                 1276 	inc	dptr
   2EA1 E0                 1277 	movx	a,@dptr
   2EA2 FE                 1278 	mov	r6,a
   2EA3 A3                 1279 	inc	dptr
   2EA4 E0                 1280 	movx	a,@dptr
   2EA5 FF                 1281 	mov	r7,a
   2EA6 74 28              1282 	mov	a,#0x28
   2EA8 2D                 1283 	add	a,r5
   2EA9 FD                 1284 	mov	r5,a
   2EAA E4                 1285 	clr	a
   2EAB 3E                 1286 	addc	a,r6
   2EAC FE                 1287 	mov	r6,a
   2EAD 8D 82              1288 	mov	dpl,r5
   2EAF 8E 83              1289 	mov	dph,r6
   2EB1 8F F0              1290 	mov	b,r7
   2EB3 E5 41              1291 	mov	a,_callStateHandler_sloc0_1_0
   2EB5 12 41 10           1292 	lcall	__gptrput
   2EB8 A3                 1293 	inc	dptr
   2EB9 E5 42              1294 	mov	a,(_callStateHandler_sloc0_1_0 + 1)
   2EBB 12 41 10           1295 	lcall	__gptrput
   2EBE A3                 1296 	inc	dptr
   2EBF E5 43              1297 	mov	a,(_callStateHandler_sloc0_1_0 + 2)
   2EC1 12 41 10           1298 	lcall	__gptrput
   2EC4                    1299 00109$:
                           1300 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:193: response = ((stateMachine_callStateHandler_t)(state->handler))(sm, event) ;
   2EC4 74 04              1301 	mov	a,#0x04
   2EC6 25 41              1302 	add	a,_callStateHandler_sloc0_1_0
   2EC8 FD                 1303 	mov	r5,a
   2EC9 E4                 1304 	clr	a
   2ECA 35 42              1305 	addc	a,(_callStateHandler_sloc0_1_0 + 1)
   2ECC FE                 1306 	mov	r6,a
   2ECD AF 43              1307 	mov	r7,(_callStateHandler_sloc0_1_0 + 2)
   2ECF 8D 82              1308 	mov	dpl,r5
   2ED1 8E 83              1309 	mov	dph,r6
   2ED3 8F F0              1310 	mov	b,r7
   2ED5 12 4D 3C           1311 	lcall	__gptrget
   2ED8 FD                 1312 	mov	r5,a
   2ED9 A3                 1313 	inc	dptr
   2EDA 12 4D 3C           1314 	lcall	__gptrget
   2EDD FE                 1315 	mov	r6,a
   2EDE 90 0A 00           1316 	mov	dptr,#_callStateHandler_sm_1_1
   2EE1 E0                 1317 	movx	a,@dptr
   2EE2 FF                 1318 	mov	r7,a
   2EE3 A3                 1319 	inc	dptr
   2EE4 E0                 1320 	movx	a,@dptr
   2EE5 F8                 1321 	mov	r0,a
   2EE6 A3                 1322 	inc	dptr
   2EE7 E0                 1323 	movx	a,@dptr
   2EE8 F9                 1324 	mov	r1,a
   2EE9 C0 06              1325 	push	ar6
   2EEB C0 02              1326 	push	ar2
   2EED C0 03              1327 	push	ar3
   2EEF C0 04              1328 	push	ar4
   2EF1 74 04              1329 	mov	a,#00139$
   2EF3 C0 E0              1330 	push	acc
   2EF5 74 2F              1331 	mov	a,#(00139$ >> 8)
   2EF7 C0 E0              1332 	push	acc
   2EF9 C0 05              1333 	push	ar5
   2EFB C0 06              1334 	push	ar6
   2EFD 8F 82              1335 	mov	dpl,r7
   2EFF 88 83              1336 	mov	dph,r0
   2F01 89 F0              1337 	mov	b,r1
   2F03 22                 1338 	ret
   2F04                    1339 00139$:
   2F04 AD 82              1340 	mov	r5,dpl
   2F06 15 81              1341 	dec	sp
   2F08 15 81              1342 	dec	sp
   2F0A 15 81              1343 	dec	sp
   2F0C D0 06              1344 	pop	ar6
   2F0E 90 0A 03           1345 	mov	dptr,#_callStateHandler_response_1_1
   2F11 ED                 1346 	mov	a,r5
   2F12 F0                 1347 	movx	@dptr,a
   2F13                    1348 00112$:
                           1349 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:197: printf("response: %s ", responseTypes[response]) ;
   2F13 90 0A 03           1350 	mov	dptr,#_callStateHandler_response_1_1
   2F16 E0                 1351 	movx	a,@dptr
   2F17 FA                 1352 	mov	r2,a
   2F18 75 F0 03           1353 	mov	b,#0x03
   2F1B A4                 1354 	mul	ab
   2F1C 24 01              1355 	add	a,#_responseTypes
   2F1E F5 82              1356 	mov	dpl,a
   2F20 E4                 1357 	clr	a
   2F21 34 0F              1358 	addc	a,#(_responseTypes >> 8)
   2F23 F5 83              1359 	mov	dph,a
   2F25 E0                 1360 	movx	a,@dptr
   2F26 FB                 1361 	mov	r3,a
   2F27 A3                 1362 	inc	dptr
   2F28 E0                 1363 	movx	a,@dptr
   2F29 FC                 1364 	mov	r4,a
   2F2A A3                 1365 	inc	dptr
   2F2B E0                 1366 	movx	a,@dptr
   2F2C FD                 1367 	mov	r5,a
   2F2D C0 02              1368 	push	ar2
   2F2F C0 03              1369 	push	ar3
   2F31 C0 04              1370 	push	ar4
   2F33 C0 05              1371 	push	ar5
   2F35 74 5D              1372 	mov	a,#__str_2
   2F37 C0 E0              1373 	push	acc
   2F39 74 51              1374 	mov	a,#(__str_2 >> 8)
   2F3B C0 E0              1375 	push	acc
   2F3D 74 80              1376 	mov	a,#0x80
   2F3F C0 E0              1377 	push	acc
   2F41 12 44 F0           1378 	lcall	_printf
   2F44 E5 81              1379 	mov	a,sp
   2F46 24 FA              1380 	add	a,#0xfa
   2F48 F5 81              1381 	mov	sp,a
   2F4A D0 02              1382 	pop	ar2
                           1383 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:200: if(response == TRANSITION)
   2F4C BA 02 5C           1384 	cjne	r2,#0x02,00114$
                           1385 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:203: printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
   2F4F 90 0A 00           1386 	mov	dptr,#_callStateHandler_sm_1_1
   2F52 E0                 1387 	movx	a,@dptr
   2F53 FA                 1388 	mov	r2,a
   2F54 A3                 1389 	inc	dptr
   2F55 E0                 1390 	movx	a,@dptr
   2F56 FB                 1391 	mov	r3,a
   2F57 A3                 1392 	inc	dptr
   2F58 E0                 1393 	movx	a,@dptr
   2F59 FC                 1394 	mov	r4,a
   2F5A 74 08              1395 	mov	a,#0x08
   2F5C 2A                 1396 	add	a,r2
   2F5D FA                 1397 	mov	r2,a
   2F5E E4                 1398 	clr	a
   2F5F 3B                 1399 	addc	a,r3
   2F60 FB                 1400 	mov	r3,a
   2F61 8A 82              1401 	mov	dpl,r2
   2F63 8B 83              1402 	mov	dph,r3
   2F65 8C F0              1403 	mov	b,r4
   2F67 12 4D 3C           1404 	lcall	__gptrget
   2F6A FA                 1405 	mov	r2,a
   2F6B A3                 1406 	inc	dptr
   2F6C 12 4D 3C           1407 	lcall	__gptrget
   2F6F FB                 1408 	mov	r3,a
   2F70 A3                 1409 	inc	dptr
   2F71 12 4D 3C           1410 	lcall	__gptrget
   2F74 FC                 1411 	mov	r4,a
   2F75 74 06              1412 	mov	a,#0x06
   2F77 2A                 1413 	add	a,r2
   2F78 FA                 1414 	mov	r2,a
   2F79 E4                 1415 	clr	a
   2F7A 3B                 1416 	addc	a,r3
   2F7B FB                 1417 	mov	r3,a
   2F7C 8A 82              1418 	mov	dpl,r2
   2F7E 8B 83              1419 	mov	dph,r3
   2F80 8C F0              1420 	mov	b,r4
   2F82 12 4D 3C           1421 	lcall	__gptrget
   2F85 FA                 1422 	mov	r2,a
   2F86 A3                 1423 	inc	dptr
   2F87 12 4D 3C           1424 	lcall	__gptrget
   2F8A FB                 1425 	mov	r3,a
   2F8B A3                 1426 	inc	dptr
   2F8C 12 4D 3C           1427 	lcall	__gptrget
   2F8F FC                 1428 	mov	r4,a
   2F90 C0 02              1429 	push	ar2
   2F92 C0 03              1430 	push	ar3
   2F94 C0 04              1431 	push	ar4
   2F96 74 6B              1432 	mov	a,#__str_3
   2F98 C0 E0              1433 	push	acc
   2F9A 74 51              1434 	mov	a,#(__str_3 >> 8)
   2F9C C0 E0              1435 	push	acc
   2F9E 74 80              1436 	mov	a,#0x80
   2FA0 C0 E0              1437 	push	acc
   2FA2 12 44 F0           1438 	lcall	_printf
   2FA5 E5 81              1439 	mov	a,sp
   2FA7 24 FA              1440 	add	a,#0xfa
   2FA9 F5 81              1441 	mov	sp,a
   2FAB                    1442 00114$:
                           1443 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:208: printf("\n") ;
   2FAB 74 72              1444 	mov	a,#__str_4
   2FAD C0 E0              1445 	push	acc
   2FAF 74 51              1446 	mov	a,#(__str_4 >> 8)
   2FB1 C0 E0              1447 	push	acc
   2FB3 74 80              1448 	mov	a,#0x80
   2FB5 C0 E0              1449 	push	acc
   2FB7 12 44 F0           1450 	lcall	_printf
   2FBA 15 81              1451 	dec	sp
   2FBC 15 81              1452 	dec	sp
   2FBE 15 81              1453 	dec	sp
                           1454 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:211: return response ;
   2FC0 90 0A 03           1455 	mov	dptr,#_callStateHandler_response_1_1
   2FC3 E0                 1456 	movx	a,@dptr
   2FC4 F5 82              1457 	mov	dpl,a
   2FC6 22                 1458 	ret
                           1459 ;------------------------------------------------------------
                           1460 ;Allocation info for local variables in function 'iterateStateMachine'
                           1461 ;------------------------------------------------------------
                           1462 ;sloc0                     Allocated with name '_iterateStateMachine_sloc0_1_0'
                           1463 ;sloc1                     Allocated with name '_iterateStateMachine_sloc1_1_0'
                           1464 ;sloc2                     Allocated with name '_iterateStateMachine_sloc2_1_0'
                           1465 ;sloc3                     Allocated with name '_iterateStateMachine_sloc3_1_0'
                           1466 ;sloc4                     Allocated with name '_iterateStateMachine_sloc4_1_0'
                           1467 ;sloc5                     Allocated with name '_iterateStateMachine_sloc5_1_0'
                           1468 ;sm                        Allocated with name '_iterateStateMachine_sm_1_1'
                           1469 ;eventToProcess            Allocated with name '_iterateStateMachine_eventToProcess_2_3'
                           1470 ;stateBeingProcessed       Allocated with name '_iterateStateMachine_stateBeingProcessed_2_3'
                           1471 ;action                    Allocated with name '_iterateStateMachine_action_2_3'
                           1472 ;nextState                 Allocated with name '_iterateStateMachine_nextState_4_11'
                           1473 ;source                    Allocated with name '_iterateStateMachine_source_3_14'
                           1474 ;target                    Allocated with name '_iterateStateMachine_target_3_14'
                           1475 ;sourceHierarchy           Allocated with name '_iterateStateMachine_sourceHierarchy_4_19'
                           1476 ;sourceIndex               Allocated with name '_iterateStateMachine_sourceIndex_4_19'
                           1477 ;targetHierarchy           Allocated with name '_iterateStateMachine_targetHierarchy_4_19'
                           1478 ;targetIndex               Allocated with name '_iterateStateMachine_targetIndex_4_19'
                           1479 ;LCA                       Allocated with name '_iterateStateMachine_LCA_4_19'
                           1480 ;entryIndex                Allocated with name '_iterateStateMachine_entryIndex_4_19'
                           1481 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_4_19'
                           1482 ;exitIndex                 Allocated with name '_iterateStateMachine_exitIndex_6_21'
                           1483 ;LCAindex                  Allocated with name '_iterateStateMachine_LCAindex_5_27'
                           1484 ;------------------------------------------------------------
                           1485 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:215: void iterateStateMachine(	stateMachine_t* sm)
                           1486 ;	-----------------------------------------
                           1487 ;	 function iterateStateMachine
                           1488 ;	-----------------------------------------
   2FC7                    1489 _iterateStateMachine:
   2FC7 AA F0              1490 	mov	r2,b
   2FC9 AB 83              1491 	mov	r3,dph
   2FCB E5 82              1492 	mov	a,dpl
   2FCD 90 0A 04           1493 	mov	dptr,#_iterateStateMachine_sm_1_1
   2FD0 F0                 1494 	movx	@dptr,a
   2FD1 A3                 1495 	inc	dptr
   2FD2 EB                 1496 	mov	a,r3
   2FD3 F0                 1497 	movx	@dptr,a
   2FD4 A3                 1498 	inc	dptr
   2FD5 EA                 1499 	mov	a,r2
   2FD6 F0                 1500 	movx	@dptr,a
                           1501 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:218: printf("\titerating %s\n", sm->stateMachineName) ;
   2FD7 90 0A 04           1502 	mov	dptr,#_iterateStateMachine_sm_1_1
   2FDA E0                 1503 	movx	a,@dptr
   2FDB FA                 1504 	mov	r2,a
   2FDC A3                 1505 	inc	dptr
   2FDD E0                 1506 	movx	a,@dptr
   2FDE FB                 1507 	mov	r3,a
   2FDF A3                 1508 	inc	dptr
   2FE0 E0                 1509 	movx	a,@dptr
   2FE1 FC                 1510 	mov	r4,a
   2FE2 74 02              1511 	mov	a,#0x02
   2FE4 2A                 1512 	add	a,r2
   2FE5 FD                 1513 	mov	r5,a
   2FE6 E4                 1514 	clr	a
   2FE7 3B                 1515 	addc	a,r3
   2FE8 FE                 1516 	mov	r6,a
   2FE9 8C 07              1517 	mov	ar7,r4
   2FEB 8D 82              1518 	mov	dpl,r5
   2FED 8E 83              1519 	mov	dph,r6
   2FEF 8F F0              1520 	mov	b,r7
   2FF1 12 4D 3C           1521 	lcall	__gptrget
   2FF4 FD                 1522 	mov	r5,a
   2FF5 A3                 1523 	inc	dptr
   2FF6 12 4D 3C           1524 	lcall	__gptrget
   2FF9 FE                 1525 	mov	r6,a
   2FFA A3                 1526 	inc	dptr
   2FFB 12 4D 3C           1527 	lcall	__gptrget
   2FFE FF                 1528 	mov	r7,a
   2FFF C0 02              1529 	push	ar2
   3001 C0 03              1530 	push	ar3
   3003 C0 04              1531 	push	ar4
   3005 C0 05              1532 	push	ar5
   3007 C0 06              1533 	push	ar6
   3009 C0 07              1534 	push	ar7
   300B 74 74              1535 	mov	a,#__str_5
   300D C0 E0              1536 	push	acc
   300F 74 51              1537 	mov	a,#(__str_5 >> 8)
   3011 C0 E0              1538 	push	acc
   3013 74 80              1539 	mov	a,#0x80
   3015 C0 E0              1540 	push	acc
   3017 12 44 F0           1541 	lcall	_printf
   301A E5 81              1542 	mov	a,sp
   301C 24 FA              1543 	add	a,#0xfa
   301E F5 81              1544 	mov	sp,a
   3020 D0 04              1545 	pop	ar4
   3022 D0 03              1546 	pop	ar3
   3024 D0 02              1547 	pop	ar2
                           1548 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:225: if(!sm->stateMachineInitialized)
   3026 74 1E              1549 	mov	a,#0x1E
   3028 2A                 1550 	add	a,r2
   3029 FD                 1551 	mov	r5,a
   302A E4                 1552 	clr	a
   302B 3B                 1553 	addc	a,r3
   302C FE                 1554 	mov	r6,a
   302D 8C 07              1555 	mov	ar7,r4
   302F 8D 82              1556 	mov	dpl,r5
   3031 8E 83              1557 	mov	dph,r6
   3033 8F F0              1558 	mov	b,r7
   3035 12 4D 3C           1559 	lcall	__gptrget
   3038 60 03              1560 	jz	00210$
   303A 02 30 E3           1561 	ljmp	00102$
   303D                    1562 00210$:
                           1563 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:228: printf("\t\tinitializing...\n") ;
   303D C0 02              1564 	push	ar2
   303F C0 03              1565 	push	ar3
   3041 C0 04              1566 	push	ar4
   3043 74 83              1567 	mov	a,#__str_6
   3045 C0 E0              1568 	push	acc
   3047 74 51              1569 	mov	a,#(__str_6 >> 8)
   3049 C0 E0              1570 	push	acc
   304B 74 80              1571 	mov	a,#0x80
   304D C0 E0              1572 	push	acc
   304F 12 44 F0           1573 	lcall	_printf
   3052 15 81              1574 	dec	sp
   3054 15 81              1575 	dec	sp
   3056 15 81              1576 	dec	sp
   3058 D0 04              1577 	pop	ar4
   305A D0 03              1578 	pop	ar3
   305C D0 02              1579 	pop	ar2
                           1580 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:231: sm->currentState = (state_t*)sm->topState ;
   305E 74 05              1581 	mov	a,#0x05
   3060 2A                 1582 	add	a,r2
   3061 F5 48              1583 	mov	_iterateStateMachine_sloc0_1_0,a
   3063 E4                 1584 	clr	a
   3064 3B                 1585 	addc	a,r3
   3065 F5 49              1586 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   3067 8C 4A              1587 	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
   3069 8A 82              1588 	mov	dpl,r2
   306B 8B 83              1589 	mov	dph,r3
   306D 8C F0              1590 	mov	b,r4
   306F 12 4D 3C           1591 	lcall	__gptrget
   3072 F8                 1592 	mov	r0,a
   3073 A3                 1593 	inc	dptr
   3074 12 4D 3C           1594 	lcall	__gptrget
   3077 F9                 1595 	mov	r1,a
   3078 7D 80              1596 	mov	r5,#0x80
   307A 85 48 82           1597 	mov	dpl,_iterateStateMachine_sloc0_1_0
   307D 85 49 83           1598 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   3080 85 4A F0           1599 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   3083 E8                 1600 	mov	a,r0
   3084 12 41 10           1601 	lcall	__gptrput
   3087 A3                 1602 	inc	dptr
   3088 E9                 1603 	mov	a,r1
   3089 12 41 10           1604 	lcall	__gptrput
   308C A3                 1605 	inc	dptr
   308D ED                 1606 	mov	a,r5
   308E 12 41 10           1607 	lcall	__gptrput
                           1608 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:233: callStateHandler(sm, sm->currentState, &enterEvent) ;
   3091 90 09 FA           1609 	mov	dptr,#_callStateHandler_PARM_2
   3094 E8                 1610 	mov	a,r0
   3095 F0                 1611 	movx	@dptr,a
   3096 A3                 1612 	inc	dptr
   3097 E9                 1613 	mov	a,r1
   3098 F0                 1614 	movx	@dptr,a
   3099 A3                 1615 	inc	dptr
   309A ED                 1616 	mov	a,r5
   309B F0                 1617 	movx	@dptr,a
   309C 90 09 FD           1618 	mov	dptr,#_callStateHandler_PARM_3
   309F 74 0F              1619 	mov	a,#_enterEvent
   30A1 F0                 1620 	movx	@dptr,a
   30A2 A3                 1621 	inc	dptr
   30A3 74 0F              1622 	mov	a,#(_enterEvent >> 8)
   30A5 F0                 1623 	movx	@dptr,a
   30A6 A3                 1624 	inc	dptr
   30A7 E4                 1625 	clr	a
   30A8 F0                 1626 	movx	@dptr,a
   30A9 8A 82              1627 	mov	dpl,r2
   30AB 8B 83              1628 	mov	dph,r3
   30AD 8C F0              1629 	mov	b,r4
   30AF 12 2B C8           1630 	lcall	_callStateHandler
                           1631 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:235: sm->stateMachineInitialized	= true ;
   30B2 90 0A 04           1632 	mov	dptr,#_iterateStateMachine_sm_1_1
   30B5 E0                 1633 	movx	a,@dptr
   30B6 FA                 1634 	mov	r2,a
   30B7 A3                 1635 	inc	dptr
   30B8 E0                 1636 	movx	a,@dptr
   30B9 FB                 1637 	mov	r3,a
   30BA A3                 1638 	inc	dptr
   30BB E0                 1639 	movx	a,@dptr
   30BC FC                 1640 	mov	r4,a
   30BD 74 1E              1641 	mov	a,#0x1E
   30BF 2A                 1642 	add	a,r2
   30C0 FD                 1643 	mov	r5,a
   30C1 E4                 1644 	clr	a
   30C2 3B                 1645 	addc	a,r3
   30C3 FE                 1646 	mov	r6,a
   30C4 8C 07              1647 	mov	ar7,r4
   30C6 8D 82              1648 	mov	dpl,r5
   30C8 8E 83              1649 	mov	dph,r6
   30CA 8F F0              1650 	mov	b,r7
   30CC 74 01              1651 	mov	a,#0x01
   30CE 12 41 10           1652 	lcall	__gptrput
                           1653 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:236: sm->forceTransition			= true ;
   30D1 74 1F              1654 	mov	a,#0x1F
   30D3 2A                 1655 	add	a,r2
   30D4 FA                 1656 	mov	r2,a
   30D5 E4                 1657 	clr	a
   30D6 3B                 1658 	addc	a,r3
   30D7 FB                 1659 	mov	r3,a
   30D8 8A 82              1660 	mov	dpl,r2
   30DA 8B 83              1661 	mov	dph,r3
   30DC 8C F0              1662 	mov	b,r4
   30DE 74 01              1663 	mov	a,#0x01
   30E0 12 41 10           1664 	lcall	__gptrput
   30E3                    1665 00102$:
                           1666 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:241: if((!eventQueue_isEmpty(&sm->eventQueue)) || (sm->forceTransition))
   30E3 90 0A 04           1667 	mov	dptr,#_iterateStateMachine_sm_1_1
   30E6 E0                 1668 	movx	a,@dptr
   30E7 FA                 1669 	mov	r2,a
   30E8 A3                 1670 	inc	dptr
   30E9 E0                 1671 	movx	a,@dptr
   30EA FB                 1672 	mov	r3,a
   30EB A3                 1673 	inc	dptr
   30EC E0                 1674 	movx	a,@dptr
   30ED FC                 1675 	mov	r4,a
   30EE 74 0B              1676 	mov	a,#0x0B
   30F0 2A                 1677 	add	a,r2
   30F1 FD                 1678 	mov	r5,a
   30F2 E4                 1679 	clr	a
   30F3 3B                 1680 	addc	a,r3
   30F4 FE                 1681 	mov	r6,a
   30F5 8C 07              1682 	mov	ar7,r4
   30F7 8D 82              1683 	mov	dpl,r5
   30F9 8E 83              1684 	mov	dph,r6
   30FB 8F F0              1685 	mov	b,r7
   30FD C0 02              1686 	push	ar2
   30FF C0 03              1687 	push	ar3
   3101 C0 04              1688 	push	ar4
   3103 12 20 F7           1689 	lcall	_eventQueue_isEmpty
   3106 E5 82              1690 	mov	a,dpl
   3108 D0 04              1691 	pop	ar4
   310A D0 03              1692 	pop	ar3
   310C D0 02              1693 	pop	ar2
   310E 60 15              1694 	jz	00166$
   3110 74 1F              1695 	mov	a,#0x1F
   3112 2A                 1696 	add	a,r2
   3113 FA                 1697 	mov	r2,a
   3114 E4                 1698 	clr	a
   3115 3B                 1699 	addc	a,r3
   3116 FB                 1700 	mov	r3,a
   3117 8A 82              1701 	mov	dpl,r2
   3119 8B 83              1702 	mov	dph,r3
   311B 8C F0              1703 	mov	b,r4
   311D 12 4D 3C           1704 	lcall	__gptrget
   3120 70 03              1705 	jnz	00212$
   3122 02 3E 27           1706 	ljmp	00167$
   3125                    1707 00212$:
   3125                    1708 00166$:
                           1709 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:244: state_t*						stateBeingProcessed	= sm->currentState ;
   3125 90 0A 04           1710 	mov	dptr,#_iterateStateMachine_sm_1_1
   3128 E0                 1711 	movx	a,@dptr
   3129 FA                 1712 	mov	r2,a
   312A A3                 1713 	inc	dptr
   312B E0                 1714 	movx	a,@dptr
   312C FB                 1715 	mov	r3,a
   312D A3                 1716 	inc	dptr
   312E E0                 1717 	movx	a,@dptr
   312F FC                 1718 	mov	r4,a
   3130 74 05              1719 	mov	a,#0x05
   3132 2A                 1720 	add	a,r2
   3133 FD                 1721 	mov	r5,a
   3134 E4                 1722 	clr	a
   3135 3B                 1723 	addc	a,r3
   3136 FE                 1724 	mov	r6,a
   3137 8C 07              1725 	mov	ar7,r4
   3139 8D 82              1726 	mov	dpl,r5
   313B 8E 83              1727 	mov	dph,r6
   313D 8F F0              1728 	mov	b,r7
   313F 12 4D 3C           1729 	lcall	__gptrget
   3142 FD                 1730 	mov	r5,a
   3143 A3                 1731 	inc	dptr
   3144 12 4D 3C           1732 	lcall	__gptrget
   3147 FE                 1733 	mov	r6,a
   3148 A3                 1734 	inc	dptr
   3149 12 4D 3C           1735 	lcall	__gptrget
   314C FF                 1736 	mov	r7,a
   314D 90 0A 0A           1737 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3150 ED                 1738 	mov	a,r5
   3151 F0                 1739 	movx	@dptr,a
   3152 A3                 1740 	inc	dptr
   3153 EE                 1741 	mov	a,r6
   3154 F0                 1742 	movx	@dptr,a
   3155 A3                 1743 	inc	dptr
   3156 EF                 1744 	mov	a,r7
   3157 F0                 1745 	movx	@dptr,a
                           1746 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:247: if(sm->forceTransition)
   3158 74 1F              1747 	mov	a,#0x1F
   315A 2A                 1748 	add	a,r2
   315B FD                 1749 	mov	r5,a
   315C E4                 1750 	clr	a
   315D 3B                 1751 	addc	a,r3
   315E FE                 1752 	mov	r6,a
   315F 8C 07              1753 	mov	ar7,r4
   3161 8D 82              1754 	mov	dpl,r5
   3163 8E 83              1755 	mov	dph,r6
   3165 8F F0              1756 	mov	b,r7
   3167 12 4D 3C           1757 	lcall	__gptrget
   316A 60 19              1758 	jz	00104$
                           1759 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:249: sm->forceTransition	= false ;
   316C 8D 82              1760 	mov	dpl,r5
   316E 8E 83              1761 	mov	dph,r6
   3170 8F F0              1762 	mov	b,r7
   3172 E4                 1763 	clr	a
   3173 12 41 10           1764 	lcall	__gptrput
                           1765 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:250: eventToProcess		= &initialTransitionEvent ;
   3176 90 0A 07           1766 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   3179 74 0D              1767 	mov	a,#_initialTransitionEvent
   317B F0                 1768 	movx	@dptr,a
   317C A3                 1769 	inc	dptr
   317D 74 0F              1770 	mov	a,#(_initialTransitionEvent >> 8)
   317F F0                 1771 	movx	@dptr,a
   3180 A3                 1772 	inc	dptr
   3181 E4                 1773 	clr	a
   3182 F0                 1774 	movx	@dptr,a
   3183 80 21              1775 	sjmp	00105$
   3185                    1776 00104$:
                           1777 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:254: eventToProcess = eventQueue_remove(&sm->eventQueue) ; ;
   3185 74 0B              1778 	mov	a,#0x0B
   3187 2A                 1779 	add	a,r2
   3188 FA                 1780 	mov	r2,a
   3189 E4                 1781 	clr	a
   318A 3B                 1782 	addc	a,r3
   318B FB                 1783 	mov	r3,a
   318C 8A 82              1784 	mov	dpl,r2
   318E 8B 83              1785 	mov	dph,r3
   3190 8C F0              1786 	mov	b,r4
   3192 12 23 05           1787 	lcall	_eventQueue_remove
   3195 AA 82              1788 	mov	r2,dpl
   3197 AB 83              1789 	mov	r3,dph
   3199 AC F0              1790 	mov	r4,b
   319B 90 0A 07           1791 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   319E EA                 1792 	mov	a,r2
   319F F0                 1793 	movx	@dptr,a
   31A0 A3                 1794 	inc	dptr
   31A1 EB                 1795 	mov	a,r3
   31A2 F0                 1796 	movx	@dptr,a
   31A3 A3                 1797 	inc	dptr
   31A4 EC                 1798 	mov	a,r4
   31A5 F0                 1799 	movx	@dptr,a
   31A6                    1800 00105$:
                           1801 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:257: sm->nextState = (state_t*)0 ;	/* just a little housecleaning */
   31A6 90 0A 04           1802 	mov	dptr,#_iterateStateMachine_sm_1_1
   31A9 E0                 1803 	movx	a,@dptr
   31AA FA                 1804 	mov	r2,a
   31AB A3                 1805 	inc	dptr
   31AC E0                 1806 	movx	a,@dptr
   31AD FB                 1807 	mov	r3,a
   31AE A3                 1808 	inc	dptr
   31AF E0                 1809 	movx	a,@dptr
   31B0 FC                 1810 	mov	r4,a
   31B1 74 08              1811 	mov	a,#0x08
   31B3 2A                 1812 	add	a,r2
   31B4 FA                 1813 	mov	r2,a
   31B5 E4                 1814 	clr	a
   31B6 3B                 1815 	addc	a,r3
   31B7 FB                 1816 	mov	r3,a
   31B8 8A 82              1817 	mov	dpl,r2
   31BA 8B 83              1818 	mov	dph,r3
   31BC 8C F0              1819 	mov	b,r4
   31BE E4                 1820 	clr	a
   31BF 12 41 10           1821 	lcall	__gptrput
   31C2 A3                 1822 	inc	dptr
   31C3 E4                 1823 	clr	a
   31C4 12 41 10           1824 	lcall	__gptrput
   31C7 A3                 1825 	inc	dptr
   31C8 E4                 1826 	clr	a
   31C9 12 41 10           1827 	lcall	__gptrput
                           1828 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:260: printf("\t\tProcessing event...\n") ;
   31CC 74 96              1829 	mov	a,#__str_7
   31CE C0 E0              1830 	push	acc
   31D0 74 51              1831 	mov	a,#(__str_7 >> 8)
   31D2 C0 E0              1832 	push	acc
   31D4 74 80              1833 	mov	a,#0x80
   31D6 C0 E0              1834 	push	acc
   31D8 12 44 F0           1835 	lcall	_printf
   31DB 15 81              1836 	dec	sp
   31DD 15 81              1837 	dec	sp
   31DF 15 81              1838 	dec	sp
                           1839 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:270: do
   31E1 90 0A 07           1840 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   31E4 E0                 1841 	movx	a,@dptr
   31E5 FA                 1842 	mov	r2,a
   31E6 A3                 1843 	inc	dptr
   31E7 E0                 1844 	movx	a,@dptr
   31E8 FB                 1845 	mov	r3,a
   31E9 A3                 1846 	inc	dptr
   31EA E0                 1847 	movx	a,@dptr
   31EB FC                 1848 	mov	r4,a
   31EC                    1849 00110$:
                           1850 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:272: action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;
   31EC C0 02              1851 	push	ar2
   31EE C0 03              1852 	push	ar3
   31F0 C0 04              1853 	push	ar4
   31F2 90 0A 04           1854 	mov	dptr,#_iterateStateMachine_sm_1_1
   31F5 E0                 1855 	movx	a,@dptr
   31F6 FD                 1856 	mov	r5,a
   31F7 A3                 1857 	inc	dptr
   31F8 E0                 1858 	movx	a,@dptr
   31F9 FE                 1859 	mov	r6,a
   31FA A3                 1860 	inc	dptr
   31FB E0                 1861 	movx	a,@dptr
   31FC FF                 1862 	mov	r7,a
   31FD 90 0A 0A           1863 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3200 E0                 1864 	movx	a,@dptr
   3201 F5 48              1865 	mov	_iterateStateMachine_sloc0_1_0,a
   3203 A3                 1866 	inc	dptr
   3204 E0                 1867 	movx	a,@dptr
   3205 F5 49              1868 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   3207 A3                 1869 	inc	dptr
   3208 E0                 1870 	movx	a,@dptr
   3209 F5 4A              1871 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
   320B 90 0A 07           1872 	mov	dptr,#_iterateStateMachine_eventToProcess_2_3
   320E E0                 1873 	movx	a,@dptr
   320F FB                 1874 	mov	r3,a
   3210 A3                 1875 	inc	dptr
   3211 E0                 1876 	movx	a,@dptr
   3212 FC                 1877 	mov	r4,a
   3213 A3                 1878 	inc	dptr
   3214 E0                 1879 	movx	a,@dptr
   3215 FA                 1880 	mov	r2,a
   3216 90 09 FA           1881 	mov	dptr,#_callStateHandler_PARM_2
   3219 E5 48              1882 	mov	a,_iterateStateMachine_sloc0_1_0
   321B F0                 1883 	movx	@dptr,a
   321C A3                 1884 	inc	dptr
   321D E5 49              1885 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   321F F0                 1886 	movx	@dptr,a
   3220 A3                 1887 	inc	dptr
   3221 E5 4A              1888 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3223 F0                 1889 	movx	@dptr,a
   3224 90 09 FD           1890 	mov	dptr,#_callStateHandler_PARM_3
   3227 EB                 1891 	mov	a,r3
   3228 F0                 1892 	movx	@dptr,a
   3229 A3                 1893 	inc	dptr
   322A EC                 1894 	mov	a,r4
   322B F0                 1895 	movx	@dptr,a
   322C A3                 1896 	inc	dptr
   322D EA                 1897 	mov	a,r2
   322E F0                 1898 	movx	@dptr,a
   322F 8D 82              1899 	mov	dpl,r5
   3231 8E 83              1900 	mov	dph,r6
   3233 8F F0              1901 	mov	b,r7
   3235 C0 03              1902 	push	ar3
   3237 C0 04              1903 	push	ar4
   3239 12 2B C8           1904 	lcall	_callStateHandler
   323C AA 82              1905 	mov	r2,dpl
   323E D0 04              1906 	pop	ar4
   3240 D0 03              1907 	pop	ar3
   3242 90 0A 0D           1908 	mov	dptr,#_iterateStateMachine_action_2_3
   3245 EA                 1909 	mov	a,r2
   3246 F0                 1910 	movx	@dptr,a
                           1911 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:274: if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
   3247 EA                 1912 	mov	a,r2
   3248 D0 04              1913 	pop	ar4
   324A D0 03              1914 	pop	ar3
   324C D0 02              1915 	pop	ar2
   324E 60 03              1916 	jz	00214$
   3250 02 32 FB           1917 	ljmp	00183$
   3253                    1918 00214$:
   3253 8A 82              1919 	mov	dpl,r2
   3255 8B 83              1920 	mov	dph,r3
   3257 8C F0              1921 	mov	b,r4
   3259 12 4D 3C           1922 	lcall	__gptrget
   325C FD                 1923 	mov  r5,a
   325D 24 FA              1924 	add	a,#0xff - 0x05
   325F 40 03              1925 	jc	00215$
   3261 02 32 FB           1926 	ljmp	00183$
   3264                    1927 00215$:
                           1928 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:276: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   3264 90 0A 0A           1929 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3267 E0                 1930 	movx	a,@dptr
   3268 FD                 1931 	mov	r5,a
   3269 A3                 1932 	inc	dptr
   326A E0                 1933 	movx	a,@dptr
   326B FE                 1934 	mov	r6,a
   326C A3                 1935 	inc	dptr
   326D E0                 1936 	movx	a,@dptr
   326E FF                 1937 	mov	r7,a
   326F 8D 82              1938 	mov	dpl,r5
   3271 8E 83              1939 	mov	dph,r6
   3273 8F F0              1940 	mov	b,r7
   3275 12 4D 3C           1941 	lcall	__gptrget
   3278 FD                 1942 	mov	r5,a
   3279 A3                 1943 	inc	dptr
   327A 12 4D 3C           1944 	lcall	__gptrget
   327D FE                 1945 	mov	r6,a
   327E A3                 1946 	inc	dptr
   327F 12 4D 3C           1947 	lcall	__gptrget
   3282 FF                 1948 	mov	r7,a
   3283 90 0A 0A           1949 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3286 ED                 1950 	mov	a,r5
   3287 F0                 1951 	movx	@dptr,a
   3288 A3                 1952 	inc	dptr
   3289 EE                 1953 	mov	a,r6
   328A F0                 1954 	movx	@dptr,a
   328B A3                 1955 	inc	dptr
   328C EF                 1956 	mov	a,r7
   328D F0                 1957 	movx	@dptr,a
                           1958 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:279: printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
   328E 90 0A 0A           1959 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3291 E0                 1960 	movx	a,@dptr
   3292 FD                 1961 	mov	r5,a
   3293 A3                 1962 	inc	dptr
   3294 E0                 1963 	movx	a,@dptr
   3295 FE                 1964 	mov	r6,a
   3296 A3                 1965 	inc	dptr
   3297 E0                 1966 	movx	a,@dptr
   3298 FF                 1967 	mov	r7,a
   3299 ED                 1968 	mov	a,r5
   329A 4E                 1969 	orl	a,r6
   329B 4F                 1970 	orl	a,r7
   329C 60 1D              1971 	jz	00171$
   329E 74 06              1972 	mov	a,#0x06
   32A0 2D                 1973 	add	a,r5
   32A1 FD                 1974 	mov	r5,a
   32A2 E4                 1975 	clr	a
   32A3 3E                 1976 	addc	a,r6
   32A4 FE                 1977 	mov	r6,a
   32A5 8D 82              1978 	mov	dpl,r5
   32A7 8E 83              1979 	mov	dph,r6
   32A9 8F F0              1980 	mov	b,r7
   32AB 12 4D 3C           1981 	lcall	__gptrget
   32AE FD                 1982 	mov	r5,a
   32AF A3                 1983 	inc	dptr
   32B0 12 4D 3C           1984 	lcall	__gptrget
   32B3 FE                 1985 	mov	r6,a
   32B4 A3                 1986 	inc	dptr
   32B5 12 4D 3C           1987 	lcall	__gptrget
   32B8 FF                 1988 	mov	r7,a
   32B9 80 06              1989 	sjmp	00172$
   32BB                    1990 00171$:
   32BB 7D CA              1991 	mov	r5,#__str_9
   32BD 7E 51              1992 	mov	r6,#(__str_9 >> 8)
   32BF 7F 80              1993 	mov	r7,#0x80
   32C1                    1994 00172$:
   32C1 C0 02              1995 	push	ar2
   32C3 C0 03              1996 	push	ar3
   32C5 C0 04              1997 	push	ar4
   32C7 C0 05              1998 	push	ar5
   32C9 C0 06              1999 	push	ar6
   32CB C0 07              2000 	push	ar7
   32CD 74 AD              2001 	mov	a,#__str_8
   32CF C0 E0              2002 	push	acc
   32D1 74 51              2003 	mov	a,#(__str_8 >> 8)
   32D3 C0 E0              2004 	push	acc
   32D5 74 80              2005 	mov	a,#0x80
   32D7 C0 E0              2006 	push	acc
   32D9 12 44 F0           2007 	lcall	_printf
   32DC E5 81              2008 	mov	a,sp
   32DE 24 FA              2009 	add	a,#0xfa
   32E0 F5 81              2010 	mov	sp,a
   32E2 D0 04              2011 	pop	ar4
   32E4 D0 03              2012 	pop	ar3
   32E6 D0 02              2013 	pop	ar2
                           2014 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:289: } while(stateBeingProcessed) ;
   32E8 90 0A 0A           2015 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   32EB E0                 2016 	movx	a,@dptr
   32EC FD                 2017 	mov	r5,a
   32ED A3                 2018 	inc	dptr
   32EE E0                 2019 	movx	a,@dptr
   32EF FE                 2020 	mov	r6,a
   32F0 A3                 2021 	inc	dptr
   32F1 E0                 2022 	movx	a,@dptr
   32F2 FF                 2023 	mov	r7,a
   32F3 ED                 2024 	mov	a,r5
   32F4 4E                 2025 	orl	a,r6
   32F5 4F                 2026 	orl	a,r7
   32F6 60 03              2027 	jz	00217$
   32F8 02 31 EC           2028 	ljmp	00110$
   32FB                    2029 00217$:
                           2030 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:291: while(action == TRANSITION_TO_HISTORY)
   32FB                    2031 00183$:
   32FB 90 0A 04           2032 	mov	dptr,#_iterateStateMachine_sm_1_1
   32FE E0                 2033 	movx	a,@dptr
   32FF FA                 2034 	mov	r2,a
   3300 A3                 2035 	inc	dptr
   3301 E0                 2036 	movx	a,@dptr
   3302 FB                 2037 	mov	r3,a
   3303 A3                 2038 	inc	dptr
   3304 E0                 2039 	movx	a,@dptr
   3305 FC                 2040 	mov	r4,a
   3306 74 08              2041 	mov	a,#0x08
   3308 2A                 2042 	add	a,r2
   3309 FD                 2043 	mov	r5,a
   330A E4                 2044 	clr	a
   330B 3B                 2045 	addc	a,r3
   330C FE                 2046 	mov	r6,a
   330D 8C 07              2047 	mov	ar7,r4
   330F 8A 48              2048 	mov	_iterateStateMachine_sloc0_1_0,r2
   3311 8B 49              2049 	mov	(_iterateStateMachine_sloc0_1_0 + 1),r3
   3313 8C 4A              2050 	mov	(_iterateStateMachine_sloc0_1_0 + 2),r4
   3315 74 22              2051 	mov	a,#0x22
   3317 2A                 2052 	add	a,r2
   3318 FA                 2053 	mov	r2,a
   3319 E4                 2054 	clr	a
   331A 3B                 2055 	addc	a,r3
   331B FB                 2056 	mov	r3,a
   331C                    2057 00120$:
   331C 90 0A 0D           2058 	mov	dptr,#_iterateStateMachine_action_2_3
   331F E0                 2059 	movx	a,@dptr
   3320 F8                 2060 	mov	r0,a
   3321 B8 03 02           2061 	cjne	r0,#0x03,00218$
   3324 80 03              2062 	sjmp	00219$
   3326                    2063 00218$:
   3326 02 34 AB           2064 	ljmp	00122$
   3329                    2065 00219$:
                           2066 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:293: if(		(((state_t*)(sm->nextState))->type != STATE_WITH_SHALLOW_HISTORY)
   3329 C0 02              2067 	push	ar2
   332B C0 03              2068 	push	ar3
   332D C0 04              2069 	push	ar4
   332F 8D 82              2070 	mov	dpl,r5
   3331 8E 83              2071 	mov	dph,r6
   3333 8F F0              2072 	mov	b,r7
   3335 12 4D 3C           2073 	lcall	__gptrget
   3338 F8                 2074 	mov	r0,a
   3339 A3                 2075 	inc	dptr
   333A 12 4D 3C           2076 	lcall	__gptrget
   333D F9                 2077 	mov	r1,a
   333E A3                 2078 	inc	dptr
   333F 12 4D 3C           2079 	lcall	__gptrget
   3342 FA                 2080 	mov	r2,a
   3343 74 03              2081 	mov	a,#0x03
   3345 28                 2082 	add	a,r0
   3346 F8                 2083 	mov	r0,a
   3347 E4                 2084 	clr	a
   3348 39                 2085 	addc	a,r1
   3349 F9                 2086 	mov	r1,a
   334A 88 82              2087 	mov	dpl,r0
   334C 89 83              2088 	mov	dph,r1
   334E 8A F0              2089 	mov	b,r2
   3350 12 4D 3C           2090 	lcall	__gptrget
   3353 F5 4B              2091 	mov	_iterateStateMachine_sloc1_1_0,a
   3355 74 02              2092 	mov	a,#0x02
   3357 B5 4B 08           2093 	cjne	a,_iterateStateMachine_sloc1_1_0,00220$
   335A D0 04              2094 	pop	ar4
   335C D0 03              2095 	pop	ar3
   335E D0 02              2096 	pop	ar2
   3360 80 10              2097 	sjmp	00117$
   3362                    2098 00220$:
   3362 D0 04              2099 	pop	ar4
   3364 D0 03              2100 	pop	ar3
   3366 D0 02              2101 	pop	ar2
                           2102 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:294: &&	(((state_t*)(sm->nextState))->type != STATE_WITH_DEEP_HISTORY))
   3368 74 03              2103 	mov	a,#0x03
   336A B5 4B 02           2104 	cjne	a,_iterateStateMachine_sloc1_1_0,00221$
   336D 80 03              2105 	sjmp	00222$
   336F                    2106 00221$:
   336F 02 34 AB           2107 	ljmp	00122$
   3372                    2108 00222$:
                           2109 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:300: break ;
   3372                    2110 00117$:
                           2111 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:304: state_t* nextState = sm->historicalMarkers[((state_with_history_t*)(sm->nextState))->historyMarkerIndex] ;
   3372 C0 05              2112 	push	ar5
   3374 C0 06              2113 	push	ar6
   3376 C0 07              2114 	push	ar7
   3378 8A 82              2115 	mov	dpl,r2
   337A 8B 83              2116 	mov	dph,r3
   337C 8C F0              2117 	mov	b,r4
   337E 12 4D 3C           2118 	lcall	__gptrget
   3381 F5 4F              2119 	mov	_iterateStateMachine_sloc3_1_0,a
   3383 A3                 2120 	inc	dptr
   3384 12 4D 3C           2121 	lcall	__gptrget
   3387 F5 50              2122 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   3389 A3                 2123 	inc	dptr
   338A 12 4D 3C           2124 	lcall	__gptrget
   338D F5 51              2125 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
   338F 74 08              2126 	mov	a,#0x08
   3391 25 48              2127 	add	a,_iterateStateMachine_sloc0_1_0
   3393 F5 4C              2128 	mov	_iterateStateMachine_sloc2_1_0,a
   3395 E4                 2129 	clr	a
   3396 35 49              2130 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3398 F5 4D              2131 	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
   339A 85 4A 4E           2132 	mov	(_iterateStateMachine_sloc2_1_0 + 2),(_iterateStateMachine_sloc0_1_0 + 2)
   339D 85 4C 82           2133 	mov	dpl,_iterateStateMachine_sloc2_1_0
   33A0 85 4D 83           2134 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   33A3 85 4E F0           2135 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   33A6 12 4D 3C           2136 	lcall	__gptrget
   33A9 FE                 2137 	mov	r6,a
   33AA A3                 2138 	inc	dptr
   33AB 12 4D 3C           2139 	lcall	__gptrget
   33AE FF                 2140 	mov	r7,a
   33AF A3                 2141 	inc	dptr
   33B0 12 4D 3C           2142 	lcall	__gptrget
   33B3 FD                 2143 	mov	r5,a
   33B4 74 09              2144 	mov	a,#0x09
   33B6 2E                 2145 	add	a,r6
   33B7 FE                 2146 	mov	r6,a
   33B8 E4                 2147 	clr	a
   33B9 3F                 2148 	addc	a,r7
   33BA FF                 2149 	mov	r7,a
   33BB 8E 82              2150 	mov	dpl,r6
   33BD 8F 83              2151 	mov	dph,r7
   33BF 8D F0              2152 	mov	b,r5
   33C1 12 4D 3C           2153 	lcall	__gptrget
   33C4 FE                 2154 	mov	r6,a
   33C5 A3                 2155 	inc	dptr
   33C6 12 4D 3C           2156 	lcall	__gptrget
   33C9 FF                 2157 	mov	r7,a
   33CA 90 0A AE           2158 	mov	dptr,#__mulint_PARM_2
   33CD EE                 2159 	mov	a,r6
   33CE F0                 2160 	movx	@dptr,a
   33CF A3                 2161 	inc	dptr
   33D0 EF                 2162 	mov	a,r7
   33D1 F0                 2163 	movx	@dptr,a
   33D2 90 00 03           2164 	mov	dptr,#0x0003
   33D5 C0 02              2165 	push	ar2
   33D7 C0 03              2166 	push	ar3
   33D9 C0 04              2167 	push	ar4
   33DB C0 07              2168 	push	ar7
   33DD 12 42 F1           2169 	lcall	__mulint
   33E0 AD 82              2170 	mov	r5,dpl
   33E2 AE 83              2171 	mov	r6,dph
   33E4 D0 07              2172 	pop	ar7
   33E6 D0 04              2173 	pop	ar4
   33E8 D0 03              2174 	pop	ar3
   33EA D0 02              2175 	pop	ar2
   33EC ED                 2176 	mov	a,r5
   33ED 25 4F              2177 	add	a,_iterateStateMachine_sloc3_1_0
   33EF FD                 2178 	mov	r5,a
   33F0 EE                 2179 	mov	a,r6
   33F1 35 50              2180 	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
   33F3 FE                 2181 	mov	r6,a
   33F4 AF 51              2182 	mov	r7,(_iterateStateMachine_sloc3_1_0 + 2)
   33F6 8D 82              2183 	mov	dpl,r5
   33F8 8E 83              2184 	mov	dph,r6
   33FA 8F F0              2185 	mov	b,r7
   33FC 12 4D 3C           2186 	lcall	__gptrget
   33FF F5 4F              2187 	mov	_iterateStateMachine_sloc3_1_0,a
   3401 A3                 2188 	inc	dptr
   3402 12 4D 3C           2189 	lcall	__gptrget
   3405 F5 50              2190 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   3407 A3                 2191 	inc	dptr
   3408 12 4D 3C           2192 	lcall	__gptrget
   340B F5 51              2193 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
                           2194 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:309: if(nextState != (void*)0)
   340D E4                 2195 	clr	a
   340E B5 4F 10           2196 	cjne	a,_iterateStateMachine_sloc3_1_0,00223$
   3411 E4                 2197 	clr	a
   3412 B5 50 0C           2198 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00223$
   3415 E4                 2199 	clr	a
   3416 B5 51 08           2200 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00223$
   3419 D0 07              2201 	pop	ar7
   341B D0 06              2202 	pop	ar6
   341D D0 05              2203 	pop	ar5
   341F 80 22              2204 	sjmp	00114$
   3421                    2205 00223$:
   3421 D0 07              2206 	pop	ar7
   3423 D0 06              2207 	pop	ar6
   3425 D0 05              2208 	pop	ar5
                           2209 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:316: sm->nextState = nextState ;
   3427 85 4C 82           2210 	mov	dpl,_iterateStateMachine_sloc2_1_0
   342A 85 4D 83           2211 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   342D 85 4E F0           2212 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   3430 E5 4F              2213 	mov	a,_iterateStateMachine_sloc3_1_0
   3432 12 41 10           2214 	lcall	__gptrput
   3435 A3                 2215 	inc	dptr
   3436 E5 50              2216 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3438 12 41 10           2217 	lcall	__gptrput
   343B A3                 2218 	inc	dptr
   343C E5 51              2219 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   343E 12 41 10           2220 	lcall	__gptrput
   3441 80 5F              2221 	sjmp	00118$
   3443                    2222 00114$:
                           2223 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:331: action = callStateHandler(sm, (state_t*)(sm->nextState), &jumpToHistoryEvent) ;
   3443 C0 02              2224 	push	ar2
   3445 C0 03              2225 	push	ar3
   3447 C0 04              2226 	push	ar4
   3449 85 4C 82           2227 	mov	dpl,_iterateStateMachine_sloc2_1_0
   344C 85 4D 83           2228 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   344F 85 4E F0           2229 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   3452 12 4D 3C           2230 	lcall	__gptrget
   3455 F8                 2231 	mov	r0,a
   3456 A3                 2232 	inc	dptr
   3457 12 4D 3C           2233 	lcall	__gptrget
   345A F9                 2234 	mov	r1,a
   345B A3                 2235 	inc	dptr
   345C 12 4D 3C           2236 	lcall	__gptrget
   345F FA                 2237 	mov	r2,a
   3460 90 09 FA           2238 	mov	dptr,#_callStateHandler_PARM_2
   3463 E8                 2239 	mov	a,r0
   3464 F0                 2240 	movx	@dptr,a
   3465 A3                 2241 	inc	dptr
   3466 E9                 2242 	mov	a,r1
   3467 F0                 2243 	movx	@dptr,a
   3468 A3                 2244 	inc	dptr
   3469 EA                 2245 	mov	a,r2
   346A F0                 2246 	movx	@dptr,a
   346B 90 09 FD           2247 	mov	dptr,#_callStateHandler_PARM_3
   346E 74 0E              2248 	mov	a,#_jumpToHistoryEvent
   3470 F0                 2249 	movx	@dptr,a
   3471 A3                 2250 	inc	dptr
   3472 74 0F              2251 	mov	a,#(_jumpToHistoryEvent >> 8)
   3474 F0                 2252 	movx	@dptr,a
   3475 A3                 2253 	inc	dptr
   3476 E4                 2254 	clr	a
   3477 F0                 2255 	movx	@dptr,a
   3478 85 48 82           2256 	mov	dpl,_iterateStateMachine_sloc0_1_0
   347B 85 49 83           2257 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   347E 85 4A F0           2258 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   3481 C0 02              2259 	push	ar2
   3483 C0 03              2260 	push	ar3
   3485 C0 04              2261 	push	ar4
   3487 C0 05              2262 	push	ar5
   3489 C0 06              2263 	push	ar6
   348B C0 07              2264 	push	ar7
   348D 12 2B C8           2265 	lcall	_callStateHandler
   3490 D0 07              2266 	pop	ar7
   3492 D0 06              2267 	pop	ar6
   3494 D0 05              2268 	pop	ar5
   3496 D0 04              2269 	pop	ar4
   3498 D0 03              2270 	pop	ar3
   349A D0 02              2271 	pop	ar2
                           2272 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:567: printf("\t\tEvent queue empty.\n") ;
   349C D0 04              2273 	pop	ar4
   349E D0 03              2274 	pop	ar3
   34A0 D0 02              2275 	pop	ar2
                           2276 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:331: action = callStateHandler(sm, (state_t*)(sm->nextState), &jumpToHistoryEvent) ;
   34A2                    2277 00118$:
                           2278 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:339: action = TRANSITION ;
   34A2 90 0A 0D           2279 	mov	dptr,#_iterateStateMachine_action_2_3
   34A5 74 02              2280 	mov	a,#0x02
   34A7 F0                 2281 	movx	@dptr,a
   34A8 02 33 1C           2282 	ljmp	00120$
   34AB                    2283 00122$:
                           2284 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:342: if(action == TRANSITION)
   34AB 90 0A 0D           2285 	mov	dptr,#_iterateStateMachine_action_2_3
   34AE E0                 2286 	movx	a,@dptr
   34AF FA                 2287 	mov	r2,a
   34B0 BA 02 02           2288 	cjne	r2,#0x02,00224$
   34B3 80 03              2289 	sjmp	00225$
   34B5                    2290 00224$:
   34B5 02 3E 27           2291 	ljmp	00167$
   34B8                    2292 00225$:
                           2293 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:344: state_t*	source	= sm->currentState ;
   34B8 90 0A 04           2294 	mov	dptr,#_iterateStateMachine_sm_1_1
   34BB E0                 2295 	movx	a,@dptr
   34BC FA                 2296 	mov	r2,a
   34BD A3                 2297 	inc	dptr
   34BE E0                 2298 	movx	a,@dptr
   34BF FB                 2299 	mov	r3,a
   34C0 A3                 2300 	inc	dptr
   34C1 E0                 2301 	movx	a,@dptr
   34C2 FC                 2302 	mov	r4,a
   34C3 74 05              2303 	mov	a,#0x05
   34C5 2A                 2304 	add	a,r2
   34C6 F5 4C              2305 	mov	_iterateStateMachine_sloc2_1_0,a
   34C8 E4                 2306 	clr	a
   34C9 3B                 2307 	addc	a,r3
   34CA F5 4D              2308 	mov	(_iterateStateMachine_sloc2_1_0 + 1),a
   34CC 8C 4E              2309 	mov	(_iterateStateMachine_sloc2_1_0 + 2),r4
   34CE 85 4C 82           2310 	mov	dpl,_iterateStateMachine_sloc2_1_0
   34D1 85 4D 83           2311 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   34D4 85 4E F0           2312 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   34D7 12 4D 3C           2313 	lcall	__gptrget
   34DA F5 4F              2314 	mov	_iterateStateMachine_sloc3_1_0,a
   34DC A3                 2315 	inc	dptr
   34DD 12 4D 3C           2316 	lcall	__gptrget
   34E0 F5 50              2317 	mov	(_iterateStateMachine_sloc3_1_0 + 1),a
   34E2 A3                 2318 	inc	dptr
   34E3 12 4D 3C           2319 	lcall	__gptrget
   34E6 F5 51              2320 	mov	(_iterateStateMachine_sloc3_1_0 + 2),a
                           2321 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:345: state_t*	target	= sm->nextState ;
   34E8 74 08              2322 	mov	a,#0x08
   34EA 2A                 2323 	add	a,r2
   34EB F8                 2324 	mov	r0,a
   34EC E4                 2325 	clr	a
   34ED 3B                 2326 	addc	a,r3
   34EE F9                 2327 	mov	r1,a
   34EF 8C 05              2328 	mov	ar5,r4
   34F1 88 82              2329 	mov	dpl,r0
   34F3 89 83              2330 	mov	dph,r1
   34F5 8D F0              2331 	mov	b,r5
   34F7 12 4D 3C           2332 	lcall	__gptrget
   34FA F5 48              2333 	mov	_iterateStateMachine_sloc0_1_0,a
   34FC A3                 2334 	inc	dptr
   34FD 12 4D 3C           2335 	lcall	__gptrget
   3500 F5 49              2336 	mov	(_iterateStateMachine_sloc0_1_0 + 1),a
   3502 A3                 2337 	inc	dptr
   3503 12 4D 3C           2338 	lcall	__gptrget
   3506 F5 4A              2339 	mov	(_iterateStateMachine_sloc0_1_0 + 2),a
                           2340 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:349: if(source == target)
   3508 E5 48              2341 	mov	a,_iterateStateMachine_sloc0_1_0
   350A B5 4F 0C           2342 	cjne	a,_iterateStateMachine_sloc3_1_0,00226$
   350D E5 49              2343 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   350F B5 50 07           2344 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00226$
   3512 E5 4A              2345 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3514 B5 51 02           2346 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00226$
   3517 80 03              2347 	sjmp	00227$
   3519                    2348 00226$:
   3519 02 35 BB           2349 	ljmp	00162$
   351C                    2350 00227$:
                           2351 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:352: printf("\t\t\t\tSelf transition.\n") ;
   351C C0 02              2352 	push	ar2
   351E C0 03              2353 	push	ar3
   3520 C0 04              2354 	push	ar4
   3522 74 D1              2355 	mov	a,#__str_10
   3524 C0 E0              2356 	push	acc
   3526 74 51              2357 	mov	a,#(__str_10 >> 8)
   3528 C0 E0              2358 	push	acc
   352A 74 80              2359 	mov	a,#0x80
   352C C0 E0              2360 	push	acc
   352E 12 44 F0           2361 	lcall	_printf
   3531 15 81              2362 	dec	sp
   3533 15 81              2363 	dec	sp
   3535 15 81              2364 	dec	sp
   3537 D0 04              2365 	pop	ar4
   3539 D0 03              2366 	pop	ar3
   353B D0 02              2367 	pop	ar2
                           2368 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:357: callStateHandler(sm, source, &exitEvent) ;
   353D 90 09 FA           2369 	mov	dptr,#_callStateHandler_PARM_2
   3540 E5 4F              2370 	mov	a,_iterateStateMachine_sloc3_1_0
   3542 F0                 2371 	movx	@dptr,a
   3543 A3                 2372 	inc	dptr
   3544 E5 50              2373 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3546 F0                 2374 	movx	@dptr,a
   3547 A3                 2375 	inc	dptr
   3548 E5 51              2376 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   354A F0                 2377 	movx	@dptr,a
   354B 90 09 FD           2378 	mov	dptr,#_callStateHandler_PARM_3
   354E 74 10              2379 	mov	a,#_exitEvent
   3550 F0                 2380 	movx	@dptr,a
   3551 A3                 2381 	inc	dptr
   3552 74 0F              2382 	mov	a,#(_exitEvent >> 8)
   3554 F0                 2383 	movx	@dptr,a
   3555 A3                 2384 	inc	dptr
   3556 E4                 2385 	clr	a
   3557 F0                 2386 	movx	@dptr,a
   3558 8A 82              2387 	mov	dpl,r2
   355A 8B 83              2388 	mov	dph,r3
   355C 8C F0              2389 	mov	b,r4
   355E 12 2B C8           2390 	lcall	_callStateHandler
                           2391 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:358: sm->currentState = target ;
   3561 90 0A 04           2392 	mov	dptr,#_iterateStateMachine_sm_1_1
   3564 E0                 2393 	movx	a,@dptr
   3565 F5 52              2394 	mov	_iterateStateMachine_sloc4_1_0,a
   3567 A3                 2395 	inc	dptr
   3568 E0                 2396 	movx	a,@dptr
   3569 F5 53              2397 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   356B A3                 2398 	inc	dptr
   356C E0                 2399 	movx	a,@dptr
   356D F5 54              2400 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   356F 74 05              2401 	mov	a,#0x05
   3571 25 52              2402 	add	a,_iterateStateMachine_sloc4_1_0
   3573 FE                 2403 	mov	r6,a
   3574 E4                 2404 	clr	a
   3575 35 53              2405 	addc	a,(_iterateStateMachine_sloc4_1_0 + 1)
   3577 FF                 2406 	mov	r7,a
   3578 AD 54              2407 	mov	r5,(_iterateStateMachine_sloc4_1_0 + 2)
   357A 8E 82              2408 	mov	dpl,r6
   357C 8F 83              2409 	mov	dph,r7
   357E 8D F0              2410 	mov	b,r5
   3580 E5 48              2411 	mov	a,_iterateStateMachine_sloc0_1_0
   3582 12 41 10           2412 	lcall	__gptrput
   3585 A3                 2413 	inc	dptr
   3586 E5 49              2414 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3588 12 41 10           2415 	lcall	__gptrput
   358B A3                 2416 	inc	dptr
   358C E5 4A              2417 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   358E 12 41 10           2418 	lcall	__gptrput
                           2419 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:359: callStateHandler(sm, target, &enterEvent) ;
   3591 90 09 FA           2420 	mov	dptr,#_callStateHandler_PARM_2
   3594 E5 48              2421 	mov	a,_iterateStateMachine_sloc0_1_0
   3596 F0                 2422 	movx	@dptr,a
   3597 A3                 2423 	inc	dptr
   3598 E5 49              2424 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   359A F0                 2425 	movx	@dptr,a
   359B A3                 2426 	inc	dptr
   359C E5 4A              2427 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   359E F0                 2428 	movx	@dptr,a
   359F 90 09 FD           2429 	mov	dptr,#_callStateHandler_PARM_3
   35A2 74 0F              2430 	mov	a,#_enterEvent
   35A4 F0                 2431 	movx	@dptr,a
   35A5 A3                 2432 	inc	dptr
   35A6 74 0F              2433 	mov	a,#(_enterEvent >> 8)
   35A8 F0                 2434 	movx	@dptr,a
   35A9 A3                 2435 	inc	dptr
   35AA E4                 2436 	clr	a
   35AB F0                 2437 	movx	@dptr,a
   35AC 85 52 82           2438 	mov	dpl,_iterateStateMachine_sloc4_1_0
   35AF 85 53 83           2439 	mov	dph,(_iterateStateMachine_sloc4_1_0 + 1)
   35B2 85 54 F0           2440 	mov	b,(_iterateStateMachine_sloc4_1_0 + 2)
   35B5 12 2B C8           2441 	lcall	_callStateHandler
   35B8 02 3E 0A           2442 	ljmp	00163$
   35BB                    2443 00162$:
                           2444 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:361: else if(source == (state_t*)(target->parent))
   35BB 85 48 82           2445 	mov	dpl,_iterateStateMachine_sloc0_1_0
   35BE 85 49 83           2446 	mov	dph,(_iterateStateMachine_sloc0_1_0 + 1)
   35C1 85 4A F0           2447 	mov	b,(_iterateStateMachine_sloc0_1_0 + 2)
   35C4 12 4D 3C           2448 	lcall	__gptrget
   35C7 FD                 2449 	mov	r5,a
   35C8 A3                 2450 	inc	dptr
   35C9 12 4D 3C           2451 	lcall	__gptrget
   35CC FE                 2452 	mov	r6,a
   35CD A3                 2453 	inc	dptr
   35CE 12 4D 3C           2454 	lcall	__gptrget
   35D1 FF                 2455 	mov	r7,a
   35D2 ED                 2456 	mov	a,r5
   35D3 B5 4F 6A           2457 	cjne	a,_iterateStateMachine_sloc3_1_0,00159$
   35D6 EE                 2458 	mov	a,r6
   35D7 B5 50 66           2459 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00159$
   35DA EF                 2460 	mov	a,r7
   35DB B5 51 62           2461 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00159$
                           2462 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:364: printf("\t\t\t\tTransition to direct child.\n") ;
   35DE C0 02              2463 	push	ar2
   35E0 C0 03              2464 	push	ar3
   35E2 C0 04              2465 	push	ar4
   35E4 74 E7              2466 	mov	a,#__str_11
   35E6 C0 E0              2467 	push	acc
   35E8 74 51              2468 	mov	a,#(__str_11 >> 8)
   35EA C0 E0              2469 	push	acc
   35EC 74 80              2470 	mov	a,#0x80
   35EE C0 E0              2471 	push	acc
   35F0 12 44 F0           2472 	lcall	_printf
   35F3 15 81              2473 	dec	sp
   35F5 15 81              2474 	dec	sp
   35F7 15 81              2475 	dec	sp
   35F9 D0 04              2476 	pop	ar4
   35FB D0 03              2477 	pop	ar3
   35FD D0 02              2478 	pop	ar2
                           2479 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:370: sm->currentState = target ;
   35FF 85 4C 82           2480 	mov	dpl,_iterateStateMachine_sloc2_1_0
   3602 85 4D 83           2481 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   3605 85 4E F0           2482 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   3608 E5 48              2483 	mov	a,_iterateStateMachine_sloc0_1_0
   360A 12 41 10           2484 	lcall	__gptrput
   360D A3                 2485 	inc	dptr
   360E E5 49              2486 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3610 12 41 10           2487 	lcall	__gptrput
   3613 A3                 2488 	inc	dptr
   3614 E5 4A              2489 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3616 12 41 10           2490 	lcall	__gptrput
                           2491 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:371: callStateHandler(sm, target, &enterEvent) ;
   3619 90 09 FA           2492 	mov	dptr,#_callStateHandler_PARM_2
   361C E5 48              2493 	mov	a,_iterateStateMachine_sloc0_1_0
   361E F0                 2494 	movx	@dptr,a
   361F A3                 2495 	inc	dptr
   3620 E5 49              2496 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3622 F0                 2497 	movx	@dptr,a
   3623 A3                 2498 	inc	dptr
   3624 E5 4A              2499 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3626 F0                 2500 	movx	@dptr,a
   3627 90 09 FD           2501 	mov	dptr,#_callStateHandler_PARM_3
   362A 74 0F              2502 	mov	a,#_enterEvent
   362C F0                 2503 	movx	@dptr,a
   362D A3                 2504 	inc	dptr
   362E 74 0F              2505 	mov	a,#(_enterEvent >> 8)
   3630 F0                 2506 	movx	@dptr,a
   3631 A3                 2507 	inc	dptr
   3632 E4                 2508 	clr	a
   3633 F0                 2509 	movx	@dptr,a
   3634 8A 82              2510 	mov	dpl,r2
   3636 8B 83              2511 	mov	dph,r3
   3638 8C F0              2512 	mov	b,r4
   363A 12 2B C8           2513 	lcall	_callStateHandler
   363D 02 3E 0A           2514 	ljmp	00163$
   3640                    2515 00159$:
                           2516 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:373: else if((state_t*)(source->parent) == (state_t*)(target->parent))
   3640 85 4F 82           2517 	mov	dpl,_iterateStateMachine_sloc3_1_0
   3643 85 50 83           2518 	mov	dph,(_iterateStateMachine_sloc3_1_0 + 1)
   3646 85 51 F0           2519 	mov	b,(_iterateStateMachine_sloc3_1_0 + 2)
   3649 12 4D 3C           2520 	lcall	__gptrget
   364C F5 52              2521 	mov	_iterateStateMachine_sloc4_1_0,a
   364E A3                 2522 	inc	dptr
   364F 12 4D 3C           2523 	lcall	__gptrget
   3652 F5 53              2524 	mov	(_iterateStateMachine_sloc4_1_0 + 1),a
   3654 A3                 2525 	inc	dptr
   3655 12 4D 3C           2526 	lcall	__gptrget
   3658 F5 54              2527 	mov	(_iterateStateMachine_sloc4_1_0 + 2),a
   365A ED                 2528 	mov	a,r5
   365B B5 52 0A           2529 	cjne	a,_iterateStateMachine_sloc4_1_0,00230$
   365E EE                 2530 	mov	a,r6
   365F B5 53 06           2531 	cjne	a,(_iterateStateMachine_sloc4_1_0 + 1),00230$
   3662 EF                 2532 	mov	a,r7
   3663 B5 54 02           2533 	cjne	a,(_iterateStateMachine_sloc4_1_0 + 2),00230$
   3666 80 03              2534 	sjmp	00231$
   3668                    2535 00230$:
   3668 02 37 0A           2536 	ljmp	00156$
   366B                    2537 00231$:
                           2538 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:376: printf("\t\t\t\tTransition to direct peer.\n") ;
   366B C0 02              2539 	push	ar2
   366D C0 03              2540 	push	ar3
   366F C0 04              2541 	push	ar4
   3671 74 08              2542 	mov	a,#__str_12
   3673 C0 E0              2543 	push	acc
   3675 74 52              2544 	mov	a,#(__str_12 >> 8)
   3677 C0 E0              2545 	push	acc
   3679 74 80              2546 	mov	a,#0x80
   367B C0 E0              2547 	push	acc
   367D 12 44 F0           2548 	lcall	_printf
   3680 15 81              2549 	dec	sp
   3682 15 81              2550 	dec	sp
   3684 15 81              2551 	dec	sp
   3686 D0 04              2552 	pop	ar4
   3688 D0 03              2553 	pop	ar3
   368A D0 02              2554 	pop	ar2
                           2555 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:382: callStateHandler(sm, source, &exitEvent) ;
   368C 90 09 FA           2556 	mov	dptr,#_callStateHandler_PARM_2
   368F E5 4F              2557 	mov	a,_iterateStateMachine_sloc3_1_0
   3691 F0                 2558 	movx	@dptr,a
   3692 A3                 2559 	inc	dptr
   3693 E5 50              2560 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3695 F0                 2561 	movx	@dptr,a
   3696 A3                 2562 	inc	dptr
   3697 E5 51              2563 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   3699 F0                 2564 	movx	@dptr,a
   369A 90 09 FD           2565 	mov	dptr,#_callStateHandler_PARM_3
   369D 74 10              2566 	mov	a,#_exitEvent
   369F F0                 2567 	movx	@dptr,a
   36A0 A3                 2568 	inc	dptr
   36A1 74 0F              2569 	mov	a,#(_exitEvent >> 8)
   36A3 F0                 2570 	movx	@dptr,a
   36A4 A3                 2571 	inc	dptr
   36A5 E4                 2572 	clr	a
   36A6 F0                 2573 	movx	@dptr,a
   36A7 8A 82              2574 	mov	dpl,r2
   36A9 8B 83              2575 	mov	dph,r3
   36AB 8C F0              2576 	mov	b,r4
   36AD 12 2B C8           2577 	lcall	_callStateHandler
                           2578 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:383: sm->currentState = target ;
   36B0 90 0A 04           2579 	mov	dptr,#_iterateStateMachine_sm_1_1
   36B3 E0                 2580 	movx	a,@dptr
   36B4 F5 55              2581 	mov	_iterateStateMachine_sloc5_1_0,a
   36B6 A3                 2582 	inc	dptr
   36B7 E0                 2583 	movx	a,@dptr
   36B8 F5 56              2584 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   36BA A3                 2585 	inc	dptr
   36BB E0                 2586 	movx	a,@dptr
   36BC F5 57              2587 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   36BE 74 05              2588 	mov	a,#0x05
   36C0 25 55              2589 	add	a,_iterateStateMachine_sloc5_1_0
   36C2 F8                 2590 	mov	r0,a
   36C3 E4                 2591 	clr	a
   36C4 35 56              2592 	addc	a,(_iterateStateMachine_sloc5_1_0 + 1)
   36C6 F9                 2593 	mov	r1,a
   36C7 AD 57              2594 	mov	r5,(_iterateStateMachine_sloc5_1_0 + 2)
   36C9 88 82              2595 	mov	dpl,r0
   36CB 89 83              2596 	mov	dph,r1
   36CD 8D F0              2597 	mov	b,r5
   36CF E5 48              2598 	mov	a,_iterateStateMachine_sloc0_1_0
   36D1 12 41 10           2599 	lcall	__gptrput
   36D4 A3                 2600 	inc	dptr
   36D5 E5 49              2601 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   36D7 12 41 10           2602 	lcall	__gptrput
   36DA A3                 2603 	inc	dptr
   36DB E5 4A              2604 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   36DD 12 41 10           2605 	lcall	__gptrput
                           2606 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:384: callStateHandler(sm, target, &enterEvent) ;
   36E0 90 09 FA           2607 	mov	dptr,#_callStateHandler_PARM_2
   36E3 E5 48              2608 	mov	a,_iterateStateMachine_sloc0_1_0
   36E5 F0                 2609 	movx	@dptr,a
   36E6 A3                 2610 	inc	dptr
   36E7 E5 49              2611 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   36E9 F0                 2612 	movx	@dptr,a
   36EA A3                 2613 	inc	dptr
   36EB E5 4A              2614 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   36ED F0                 2615 	movx	@dptr,a
   36EE 90 09 FD           2616 	mov	dptr,#_callStateHandler_PARM_3
   36F1 74 0F              2617 	mov	a,#_enterEvent
   36F3 F0                 2618 	movx	@dptr,a
   36F4 A3                 2619 	inc	dptr
   36F5 74 0F              2620 	mov	a,#(_enterEvent >> 8)
   36F7 F0                 2621 	movx	@dptr,a
   36F8 A3                 2622 	inc	dptr
   36F9 E4                 2623 	clr	a
   36FA F0                 2624 	movx	@dptr,a
   36FB 85 55 82           2625 	mov	dpl,_iterateStateMachine_sloc5_1_0
   36FE 85 56 83           2626 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3701 85 57 F0           2627 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3704 12 2B C8           2628 	lcall	_callStateHandler
   3707 02 3E 0A           2629 	ljmp	00163$
   370A                    2630 00156$:
                           2631 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:386: else if((state_t*)(source->parent) == target)
   370A E5 48              2632 	mov	a,_iterateStateMachine_sloc0_1_0
   370C B5 52 6C           2633 	cjne	a,_iterateStateMachine_sloc4_1_0,00153$
   370F E5 49              2634 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3711 B5 53 67           2635 	cjne	a,(_iterateStateMachine_sloc4_1_0 + 1),00153$
   3714 E5 4A              2636 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3716 B5 54 62           2637 	cjne	a,(_iterateStateMachine_sloc4_1_0 + 2),00153$
                           2638 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:389: printf("\t\t\t\tTransition to direct parent.\n") ;
   3719 C0 02              2639 	push	ar2
   371B C0 03              2640 	push	ar3
   371D C0 04              2641 	push	ar4
   371F 74 28              2642 	mov	a,#__str_13
   3721 C0 E0              2643 	push	acc
   3723 74 52              2644 	mov	a,#(__str_13 >> 8)
   3725 C0 E0              2645 	push	acc
   3727 74 80              2646 	mov	a,#0x80
   3729 C0 E0              2647 	push	acc
   372B 12 44 F0           2648 	lcall	_printf
   372E 15 81              2649 	dec	sp
   3730 15 81              2650 	dec	sp
   3732 15 81              2651 	dec	sp
   3734 D0 04              2652 	pop	ar4
   3736 D0 03              2653 	pop	ar3
   3738 D0 02              2654 	pop	ar2
                           2655 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:396: sm->currentState = target ;
   373A 85 4C 82           2656 	mov	dpl,_iterateStateMachine_sloc2_1_0
   373D 85 4D 83           2657 	mov	dph,(_iterateStateMachine_sloc2_1_0 + 1)
   3740 85 4E F0           2658 	mov	b,(_iterateStateMachine_sloc2_1_0 + 2)
   3743 E5 48              2659 	mov	a,_iterateStateMachine_sloc0_1_0
   3745 12 41 10           2660 	lcall	__gptrput
   3748 A3                 2661 	inc	dptr
   3749 E5 49              2662 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   374B 12 41 10           2663 	lcall	__gptrput
   374E A3                 2664 	inc	dptr
   374F E5 4A              2665 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3751 12 41 10           2666 	lcall	__gptrput
                           2667 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:397: callStateHandler(sm, source, &exitEvent) ;
   3754 90 09 FA           2668 	mov	dptr,#_callStateHandler_PARM_2
   3757 E5 4F              2669 	mov	a,_iterateStateMachine_sloc3_1_0
   3759 F0                 2670 	movx	@dptr,a
   375A A3                 2671 	inc	dptr
   375B E5 50              2672 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   375D F0                 2673 	movx	@dptr,a
   375E A3                 2674 	inc	dptr
   375F E5 51              2675 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   3761 F0                 2676 	movx	@dptr,a
   3762 90 09 FD           2677 	mov	dptr,#_callStateHandler_PARM_3
   3765 74 10              2678 	mov	a,#_exitEvent
   3767 F0                 2679 	movx	@dptr,a
   3768 A3                 2680 	inc	dptr
   3769 74 0F              2681 	mov	a,#(_exitEvent >> 8)
   376B F0                 2682 	movx	@dptr,a
   376C A3                 2683 	inc	dptr
   376D E4                 2684 	clr	a
   376E F0                 2685 	movx	@dptr,a
   376F 8A 82              2686 	mov	dpl,r2
   3771 8B 83              2687 	mov	dph,r3
   3773 8C F0              2688 	mov	b,r4
   3775 12 2B C8           2689 	lcall	_callStateHandler
   3778 02 3E 0A           2690 	ljmp	00163$
   377B                    2691 00153$:
                           2692 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:412: printf("\t\t\t\tScanning source hierarchy...\n") ;
   377B 74 4A              2693 	mov	a,#__str_14
   377D C0 E0              2694 	push	acc
   377F 74 52              2695 	mov	a,#(__str_14 >> 8)
   3781 C0 E0              2696 	push	acc
   3783 74 80              2697 	mov	a,#0x80
   3785 C0 E0              2698 	push	acc
   3787 12 44 F0           2699 	lcall	_printf
   378A 15 81              2700 	dec	sp
   378C 15 81              2701 	dec	sp
   378E 15 81              2702 	dec	sp
                           2703 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:416: targetIndex			= 0 ;
   3790 90 0A 6F           2704 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3793 E4                 2705 	clr	a
   3794 F0                 2706 	movx	@dptr,a
                           2707 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:417: stateBeingProcessed	= source ;
   3795 90 0A 0A           2708 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3798 E5 4F              2709 	mov	a,_iterateStateMachine_sloc3_1_0
   379A F0                 2710 	movx	@dptr,a
   379B A3                 2711 	inc	dptr
   379C E5 50              2712 	mov	a,(_iterateStateMachine_sloc3_1_0 + 1)
   379E F0                 2713 	movx	@dptr,a
   379F A3                 2714 	inc	dptr
   37A0 E5 51              2715 	mov	a,(_iterateStateMachine_sloc3_1_0 + 2)
   37A2 F0                 2716 	movx	@dptr,a
                           2717 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:419: do
   37A3 7A 00              2718 	mov	r2,#0x00
   37A5                    2719 00128$:
                           2720 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:421: sourceHierarchy[sourceIndex++] = stateBeingProcessed ;
   37A5 8A 03              2721 	mov	ar3,r2
   37A7 0A                 2722 	inc	r2
   37A8 90 0A 3E           2723 	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
   37AB EA                 2724 	mov	a,r2
   37AC F0                 2725 	movx	@dptr,a
   37AD EB                 2726 	mov	a,r3
   37AE 75 F0 03           2727 	mov	b,#0x03
   37B1 A4                 2728 	mul	ab
   37B2 24 0E              2729 	add	a,#_iterateStateMachine_sourceHierarchy_4_19
   37B4 FB                 2730 	mov	r3,a
   37B5 E4                 2731 	clr	a
   37B6 34 0A              2732 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
   37B8 FC                 2733 	mov	r4,a
   37B9 90 0A 0A           2734 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   37BC E0                 2735 	movx	a,@dptr
   37BD FD                 2736 	mov	r5,a
   37BE A3                 2737 	inc	dptr
   37BF E0                 2738 	movx	a,@dptr
   37C0 FE                 2739 	mov	r6,a
   37C1 A3                 2740 	inc	dptr
   37C2 E0                 2741 	movx	a,@dptr
   37C3 FF                 2742 	mov	r7,a
   37C4 8B 82              2743 	mov	dpl,r3
   37C6 8C 83              2744 	mov	dph,r4
   37C8 ED                 2745 	mov	a,r5
   37C9 F0                 2746 	movx	@dptr,a
   37CA A3                 2747 	inc	dptr
   37CB EE                 2748 	mov	a,r6
   37CC F0                 2749 	movx	@dptr,a
   37CD A3                 2750 	inc	dptr
   37CE EF                 2751 	mov	a,r7
   37CF F0                 2752 	movx	@dptr,a
                           2753 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:424: printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
   37D0 74 06              2754 	mov	a,#0x06
   37D2 2D                 2755 	add	a,r5
   37D3 FB                 2756 	mov	r3,a
   37D4 E4                 2757 	clr	a
   37D5 3E                 2758 	addc	a,r6
   37D6 FC                 2759 	mov	r4,a
   37D7 8F 00              2760 	mov	ar0,r7
   37D9 8B 82              2761 	mov	dpl,r3
   37DB 8C 83              2762 	mov	dph,r4
   37DD 88 F0              2763 	mov	b,r0
   37DF 12 4D 3C           2764 	lcall	__gptrget
   37E2 F5 55              2765 	mov	_iterateStateMachine_sloc5_1_0,a
   37E4 A3                 2766 	inc	dptr
   37E5 12 4D 3C           2767 	lcall	__gptrget
   37E8 F5 56              2768 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   37EA A3                 2769 	inc	dptr
   37EB 12 4D 3C           2770 	lcall	__gptrget
   37EE F5 57              2771 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   37F0 8A 01              2772 	mov	ar1,r2
   37F2 7B 00              2773 	mov	r3,#0x00
   37F4 19                 2774 	dec	r1
   37F5 B9 FF 01           2775 	cjne	r1,#0xff,00234$
   37F8 1B                 2776 	dec	r3
   37F9                    2777 00234$:
   37F9 C0 02              2778 	push	ar2
   37FB C0 05              2779 	push	ar5
   37FD C0 06              2780 	push	ar6
   37FF C0 07              2781 	push	ar7
   3801 C0 55              2782 	push	_iterateStateMachine_sloc5_1_0
   3803 C0 56              2783 	push	(_iterateStateMachine_sloc5_1_0 + 1)
   3805 C0 57              2784 	push	(_iterateStateMachine_sloc5_1_0 + 2)
   3807 C0 01              2785 	push	ar1
   3809 C0 03              2786 	push	ar3
   380B 74 6C              2787 	mov	a,#__str_15
   380D C0 E0              2788 	push	acc
   380F 74 52              2789 	mov	a,#(__str_15 >> 8)
   3811 C0 E0              2790 	push	acc
   3813 74 80              2791 	mov	a,#0x80
   3815 C0 E0              2792 	push	acc
   3817 12 44 F0           2793 	lcall	_printf
   381A E5 81              2794 	mov	a,sp
   381C 24 F8              2795 	add	a,#0xf8
   381E F5 81              2796 	mov	sp,a
   3820 D0 07              2797 	pop	ar7
   3822 D0 06              2798 	pop	ar6
   3824 D0 05              2799 	pop	ar5
   3826 D0 02              2800 	pop	ar2
                           2801 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:427: if(stateBeingProcessed == target)
   3828 ED                 2802 	mov	a,r5
   3829 B5 48 0A           2803 	cjne	a,_iterateStateMachine_sloc0_1_0,00235$
   382C EE                 2804 	mov	a,r6
   382D B5 49 06           2805 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00235$
   3830 EF                 2806 	mov	a,r7
   3831 B5 4A 02           2807 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00235$
   3834 80 03              2808 	sjmp	00236$
   3836                    2809 00235$:
   3836 02 38 FF           2810 	ljmp	00127$
   3839                    2811 00236$:
                           2812 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:432: printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
   3839 C0 02              2813 	push	ar2
   383B 74 8B              2814 	mov	a,#__str_16
   383D C0 E0              2815 	push	acc
   383F 74 52              2816 	mov	a,#(__str_16 >> 8)
   3841 C0 E0              2817 	push	acc
   3843 74 80              2818 	mov	a,#0x80
   3845 C0 E0              2819 	push	acc
   3847 12 44 F0           2820 	lcall	_printf
   384A 15 81              2821 	dec	sp
   384C 15 81              2822 	dec	sp
   384E 15 81              2823 	dec	sp
   3850 D0 02              2824 	pop	ar2
                           2825 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:435: sourceIndex-- ;
   3852 EA                 2826 	mov	a,r2
   3853 14                 2827 	dec	a
   3854 FB                 2828 	mov	r3,a
   3855 90 0A 3E           2829 	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
   3858 F0                 2830 	movx	@dptr,a
                           2831 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:437: while(exitIndex < sourceIndex)
   3859 7C 00              2832 	mov	r4,#0x00
   385B                    2833 00123$:
   385B C3                 2834 	clr	c
   385C EC                 2835 	mov	a,r4
   385D 9B                 2836 	subb	a,r3
   385E 50 74              2837 	jnc	00125$
                           2838 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:440: printf("\t\t\t\t") ;
   3860 C0 03              2839 	push	ar3
   3862 C0 03              2840 	push	ar3
   3864 C0 04              2841 	push	ar4
   3866 74 B5              2842 	mov	a,#__str_17
   3868 C0 E0              2843 	push	acc
   386A 74 52              2844 	mov	a,#(__str_17 >> 8)
   386C C0 E0              2845 	push	acc
   386E 74 80              2846 	mov	a,#0x80
   3870 C0 E0              2847 	push	acc
   3872 12 44 F0           2848 	lcall	_printf
   3875 15 81              2849 	dec	sp
   3877 15 81              2850 	dec	sp
   3879 15 81              2851 	dec	sp
   387B D0 04              2852 	pop	ar4
   387D D0 03              2853 	pop	ar3
                           2854 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:443: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   387F 90 0A 04           2855 	mov	dptr,#_iterateStateMachine_sm_1_1
   3882 E0                 2856 	movx	a,@dptr
   3883 F5 55              2857 	mov	_iterateStateMachine_sloc5_1_0,a
   3885 A3                 2858 	inc	dptr
   3886 E0                 2859 	movx	a,@dptr
   3887 F5 56              2860 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3889 A3                 2861 	inc	dptr
   388A E0                 2862 	movx	a,@dptr
   388B F5 57              2863 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   388D EC                 2864 	mov	a,r4
   388E 75 F0 03           2865 	mov	b,#0x03
   3891 A4                 2866 	mul	ab
   3892 24 0E              2867 	add	a,#_iterateStateMachine_sourceHierarchy_4_19
   3894 F5 82              2868 	mov	dpl,a
   3896 E4                 2869 	clr	a
   3897 34 0A              2870 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
   3899 F5 83              2871 	mov	dph,a
   389B E0                 2872 	movx	a,@dptr
   389C FB                 2873 	mov	r3,a
   389D A3                 2874 	inc	dptr
   389E E0                 2875 	movx	a,@dptr
   389F F8                 2876 	mov	r0,a
   38A0 A3                 2877 	inc	dptr
   38A1 E0                 2878 	movx	a,@dptr
   38A2 F9                 2879 	mov	r1,a
   38A3 90 09 FA           2880 	mov	dptr,#_callStateHandler_PARM_2
   38A6 EB                 2881 	mov	a,r3
   38A7 F0                 2882 	movx	@dptr,a
   38A8 A3                 2883 	inc	dptr
   38A9 E8                 2884 	mov	a,r0
   38AA F0                 2885 	movx	@dptr,a
   38AB A3                 2886 	inc	dptr
   38AC E9                 2887 	mov	a,r1
   38AD F0                 2888 	movx	@dptr,a
   38AE 90 09 FD           2889 	mov	dptr,#_callStateHandler_PARM_3
   38B1 74 10              2890 	mov	a,#_exitEvent
   38B3 F0                 2891 	movx	@dptr,a
   38B4 A3                 2892 	inc	dptr
   38B5 74 0F              2893 	mov	a,#(_exitEvent >> 8)
   38B7 F0                 2894 	movx	@dptr,a
   38B8 A3                 2895 	inc	dptr
   38B9 E4                 2896 	clr	a
   38BA F0                 2897 	movx	@dptr,a
   38BB 85 55 82           2898 	mov	dpl,_iterateStateMachine_sloc5_1_0
   38BE 85 56 83           2899 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   38C1 85 57 F0           2900 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   38C4 C0 03              2901 	push	ar3
   38C6 C0 04              2902 	push	ar4
   38C8 12 2B C8           2903 	lcall	_callStateHandler
   38CB D0 04              2904 	pop	ar4
   38CD D0 03              2905 	pop	ar3
                           2906 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:445: exitIndex++ ;
   38CF 0C                 2907 	inc	r4
   38D0 D0 03              2908 	pop	ar3
   38D2 80 87              2909 	sjmp	00123$
   38D4                    2910 00125$:
                           2911 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:448: sm->currentState = target ;
   38D4 90 0A 04           2912 	mov	dptr,#_iterateStateMachine_sm_1_1
   38D7 E0                 2913 	movx	a,@dptr
   38D8 FB                 2914 	mov	r3,a
   38D9 A3                 2915 	inc	dptr
   38DA E0                 2916 	movx	a,@dptr
   38DB FC                 2917 	mov	r4,a
   38DC A3                 2918 	inc	dptr
   38DD E0                 2919 	movx	a,@dptr
   38DE F8                 2920 	mov	r0,a
   38DF 74 05              2921 	mov	a,#0x05
   38E1 2B                 2922 	add	a,r3
   38E2 FB                 2923 	mov	r3,a
   38E3 E4                 2924 	clr	a
   38E4 3C                 2925 	addc	a,r4
   38E5 FC                 2926 	mov	r4,a
   38E6 8B 82              2927 	mov	dpl,r3
   38E8 8C 83              2928 	mov	dph,r4
   38EA 88 F0              2929 	mov	b,r0
   38EC E5 48              2930 	mov	a,_iterateStateMachine_sloc0_1_0
   38EE 12 41 10           2931 	lcall	__gptrput
   38F1 A3                 2932 	inc	dptr
   38F2 E5 49              2933 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   38F4 12 41 10           2934 	lcall	__gptrput
   38F7 A3                 2935 	inc	dptr
   38F8 E5 4A              2936 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   38FA 12 41 10           2937 	lcall	__gptrput
                           2938 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:450: break ;
   38FD 80 32              2939 	sjmp	00130$
   38FF                    2940 00127$:
                           2941 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:453: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   38FF 8D 82              2942 	mov	dpl,r5
   3901 8E 83              2943 	mov	dph,r6
   3903 8F F0              2944 	mov	b,r7
   3905 12 4D 3C           2945 	lcall	__gptrget
   3908 FD                 2946 	mov	r5,a
   3909 A3                 2947 	inc	dptr
   390A 12 4D 3C           2948 	lcall	__gptrget
   390D FE                 2949 	mov	r6,a
   390E A3                 2950 	inc	dptr
   390F 12 4D 3C           2951 	lcall	__gptrget
   3912 FF                 2952 	mov	r7,a
   3913 90 0A 0A           2953 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3916 ED                 2954 	mov	a,r5
   3917 F0                 2955 	movx	@dptr,a
   3918 A3                 2956 	inc	dptr
   3919 EE                 2957 	mov	a,r6
   391A F0                 2958 	movx	@dptr,a
   391B A3                 2959 	inc	dptr
   391C EF                 2960 	mov	a,r7
   391D F0                 2961 	movx	@dptr,a
                           2962 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:454: } while(stateBeingProcessed) ;
   391E 90 0A 0A           2963 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3921 E0                 2964 	movx	a,@dptr
   3922 FB                 2965 	mov	r3,a
   3923 A3                 2966 	inc	dptr
   3924 E0                 2967 	movx	a,@dptr
   3925 FC                 2968 	mov	r4,a
   3926 A3                 2969 	inc	dptr
   3927 E0                 2970 	movx	a,@dptr
   3928 FD                 2971 	mov	r5,a
   3929 EB                 2972 	mov	a,r3
   392A 4C                 2973 	orl	a,r4
   392B 4D                 2974 	orl	a,r5
   392C 60 03              2975 	jz	00238$
   392E 02 37 A5           2976 	ljmp	00128$
   3931                    2977 00238$:
   3931                    2978 00130$:
                           2979 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:456: if(sm->currentState != target)
   3931 90 0A 04           2980 	mov	dptr,#_iterateStateMachine_sm_1_1
   3934 E0                 2981 	movx	a,@dptr
   3935 FA                 2982 	mov	r2,a
   3936 A3                 2983 	inc	dptr
   3937 E0                 2984 	movx	a,@dptr
   3938 FB                 2985 	mov	r3,a
   3939 A3                 2986 	inc	dptr
   393A E0                 2987 	movx	a,@dptr
   393B FC                 2988 	mov	r4,a
   393C 74 05              2989 	mov	a,#0x05
   393E 2A                 2990 	add	a,r2
   393F FA                 2991 	mov	r2,a
   3940 E4                 2992 	clr	a
   3941 3B                 2993 	addc	a,r3
   3942 FB                 2994 	mov	r3,a
   3943 8A 82              2995 	mov	dpl,r2
   3945 8B 83              2996 	mov	dph,r3
   3947 8C F0              2997 	mov	b,r4
   3949 12 4D 3C           2998 	lcall	__gptrget
   394C FA                 2999 	mov	r2,a
   394D A3                 3000 	inc	dptr
   394E 12 4D 3C           3001 	lcall	__gptrget
   3951 FB                 3002 	mov	r3,a
   3952 A3                 3003 	inc	dptr
   3953 12 4D 3C           3004 	lcall	__gptrget
   3956 FC                 3005 	mov	r4,a
   3957 EA                 3006 	mov	a,r2
   3958 B5 48 0B           3007 	cjne	a,_iterateStateMachine_sloc0_1_0,00239$
   395B EB                 3008 	mov	a,r3
   395C B5 49 07           3009 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00239$
   395F EC                 3010 	mov	a,r4
   3960 B5 4A 03           3011 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00239$
   3963 02 3B 0A           3012 	ljmp	00140$
   3966                    3013 00239$:
                           3014 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:459: printf("\t\t\t\tScanning target hierarchy...\n") ;
   3966 74 BA              3015 	mov	a,#__str_18
   3968 C0 E0              3016 	push	acc
   396A 74 52              3017 	mov	a,#(__str_18 >> 8)
   396C C0 E0              3018 	push	acc
   396E 74 80              3019 	mov	a,#0x80
   3970 C0 E0              3020 	push	acc
   3972 12 44 F0           3021 	lcall	_printf
   3975 15 81              3022 	dec	sp
   3977 15 81              3023 	dec	sp
   3979 15 81              3024 	dec	sp
                           3025 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:462: targetIndex			= 0 ;
   397B 90 0A 6F           3026 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   397E E4                 3027 	clr	a
   397F F0                 3028 	movx	@dptr,a
                           3029 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:463: stateBeingProcessed	= target ;
   3980 90 0A 0A           3030 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3983 E5 48              3031 	mov	a,_iterateStateMachine_sloc0_1_0
   3985 F0                 3032 	movx	@dptr,a
   3986 A3                 3033 	inc	dptr
   3987 E5 49              3034 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3989 F0                 3035 	movx	@dptr,a
   398A A3                 3036 	inc	dptr
   398B E5 4A              3037 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   398D F0                 3038 	movx	@dptr,a
                           3039 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:465: do
   398E 7A 00              3040 	mov	r2,#0x00
   3990                    3041 00136$:
                           3042 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:467: targetHierarchy[targetIndex] = stateBeingProcessed ;
   3990 EA                 3043 	mov	a,r2
   3991 75 F0 03           3044 	mov	b,#0x03
   3994 A4                 3045 	mul	ab
   3995 24 3F              3046 	add	a,#_iterateStateMachine_targetHierarchy_4_19
   3997 FB                 3047 	mov	r3,a
   3998 E4                 3048 	clr	a
   3999 34 0A              3049 	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
   399B FC                 3050 	mov	r4,a
   399C 90 0A 0A           3051 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   399F E0                 3052 	movx	a,@dptr
   39A0 FD                 3053 	mov	r5,a
   39A1 A3                 3054 	inc	dptr
   39A2 E0                 3055 	movx	a,@dptr
   39A3 FE                 3056 	mov	r6,a
   39A4 A3                 3057 	inc	dptr
   39A5 E0                 3058 	movx	a,@dptr
   39A6 FF                 3059 	mov	r7,a
   39A7 8B 82              3060 	mov	dpl,r3
   39A9 8C 83              3061 	mov	dph,r4
   39AB ED                 3062 	mov	a,r5
   39AC F0                 3063 	movx	@dptr,a
   39AD A3                 3064 	inc	dptr
   39AE EE                 3065 	mov	a,r6
   39AF F0                 3066 	movx	@dptr,a
   39B0 A3                 3067 	inc	dptr
   39B1 EF                 3068 	mov	a,r7
   39B2 F0                 3069 	movx	@dptr,a
                           3070 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:470: printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
   39B3 74 06              3071 	mov	a,#0x06
   39B5 2D                 3072 	add	a,r5
   39B6 FB                 3073 	mov	r3,a
   39B7 E4                 3074 	clr	a
   39B8 3E                 3075 	addc	a,r6
   39B9 FC                 3076 	mov	r4,a
   39BA 8F 00              3077 	mov	ar0,r7
   39BC 8B 82              3078 	mov	dpl,r3
   39BE 8C 83              3079 	mov	dph,r4
   39C0 88 F0              3080 	mov	b,r0
   39C2 12 4D 3C           3081 	lcall	__gptrget
   39C5 F5 55              3082 	mov	_iterateStateMachine_sloc5_1_0,a
   39C7 A3                 3083 	inc	dptr
   39C8 12 4D 3C           3084 	lcall	__gptrget
   39CB F5 56              3085 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   39CD A3                 3086 	inc	dptr
   39CE 12 4D 3C           3087 	lcall	__gptrget
   39D1 F5 57              3088 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   39D3 8A 01              3089 	mov	ar1,r2
   39D5 7B 00              3090 	mov	r3,#0x00
   39D7 C0 02              3091 	push	ar2
   39D9 C0 05              3092 	push	ar5
   39DB C0 06              3093 	push	ar6
   39DD C0 07              3094 	push	ar7
   39DF C0 55              3095 	push	_iterateStateMachine_sloc5_1_0
   39E1 C0 56              3096 	push	(_iterateStateMachine_sloc5_1_0 + 1)
   39E3 C0 57              3097 	push	(_iterateStateMachine_sloc5_1_0 + 2)
   39E5 C0 01              3098 	push	ar1
   39E7 C0 03              3099 	push	ar3
   39E9 74 DC              3100 	mov	a,#__str_19
   39EB C0 E0              3101 	push	acc
   39ED 74 52              3102 	mov	a,#(__str_19 >> 8)
   39EF C0 E0              3103 	push	acc
   39F1 74 80              3104 	mov	a,#0x80
   39F3 C0 E0              3105 	push	acc
   39F5 12 44 F0           3106 	lcall	_printf
   39F8 E5 81              3107 	mov	a,sp
   39FA 24 F8              3108 	add	a,#0xf8
   39FC F5 81              3109 	mov	sp,a
   39FE D0 07              3110 	pop	ar7
   3A00 D0 06              3111 	pop	ar6
   3A02 D0 05              3112 	pop	ar5
   3A04 D0 02              3113 	pop	ar2
                           3114 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:473: if(stateBeingProcessed == source)
   3A06 ED                 3115 	mov	a,r5
   3A07 B5 4F 0A           3116 	cjne	a,_iterateStateMachine_sloc3_1_0,00240$
   3A0A EE                 3117 	mov	a,r6
   3A0B B5 50 06           3118 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 1),00240$
   3A0E EF                 3119 	mov	a,r7
   3A0F B5 51 02           3120 	cjne	a,(_iterateStateMachine_sloc3_1_0 + 2),00240$
   3A12 80 03              3121 	sjmp	00241$
   3A14                    3122 00240$:
   3A14 02 3A D2           3123 	ljmp	00135$
   3A17                    3124 00241$:
                           3125 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:476: printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
   3A17 74 FB              3126 	mov	a,#__str_20
   3A19 C0 E0              3127 	push	acc
   3A1B 74 52              3128 	mov	a,#(__str_20 >> 8)
   3A1D C0 E0              3129 	push	acc
   3A1F 74 80              3130 	mov	a,#0x80
   3A21 C0 E0              3131 	push	acc
   3A23 12 44 F0           3132 	lcall	_printf
   3A26 15 81              3133 	dec	sp
   3A28 15 81              3134 	dec	sp
   3A2A 15 81              3135 	dec	sp
                           3136 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:479: while(targetIndex--)
   3A2C 90 0A 6F           3137 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3A2F E0                 3138 	movx	a,@dptr
   3A30 FB                 3139 	mov	r3,a
   3A31                    3140 00131$:
   3A31 8B 04              3141 	mov	ar4,r3
   3A33 1B                 3142 	dec	r3
   3A34 EC                 3143 	mov	a,r4
   3A35 60 6B              3144 	jz	00206$
                           3145 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:482: printf("\t\t\t\t") ;
   3A37 C0 03              3146 	push	ar3
   3A39 74 B5              3147 	mov	a,#__str_17
   3A3B C0 E0              3148 	push	acc
   3A3D 74 52              3149 	mov	a,#(__str_17 >> 8)
   3A3F C0 E0              3150 	push	acc
   3A41 74 80              3151 	mov	a,#0x80
   3A43 C0 E0              3152 	push	acc
   3A45 12 44 F0           3153 	lcall	_printf
   3A48 15 81              3154 	dec	sp
   3A4A 15 81              3155 	dec	sp
   3A4C 15 81              3156 	dec	sp
   3A4E D0 03              3157 	pop	ar3
                           3158 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:484: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   3A50 90 0A 04           3159 	mov	dptr,#_iterateStateMachine_sm_1_1
   3A53 E0                 3160 	movx	a,@dptr
   3A54 F5 55              3161 	mov	_iterateStateMachine_sloc5_1_0,a
   3A56 A3                 3162 	inc	dptr
   3A57 E0                 3163 	movx	a,@dptr
   3A58 F5 56              3164 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3A5A A3                 3165 	inc	dptr
   3A5B E0                 3166 	movx	a,@dptr
   3A5C F5 57              3167 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3A5E EB                 3168 	mov	a,r3
   3A5F 75 F0 03           3169 	mov	b,#0x03
   3A62 A4                 3170 	mul	ab
   3A63 24 3F              3171 	add	a,#_iterateStateMachine_targetHierarchy_4_19
   3A65 F5 82              3172 	mov	dpl,a
   3A67 E4                 3173 	clr	a
   3A68 34 0A              3174 	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
   3A6A F5 83              3175 	mov	dph,a
   3A6C C0 03              3176 	push	ar3
   3A6E E0                 3177 	movx	a,@dptr
   3A6F FB                 3178 	mov	r3,a
   3A70 A3                 3179 	inc	dptr
   3A71 E0                 3180 	movx	a,@dptr
   3A72 FC                 3181 	mov	r4,a
   3A73 A3                 3182 	inc	dptr
   3A74 E0                 3183 	movx	a,@dptr
   3A75 F8                 3184 	mov	r0,a
   3A76 90 09 FA           3185 	mov	dptr,#_callStateHandler_PARM_2
   3A79 EB                 3186 	mov	a,r3
   3A7A F0                 3187 	movx	@dptr,a
   3A7B A3                 3188 	inc	dptr
   3A7C EC                 3189 	mov	a,r4
   3A7D F0                 3190 	movx	@dptr,a
   3A7E A3                 3191 	inc	dptr
   3A7F E8                 3192 	mov	a,r0
   3A80 F0                 3193 	movx	@dptr,a
   3A81 90 09 FD           3194 	mov	dptr,#_callStateHandler_PARM_3
   3A84 74 0F              3195 	mov	a,#_enterEvent
   3A86 F0                 3196 	movx	@dptr,a
   3A87 A3                 3197 	inc	dptr
   3A88 74 0F              3198 	mov	a,#(_enterEvent >> 8)
   3A8A F0                 3199 	movx	@dptr,a
   3A8B A3                 3200 	inc	dptr
   3A8C E4                 3201 	clr	a
   3A8D F0                 3202 	movx	@dptr,a
   3A8E 85 55 82           3203 	mov	dpl,_iterateStateMachine_sloc5_1_0
   3A91 85 56 83           3204 	mov	dph,(_iterateStateMachine_sloc5_1_0 + 1)
   3A94 85 57 F0           3205 	mov	b,(_iterateStateMachine_sloc5_1_0 + 2)
   3A97 C0 03              3206 	push	ar3
   3A99 12 2B C8           3207 	lcall	_callStateHandler
   3A9C D0 03              3208 	pop	ar3
   3A9E D0 03              3209 	pop	ar3
   3AA0 80 8F              3210 	sjmp	00131$
   3AA2                    3211 00206$:
   3AA2 90 0A 6F           3212 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3AA5 EB                 3213 	mov	a,r3
   3AA6 F0                 3214 	movx	@dptr,a
                           3215 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:487: sm->currentState = target ;
   3AA7 90 0A 04           3216 	mov	dptr,#_iterateStateMachine_sm_1_1
   3AAA E0                 3217 	movx	a,@dptr
   3AAB FB                 3218 	mov	r3,a
   3AAC A3                 3219 	inc	dptr
   3AAD E0                 3220 	movx	a,@dptr
   3AAE FC                 3221 	mov	r4,a
   3AAF A3                 3222 	inc	dptr
   3AB0 E0                 3223 	movx	a,@dptr
   3AB1 F8                 3224 	mov	r0,a
   3AB2 74 05              3225 	mov	a,#0x05
   3AB4 2B                 3226 	add	a,r3
   3AB5 FB                 3227 	mov	r3,a
   3AB6 E4                 3228 	clr	a
   3AB7 3C                 3229 	addc	a,r4
   3AB8 FC                 3230 	mov	r4,a
   3AB9 8B 82              3231 	mov	dpl,r3
   3ABB 8C 83              3232 	mov	dph,r4
   3ABD 88 F0              3233 	mov	b,r0
   3ABF E5 48              3234 	mov	a,_iterateStateMachine_sloc0_1_0
   3AC1 12 41 10           3235 	lcall	__gptrput
   3AC4 A3                 3236 	inc	dptr
   3AC5 E5 49              3237 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3AC7 12 41 10           3238 	lcall	__gptrput
   3ACA A3                 3239 	inc	dptr
   3ACB E5 4A              3240 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3ACD 12 41 10           3241 	lcall	__gptrput
                           3242 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:489: break ;
   3AD0 80 38              3243 	sjmp	00140$
   3AD2                    3244 00135$:
                           3245 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:492: targetIndex++ ;
   3AD2 0A                 3246 	inc	r2
   3AD3 90 0A 6F           3247 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3AD6 EA                 3248 	mov	a,r2
   3AD7 F0                 3249 	movx	@dptr,a
                           3250 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:493: stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
   3AD8 8D 82              3251 	mov	dpl,r5
   3ADA 8E 83              3252 	mov	dph,r6
   3ADC 8F F0              3253 	mov	b,r7
   3ADE 12 4D 3C           3254 	lcall	__gptrget
   3AE1 FD                 3255 	mov	r5,a
   3AE2 A3                 3256 	inc	dptr
   3AE3 12 4D 3C           3257 	lcall	__gptrget
   3AE6 FE                 3258 	mov	r6,a
   3AE7 A3                 3259 	inc	dptr
   3AE8 12 4D 3C           3260 	lcall	__gptrget
   3AEB FF                 3261 	mov	r7,a
   3AEC 90 0A 0A           3262 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3AEF ED                 3263 	mov	a,r5
   3AF0 F0                 3264 	movx	@dptr,a
   3AF1 A3                 3265 	inc	dptr
   3AF2 EE                 3266 	mov	a,r6
   3AF3 F0                 3267 	movx	@dptr,a
   3AF4 A3                 3268 	inc	dptr
   3AF5 EF                 3269 	mov	a,r7
   3AF6 F0                 3270 	movx	@dptr,a
                           3271 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:494: } while(stateBeingProcessed) ;
   3AF7 90 0A 0A           3272 	mov	dptr,#_iterateStateMachine_stateBeingProcessed_2_3
   3AFA E0                 3273 	movx	a,@dptr
   3AFB FB                 3274 	mov	r3,a
   3AFC A3                 3275 	inc	dptr
   3AFD E0                 3276 	movx	a,@dptr
   3AFE FC                 3277 	mov	r4,a
   3AFF A3                 3278 	inc	dptr
   3B00 E0                 3279 	movx	a,@dptr
   3B01 FD                 3280 	mov	r5,a
   3B02 EB                 3281 	mov	a,r3
   3B03 4C                 3282 	orl	a,r4
   3B04 4D                 3283 	orl	a,r5
   3B05 60 03              3284 	jz	00243$
   3B07 02 39 90           3285 	ljmp	00136$
   3B0A                    3286 00243$:
   3B0A                    3287 00140$:
                           3288 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:497: if(sm->currentState != target)
   3B0A 90 0A 04           3289 	mov	dptr,#_iterateStateMachine_sm_1_1
   3B0D E0                 3290 	movx	a,@dptr
   3B0E FA                 3291 	mov	r2,a
   3B0F A3                 3292 	inc	dptr
   3B10 E0                 3293 	movx	a,@dptr
   3B11 FB                 3294 	mov	r3,a
   3B12 A3                 3295 	inc	dptr
   3B13 E0                 3296 	movx	a,@dptr
   3B14 FC                 3297 	mov	r4,a
   3B15 74 05              3298 	mov	a,#0x05
   3B17 2A                 3299 	add	a,r2
   3B18 FA                 3300 	mov	r2,a
   3B19 E4                 3301 	clr	a
   3B1A 3B                 3302 	addc	a,r3
   3B1B FB                 3303 	mov	r3,a
   3B1C 8A 82              3304 	mov	dpl,r2
   3B1E 8B 83              3305 	mov	dph,r3
   3B20 8C F0              3306 	mov	b,r4
   3B22 12 4D 3C           3307 	lcall	__gptrget
   3B25 FA                 3308 	mov	r2,a
   3B26 A3                 3309 	inc	dptr
   3B27 12 4D 3C           3310 	lcall	__gptrget
   3B2A FB                 3311 	mov	r3,a
   3B2B A3                 3312 	inc	dptr
   3B2C 12 4D 3C           3313 	lcall	__gptrget
   3B2F FC                 3314 	mov	r4,a
   3B30 EA                 3315 	mov	a,r2
   3B31 B5 48 0B           3316 	cjne	a,_iterateStateMachine_sloc0_1_0,00244$
   3B34 EB                 3317 	mov	a,r3
   3B35 B5 49 07           3318 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 1),00244$
   3B38 EC                 3319 	mov	a,r4
   3B39 B5 4A 03           3320 	cjne	a,(_iterateStateMachine_sloc0_1_0 + 2),00244$
   3B3C 02 3E 0A           3321 	ljmp	00163$
   3B3F                    3322 00244$:
                           3323 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:502: printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
   3B3F 74 25              3324 	mov	a,#__str_21
   3B41 C0 E0              3325 	push	acc
   3B43 74 53              3326 	mov	a,#(__str_21 >> 8)
   3B45 C0 E0              3327 	push	acc
   3B47 74 80              3328 	mov	a,#0x80
   3B49 C0 E0              3329 	push	acc
   3B4B 12 44 F0           3330 	lcall	_printf
   3B4E 15 81              3331 	dec	sp
   3B50 15 81              3332 	dec	sp
   3B52 15 81              3333 	dec	sp
                           3334 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:504: LCA			= 0 ;
   3B54 90 0A 70           3335 	mov	dptr,#_iterateStateMachine_LCA_4_19
   3B57 E4                 3336 	clr	a
   3B58 F0                 3337 	movx	@dptr,a
   3B59 A3                 3338 	inc	dptr
   3B5A F0                 3339 	movx	@dptr,a
   3B5B A3                 3340 	inc	dptr
   3B5C F0                 3341 	movx	@dptr,a
                           3342 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:505: entryIndex	= targetIndex - 1 ;
   3B5D 90 0A 6F           3343 	mov	dptr,#_iterateStateMachine_targetIndex_4_19
   3B60 E0                 3344 	movx	a,@dptr
   3B61 FA                 3345 	mov	r2,a
   3B62 1A                 3346 	dec	r2
   3B63 90 0A 73           3347 	mov	dptr,#_iterateStateMachine_entryIndex_4_19
   3B66 EA                 3348 	mov	a,r2
   3B67 F0                 3349 	movx	@dptr,a
                           3350 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:506: exitIndex	= sourceIndex - 1 ;
   3B68 90 0A 3E           3351 	mov	dptr,#_iterateStateMachine_sourceIndex_4_19
   3B6B E0                 3352 	movx	a,@dptr
   3B6C FB                 3353 	mov	r3,a
   3B6D 1B                 3354 	dec	r3
                           3355 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:508: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   3B6E 8B 04              3356 	mov	ar4,r3
   3B70 7D 00              3357 	mov	r5,#0x00
   3B72 8A 06              3358 	mov	ar6,r2
   3B74 7F 00              3359 	mov	r7,#0x00
   3B76 C0 02              3360 	push	ar2
   3B78 C0 03              3361 	push	ar3
   3B7A C0 04              3362 	push	ar4
   3B7C C0 05              3363 	push	ar5
   3B7E C0 06              3364 	push	ar6
   3B80 C0 07              3365 	push	ar7
   3B82 74 60              3366 	mov	a,#__str_22
   3B84 C0 E0              3367 	push	acc
   3B86 74 53              3368 	mov	a,#(__str_22 >> 8)
   3B88 C0 E0              3369 	push	acc
   3B8A 74 80              3370 	mov	a,#0x80
   3B8C C0 E0              3371 	push	acc
   3B8E 12 44 F0           3372 	lcall	_printf
   3B91 E5 81              3373 	mov	a,sp
   3B93 24 F9              3374 	add	a,#0xf9
   3B95 F5 81              3375 	mov	sp,a
   3B97 D0 03              3376 	pop	ar3
   3B99 D0 02              3377 	pop	ar2
                           3378 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:511: while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
   3B9B 7C 00              3379 	mov	r4,#0x00
   3B9D                    3380 00141$:
   3B9D C0 04              3381 	push	ar4
   3B9F EB                 3382 	mov	a,r3
   3BA0 75 F0 03           3383 	mov	b,#0x03
   3BA3 A4                 3384 	mul	ab
   3BA4 24 0E              3385 	add	a,#_iterateStateMachine_sourceHierarchy_4_19
   3BA6 F5 82              3386 	mov	dpl,a
   3BA8 E4                 3387 	clr	a
   3BA9 34 0A              3388 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
   3BAB F5 83              3389 	mov	dph,a
   3BAD E0                 3390 	movx	a,@dptr
   3BAE FD                 3391 	mov	r5,a
   3BAF A3                 3392 	inc	dptr
   3BB0 E0                 3393 	movx	a,@dptr
   3BB1 FE                 3394 	mov	r6,a
   3BB2 A3                 3395 	inc	dptr
   3BB3 E0                 3396 	movx	a,@dptr
   3BB4 FF                 3397 	mov	r7,a
   3BB5 EA                 3398 	mov	a,r2
   3BB6 75 F0 03           3399 	mov	b,#0x03
   3BB9 A4                 3400 	mul	ab
   3BBA 24 3F              3401 	add	a,#_iterateStateMachine_targetHierarchy_4_19
   3BBC F5 82              3402 	mov	dpl,a
   3BBE E4                 3403 	clr	a
   3BBF 34 0A              3404 	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
   3BC1 F5 83              3405 	mov	dph,a
   3BC3 E0                 3406 	movx	a,@dptr
   3BC4 F8                 3407 	mov	r0,a
   3BC5 A3                 3408 	inc	dptr
   3BC6 E0                 3409 	movx	a,@dptr
   3BC7 F9                 3410 	mov	r1,a
   3BC8 A3                 3411 	inc	dptr
   3BC9 E0                 3412 	movx	a,@dptr
   3BCA FC                 3413 	mov	r4,a
   3BCB ED                 3414 	mov	a,r5
   3BCC B5 00 0A           3415 	cjne	a,ar0,00245$
   3BCF EE                 3416 	mov	a,r6
   3BD0 B5 01 06           3417 	cjne	a,ar1,00245$
   3BD3 EF                 3418 	mov	a,r7
   3BD4 B5 04 02           3419 	cjne	a,ar4,00245$
   3BD7 80 04              3420 	sjmp	00246$
   3BD9                    3421 00245$:
   3BD9 D0 04              3422 	pop	ar4
   3BDB 80 65              3423 	sjmp	00207$
   3BDD                    3424 00246$:
   3BDD D0 04              3425 	pop	ar4
                           3426 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:513: LCA = sourceHierarchy[exitIndex] ;
   3BDF 90 0A 70           3427 	mov	dptr,#_iterateStateMachine_LCA_4_19
   3BE2 ED                 3428 	mov	a,r5
   3BE3 F0                 3429 	movx	@dptr,a
   3BE4 A3                 3430 	inc	dptr
   3BE5 EE                 3431 	mov	a,r6
   3BE6 F0                 3432 	movx	@dptr,a
   3BE7 A3                 3433 	inc	dptr
   3BE8 EF                 3434 	mov	a,r7
   3BE9 F0                 3435 	movx	@dptr,a
                           3436 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:515: entryIndex-- ;
   3BEA 1A                 3437 	dec	r2
   3BEB 90 0A 73           3438 	mov	dptr,#_iterateStateMachine_entryIndex_4_19
   3BEE EA                 3439 	mov	a,r2
   3BEF F0                 3440 	movx	@dptr,a
                           3441 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:516: exitIndex-- ;
   3BF0 1B                 3442 	dec	r3
                           3443 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:519: printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
   3BF1 90 0A 70           3444 	mov	dptr,#_iterateStateMachine_LCA_4_19
   3BF4 E0                 3445 	movx	a,@dptr
   3BF5 FD                 3446 	mov	r5,a
   3BF6 A3                 3447 	inc	dptr
   3BF7 E0                 3448 	movx	a,@dptr
   3BF8 FE                 3449 	mov	r6,a
   3BF9 A3                 3450 	inc	dptr
   3BFA E0                 3451 	movx	a,@dptr
   3BFB FF                 3452 	mov	r7,a
   3BFC 74 06              3453 	mov	a,#0x06
   3BFE 2D                 3454 	add	a,r5
   3BFF FD                 3455 	mov	r5,a
   3C00 E4                 3456 	clr	a
   3C01 3E                 3457 	addc	a,r6
   3C02 FE                 3458 	mov	r6,a
   3C03 8D 82              3459 	mov	dpl,r5
   3C05 8E 83              3460 	mov	dph,r6
   3C07 8F F0              3461 	mov	b,r7
   3C09 12 4D 3C           3462 	lcall	__gptrget
   3C0C FD                 3463 	mov	r5,a
   3C0D A3                 3464 	inc	dptr
   3C0E 12 4D 3C           3465 	lcall	__gptrget
   3C11 FE                 3466 	mov	r6,a
   3C12 A3                 3467 	inc	dptr
   3C13 12 4D 3C           3468 	lcall	__gptrget
   3C16 FF                 3469 	mov	r7,a
   3C17 C0 02              3470 	push	ar2
   3C19 C0 03              3471 	push	ar3
   3C1B C0 04              3472 	push	ar4
   3C1D C0 05              3473 	push	ar5
   3C1F C0 06              3474 	push	ar6
   3C21 C0 07              3475 	push	ar7
   3C23 74 86              3476 	mov	a,#__str_23
   3C25 C0 E0              3477 	push	acc
   3C27 74 53              3478 	mov	a,#(__str_23 >> 8)
   3C29 C0 E0              3479 	push	acc
   3C2B 74 80              3480 	mov	a,#0x80
   3C2D C0 E0              3481 	push	acc
   3C2F 12 44 F0           3482 	lcall	_printf
   3C32 E5 81              3483 	mov	a,sp
   3C34 24 FA              3484 	add	a,#0xfa
   3C36 F5 81              3485 	mov	sp,a
   3C38 D0 04              3486 	pop	ar4
   3C3A D0 03              3487 	pop	ar3
   3C3C D0 02              3488 	pop	ar2
                           3489 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:522: LCAindex++ ;
   3C3E 0C                 3490 	inc	r4
   3C3F 02 3B 9D           3491 	ljmp	00141$
   3C42                    3492 00207$:
   3C42 90 0A 73           3493 	mov	dptr,#_iterateStateMachine_entryIndex_4_19
   3C45 EA                 3494 	mov	a,r2
   3C46 F0                 3495 	movx	@dptr,a
                           3496 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:526: printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
   3C47 90 0A 70           3497 	mov	dptr,#_iterateStateMachine_LCA_4_19
   3C4A E0                 3498 	movx	a,@dptr
   3C4B FC                 3499 	mov	r4,a
   3C4C A3                 3500 	inc	dptr
   3C4D E0                 3501 	movx	a,@dptr
   3C4E FD                 3502 	mov	r5,a
   3C4F A3                 3503 	inc	dptr
   3C50 E0                 3504 	movx	a,@dptr
   3C51 FE                 3505 	mov	r6,a
   3C52 74 06              3506 	mov	a,#0x06
   3C54 2C                 3507 	add	a,r4
   3C55 FC                 3508 	mov	r4,a
   3C56 E4                 3509 	clr	a
   3C57 3D                 3510 	addc	a,r5
   3C58 FD                 3511 	mov	r5,a
   3C59 8C 82              3512 	mov	dpl,r4
   3C5B 8D 83              3513 	mov	dph,r5
   3C5D 8E F0              3514 	mov	b,r6
   3C5F 12 4D 3C           3515 	lcall	__gptrget
   3C62 FC                 3516 	mov	r4,a
   3C63 A3                 3517 	inc	dptr
   3C64 12 4D 3C           3518 	lcall	__gptrget
   3C67 FD                 3519 	mov	r5,a
   3C68 A3                 3520 	inc	dptr
   3C69 12 4D 3C           3521 	lcall	__gptrget
   3C6C FE                 3522 	mov	r6,a
   3C6D 74 06              3523 	mov	a,#0x06
   3C6F 25 48              3524 	add	a,_iterateStateMachine_sloc0_1_0
   3C71 FF                 3525 	mov	r7,a
   3C72 E4                 3526 	clr	a
   3C73 35 49              3527 	addc	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3C75 F8                 3528 	mov	r0,a
   3C76 A9 4A              3529 	mov	r1,(_iterateStateMachine_sloc0_1_0 + 2)
   3C78 8F 82              3530 	mov	dpl,r7
   3C7A 88 83              3531 	mov	dph,r0
   3C7C 89 F0              3532 	mov	b,r1
   3C7E 12 4D 3C           3533 	lcall	__gptrget
   3C81 F5 55              3534 	mov	_iterateStateMachine_sloc5_1_0,a
   3C83 A3                 3535 	inc	dptr
   3C84 12 4D 3C           3536 	lcall	__gptrget
   3C87 F5 56              3537 	mov	(_iterateStateMachine_sloc5_1_0 + 1),a
   3C89 A3                 3538 	inc	dptr
   3C8A 12 4D 3C           3539 	lcall	__gptrget
   3C8D F5 57              3540 	mov	(_iterateStateMachine_sloc5_1_0 + 2),a
   3C8F 74 06              3541 	mov	a,#0x06
   3C91 25 4F              3542 	add	a,_iterateStateMachine_sloc3_1_0
   3C93 FF                 3543 	mov	r7,a
   3C94 E4                 3544 	clr	a
   3C95 35 50              3545 	addc	a,(_iterateStateMachine_sloc3_1_0 + 1)
   3C97 F8                 3546 	mov	r0,a
   3C98 A9 51              3547 	mov	r1,(_iterateStateMachine_sloc3_1_0 + 2)
   3C9A 8F 82              3548 	mov	dpl,r7
   3C9C 88 83              3549 	mov	dph,r0
   3C9E 89 F0              3550 	mov	b,r1
   3CA0 12 4D 3C           3551 	lcall	__gptrget
   3CA3 FF                 3552 	mov	r7,a
   3CA4 A3                 3553 	inc	dptr
   3CA5 12 4D 3C           3554 	lcall	__gptrget
   3CA8 F8                 3555 	mov	r0,a
   3CA9 A3                 3556 	inc	dptr
   3CAA 12 4D 3C           3557 	lcall	__gptrget
   3CAD F9                 3558 	mov	r1,a
   3CAE C0 02              3559 	push	ar2
   3CB0 C0 03              3560 	push	ar3
   3CB2 C0 04              3561 	push	ar4
   3CB4 C0 05              3562 	push	ar5
   3CB6 C0 06              3563 	push	ar6
   3CB8 C0 55              3564 	push	_iterateStateMachine_sloc5_1_0
   3CBA C0 56              3565 	push	(_iterateStateMachine_sloc5_1_0 + 1)
   3CBC C0 57              3566 	push	(_iterateStateMachine_sloc5_1_0 + 2)
   3CBE C0 07              3567 	push	ar7
   3CC0 C0 00              3568 	push	ar0
   3CC2 C0 01              3569 	push	ar1
   3CC4 74 A6              3570 	mov	a,#__str_24
   3CC6 C0 E0              3571 	push	acc
   3CC8 74 53              3572 	mov	a,#(__str_24 >> 8)
   3CCA C0 E0              3573 	push	acc
   3CCC 74 80              3574 	mov	a,#0x80
   3CCE C0 E0              3575 	push	acc
   3CD0 12 44 F0           3576 	lcall	_printf
   3CD3 E5 81              3577 	mov	a,sp
   3CD5 24 F4              3578 	add	a,#0xf4
   3CD7 F5 81              3579 	mov	sp,a
   3CD9 D0 03              3580 	pop	ar3
   3CDB D0 02              3581 	pop	ar2
                           3582 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:527: printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
   3CDD 8B 04              3583 	mov	ar4,r3
   3CDF 7D 00              3584 	mov	r5,#0x00
   3CE1 7E 00              3585 	mov	r6,#0x00
   3CE3 C0 03              3586 	push	ar3
   3CE5 C0 04              3587 	push	ar4
   3CE7 C0 05              3588 	push	ar5
   3CE9 C0 02              3589 	push	ar2
   3CEB C0 06              3590 	push	ar6
   3CED 74 60              3591 	mov	a,#__str_22
   3CEF C0 E0              3592 	push	acc
   3CF1 74 53              3593 	mov	a,#(__str_22 >> 8)
   3CF3 C0 E0              3594 	push	acc
   3CF5 74 80              3595 	mov	a,#0x80
   3CF7 C0 E0              3596 	push	acc
   3CF9 12 44 F0           3597 	lcall	_printf
   3CFC E5 81              3598 	mov	a,sp
   3CFE 24 F9              3599 	add	a,#0xf9
   3D00 F5 81              3600 	mov	sp,a
   3D02 D0 03              3601 	pop	ar3
                           3602 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:530: sourceIndex	= exitIndex + 1 ;
   3D04 EB                 3603 	mov	a,r3
   3D05 04                 3604 	inc	a
   3D06 FA                 3605 	mov	r2,a
                           3606 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:533: while(exitIndex < sourceIndex)
   3D07 7B 00              3607 	mov	r3,#0x00
   3D09                    3608 00144$:
   3D09 C3                 3609 	clr	c
   3D0A EB                 3610 	mov	a,r3
   3D0B 9A                 3611 	subb	a,r2
   3D0C 50 66              3612 	jnc	00146$
                           3613 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:536: printf("\t\t\t\t") ;
   3D0E C0 02              3614 	push	ar2
   3D10 C0 03              3615 	push	ar3
   3D12 74 B5              3616 	mov	a,#__str_17
   3D14 C0 E0              3617 	push	acc
   3D16 74 52              3618 	mov	a,#(__str_17 >> 8)
   3D18 C0 E0              3619 	push	acc
   3D1A 74 80              3620 	mov	a,#0x80
   3D1C C0 E0              3621 	push	acc
   3D1E 12 44 F0           3622 	lcall	_printf
   3D21 15 81              3623 	dec	sp
   3D23 15 81              3624 	dec	sp
   3D25 15 81              3625 	dec	sp
   3D27 D0 03              3626 	pop	ar3
                           3627 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:539: callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;
   3D29 90 0A 04           3628 	mov	dptr,#_iterateStateMachine_sm_1_1
   3D2C E0                 3629 	movx	a,@dptr
   3D2D FC                 3630 	mov	r4,a
   3D2E A3                 3631 	inc	dptr
   3D2F E0                 3632 	movx	a,@dptr
   3D30 FD                 3633 	mov	r5,a
   3D31 A3                 3634 	inc	dptr
   3D32 E0                 3635 	movx	a,@dptr
   3D33 FE                 3636 	mov	r6,a
   3D34 EB                 3637 	mov	a,r3
   3D35 75 F0 03           3638 	mov	b,#0x03
   3D38 A4                 3639 	mul	ab
   3D39 24 0E              3640 	add	a,#_iterateStateMachine_sourceHierarchy_4_19
   3D3B F5 82              3641 	mov	dpl,a
   3D3D E4                 3642 	clr	a
   3D3E 34 0A              3643 	addc	a,#(_iterateStateMachine_sourceHierarchy_4_19 >> 8)
   3D40 F5 83              3644 	mov	dph,a
   3D42 E0                 3645 	movx	a,@dptr
   3D43 FF                 3646 	mov	r7,a
   3D44 A3                 3647 	inc	dptr
   3D45 E0                 3648 	movx	a,@dptr
   3D46 F8                 3649 	mov	r0,a
   3D47 A3                 3650 	inc	dptr
   3D48 E0                 3651 	movx	a,@dptr
   3D49 F9                 3652 	mov	r1,a
   3D4A 90 09 FA           3653 	mov	dptr,#_callStateHandler_PARM_2
   3D4D EF                 3654 	mov	a,r7
   3D4E F0                 3655 	movx	@dptr,a
   3D4F A3                 3656 	inc	dptr
   3D50 E8                 3657 	mov	a,r0
   3D51 F0                 3658 	movx	@dptr,a
   3D52 A3                 3659 	inc	dptr
   3D53 E9                 3660 	mov	a,r1
   3D54 F0                 3661 	movx	@dptr,a
   3D55 90 09 FD           3662 	mov	dptr,#_callStateHandler_PARM_3
   3D58 74 10              3663 	mov	a,#_exitEvent
   3D5A F0                 3664 	movx	@dptr,a
   3D5B A3                 3665 	inc	dptr
   3D5C 74 0F              3666 	mov	a,#(_exitEvent >> 8)
   3D5E F0                 3667 	movx	@dptr,a
   3D5F A3                 3668 	inc	dptr
   3D60 E4                 3669 	clr	a
   3D61 F0                 3670 	movx	@dptr,a
   3D62 8C 82              3671 	mov	dpl,r4
   3D64 8D 83              3672 	mov	dph,r5
   3D66 8E F0              3673 	mov	b,r6
   3D68 C0 03              3674 	push	ar3
   3D6A 12 2B C8           3675 	lcall	_callStateHandler
   3D6D D0 03              3676 	pop	ar3
   3D6F D0 02              3677 	pop	ar2
                           3678 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:541: exitIndex++ ;
   3D71 0B                 3679 	inc	r3
   3D72 80 95              3680 	sjmp	00144$
   3D74                    3681 00146$:
                           3682 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:544: targetIndex = entryIndex + 1 ;
   3D74 90 0A 73           3683 	mov	dptr,#_iterateStateMachine_entryIndex_4_19
   3D77 E0                 3684 	movx	a,@dptr
   3D78 FA                 3685 	mov	r2,a
   3D79 0A                 3686 	inc	r2
                           3687 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:546: while(targetIndex--)
   3D7A                    3688 00147$:
   3D7A 8A 03              3689 	mov	ar3,r2
   3D7C 1A                 3690 	dec	r2
   3D7D EB                 3691 	mov	a,r3
   3D7E 60 61              3692 	jz	00149$
                           3693 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:549: printf("\t\t\t\t") ;
   3D80 C0 02              3694 	push	ar2
   3D82 74 B5              3695 	mov	a,#__str_17
   3D84 C0 E0              3696 	push	acc
   3D86 74 52              3697 	mov	a,#(__str_17 >> 8)
   3D88 C0 E0              3698 	push	acc
   3D8A 74 80              3699 	mov	a,#0x80
   3D8C C0 E0              3700 	push	acc
   3D8E 12 44 F0           3701 	lcall	_printf
   3D91 15 81              3702 	dec	sp
   3D93 15 81              3703 	dec	sp
   3D95 15 81              3704 	dec	sp
   3D97 D0 02              3705 	pop	ar2
                           3706 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:551: callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
   3D99 90 0A 04           3707 	mov	dptr,#_iterateStateMachine_sm_1_1
   3D9C E0                 3708 	movx	a,@dptr
   3D9D FB                 3709 	mov	r3,a
   3D9E A3                 3710 	inc	dptr
   3D9F E0                 3711 	movx	a,@dptr
   3DA0 FC                 3712 	mov	r4,a
   3DA1 A3                 3713 	inc	dptr
   3DA2 E0                 3714 	movx	a,@dptr
   3DA3 FD                 3715 	mov	r5,a
   3DA4 EA                 3716 	mov	a,r2
   3DA5 75 F0 03           3717 	mov	b,#0x03
   3DA8 A4                 3718 	mul	ab
   3DA9 24 3F              3719 	add	a,#_iterateStateMachine_targetHierarchy_4_19
   3DAB F5 82              3720 	mov	dpl,a
   3DAD E4                 3721 	clr	a
   3DAE 34 0A              3722 	addc	a,#(_iterateStateMachine_targetHierarchy_4_19 >> 8)
   3DB0 F5 83              3723 	mov	dph,a
   3DB2 E0                 3724 	movx	a,@dptr
   3DB3 FE                 3725 	mov	r6,a
   3DB4 A3                 3726 	inc	dptr
   3DB5 E0                 3727 	movx	a,@dptr
   3DB6 FF                 3728 	mov	r7,a
   3DB7 A3                 3729 	inc	dptr
   3DB8 E0                 3730 	movx	a,@dptr
   3DB9 F8                 3731 	mov	r0,a
   3DBA 90 09 FA           3732 	mov	dptr,#_callStateHandler_PARM_2
   3DBD EE                 3733 	mov	a,r6
   3DBE F0                 3734 	movx	@dptr,a
   3DBF A3                 3735 	inc	dptr
   3DC0 EF                 3736 	mov	a,r7
   3DC1 F0                 3737 	movx	@dptr,a
   3DC2 A3                 3738 	inc	dptr
   3DC3 E8                 3739 	mov	a,r0
   3DC4 F0                 3740 	movx	@dptr,a
   3DC5 90 09 FD           3741 	mov	dptr,#_callStateHandler_PARM_3
   3DC8 74 0F              3742 	mov	a,#_enterEvent
   3DCA F0                 3743 	movx	@dptr,a
   3DCB A3                 3744 	inc	dptr
   3DCC 74 0F              3745 	mov	a,#(_enterEvent >> 8)
   3DCE F0                 3746 	movx	@dptr,a
   3DCF A3                 3747 	inc	dptr
   3DD0 E4                 3748 	clr	a
   3DD1 F0                 3749 	movx	@dptr,a
   3DD2 8B 82              3750 	mov	dpl,r3
   3DD4 8C 83              3751 	mov	dph,r4
   3DD6 8D F0              3752 	mov	b,r5
   3DD8 C0 02              3753 	push	ar2
   3DDA 12 2B C8           3754 	lcall	_callStateHandler
   3DDD D0 02              3755 	pop	ar2
   3DDF 80 99              3756 	sjmp	00147$
   3DE1                    3757 00149$:
                           3758 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:554: sm->currentState = target ;
   3DE1 90 0A 04           3759 	mov	dptr,#_iterateStateMachine_sm_1_1
   3DE4 E0                 3760 	movx	a,@dptr
   3DE5 FA                 3761 	mov	r2,a
   3DE6 A3                 3762 	inc	dptr
   3DE7 E0                 3763 	movx	a,@dptr
   3DE8 FB                 3764 	mov	r3,a
   3DE9 A3                 3765 	inc	dptr
   3DEA E0                 3766 	movx	a,@dptr
   3DEB FC                 3767 	mov	r4,a
   3DEC 74 05              3768 	mov	a,#0x05
   3DEE 2A                 3769 	add	a,r2
   3DEF FA                 3770 	mov	r2,a
   3DF0 E4                 3771 	clr	a
   3DF1 3B                 3772 	addc	a,r3
   3DF2 FB                 3773 	mov	r3,a
   3DF3 8A 82              3774 	mov	dpl,r2
   3DF5 8B 83              3775 	mov	dph,r3
   3DF7 8C F0              3776 	mov	b,r4
   3DF9 E5 48              3777 	mov	a,_iterateStateMachine_sloc0_1_0
   3DFB 12 41 10           3778 	lcall	__gptrput
   3DFE A3                 3779 	inc	dptr
   3DFF E5 49              3780 	mov	a,(_iterateStateMachine_sloc0_1_0 + 1)
   3E01 12 41 10           3781 	lcall	__gptrput
   3E04 A3                 3782 	inc	dptr
   3E05 E5 4A              3783 	mov	a,(_iterateStateMachine_sloc0_1_0 + 2)
   3E07 12 41 10           3784 	lcall	__gptrput
   3E0A                    3785 00163$:
                           3786 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:562: sm->forceTransition = true ;
   3E0A 90 0A 04           3787 	mov	dptr,#_iterateStateMachine_sm_1_1
   3E0D E0                 3788 	movx	a,@dptr
   3E0E FA                 3789 	mov	r2,a
   3E0F A3                 3790 	inc	dptr
   3E10 E0                 3791 	movx	a,@dptr
   3E11 FB                 3792 	mov	r3,a
   3E12 A3                 3793 	inc	dptr
   3E13 E0                 3794 	movx	a,@dptr
   3E14 FC                 3795 	mov	r4,a
   3E15 74 1F              3796 	mov	a,#0x1F
   3E17 2A                 3797 	add	a,r2
   3E18 FA                 3798 	mov	r2,a
   3E19 E4                 3799 	clr	a
   3E1A 3B                 3800 	addc	a,r3
   3E1B FB                 3801 	mov	r3,a
   3E1C 8A 82              3802 	mov	dpl,r2
   3E1E 8B 83              3803 	mov	dph,r3
   3E20 8C F0              3804 	mov	b,r4
   3E22 74 01              3805 	mov	a,#0x01
   3E24 12 41 10           3806 	lcall	__gptrput
   3E27                    3807 00167$:
                           3808 ;	D:/EiqEnergy/Projects/Software/_SoftwareLibraries/StateMachines/stateMachine_G4.c:567: printf("\t\tEvent queue empty.\n") ;
   3E27 74 C4              3809 	mov	a,#__str_25
   3E29 C0 E0              3810 	push	acc
   3E2B 74 53              3811 	mov	a,#(__str_25 >> 8)
   3E2D C0 E0              3812 	push	acc
   3E2F 74 80              3813 	mov	a,#0x80
   3E31 C0 E0              3814 	push	acc
   3E33 12 44 F0           3815 	lcall	_printf
   3E36 15 81              3816 	dec	sp
   3E38 15 81              3817 	dec	sp
   3E3A 15 81              3818 	dec	sp
   3E3C 22                 3819 	ret
                           3820 	.area CSEG    (CODE)
                           3821 	.area CONST   (CODE)
   512E                    3822 __str_0:
   512E 09                 3823 	.db 0x09
   512F 09                 3824 	.db 0x09
   5130 09                 3825 	.db 0x09
   5131 43 61 6C 6C 69 6E  3826 	.ascii "Calling state: %s, event: %s, "
        67 20 73 74 61 74
        65 3A 20 25 73 2C
        20 65 76 65 6E 74
        3A 20 25 73 2C 20
   514F 00                 3827 	.db 0x00
   5150                    3828 __str_1:
   5150 3C 55 53 45 52 5F  3829 	.ascii "<USER_EVENT>"
        45 56 45 4E 54 3E
   515C 00                 3830 	.db 0x00
   515D                    3831 __str_2:
   515D 72 65 73 70 6F 6E  3832 	.ascii "response: %s "
        73 65 3A 20 25 73
        20
   516A 00                 3833 	.db 0x00
   516B                    3834 __str_3:
   516B 74 6F 20 25 73 20  3835 	.ascii "to %s "
   5171 00                 3836 	.db 0x00
   5172                    3837 __str_4:
   5172 0A                 3838 	.db 0x0A
   5173 00                 3839 	.db 0x00
   5174                    3840 __str_5:
   5174 09                 3841 	.db 0x09
   5175 69 74 65 72 61 74  3842 	.ascii "iterating %s"
        69 6E 67 20 25 73
   5181 0A                 3843 	.db 0x0A
   5182 00                 3844 	.db 0x00
   5183                    3845 __str_6:
   5183 09                 3846 	.db 0x09
   5184 09                 3847 	.db 0x09
   5185 69 6E 69 74 69 61  3848 	.ascii "initializing..."
        6C 69 7A 69 6E 67
        2E 2E 2E
   5194 0A                 3849 	.db 0x0A
   5195 00                 3850 	.db 0x00
   5196                    3851 __str_7:
   5196 09                 3852 	.db 0x09
   5197 09                 3853 	.db 0x09
   5198 50 72 6F 63 65 73  3854 	.ascii "Processing event..."
        73 69 6E 67 20 65
        76 65 6E 74 2E 2E
        2E
   51AB 0A                 3855 	.db 0x0A
   51AC 00                 3856 	.db 0x00
   51AD                    3857 __str_8:
   51AD 09                 3858 	.db 0x09
   51AE 09                 3859 	.db 0x09
   51AF 09                 3860 	.db 0x09
   51B0 09                 3861 	.db 0x09
   51B1 09                 3862 	.db 0x09
   51B2 09                 3863 	.db 0x09
   51B3 09                 3864 	.db 0x09
   51B4 6D 6F 76 69 6E 67  3865 	.ascii "moving to parent: %s"
        20 74 6F 20 70 61
        72 65 6E 74 3A 20
        25 73
   51C8 0A                 3866 	.db 0x0A
   51C9 00                 3867 	.db 0x00
   51CA                    3868 __str_9:
   51CA 3C 72 6F 6F 74 3E  3869 	.ascii "<root>"
   51D0 00                 3870 	.db 0x00
   51D1                    3871 __str_10:
   51D1 09                 3872 	.db 0x09
   51D2 09                 3873 	.db 0x09
   51D3 09                 3874 	.db 0x09
   51D4 09                 3875 	.db 0x09
   51D5 53 65 6C 66 20 74  3876 	.ascii "Self transition."
        72 61 6E 73 69 74
        69 6F 6E 2E
   51E5 0A                 3877 	.db 0x0A
   51E6 00                 3878 	.db 0x00
   51E7                    3879 __str_11:
   51E7 09                 3880 	.db 0x09
   51E8 09                 3881 	.db 0x09
   51E9 09                 3882 	.db 0x09
   51EA 09                 3883 	.db 0x09
   51EB 54 72 61 6E 73 69  3884 	.ascii "Transition to direct child."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 63 68 69
        6C 64 2E
   5206 0A                 3885 	.db 0x0A
   5207 00                 3886 	.db 0x00
   5208                    3887 __str_12:
   5208 09                 3888 	.db 0x09
   5209 09                 3889 	.db 0x09
   520A 09                 3890 	.db 0x09
   520B 09                 3891 	.db 0x09
   520C 54 72 61 6E 73 69  3892 	.ascii "Transition to direct peer."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 65 65
        72 2E
   5226 0A                 3893 	.db 0x0A
   5227 00                 3894 	.db 0x00
   5228                    3895 __str_13:
   5228 09                 3896 	.db 0x09
   5229 09                 3897 	.db 0x09
   522A 09                 3898 	.db 0x09
   522B 09                 3899 	.db 0x09
   522C 54 72 61 6E 73 69  3900 	.ascii "Transition to direct parent."
        74 69 6F 6E 20 74
        6F 20 64 69 72 65
        63 74 20 70 61 72
        65 6E 74 2E
   5248 0A                 3901 	.db 0x0A
   5249 00                 3902 	.db 0x00
   524A                    3903 __str_14:
   524A 09                 3904 	.db 0x09
   524B 09                 3905 	.db 0x09
   524C 09                 3906 	.db 0x09
   524D 09                 3907 	.db 0x09
   524E 53 63 61 6E 6E 69  3908 	.ascii "Scanning source hierarchy..."
        6E 67 20 73 6F 75
        72 63 65 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   526A 0A                 3909 	.db 0x0A
   526B 00                 3910 	.db 0x00
   526C                    3911 __str_15:
   526C 09                 3912 	.db 0x09
   526D 09                 3913 	.db 0x09
   526E 09                 3914 	.db 0x09
   526F 09                 3915 	.db 0x09
   5270 09                 3916 	.db 0x09
   5271 73 6F 75 72 63 65  3917 	.ascii "sourceHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   5289 0A                 3918 	.db 0x0A
   528A 00                 3919 	.db 0x00
   528B                    3920 __str_16:
   528B 09                 3921 	.db 0x09
   528C 09                 3922 	.db 0x09
   528D 09                 3923 	.db 0x09
   528E 09                 3924 	.db 0x09
   528F 09                 3925 	.db 0x09
   5290 09                 3926 	.db 0x09
   5291 46 6F 75 6E 64 20  3927 	.ascii "Found target as ancestor of source"
        74 61 72 67 65 74
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 73 6F
        75 72 63 65
   52B3 0A                 3928 	.db 0x0A
   52B4 00                 3929 	.db 0x00
   52B5                    3930 __str_17:
   52B5 09                 3931 	.db 0x09
   52B6 09                 3932 	.db 0x09
   52B7 09                 3933 	.db 0x09
   52B8 09                 3934 	.db 0x09
   52B9 00                 3935 	.db 0x00
   52BA                    3936 __str_18:
   52BA 09                 3937 	.db 0x09
   52BB 09                 3938 	.db 0x09
   52BC 09                 3939 	.db 0x09
   52BD 09                 3940 	.db 0x09
   52BE 53 63 61 6E 6E 69  3941 	.ascii "Scanning target hierarchy..."
        6E 67 20 74 61 72
        67 65 74 20 68 69
        65 72 61 72 63 68
        79 2E 2E 2E
   52DA 0A                 3942 	.db 0x0A
   52DB 00                 3943 	.db 0x00
   52DC                    3944 __str_19:
   52DC 09                 3945 	.db 0x09
   52DD 09                 3946 	.db 0x09
   52DE 09                 3947 	.db 0x09
   52DF 09                 3948 	.db 0x09
   52E0 09                 3949 	.db 0x09
   52E1 74 61 72 67 65 74  3950 	.ascii "targetHierarchy[%d] = %s"
        48 69 65 72 61 72
        63 68 79 5B 25 64
        5D 20 3D 20 25 73
   52F9 0A                 3951 	.db 0x0A
   52FA 00                 3952 	.db 0x00
   52FB                    3953 __str_20:
   52FB 09                 3954 	.db 0x09
   52FC 09                 3955 	.db 0x09
   52FD 09                 3956 	.db 0x09
   52FE 09                 3957 	.db 0x09
   52FF 09                 3958 	.db 0x09
   5300 09                 3959 	.db 0x09
   5301 46 6F 75 6E 64 20  3960 	.ascii "Found source as ancestor of target"
        73 6F 75 72 63 65
        20 61 73 20 61 6E
        63 65 73 74 6F 72
        20 6F 66 20 74 61
        72 67 65 74
   5323 0A                 3961 	.db 0x0A
   5324 00                 3962 	.db 0x00
   5325                    3963 __str_21:
   5325 09                 3964 	.db 0x09
   5326 09                 3965 	.db 0x09
   5327 09                 3966 	.db 0x09
   5328 09                 3967 	.db 0x09
   5329 53 74 69 6C 6C 20  3968 	.ascii "Still haven't found relationship. Scanning for LCA..."
        68 61 76 65 6E 27
        74 20 66 6F 75 6E
        64 20 72 65 6C 61
        74 69 6F 6E 73 68
        69 70 2E 20 53 63
        61 6E 6E 69 6E 67
        20 66 6F 72 20 4C
        43 41 2E 2E 2E
   535E 0A                 3969 	.db 0x0A
   535F 00                 3970 	.db 0x00
   5360                    3971 __str_22:
   5360 09                 3972 	.db 0x09
   5361 09                 3973 	.db 0x09
   5362 09                 3974 	.db 0x09
   5363 09                 3975 	.db 0x09
   5364 09                 3976 	.db 0x09
   5365 65 6E 74 72 79 49  3977 	.ascii "entryIndex = %d, exitIndex = %d"
        6E 64 65 78 20 3D
        20 25 64 2C 20 65
        78 69 74 49 6E 64
        65 78 20 3D 20 25
        64
   5384 0A                 3978 	.db 0x0A
   5385 00                 3979 	.db 0x00
   5386                    3980 __str_23:
   5386 09                 3981 	.db 0x09
   5387 09                 3982 	.db 0x09
   5388 09                 3983 	.db 0x09
   5389 09                 3984 	.db 0x09
   538A 09                 3985 	.db 0x09
   538B 43 75 72 72 65 6E  3986 	.ascii "Current LCA candidate: %s"
        74 20 4C 43 41 20
        63 61 6E 64 69 64
        61 74 65 3A 20 25
        73
   53A4 0A                 3987 	.db 0x0A
   53A5 00                 3988 	.db 0x00
   53A6                    3989 __str_24:
   53A6 09                 3990 	.db 0x09
   53A7 09                 3991 	.db 0x09
   53A8 09                 3992 	.db 0x09
   53A9 09                 3993 	.db 0x09
   53AA 09                 3994 	.db 0x09
   53AB 4C 43 41 20 6F 66  3995 	.ascii "LCA of %s and %s is: %s"
        20 25 73 20 61 6E
        64 20 25 73 20 69
        73 3A 20 25 73
   53C2 0A                 3996 	.db 0x0A
   53C3 00                 3997 	.db 0x00
   53C4                    3998 __str_25:
   53C4 09                 3999 	.db 0x09
   53C5 09                 4000 	.db 0x09
   53C6 45 76 65 6E 74 20  4001 	.ascii "Event queue empty."
        71 75 65 75 65 20
        65 6D 70 74 79 2E
   53D8 0A                 4002 	.db 0x0A
   53D9 00                 4003 	.db 0x00
   53DA                    4004 __str_26:
   53DA 53 55 42 53 54 41  4005 	.ascii "SUBSTATE_GET_INFO"
        54 45 5F 47 45 54
        5F 49 4E 46 4F
   53EB 00                 4006 	.db 0x00
   53EC                    4007 __str_27:
   53EC 53 55 42 53 54 41  4008 	.ascii "SUBSTATE_ENTRY"
        54 45 5F 45 4E 54
        52 59
   53FA 00                 4009 	.db 0x00
   53FB                    4010 __str_28:
   53FB 53 55 42 53 54 41  4011 	.ascii "SUBSTATE_INITIAL_TRANSITION"
        54 45 5F 49 4E 49
        54 49 41 4C 5F 54
        52 41 4E 53 49 54
        49 4F 4E
   5416 00                 4012 	.db 0x00
   5417                    4013 __str_29:
   5417 53 55 42 53 54 41  4014 	.ascii "SUBSTATE_JUMP_TO_HISTORY_DEFAULT"
        54 45 5F 4A 55 4D
        50 5F 54 4F 5F 48
        49 53 54 4F 52 59
        5F 44 45 46 41 55
        4C 54
   5437 00                 4015 	.db 0x00
   5438                    4016 __str_30:
   5438 53 55 42 53 54 41  4017 	.ascii "SUBSTATE_DO"
        54 45 5F 44 4F
   5443 00                 4018 	.db 0x00
   5444                    4019 __str_31:
   5444 53 55 42 53 54 41  4020 	.ascii "SUBSTATE_EXIT"
        54 45 5F 45 58 49
        54
   5451 00                 4021 	.db 0x00
   5452                    4022 __str_32:
   5452 49 47 4E 4F 52 45  4023 	.ascii "IGNORED"
        44
   5459 00                 4024 	.db 0x00
   545A                    4025 __str_33:
   545A 48 41 4E 44 4C 45  4026 	.ascii "HANDLED"
        44
   5461 00                 4027 	.db 0x00
   5462                    4028 __str_34:
   5462 54 52 41 4E 53 49  4029 	.ascii "TRANSITION"
        54 49 4F 4E
   546C 00                 4030 	.db 0x00
   546D                    4031 __str_35:
   546D 54 52 41 4E 53 49  4032 	.ascii "TRANSITION_TO_HISTORY"
        54 49 4F 4E 5F 54
        4F 5F 48 49 53 54
        4F 52 59
   5482 00                 4033 	.db 0x00
                           4034 	.area XINIT   (CODE)
   54A4                    4035 __xinit__eventTypes:
   54A4 DA 53 80           4036 	.byte __str_26,(__str_26 >> 8),#0x80
   54A7 EC 53 80           4037 	.byte __str_27,(__str_27 >> 8),#0x80
   54AA FB 53 80           4038 	.byte __str_28,(__str_28 >> 8),#0x80
   54AD 17 54 80           4039 	.byte __str_29,(__str_29 >> 8),#0x80
   54B0 38 54 80           4040 	.byte __str_30,(__str_30 >> 8),#0x80
   54B3 44 54 80           4041 	.byte __str_31,(__str_31 >> 8),#0x80
   54B6                    4042 __xinit__responseTypes:
   54B6 52 54 80           4043 	.byte __str_32,(__str_32 >> 8),#0x80
   54B9 5A 54 80           4044 	.byte __str_33,(__str_33 >> 8),#0x80
   54BC 62 54 80           4045 	.byte __str_34,(__str_34 >> 8),#0x80
   54BF 6D 54 80           4046 	.byte __str_35,(__str_35 >> 8),#0x80
   54C2                    4047 __xinit__initialTransitionEvent:
   54C2 02                 4048 	.db #0x02
   54C3                    4049 __xinit__jumpToHistoryEvent:
   54C3 03                 4050 	.db #0x03
   54C4                    4051 __xinit__enterEvent:
   54C4 01                 4052 	.db #0x01
   54C5                    4053 __xinit__exitEvent:
   54C5 05                 4054 	.db #0x05
                           4055 	.area CABS    (ABS,CODE)
