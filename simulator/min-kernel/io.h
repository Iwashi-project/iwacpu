inline uint8_t read_byte() {
    __asm__(
            ".long 0xhogehoge" // TODO
           );
};

inline uint32_t read_uint() {
    uint8_t a = read_byte();
    uint8_t b = read_byte();
    uint8_t c = read_byte();
    uint8_t d = read_byte();
    return ((uint32_t)d << 24) | ((uint32_t)c << 16) | ((uint32_t)b << 8) | (uint32_t)a;
};

inline void write_byte(uint8_t x) {
    __asm__(
            ".long 0xhogehoge" // TODO
           );
}

void print(const char *s);
void print_int(int x);
void print_hex(int x);
