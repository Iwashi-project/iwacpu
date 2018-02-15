
typedef struct {
    uint32_t id;
    uint32_t regs[32];
    uint32_t page_maps[32];
    uintptr_t next_pc;
} proc_t;

extern uint32_t nprocs;
extern proc_t procs[10];
extern proc_t *curproc;
