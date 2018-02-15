/*
 * 0x00000000 
 *   kernel code
 * 0x00001000
 *   kernel data
 *   kernel stack
 * 0x00004000
 *   kernel temp
 * 0x00005000
 *
 * 0x00006000
 *   proc0 binary
 * 0x00009000
 *   proc0 stack
 * 0x0000a000
 *
 * 0x0000b000
 *   proc1 binary
 * 0x0000e000
 *   proc1 stack
 * 0x0000f000
 *
 * 0x00010000
 *   proc2 binary
 * 0x00013000
 *   proc2 stack
 * 0x00014000
 *
 * 0x00015000
 *    HOGEHOGE
 */

#define KERN_TEMP 0x4000
#define HOGEHOGE 0x15000

#define PROC_BASE(X) (0x6000 + (X)*0x5000)
#define PROC_STACK_TOP (0x4000 - 4)
