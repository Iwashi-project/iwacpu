#include "io.h"

void print(const char *s) {
    while(*s) {
        write_byte(*s++);
    }
}

void print_int(int x) {
    // TODO decimal...
    print_hex(x);
}

void print_hex(int x) {
    if(x < 0) {
        write_byte('-');
        x = -x;
    }

    write_byte('0');
    write_byte('x');

    if(x == 0) {
        write_byte('0');
        return;
    }

    char s[100];
    int i;
    s[99] = 0;
    for(i=98; x; x >> 4, i--) {
        int y = x & 0xF; 
        s[i] = (y < 10) ? ('0' + y) : ('A' - 10 + y);
    }
    print(&s[i+1]);
}
