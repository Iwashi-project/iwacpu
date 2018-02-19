#include <io.h>

#include "layout.h"
#include "proc.h"

#include "common.h"

void intr_handler() {
    for(int i=0; i<32-1; i++) {
        curproc->regs[i+1] = ((uint32_t*)KERN_TEMP)[i];
    }
    curproc->next_pc = ((uint32_t*)KERN_TEMP)[31];


    print("Switching From Proc ");
    print_int(curproc->id);

    int nextprocid = mod(curproc->id + 1, nprocs);
    for(; ; nextprocid = mod(nextprocid + 1, nprocs)) {
        if(procs[nextprocid].live == 1)
            break;
    }
    curproc = &procs[nextprocid];

    print(" To Proc ");
    print_int(curproc->id);
    write_byte('\n');

    for(int i=0; i<32-1; i++) {
        ((uint32_t*)KERN_TEMP)[i] = curproc->regs[i+1];
    }
    ((uint32_t*)KERN_TEMP)[31] = curproc->next_pc;

    for(int i=0; i<32; i++) {
        ((uint32_t*)KERN_TEMP)[32+i] = curproc->page_maps[i];
    }

    extern void intr_handler_end(void);
    intr_handler_end();
}
