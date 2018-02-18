#include <custom.h>

.globl _start
.globl entry
.text
_start:
entry:
  IN(00001)
  OUT(00001)

  lui sp, %hi(0x4000 - 4)
  addi sp, sp, %lo(0x4000 - 4)
  lui x1, %hi(intr_handler_entry)
  addi x1, x1, %lo(intr_handler_entry)
  MVGTO(00001) # mvgto x1
  j centry
