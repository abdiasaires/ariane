.include "macros/macros.s"

.eqv CONST1, 0xFF00000000000000
.eqv CONST2, 0x00FF000000000000
.eqv CONST3, 0x0000FF0000000000
.eqv CONST4, 0x000000FF00000000
.eqv CONST5, 0x00000000000000FF

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
    bmatflip 10001, 00001      
    bmatflip 10010, 00010      
    bmatflip 10011, 00011      
    bmatflip 10100, 00100      
    bmatflip 10101, 00101      
    
  
