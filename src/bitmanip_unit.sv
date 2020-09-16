//
// A wrapper for the reference cores implemented in the riscv-bitmanip project
//
//

import ariane_bitmanip_pkg::*;

module bitmanip_unit (
	// control signals
	input logic				    clk_i,           // positive edge clock
	input logic				    rst_ni,          // synchronous reset
	input logic				    flush_i,
	output exception_t          bitmanip_exception_o,

	// data input
	input fu_data_t			    fu_data_i,
    input logic                 bitmanip_valid_i,	
	output logic	            bitmanip_ready_o,      // unit accepts input

	// data output
	output [TRANS_ID_BITS-1:0]	bitmanip_trans_id_o,
	output logic                bitmanip_valid_o,         // output is valid
	output logic [63:0]         bitmanip_result_o         // output value
);

    logic [63:0]                op1;
    logic [BM_FUNC_NBITS-1:0]   bitmanip_func;
    logic                       rst_p;
    logic                       din_valid;

	assign op1                  = fu_data_i.operand_a;
    assign bitmanip_exception_o = '0;
    assign din_valid            = bitmanip_valid_i;
    assign bitmanip_trans_id_o  = fu_data_i.trans_id;
    assign rst_p                = ~rst_ni;
    assign bitmanip_ready_o     = 1'b1;
    assign bitmanip_valid_o     = bitmanip_valid_i;
 

	// determine the bitmanip operation
	always_comb begin : which_op
		// check the operator's identifier
		unique case (fu_data_i.operator)
			BM_CLZ:      bitmanip_func	= BM_FUNC_CLZ;
			BM_CTZ:      bitmanip_func	= BM_FUNC_CTZ;
			BM_PCNT:     bitmanip_func	= BM_FUNC_PCNT;
			BM_BMATFLIP: bitmanip_func	= BM_FUNC_BMATFLIP;
			BM_SEXTB:    bitmanip_func	= BM_FUNC_SEXTB;
			BM_SEXTH:    bitmanip_func	= BM_FUNC_SEXTH;
			default:     bitmanip_func	= BM_FUNC_CTZ;
		endcase
	end

	// bit-count module's instantiation
	rvb_bitcnt #(
        .XLEN (64),
        .BMAT (1)       // enables the instruction bmatflip
    ) rvb_bitcnt_i (
		.clock			(clk_i),          
		.reset			(rst_p),         
		.din_valid,    
		.din_ready		( ),    
		.din_rs1		(op1),       
		.din_insn3		(bitmanip_func[0]),      
		.din_insn20		(bitmanip_func[1]),
		.din_insn21		(bitmanip_func[2]),
		.din_insn22		(bitmanip_func[3]),
		.dout_valid		( ),
		.dout_ready		(1'b1),     
		.dout_rd		(bitmanip_result_o)         
	);

endmodule
