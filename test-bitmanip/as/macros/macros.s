.macro clz rd, rs, func3=001, opcode=0010011
    .word 0b011000000000\rs\func3\rd\opcode
.endm

.macro ctz rd, rs, func3=001, opcode=0010011
    .word 0b011000000001\rs\func3\rd\opcode
.endm

.macro pcnt rd, rs, func3=001, opcode=0010011
    .word 0b011000000010\rs\func3\rd\opcode
.endm

.macro bmatflip rd, rs, func3=001, opcode=0010011
    .word 0b011000000011\rs\func3\rd\opcode
.endm

.macro sext.b rd, rs, func3=001, opcode=0010011
    .word 0b011000000100\rs\func3\rd\opcode
.endm

.macro sext.h rd, rs, func3=001, opcode=0010011
    .word 0b011000000101\rs\func3\rd\opcode
.endm

