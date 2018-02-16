#ifdef __ASSEMBLER__
#define ASM(PRE, F7, RS2, RS1, F3, RD, OPC) PRE ## F7 ## RS2 ## RS1 ## F3 ## RD ## OPC
#else
#define STR(X) #X
#define ASM(PRE, F7, RS2, RS1, F3, RD, OPC) STR(PRE ## F7 ## RS2 ## RS1 ## F3 ## RD ## OPC)
#endif

// CUSTOM2 1011011

#define MVPTG(G,P) ASM(.long 0b , 0000000, 00000,   P  , 000,   G  , 1011011)
#define MVGTP(P,G) ASM(.long 0b , 0100000, 00000,   G  , 000,   P  , 1011011)

#define MVGTO(G)   ASM(.long 0b , 0000000, 00000,   G  , 001, 00000, 1011011)

#define MVNPCTG(G) ASM(.long 0b , 0000000, 00000, 00000, 010,   G  , 1011011)
#define MVGTNPC(G) ASM(.long 0b , 0100000, 00000,   G  , 010, 00000, 1011011)

#define IRET       ASM(.long 0b , 0000000, 00000, 00000, 111, 00000, 1011011)

#define  IN(G)     ASM(.long 0b , 0000000, 00000, 00000, 001,   G  , 0101011)
#define OUT(G)     ASM(.long 0b , 0000000, 00000,   G  , 000, 00000, 0101011)
