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
    .boot : {
        entry.o(.text)
    } :boot

    . = 0x1000;

    .text : {
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
