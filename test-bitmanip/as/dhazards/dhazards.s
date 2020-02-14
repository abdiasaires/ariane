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

    # Testing read-after-write (RAW): sequence bitmanip-other

    ctz 10001, 00001      # 0
    mv x25, x17
    ctz 10010, 00010      # 64
    mv x26, x18
    ctz 10011, 00011      # 8
    mv x27, x19
    ctz 10100, 00100      # 11
    mv x28, x20
    ctz 10101, 00101      # 48
    mv x29, x21

    # Testing read-after-write (RAW): sequece other-bitmanip

    mv x9, x1
    ctz 10001, 01001      # 0
    mv x10, x2
    ctz 10010, 01010      # 64
    mv x11, x3
    ctz 10011, 01011      # 8
    mv x12, x4
    ctz 10100, 01100      # 11
    mv x13, x5
    ctz 10101, 01101      # 48

    # Testing write-after-read (WAR): sequece other-bitmanip

    mv x9, x17
    ctz 10001, 01001      # 0
    mv x10, x18
    ctz 10010, 01010      # 64
    mv x11, x19
    ctz 10011, 01011      # 8
    mv x12, x20
    ctz 10100, 01100      # 11
    mv x13, x21
    ctz 10101, 01101      # 48

    # Testing write-after-read (WAR): sequece bitmanip-other

    ctz 10001, 00001      # 0
    mv x1, x0
    ctz 10010, 00010      # 64
    mv x2, x0
    ctz 10011, 00011      # 8
    mv x3, x0
    ctz 10100, 00100      # 11
    mv x4, x0
    ctz 10101, 00101      # 48
    mv x5, x0

    stall:
        j stall

