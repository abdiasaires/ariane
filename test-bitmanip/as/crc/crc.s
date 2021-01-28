# Testing decoding and issue of crc instructions

.eqv ARG1, 0xbbbbbbbbbbbbbbbb
.eqv ARG2, 0xcccccccccccccccc
.eqv IMM, 0x1F

.section .text
.globl _start

main:

    li x1, ARG1

    # CRC32
    crc32.b x3, x1
    crc32.h x3, x1
    crc32.w x3, x1
    crc32.d x3, x1

    # CRC32C
    crc32c.b x3, x1
    crc32c.h x3, x1
    crc32c.w x3, x1
    crc32c.d x3, x1

stall:
    j stall


