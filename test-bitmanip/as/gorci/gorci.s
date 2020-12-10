.include "macros/macros.s"
.eqv IMM, 0x1F

.section .text
.globl _start

main:
    gorc x3, x1, x2             # Correct Id; valid
    nop
    nop
    nop
    nop
    nop
    nop
    nop

stall:
    j stall




