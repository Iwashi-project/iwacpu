#include <custom.h>
#include "layout.h"

.globl intr_handler_entry
intr_handler_entry:
  sw  x1, (KERN_TEMP + 0x00)(x0)
  sw  x2, (KERN_TEMP + 0x04)(x0)
  sw  x3, (KERN_TEMP + 0x08)(x0)
  sw  x4, (KERN_TEMP + 0x0c)(x0)
  sw  x5, (KERN_TEMP + 0x10)(x0)
  sw  x6, (KERN_TEMP + 0x14)(x0)
  sw  x7, (KERN_TEMP + 0x18)(x0)
  sw  x8, (KERN_TEMP + 0x1c)(x0)
  sw  x9, (KERN_TEMP + 0x20)(x0)
  sw x10, (KERN_TEMP + 0x24)(x0)
  sw x11, (KERN_TEMP + 0x28)(x0)
  sw x12, (KERN_TEMP + 0x2c)(x0)
  sw x13, (KERN_TEMP + 0x30)(x0)
  sw x14, (KERN_TEMP + 0x34)(x0)
  sw x15, (KERN_TEMP + 0x38)(x0)
  sw x16, (KERN_TEMP + 0x3c)(x0)
  sw x17, (KERN_TEMP + 0x40)(x0)
  sw x18, (KERN_TEMP + 0x44)(x0)
  sw x19, (KERN_TEMP + 0x48)(x0)
  sw x20, (KERN_TEMP + 0x4c)(x0)
  sw x21, (KERN_TEMP + 0x50)(x0)
  sw x22, (KERN_TEMP + 0x54)(x0)
  sw x23, (KERN_TEMP + 0x58)(x0)
  sw x24, (KERN_TEMP + 0x5c)(x0)
  sw x25, (KERN_TEMP + 0x60)(x0)
  sw x26, (KERN_TEMP + 0x64)(x0)
  sw x27, (KERN_TEMP + 0x68)(x0)
  sw x28, (KERN_TEMP + 0x6c)(x0)
  sw x29, (KERN_TEMP + 0x70)(x0)
  sw x30, (KERN_TEMP + 0x74)(x0)
  sw x31, (KERN_TEMP + 0x78)(x0)
  MVNPCTG(00001) # mvnpctg %x1
  sw  x1, (KERN_TEMP + 0x7c)(x0)

  lui sp, %hi(0x4000 - 4)
  addi sp, sp, %lo(0x4000 - 4)
  j intr_handler

