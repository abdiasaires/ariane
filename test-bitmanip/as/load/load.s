.include "macros/macros.s"

.eqv BASEADDR, 0x80010000

.section .text
.globl _start

main:
    nop
    nop
    nop
    li x1, BASEADDR

    lw x2, 0(x1)
    lw x2, 4(x1)
    lw x2, 8(x1)
    lw x2, 12(x1)

stall:
    j stall
