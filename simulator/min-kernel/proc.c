#include "proc.h"
#include "layout.h"

uint32_t nprocs;
proc_t procs[10];
proc_t *curproc;

void init_proc(int id) {
    proc_t *p = &procs[id];
    p->id = id;
    p->next_pc = 0;

    for(int i=0; i<32; i++)
        p->regs[i] = 0;

    for(int i=0; i<32; i++)
        p->page_maps[i] = HOGEHOGE;

    p->page_maps[0] = PROC_BASE(id);
    p->page_maps[1] = PROC_BASE(id) + 0x1000;
    p->page_maps[2] = PROC_BASE(id) + 0x2000;
    p->page_maps[3] = PROC_BASE(id) + 0x3000;
}
