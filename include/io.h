#include "custom.h"
#include "stdint.h"

static inline uint8_t read_byte() {
    uint8_t r;
    uint32_t t;
    __asm__(
            "sw x1, %0\n\t"
            IN(00001) "\n\t"
            "sb x1, %1\n\t"
            "lw x1, %0\n\t"
            : "=A"(t), "=A"(r)
           );
    return r;
};

static inline uint32_t read_uint() {
    uint8_t a = read_byte();
    uint8_t b = read_byte();
    uint8_t c = read_byte();
    uint8_t d = read_byte();
    return ((uint32_t)d << 24) | ((uint32_t)c << 16) | ((uint32_t)b << 8) | (uint32_t)a;
};

static inline void write_byte(uint8_t x) {
    uint32_t t;
    __asm__(
            "sw x1, %0\n\t"
            "lbu x1, %1\n\t"
            OUT(00001) "\n\t"
            "lw x1, %0\n\t"
            : "=A"(t) : "A"(x)
           );
}

static inline void print(const char *s) {
    while(*s) {
        write_byte(*s++);
    }
}

static inline void print_hex(int x) {
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
    for(i=98; x; x >>= 4, i--) {
        int y = x & 0xF; 
        s[i] = (y < 10) ? ('0' + y) : ('A' - 10 + y);
    }
    print(&s[i+1]);
}

static inline void print_int(int x) {
    // TODO decimal...
    print_hex(x);
}
