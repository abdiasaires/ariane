.section .text
.globl _start
main:
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
	    lui a0,       %hi(msg)       # load msg(hi)
	    addi a0, a0,  %lo(msg)       # load msg(lo)
	    jal ra, puts
	    lui a0,       %hi(msg)       # load msg(hi)
	    addi a0, a0,  %lo(msg)       # load msg(lo)
	    jal ra, puts
	    lui a0,       %hi(msg)       # load msg(hi)
	    addi a0, a0,  %lo(msg)       # load msg(lo)
	    jal ra, puts
	    lui a0,       %hi(msg)       # load msg(hi)
	    addi a0, a0,  %lo(msg)       # load msg(lo)
	    jal ra, puts
	    lui a0,       %hi(msg)       # load msg(hi)
	    addi a0, a0,  %lo(msg)       # load msg(lo)
	    jal ra, puts
	    lui a0,       %hi(msg)       # load msg(hi)
	    addi a0, a0,  %lo(msg)       # load msg(lo)
	    jal ra, puts
	    lui a0,       %hi(msg)       # load msg(hi)
	    addi a0, a0,  %lo(msg)       # load msg(lo)
	    jal ra, puts
	    lui a0,       %hi(msg)       # load msg(hi)
	    addi a0, a0,  %lo(msg)       # load msg(lo)
	    jal ra, puts
2:	    
        j 2b

.section .rodata
msg:
	    .string "Hello World\n"
