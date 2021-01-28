# Testing decoding and issue of clmul instructions

.eqv ARG1, 0xbbbbbbbbbbbbbbbb
.eqv ARG2, 0xcccccccccccccccc
.eqv IMM, 0x1F

.section .text
.globl _start

main:

    li x1, ARG1
    li x2, ARG2

    # CLMUL
    clmul x3, x1, x2
    clmulw x3, x1, x2

    # CLMULR
    clmulr x3, x1, x2
    clmulrw x3, x1, x2

    # CLMULH
    clmulh x3, x1, x2
    clmulhw x3, x1, x2

stall:
    j stall




