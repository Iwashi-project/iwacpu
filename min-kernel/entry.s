.globl entry
.globl _start
_start:
entry:
  lui sp, 0
  addi sp, sp, 0x4000 - 4
  lui a1, %hi(intr_handler_entry)
  addi a1, a1, %lo(intr_handler_entry)
  .long 0xhogehoge # TODO mvgto a1
  j centry
  .long 0xdeadbeef # SHOULD NOT REACH HERE
