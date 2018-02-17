set %r5, $0x12345678
set %r6, $0xdeaddead
set %r7, $0xbeefbeef
set %r8, $0x11112222
set %r9, $0x12213234
set %r10, $0x10000
sb %r10, %r5, $0
srai %r5, %r5, $8
sb %r10, %r5, $1
srai %r5, %r5, $8
sb %r10, %r5, $2
srai %r5, %r5, $8
sb %r10, %r5, $3
lbu %r6, %r10, $0
lbu %r7, %r10, $1
lbu %r8, %r10, $2
lbu %r9, %r10, $3
