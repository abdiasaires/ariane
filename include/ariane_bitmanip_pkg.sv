/*
 * Definitions used in Ariane's bitmanip extension 
 */

package ariane_bitmanip_pkg;

    /* Bitmanip operation selector */
    localparam BM_FUNC_NBITS        = 4;   
    localparam BM_FUNC_CLZ          = 4'b0000;
    localparam BM_FUNC_CTZ          = 4'b0010;
    localparam BM_FUNC_PCNT         = 4'b0100;
    localparam BM_FUNC_BMATFLIP     = 4'b0110;
    localparam BM_FUNC_SEXTB        = 4'b1000;
    localparam BM_FUNC_SEXTH        = 4'b1010;

    /* Bitmanip opcode */
    localparam OpcodeBitmanip   = 7'b001_0011;

endpackage
