.include "macros/macros.s"

.eqv CONST1, -1
.eqv CONST2, 0
.eqv CONST3, 0b01010100000000           # ctz: 8
.eqv CONST4, 0b01010100000000000        # ctz: 11
.eqv CONST5, 0xFFFF000000000000         # ctz: 48

.section .text
.globl _start

main:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    li x1, CONST1
    li x2, CONST2
    li x3, CONST3
    li x4, CONST4
    li x5, CONST5
    ctz 00001, 00001      # 0
    ctz 00010, 00010      # 64
    ctz 00011, 00011      # 8
    ctz 00100, 00100      # 11
    ctz 00101, 00101      # 48