.globl intr_handler_end
intr_handler_end:
  lw  x2, (KERN_TEMP + 0x04)(x0)
  lw  x3, (KERN_TEMP + 0x08)(x0)
  lw  x4, (KERN_TEMP + 0x0c)(x0)
  lw  x5, (KERN_TEMP + 0x10)(x0)
  lw  x6, (KERN_TEMP + 0x14)(x0)
  lw  x7, (KERN_TEMP + 0x18)(x0)
  lw  x8, (KERN_TEMP + 0x1c)(x0)
  lw  x9, (KERN_TEMP + 0x20)(x0)
  lw x10, (KERN_TEMP + 0x24)(x0)
  lw x11, (KERN_TEMP + 0x28)(x0)
  lw x12, (KERN_TEMP + 0x2c)(x0)
  lw x13, (KERN_TEMP + 0x30)(x0)
  lw x14, (KERN_TEMP + 0x34)(x0)
  lw x15, (KERN_TEMP + 0x38)(x0)
  lw x16, (KERN_TEMP + 0x3c)(x0)
  lw x17, (KERN_TEMP + 0x40)(x0)
  lw x18, (KERN_TEMP + 0x44)(x0)
  lw x19, (KERN_TEMP + 0x48)(x0)
  lw x20, (KERN_TEMP + 0x4c)(x0)
  lw x21, (KERN_TEMP + 0x50)(x0)
  lw x22, (KERN_TEMP + 0x54)(x0)
  lw x23, (KERN_TEMP + 0x58)(x0)
  lw x24, (KERN_TEMP + 0x5c)(x0)
  lw x25, (KERN_TEMP + 0x60)(x0)
  lw x26, (KERN_TEMP + 0x64)(x0)
  lw x27, (KERN_TEMP + 0x68)(x0)
  lw x28, (KERN_TEMP + 0x6c)(x0)
  lw x29, (KERN_TEMP + 0x70)(x0)
  lw x30, (KERN_TEMP + 0x74)(x0)
  lw x31, (KERN_TEMP + 0x78)(x0)

  lw  x1, (KERN_TEMP + 0x7c)(x0)
  MVGTNPC(00001) # mvgtnpc %x1

  lw  x1, (KERN_TEMP + 0x80)(x0)
  MVGTP(00000, 00001) # mvgtp %p0, %x1
  lw  x1, (KERN_TEMP + 0x84)(x0)
  MVGTP(00001, 00001) # mvgtp %p1, %x1
  lw  x1, (KERN_TEMP + 0x88)(x0)
  MVGTP(00010, 00001) # mvgtp %p2, %x1
  lw  x1, (KERN_TEMP + 0x8c)(x0)
  MVGTP(00011, 00001) # mvgtp %p3, %x1
  lw  x1, (KERN_TEMP + 0x90)(x0)
  MVGTP(00100, 00001) # mvgtp %p4, %x1
  lw  x1, (KERN_TEMP + 0x94)(x0)
  MVGTP(00101, 00001) # mvgtp %p5, %x1
  lw  x1, (KERN_TEMP + 0x98)(x0)
  MVGTP(00110, 00001) # mvgtp %p6, %x1
  lw  x1, (KERN_TEMP + 0x9c)(x0)
  MVGTP(00111, 00001) # mvgtp %p7, %x1
  lw  x1, (KERN_TEMP + 0xa0)(x0)
  MVGTP(01000, 00001) # mvgtp %p8, %x1
  lw  x1, (KERN_TEMP + 0xa4)(x0)
  MVGTP(01001, 00001) # mvgtp %p9, %x1
  lw  x1, (KERN_TEMP + 0xa8)(x0)
  MVGTP(01010, 00001) # mvgtp %p10, %x1
  lw  x1, (KERN_TEMP + 0xac)(x0)
  MVGTP(01011, 00001) # mvgtp %p11, %x1
  lw  x1, (KERN_TEMP + 0xb0)(x0)
  MVGTP(01100, 00001) # mvgtp %p12, %x1
  lw  x1, (KERN_TEMP + 0xb4)(x0)
  MVGTP(01101, 00001) # mvgtp %p13, %x1
  lw  x1, (KERN_TEMP + 0xb8)(x0)
  MVGTP(01110, 00001) # mvgtp %p14, %x1
  lw  x1, (KERN_TEMP + 0xbc)(x0)
  MVGTP(01111, 00001) # mvgtp %p15, %x1
  lw  x1, (KERN_TEMP + 0xc0)(x0)
  MVGTP(10000, 00001) # mvgtp %p16, %x1
  lw  x1, (KERN_TEMP + 0xc4)(x0)
  MVGTP(10001, 00001) # mvgtp %p17, %x1
  lw  x1, (KERN_TEMP + 0xc8)(x0)
  MVGTP(10010, 00001) # mvgtp %p18, %x1
  lw  x1, (KERN_TEMP + 0xcc)(x0)
  MVGTP(10011, 00001) # mvgtp %p19, %x1
  lw  x1, (KERN_TEMP + 0xd0)(x0)
  MVGTP(10100, 00001) # mvgtp %p20, %x1
  lw  x1, (KERN_TEMP + 0xd4)(x0)
  MVGTP(10101, 00001) # mvgtp %p21, %x1
  lw  x1, (KERN_TEMP + 0xd8)(x0)
  MVGTP(10110, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xdc)(x0)
  MVGTP(10111, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xe0)(x0)
  MVGTP(11000, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xe4)(x0)
  MVGTP(11001, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xe8)(x0)
  MVGTP(11010, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xec)(x0)
  MVGTP(11011, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xf0)(x0)
  MVGTP(11100, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xf4)(x0)
  MVGTP(11101, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xf8)(x0)
  MVGTP(11110, 00001) # mvgtp %p22, %x1
  lw  x1, (KERN_TEMP + 0xfc)(x0)
  MVGTP(11111, 00001) # mvgtp %p22, %x1

  lw  x1, (KERN_TEMP + 0x00)(x0)
  IRET # TODO iret
