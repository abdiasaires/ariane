.include "macros/macros.s"

.eqv ARG1, 0xbbbbbbbbbbbbbbbb
.eqv ARG2, 0xcccccccccccccccc
.eqv IMM, 0x1F

.section .text
.globl _start

main:

    li x1, ARG1
    li x2, ARG2

# GORC
    gorc x3, x1, x2 
    gorcw x3, x1, x2
    gorci x3, x1, IMM
    gorciw x3, x1, IMM
    
# GREV
    grev x3, x1, x2 
    grevw x3, x1, x2
    grevi x3, x1, IMM
    greviw x3, x1, IMM

# SHFL
    shfl x3, x1, x2
    shflw x3, x1, x2
    shfli x3, x1, IMM
    
# UNSHFL
    unshfl x3, x1, x2
    unshflw x3, x1, x2
    unshfli x3, x1, IMM
    
# BDEP
    bdep x3, x1, x2
    bdepw x3, x1, x2
    
# BEXT
    bext x3, x1, x2
    bextw x3, x1, x2
    

stall:
    j stall




