# Testing decoding and issueing of shifter instructions

.eqv ARG1, 0xbbbbbbbbbbbbbbbb
.eqv ARG2, 0xcccccccccccccccc
.eqv ARG3, 0xdddddddddddddddd
.eqv IMM, 0x1F

.section .text
.globl _start

main:

    # li x1, ARG1
    # li x2, ARG2
    # li x3, ARG3

    # SLLIU.W
    slliu.w x4, x1, IMM

    # SLL   
    sll x4, x1, x2
    sllw x4, x1, x2
    slli x4, x1, IMM

    # SRL
    srl x4, x1, x2
    srlw x4, x1, x2
    srli x4, x1, IMM

    # SRA
    sra x4, x1, x2
    sraw x4, x1, x2
    srai x4, x1, IMM

    # SLO
    slo x4, x1, x2
    slow x4, x1, x2
    sloi x4, x1, IMM
    sloiw x4, x1, IMM

    # SRO
    sro x4, x1, x2
    srow x4, x1, x2
    sroi x4, x1, IMM
    sroiw x4, x1, IMM

    # ROL
    rol x4, x1, x2
    rolw x4, x1, x2
    
    # ROR
    ror x4, x1, x2
    rorw x4, x1, x2
    rori x4, x1, IMM
    roriw x4, x1, IMM

    # FSL
    fsl x4, x1, x2, x3
    fslw x4, x1, x2, x3

    # FSR
    fsr x4, x1, x2, x3
    fsrw x4, x1, x2, x3
    fsri x4, x1, x3, IMM
    fsriw x4, x1, x3, IMM

    # SBSET
    sbset x4, x1, x2
    sbsetw x4, x1, x2
    sbseti x4, x1, IMM
    sbsetiw x4, x1, IMM

    # SBCLR
    sbclr x4, x1, x2
    sbclrw x4, x1, x2
    sbclri x4, x1, IMM
    sbclriw x4, x1, IMM

    # SBINV
    sbinv x4, x1, x2
    sbinvw x4, x1, x2
    sbinvi x4, x1, IMM
    sbinviw x4, x1, IMM
   

stall:
    j stall




