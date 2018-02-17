OUTPUT_FORMAT("elf32-littleriscv")

ENTRY(_start)

PHDRS
{
    text PT_LOAD FILEHDR PHDRS FLAGS (5);
    data PT_LOAD FLAGS (6);
    bss  PT_LOAD FLAGS (6);
}

SECTIONS
{
    . = 0;
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
