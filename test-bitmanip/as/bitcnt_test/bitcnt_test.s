.include "macros/macros.s"

.eqv CONST1, -1
.eqv CONST2, 0
.eqv CONST3, 0b01010100000000          
.eqv CONST4, 0b01010100000000000       
.eqv CONST5, 0xFFFF000000000000
.eqv CONST6, 0b11000000    
.eqv CONST7, 0b01001100
.eqv CONST8, 0b1100000000000000    
.eqv CONST9, 0b0100110000000000

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
    li x6, CONST6
    li x7, CONST7
    li x8, CONST8
    li x9, CONST9

    # Testing clz
    clz 10001, 00001      # 0
    clz 10010, 00010      # 64
    clz 10011, 00011      # 56
    clz 10100, 00100      # 53
    clz 10101, 00101      # 16

    # Testing ctz
    ctz 10001, 00001      # 0
    ctz 10010, 00010      # 64
    ctz 10011, 00011      # 8
    ctz 10100, 00100      # 11
    ctz 10101, 00101      # 48

    # Testing pcnt
    pcnt 10001, 00001      # 64
    pcnt 10010, 00010      # 0
    pcnt 10011, 00011      # 3
    pcnt 10100, 00100      # 3
    pcnt 10101, 00101      # 16

    # Testing sextb
    sext.b 10110, 00110      
    sext.b 10111, 00111

    # Testing sexth
    sext.h 11000, 01000      
    sext.h 11001, 01001

stall:
    j stall




