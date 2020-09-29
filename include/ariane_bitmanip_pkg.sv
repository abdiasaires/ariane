/*
 * Definitions used in Ariane's bitmanip extension 
 */

package ariane_bitmanip_pkg;

    // Number of bits of the operation selector
    localparam BM_FUNC_NBITS        = 9;   

    // Operation codes
    
    // Bit count
    localparam BM_FUNC_CLZ           = 9'b000000000;
    localparam BM_FUNC_CTZ           = 9'b000000010;
    localparam BM_FUNC_PCNT          = 9'b000000100;
    localparam BM_FUNC_BMATFLIP      = 9'b000000110;
    localparam BM_FUNC_SEXTB         = 9'b000001000;
    localparam BM_FUNC_SEXTH         = 9'b000001010;
	
	// Bextdep - 3,13,14,29,30
	localparam BM_FUNC_BEXT          = 9'b1000_00110;
	localparam BM_FUNC_BDEP          = 9'b1000_10110;
	localparam BM_FUNC_GREV          = 9'b1000_11100;
	localparam BM_FUNC_GORC          = 9'b1000_01100;
	localparam BM_FUNC_SHFL          = 9'b1000_00000;
	localparam BM_FUNC_UNSHFL        = 9'b1000_00100;
	    
	// Carry-less multiply - 3,12,13
	
    localparam BM_FUNC_CLMUL          = 9'b000000_010;
    localparam BM_FUNC_CLMULR         = 9'b000000_100;
    localparam BM_FUNC_CLMULH         = 9'b000000_110;
	    
	// Shifter - 3,13,14,26,27,29,30
	
   localparam BM_FUNC_SLL            = 9'b00_0000_00_0;
   localparam BM_FUNC_SRL            = 9'b00_0000_10_0;
   localparam BM_FUNC_SRA            = 9'b00_1000_10_0;
   localparam BM_FUNC_SLO            = 9'b00_0100_00_0;
   localparam BM_FUNC_SRO            = 9'b00_0100_10_0;
   localparam BM_FUNC_ROL            = 9'b00_1100_00_0;
   localparam BM_FUNC_ROR            = 9'b00_1100_10_0;
   localparam BM_FUNC_FSL            = 9'b00_0001_00_0;
   localparam BM_FUNC_FSR            = 9'b00_0001_10_0;
   localparam BM_FUNC_SLLIU          = 9'b00_0010_00_1;
   localparam BM_FUNC_SBSET          = 9'b00_0110_00_0;
   localparam BM_FUNC_SBSETW         = 9'b00_0110_00_1;
   localparam BM_FUNC_SBCLR          = 9'b00_1010_00_0;
   localparam BM_FUNC_SBINV          = 9'b00_1110_00_0;
   localparam BM_FUNC_SBEXT          = 9'b00_1010_10_0;
   localparam BM_FUNC_BFP            = 9'b00_1010_11_0;
	
   // Bit matrix - 30
   
   localparam BM_FUNC_BMATXOR       = 9'b00000000_0;
   localparam BM_FUNC_BMATOR        = 9'b00000000_1;
   
   // Simple: 30 - 27,26,25 - 14,13,12 - 5 - 3
   
   localparam BM_FUNC_MIN           = 9'b0_101_100_1_0;
   localparam BM_FUNC_MAX           = 9'b0_101_101_1_0;
   localparam BM_FUNC_MINU          = 9'b0_101_110_1_0;
   localparam BM_FUNC_MAXU          = 9'b0_101_111_1_0;
   localparam BM_FUNC_ANDN          = 9'b1_000_111_1_0;
   localparam BM_FUNC_ORN           = 9'b1_000_110_1_0;
   localparam BM_FUNC_XNOR          = 9'b1_000_100_1_0; 
   localparam BM_FUNC_PACK          = 9'b0_100_100_1_0;
   localparam BM_FUNC_PACKU         = 9'b1_100_100_1_0;
   localparam BM_FUNC_CMIX          = 9'b0_011_001_1_0;
   localparam BM_FUNC_CMOV          = 9'b0_011_101_1_0;
   localparam BM_FUNC_ADDIWU        = 9'b0_000_100_0_1;   // Remover imediato?
   localparam BM_FUNC_ADDWU         = 9'b0_101_000_1_1;
   localparam BM_FUNC_SUBWU         = 9'b1_101_000_1_1;
   localparam BM_FUNC_ADDUW         = 9'b0_100_000_1_1;
   localparam BM_FUNC_SUBUW         = 9'b1_100_000_1_1;
   
   // **** Continuar a partir daqui
   
   // Cycle redundancy check
   
   localparam BM_FUNC_CRCB           = 9'b100011010;
   localparam BM_FUNC_CRCH           = 9'b100011010;
   localparam BM_FUNC_CRCW           = 9'b100011010;
   localparam BM_FUNC_CRCD           = 9'b100011010; 
   localparam BM_FUNC_CRCCB          = 9'b100011010;
   localparam BM_FUNC_CRCCH          = 9'b100011010;
   localparam BM_FUNC_CRCCW          = 9'b100011010;
   localparam BM_FUNC_CRCCD          = 9'b100011010; 	

    /* Bitmanip opcode */
    localparam OpcodeBitmanip   = 7'b001_0011;

endpackage


/*
Simple: 3,5,12,13,14,25,26,27,30
Shifter: 3,13,14,26,27,29,30
CRC:    20,21,23
CLmul: 3,12,13
Bmatxor: 30
Bitcnt: 3,20,21,22
Bextdep: 3,13,14,29,30




*/
