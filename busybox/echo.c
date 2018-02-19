#include <io.h>
#include "../min-kernel/proc.h"
#define CMD_SIZE 100

void echo (void) {
    // read proc number & addr
    // r30 <- proc number
    // r31 <- proc addr
    uint32_t nproc, procaddr;
    __asm__(
            "sw x30, %0\n\t"
            "sw x31, %1\n\t"
            : "=A"(nproc), "=A"(procaddr)
           );

    char cmd[CMD_SIZE];
    for (;;) {
        int i;
        print("$ ");

        // cmd initialize
        for (i = 0; i < CMD_SIZE; i++) cmd[i] = 0;

        // recieve command
        for (i = 0;; i++) {
            char byte = read_byte();
            cmd[i] = byte;
            if (byte == '\n')
                break;
        }

        print(cmd);

        // echo
        if (cmd[0] == 'e' & cmd[1] == 'c' & cmd[2] == 'h' & cmd[3] == 'o') {
            // echo inside ""
            int inside = 0;
            char pchar[CMD_SIZE];
            int j = 0;
            for (i = 0;; i++) {
                if (cmd[i] == '\"' & inside)
                    break;
                else if (cmd[i] == '\"' & !inside)
                    inside = 1;
                else if (inside)
                    pchar[j++] = cmd[i];
            }
            pchar[j] = '\n';
            print(pchar);
        // ps
        } else if (cmd[0] == 'p' & cmd[1] == 's') {
            for (i = 0; i < nproc; i++) {
                proc_t *curproc = (proc_t*)procaddr + i;

                if (curproc->live == 1) {
                    // process id
                    print("PID: ");
                    print_int(curproc->id);
                    print("\n");

                    /*
                    // process registers
                    print("Registers: ");
                    int j;
                    for (j = 0; j < 32; j++) {
                        print_int(curproc->regs[j]);
                        print("\n");
                    }
                    print("\n\n");
                    */
                }
            }
        // kill
        } else if (cmd[0] == 'k' & cmd[1] == 'i' & cmd[2] == 'l' & cmd[3] == 'l') {
            uint32_t pid = cmd[5] - 48;
            for (i = 0; i < nproc; i++) {
                proc_t *curproc = (proc_t*)procaddr + i;

                if (curproc->id == pid) {
                    curproc->live = 0;
                    print("kill done\n");
                }
            }
        } else {
            print("Not implemented!\n");
        }
    }
    return;
}
