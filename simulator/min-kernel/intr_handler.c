#include "layout.h"
#include "proc.h"
#include "io.h"

#include "common.h"

void intr_handler() {
    for(int i=0; i<32-1; i++) {
        curproc->regs[i+1] = *(uint32_t*)KERN_TEMP[i];
    }
    curproc->nextpc = *(uint32_t*)KERN_TEMP[31];


    print("Switching From Proc ");
    print_int(curproc->id);

    int nextprocid = mod(curproc->id + 1, nprocs);
    curproc = &procs[nextprocid];

    print("to Proc ");
    print_int(curproc->id);
    print_byte('\n');

    for(int i=0; i<32-1; i++) {
        *(uint32_t*)KERN_TEMP[i] = curproc->regs[i+1];
    }
    *(uint32_t*)KERN_TEMP[31] = curproc->nextpc;

    for(int i=0; i<32; i++) {
        *(uint32_t*)KERN_TEMP[32+i] = curproc->page_maps[i];
    }

    extern void intr_handler_end(void);
    intr_handler_end();
}
