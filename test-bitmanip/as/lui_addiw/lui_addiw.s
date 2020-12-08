.include "macros/macros.s"

.section .text
.globl _start

main:

    lui	tp,0xb              # x4 <= 0xb000
    addi    x5, tp, 0       # x5 <= 0xb000
    addiw	tp,tp,-2048     # x4 <= 0xa800

stall:
    j stall
