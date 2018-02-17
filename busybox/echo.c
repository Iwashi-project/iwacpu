#include <io.h>
#include <stdint.h>
#define CMD_SIZE 1000

void echo (void) {

    char cmd[1000];
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
