#include <stdio.h>
#include <string.h>
#include "elf.h"

int main(int argc, char **argv) {
    if(argc < 3) {
        puts("Usage:");
        printf("  %s [output bin] [input obj]\n", argv[0]);
        return 1;
    }

    FILE *fout = fopen(argv[1], "w");
    if(!fout) {
        perror("fopen output");
        return 1;
    }
    FILE *fin  = fopen(argv[2], "r");
    if(!fin) {
        perror("fopen input");
        return 1;
    }


    char elf[0x10000];
    fread(elf, 0x10000, 1, fin);

    Elf32_Ehdr *elfhdr = (Elf32_Ehdr*)elf;
    Elf32_Phdr *phdr   = (Elf32_Phdr*)&elf[elfhdr->e_phoff];

    char buf[0x10000];

    if(memcmp(ELF_MAGIC, elf, 4)) {
        puts("not valid ELF...");
        return 1;
    }

    for(Elf32_Phdr *p = phdr; p < &phdr[elfhdr->e_phnum]; p++) {
        if(!(p->p_type & PT_LOAD)) continue;

        printf("%08x <- %08x (%x bytes)\n", p->p_paddr, p->p_offset, p->p_filesz);
        memcpy(&buf[p->p_paddr], &elf[p->p_offset], p->p_filesz);
    }

    fwrite(buf, 0x1000, 1, fout);

    return 0;
}
