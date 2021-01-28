# Testing decoding and issue of ternary instructions

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

    cmix x4, x1, x2, x3
    cmov x4, x1, x2, x3
    fsl x4, x1, x2, x3
    
    fsr x4, x1, x2, x3
    fsrw x4, x1, x2, x3
    fsri x4, x1, x3, IMM  
    fsriw x4, x1, x3, IMM    

stall:
    j stall


#cmix

1e111233

00011_11_00001_00010_001_00100_0110011
    rs3 = 3
    rs2 = 1
    rs1 = 2
    rd = 4
    
fsl:
00010_10_00011_00001_001_00100_0110011
    rs3 = 2
    rs2 = 3
    rs1 = 1
    rd = 4
    
fsri:
00011_10_11111_00001_101_00100_0010011
    rs3 = 3
    imm = 1F
    rs1 = 1
    rd = 4

