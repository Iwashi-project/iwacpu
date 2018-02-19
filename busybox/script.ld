OUTPUT_FORMAT("elf32-littleriscv")

ENTRY(_start)

PHDRS
{
    boot PT_LOAD FLAGS(5);
    text PT_LOAD FLAGS(5);
    rodata PT_LOAD FLAGS(6);
    data PT_LOAD FLAGS(6);
    bss PT_LOAD FLAGS(6);
}

SECTIONS
{
    . = 0;
    .text : {
        entry.o(.text)
        *(.text)
    } :text
    .rodata : {
        *(.rodata)
    } :rodata
    .data : {
        *(.data)
    } :rodata
    .bss : {
        *(.bss)
    } :bss

    . = ALIGN(16);
    end = .;
}
