#include "stdint.h"

inline uint8_t read_byte() {
    uint8_t r;
    uint32_t t;
    __asm__(
            "sw x1, %0\n\t"
            IN(00001) "\n\t"
            "sw x1, %1\n\t"
            "lw x1, %0\n\t"
            : "=A"(t), "=A"(r)
           );
    return r;
};

inline uint32_t read_uint() {
    uint8_t a = read_byte();
    uint8_t b = read_byte();
    uint8_t c = read_byte();
    uint8_t d = read_byte();
    return ((uint32_t)d << 24) | ((uint32_t)c << 16) | ((uint32_t)b << 8) | (uint32_t)a;
};

inline void write_byte(uint8_t x) {
    uint32_t t;
    __asm__(
            "sw x1, %0\n\t"
            "lw x1, %1\n\t"
            OUT(00001) "\n\t"
            "lw x1, %0\n\t"
            : "=A"(t) : "A"(x)
           );
}

void print(const char *s);
void print_int(int32_t x);
void print_hex(int32_t x);
