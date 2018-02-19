#include <stdint.h>

typedef struct {
    uint8_t id;
    uint8_t live;
    uint32_t regs[32];
    uint32_t page_maps[32];
    uintptr_t next_pc;
} proc_t;

void init_proc(int id);

extern uint32_t nprocs;
extern proc_t procs[10];
extern proc_t *curproc;
