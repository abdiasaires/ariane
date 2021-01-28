# Testing decoding and issue of issue instructions

.eqv ARG1, 0xbbbbbbbbbbbbbbbb
.eqv ARG2, 0xcccccccccccccccc
.eqv ARG3, 0xdddddddddddddddd
.eqv IMM, 0x1F

.section .text
.globl _start

main:

    li x1, ARG1
    li x2, ARG2
    li x3, ARG3

    # MIN/MAX
    min x4, x1, x2
    minu x4, x1, x2
    max x4, x1, x2
    maxu x4, x1, x2
    
    # Logic
    andn x4, x1, x2
    orn x4, x1, x2
    xnor x4, x1, x2
    
    # PACK
    pack x4, x1, x2
    packw x4, x1, x2
    packh x4, x1, x2
    packu x4, x1, x2
    packuw x4, x1, x2
    
    # CMIX/CMOV
    cmix x4, x1, x2, x3
    cmov x4, x1, x2, x3
    
    # ADD/SUB
    addiwu x4, x1, IMM
    addwu x4, x1, x2
    subwu x4, x1, x2
    addu.w x4, x1, x2
    subu.w x4, x1, x2
    

stall:
    j stall

