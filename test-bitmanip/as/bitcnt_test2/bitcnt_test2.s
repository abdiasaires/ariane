.include "macros/macros.s"

.eqv CONST1, -1
.eqv CONST2, 0
.eqv CONST3, 0b01010100000000          
.eqv CONST4, 0b01010100000000000        #     
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
    clz 01010, 00001      # x10 <= 0x0
    clz 01011, 00010      # x11 <= 0x40
    clz 01100, 00011      # x12 <= 0x33         
    clz 01101, 00100      # x13 <= 0x30         
    clz 01110, 00101      # x14 <= 0x0          

    # Testing ctz
    ctz 01111, 00001      # x15 <= 0x0          
    ctz 10000, 00010      # x16 <= 0x40
    ctz 10001, 00011      # x17 <= 0x8
    ctz 10010, 00100      # x18 <= 0xB
    ctz 10011, 00101      # x19 <= 0x30

    # Testing pcnt
    pcnt 10100, 00001      # x20 <= 0x40
    pcnt 10101, 00010      # x21 <= 0x0
    pcnt 10110, 00011      # x22 <= 0x3
    pcnt 10111, 00100      # x23 <= 0x3      
    pcnt 11000, 00101      # x24 <= 0x10        

    # Testing sextb
    sext.b 11001, 00110    # x25 <= 0xFF...FC0   
    sext.b 11010, 00111    # x26 <= 0x4C

    # Testing sexth
    sext.h 11011, 01000    # x27 <= 0xFF...FC000
    sext.h 11100, 01001    # x28 <= 0x4C00

stall:
    j stall




