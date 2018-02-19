#include <io.h>
#include <stdint.h>

#include "proc.h"
#include "layout.h"

void load_binary(void *addr, uint32_t count) {
    for(int i=0; i < count; i++) {
        *(char*)addr = read_byte();
        (char*)addr++;
    }
}

void centry(void) {
    nprocs = 2;

    print("Welcome to IWAOS!\n");

    print("Load binary for Proc0...\n");
    load_binary((void*)PROC_BASE(0), 0x1000);
    init_proc(0);
    print("Load Done!\n");

    print("Load binary for Proc1...\n");
    load_binary((void*)PROC_BASE(1), 0x1000);
    init_proc(1);
    print("Load Done!\n");

    curproc = &procs[0];


    for(int i=0; i<32-1; i++) {
        ((uint32_t*)KERN_TEMP)[i] = curproc->regs[i+1];
    }
    ((uint32_t*)KERN_TEMP)[31] = curproc->next_pc;

    for(int i=0; i<32; i++) {
        ((uint32_t*)KERN_TEMP)[32+i] = curproc->page_maps[i];
    }

    print("Switch to Proc 0!\n");

    extern void intr_handler_end(void);
    intr_handler_end();
}
