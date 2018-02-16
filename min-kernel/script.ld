OUTPUT_FORMAT("elf32-littleriscv")

ENTRY(_start)

PHDRS
{
    boot PT_LOAD FILEHDR PHDRS FLAGS (5);
    text PT_LOAD FILEHDR PHDRS FLAGS (5);
    data PT_LOAD FLAGS (6);
    bss  PT_LOAD FLAGS (6);
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
    .data : {
        *(.data)
    } :data
    .bss : {
        *(.bss)
    } :bss

    . = ALIGN(16);
    end = .;
}
