main:
  set %r2, $0x00010f00 ; SP、スタックとして32KB*8B=256KBを確保
  addi %r2, %r2, $-64 ; SP -= 64
  addi %r3, %r2, $64  ; FP = SP + 64, main()のフレームの出来上がり
  set %r9, $1   ; const int 1
loop_top:
  set %r15, $20  ; fib_rec(20) ~ fib_rec(1) を呼び続ける
loop_mid:
  addi %r5, %r15, $0
  jal %r1, fib_rec
  jal %r1, output
  addi %r15, %r15, $-1 ; %r5--
  blt %r15, %r0, loop_top ; if (%r5 == 1) goto loop_top
  jal %r0, loop_mid
fib_rec:
  addi %r2, %r2, $-64 ; SP -= 64
  sw %r2, %r1, $16    ; LR退避
  sw %r2, %r3, $20    ; FP退避
  addi %r3, %r2, $64  ; FP = SP + 64
  sw %r2, %r5, $0     ; 第一引数
  bge %r9, %r5, fib_rec_bge1   ; if (1 >= x) -> bge1
  addi %r5, %r5, $-1  ; else { val1 = x - 1;
  jal %r1, fib_rec   ; fib_rec(val1);
  sw %r2, %r4, $32    ; a[8] = fib_rec(a);
  lw %r5, %r2, $0     ; 第一引数読み戻し
  addi %r5, %r5, $-2  ; val2 = x - 2;
  jal %r1, fib_rec   ; fib_rec(val2);
  lw %r10, %r2, $32   ; r10 = a[8]
  add %r4, %r10, %r4   ; return fib_rec(val1) + fib_rec(val2)!
fib_rec_ret:
  lw %r1, %r2, $16    ; 退避したLRの読み戻し
  lw %r3, %r2, $20    ; 退避したFPの読み戻し
  addi %r2, %r2, $64 ; SP += 64
  jalr %r1, %r1, $0   ; 呼び出し元の関数に戻る
fib_rec_bge1:
  set %r4, $1   ; if (x == 1 || x == 2) return 1
  beq %r0, %r0, fib_rec_ret ; go back
output:
  out %r4
  srli %r4, %r4, $8
  out %r4
  srli %r4, %r4, $8
  out %r4
  srli %r4, %r4, $8
  out %r4
  srli %r4, %r4, $8
  jalr %r1, %r1, $0
start:
  set %r10, $00ffffff
loop_top:
  set %r5, $0
  set %r6, $1
  add %r7, %r5, %r6
  addi %r5, %r6, $0
  addi %r6, %r7, $0
  ble %r7, %r10, loop_top
  jal %r0, start


/*
特殊なレジスタについて
・r0: ゼロレジスタ
・r1: リンクレジスタ
・r2: スタックポインタ
・r3: フレームポインタ
・r4: 関数の戻り値
・r5,r6,r7,r8: 関数引数に渡す用、それぞれa[0]~a[3]に対応
・r9以降: 自由

スタックフレームについて
・16byte分のスタックフレーム→配列をa[16]と書くと
・a[0]~a[3]: 引数
・a[4]:退避したリンクレジスタ
・a[5]:呼び出し元関数のFP
・a[6],a[7]: undefined
・a[8]~a[11]: ローカル変数
・a[12]~a[15]: レジスタ退避用

参考
fib[0]  =  1  = 0x1
fib[1]  =  1  = 0x1
fib[2]  =  2  = 0x2
fib[3]  =  3  = 0x3
fib[4]  =  5  = 0x5
fib[5]  =  8  = 0x8
fib[6]  = 13  = 0xa
fib[7]  = 21  = 0x15
fib[8]  = 34  = 0x22
fib[9] = 55  = 0x37
fib[10] = 89  = 0x59
fib[11] = 144 = 0x90
fib[12] = 233 = 0xe9
fib[13] = 377 = 0x179
fib[14] = 610 = 0x262
fib[15] = 987 = 0x3db
fib[16] = 1597 = 0x63d
fib[17] = 2584 = 0xa18
fib[18] = 4181 = 0x1055
fib[19] = 6765 = 0x1a6d
fib[20] = 10946 = 0x2ac2
fib[21] = 17711 = 0x452f
fib[22] = 28657 = 0x6ff1
fib[23] = 46368 = 0xb520
fib[24] = 75025 = 0x12511
fib[25] = 121393 = 0x1da31
fib[26] = 196418 = 0x2ff42
fib[27] = 317811 = 0x4d973
fib[28] = 514229 = 0x7d8b5
fib[29] = 832040 = 0xcb228
fib[30] = 1346269 = 0x148add
fib[31] = 2178309 = 0x213d05
fib[32] = 3524578 = 0x35c7e2
fib[33] = 5702887 = 0x5704e7
fib[34] = 9227465 = 0x8cccc9 <- 2秒
fib[35] = 14930352 = 0xe3d1b0
fib[36] = 24157817 = 0x1709e79
fib[37] = 39088169 = 0x2547029 <- 9秒
*/
