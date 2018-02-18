#include <io.h>
#define CMD_SIZE 1000

void echo (void) {

    char cmd[CMD_SIZE];
    for (;;) {
        print("$ ");
        int i;
        for (i = 0;; i++) {
            char byte = read_byte();
            if (byte == '\n')
                break;
            cmd[i] = byte;
        }
        print(cmd+6);
    }
    return;
}
