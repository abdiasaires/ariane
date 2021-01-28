# Testing decoding and issue of bmatxor instructions

.eqv ARG1, 0xbbbbbbbbbbbbbbbb
.eqv ARG2, 0xcccccccccccccccc
.eqv IMM, 0x1F

.section .text
.globl _start

main:

    li x1, ARG1
    li x2, ARG2

    bmator x3, x1, x2
    bmatxor x3, x1, x2    

stall:
    j stall




