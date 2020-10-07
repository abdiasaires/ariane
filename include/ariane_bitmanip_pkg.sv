/*
 * Ariane Bitmanip's definitions 
 */

package ariane_bitmanip_pkg;

    // Number of bits of the operation selector
    localparam BM_FUNC_NBITS        = 9;   

    // Operation codes
    
    // Bit count - 22,21,20 - 3
    localparam BM_FUNC_CLZ           = 9'b00000_000_0;
    localparam BM_FUNC_CLZW          = 9'b00000_000_1;
    localparam BM_FUNC_CTZ           = 9'b00000_001_0;
    localparam BM_FUNC_CTZW          = 9'b00000_001_1;
    localparam BM_FUNC_PCNT          = 9'b00000_010_0;
    localparam BM_FUNC_PCNTW         = 9'b00000_010_1;
    localparam BM_FUNC_BMATFLIP      = 9'b00000_011_0;
    localparam BM_FUNC_SEXTB         = 9'b00000_100_0;
    localparam BM_FUNC_SEXTH         = 9'b00000_101_0;
	
	// Bextdep - 30,29 - 14,13 - 3
	localparam BM_FUNC_BEXT          = 9'b0000_00_11_0;
	localparam BM_FUNC_BEXTW         = 9'b0000_00_11_1;
	localparam BM_FUNC_BDEP          = 9'b0000_10_11_0;
	localparam BM_FUNC_BDEPW         = 9'b0000_10_11_1;
	localparam BM_FUNC_GREV          = 9'b0000_11_10_0;
	localparam BM_FUNC_GREVW         = 9'b0000_11_10_1;
	localparam BM_FUNC_GORC          = 9'b0000_01_10_0;
	localparam BM_FUNC_GORCW         = 9'b0000_01_10_1;
	localparam BM_FUNC_SHFL          = 9'b0000_00_00_0;
	localparam BM_FUNC_SHFLW         = 9'b0000_00_00_1;
	localparam BM_FUNC_UNSHFL        = 9'b0000_00_10_0;
	localparam BM_FUNC_UNSHFLW       = 9'b0000_00_10_1;
	    
	// Carry-less multiply - 13,12 - 3
	
    localparam BM_FUNC_CLMUL          = 9'b000000_01_0;
    localparam BM_FUNC_CLMULR         = 9'b000000_10_0;
    localparam BM_FUNC_CLMULH         = 9'b000000_11_0;
    localparam BM_FUNC_CLMULW         = 9'b000000_01_1;
    localparam BM_FUNC_CLMULRW        = 9'b000000_10_1;
    localparam BM_FUNC_CLMULHW        = 9'b000000_11_1;
	    
	// Shifter - 30,29 - 27,26 - 14,13 - 3
	
   localparam BM_FUNC_SLL            = 9'b00_00_00_00_0;
   localparam BM_FUNC_SLLU           = 9'b00_00_10_00_1;    // TODO: Doesn't exist. Delete it?
   localparam BM_FUNC_SLLUW          = 9'b00_00_10_00_1;
   localparam BM_FUNC_SRL            = 9'b00_00_00_10_0;
   localparam BM_FUNC_SRA            = 9'b00_10_00_10_0;
   localparam BM_FUNC_SLO            = 9'b00_01_00_00_0;
   localparam BM_FUNC_SLOW           = 9'b00_01_00_00_1;
   localparam BM_FUNC_SRO            = 9'b00_01_00_10_0;
   localparam BM_FUNC_SROW           = 9'b00_01_00_10_1;
   localparam BM_FUNC_ROL            = 9'b00_11_00_00_0;
   localparam BM_FUNC_ROLW           = 9'b00_11_00_00_1;
   localparam BM_FUNC_ROR            = 9'b00_11_00_10_0;
   localparam BM_FUNC_RORW           = 9'b00_11_00_10_1;
   localparam BM_FUNC_FSL            = 9'b00_00_01_00_0;
   localparam BM_FUNC_FSLW           = 9'b00_00_01_00_1;
   localparam BM_FUNC_FSR            = 9'b00_00_01_10_0;
   localparam BM_FUNC_FSRW           = 9'b00_00_01_10_1;

   localparam BM_FUNC_SBSET          = 9'b00_01_10_00_0;
   localparam BM_FUNC_SBSETW         = 9'b00_01_10_00_1;
   localparam BM_FUNC_SBCLR          = 9'b00_10_10_00_0;
   localparam BM_FUNC_SBCLRW         = 9'b00_10_10_00_1;
   localparam BM_FUNC_SBINV          = 9'b00_11_10_00_0;
   localparam BM_FUNC_SBINVW         = 9'b00_11_10_00_1;
   localparam BM_FUNC_SBEXT          = 9'b00_10_10_10_0;
   localparam BM_FUNC_SBEXTW         = 9'b00_10_10_10_1;
   localparam BM_FUNC_BFP            = 9'b00_10_10_11_0;
   localparam BM_FUNC_BFPW           = 9'b00_10_10_11_1;
	
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
   localparam BM_FUNC_PACKH         = 9'b0_100_111_1_0;
   localparam BM_FUNC_PACKW         = 9'b0_100_100_1_1;
   localparam BM_FUNC_PACKUW        = 9'b1_100_100_1_1;
   localparam BM_FUNC_CMIX          = 9'b0_011_001_1_0;
   localparam BM_FUNC_CMOV          = 9'b0_011_101_1_0;
   localparam BM_FUNC_ADDW          = 9'b0_000_000_1_1;
   localparam BM_FUNC_ADDIWU        = 9'b0_000_100_0_1;   // TODO: Remove it?
   localparam BM_FUNC_ADDWU         = 9'b0_101_000_1_1;
   localparam BM_FUNC_SUBW          = 9'b1_000_000_1_1;
   localparam BM_FUNC_SUBWU         = 9'b1_101_000_1_1;
   localparam BM_FUNC_ADDUW         = 9'b0_100_000_1_1;
   localparam BM_FUNC_SUBUW         = 9'b1_100_000_1_1;
   
   // Cycle redundancy check - 23 - 21,20
   
   localparam BM_FUNC_CRCB           = 9'b000000_0_00;
   localparam BM_FUNC_CRCH           = 9'b000000_0_01;
   localparam BM_FUNC_CRCW           = 9'b000000_0_10;
   localparam BM_FUNC_CRCD           = 9'b000000_0_11; 
   localparam BM_FUNC_CRCCB          = 9'b000000_1_00;
   localparam BM_FUNC_CRCCH          = 9'b000000_1_01;
   localparam BM_FUNC_CRCCW          = 9'b000000_1_10;
   localparam BM_FUNC_CRCCD          = 9'b000000_1_11; 	

    /* Bitmanip opcodes */
    
    localparam OpcodeBitmanip1  = 7'b01_100_11;
    localparam OpcodeBitmanip2  = 7'b00_100_11;
    localparam OpcodeBitmanip3  = 7'b00_110_11;
    localparam OpcodeBitmanip4  = 7'b01_110_11;

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
