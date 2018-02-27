top:
  set %r19, $0x3a
  set %r20, $0xf0000000
  set %r10, $0x00ffffff
start:
  set %r5, $0
  set %r6, $1
loop_top:
  add %r7, %r5, %r6
  addi %r5, %r6, $0
  addi %r6, %r7, $0
  set %r15, $7
  set %r21, $0x30
  out %r21
  set %r21, $0x78
  out %r21
loop2_top:
  and %r21, %r7, %r20
  srli %r21, %r21, $28
  addi %r21, %r21, $0x30
  blt %r21, %r19, skip
  addi %r21, %r21, $0x27
skip:
  out %r21
  addi %r15, %r15, $-1
  slli %r7, %r7, $4
  bge %r15, %r0, loop2_top
  set %r21, $0x0a
  out %r21
  blt %r6, %r10, loop_top
  jal %r0, $0
