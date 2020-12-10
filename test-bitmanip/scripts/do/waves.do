add wave -position insertpoint  \
sim:/ariane_bitmanip_tb/dut/i_ariane/id_stage_i/clk_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/id_stage_i/rst_ni \
sim:/ariane_bitmanip_tb/dut/i_ariane/id_stage_i/fetch_entry_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/id_stage_i/fetch_entry_valid_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/id_stage_i/issue_entry_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/id_stage_i/issue_entry_valid_o

add wave -position insertpoint  \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/sb_full_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/flush_unissued_instr_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/flush_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/decoded_instr_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/decoded_instr_valid_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/is_ctrl_flow_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/decoded_instr_ack_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fu_data_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/pc_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/is_compressed_instr_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/flu_ready_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/alu_valid_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/resolve_branch_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/lsu_ready_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/lsu_valid_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/branch_valid_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/branch_predict_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/mult_valid_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fpu_ready_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fpu_valid_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fpu_fmt_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fpu_rm_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/bitmanip_ready_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/bitmanip_valid_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/csr_valid_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/trans_id_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/resolved_branch_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/wbdata_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/ex_ex_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/wt_valid_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/waddr_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/wdata_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/we_gpr_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/we_fpr_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/commit_instr_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/commit_ack_i

add wave -position insertpoint  \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_exception_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/fu_data_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_valid_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_ready_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_trans_id_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_valid_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_result_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/clock \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/reset \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_decoded \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_rs1 \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_rs2 \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_rs3 \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/dout_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/dout_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/dout_rd \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/trans_id \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_trans_id_d \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_trans_id_s \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_trans_id_d \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_trans_id_s \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/op_select \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_op_select \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/stall \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_bextdep \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_bitcnt \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_bmatxor \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_clmul \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_crc \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_shifter \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_simple \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bextdep \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bitcnt \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bmatxor \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_clmul \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_crc \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_shifter \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_simple \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bextdep_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bitcnt_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bmatxor_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_clmul_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_crc_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_shifter_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_simple_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_rs1 \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_rs2 \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_rs3 \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bextdep \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bitcnt \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bmatxor \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_clmul \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_crc \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_shifter \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_simple \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bextdep_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bitcnt_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bmatxor_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_clmul_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_crc_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_shifter_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_simple_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_ready \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/output_valid \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/output_value \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/busy \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/busy_reg \
sim:/ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_any_valid

add wave -position insertpoint  \
sim:/ariane_pkg::ZERO_TVAL \
sim:/ariane_pkg::XFVEC \
sim:/ariane_pkg::XF16VEC \
sim:/ariane_pkg::XF16ALTVEC \
sim:/ariane_pkg::XF16ALT \
sim:/ariane_pkg::XF16 \
sim:/ariane_pkg::XF8VEC \
sim:/ariane_pkg::XF8 \
sim:/ariane_pkg::TRANS_ID_BITS \
sim:/ariane_pkg::SupervisorIrq \
sim:/ariane_pkg::SMODE_STATUS_WRITE_MASK \
sim:/ariane_pkg::SMODE_STATUS_READ_MASK \
sim:/ariane_pkg::RVFVEC \
sim:/ariane_pkg::RVF \
sim:/ariane_pkg::RVD \
sim:/ariane_pkg::RVA \
sim:/ariane_pkg::REG_ADDR_SIZE \
sim:/ariane_pkg::PPN4K_WIDTH \
sim:/ariane_pkg::NSX \
sim:/ariane_pkg::NrMaxRules \
sim:/ariane_pkg::NR_WB_PORTS \
sim:/ariane_pkg::NR_STORE_PIPE_REGS \
sim:/ariane_pkg::NR_SB_ENTRIES \
sim:/ariane_pkg::NR_LOAD_PIPE_REGS \
sim:/ariane_pkg::NR_COMMIT_PORTS \
sim:/ariane_pkg::MODE_SV39 \
sim:/ariane_pkg::MODE_OFF \
sim:/ariane_pkg::MachineIrq \
sim:/ariane_pkg::LAT_NONCOMP \
sim:/ariane_pkg::LAT_DIVSQRT \
sim:/ariane_pkg::LAT_CONV \
sim:/ariane_pkg::LAT_COMP_FP64 \
sim:/ariane_pkg::LAT_COMP_FP32 \
sim:/ariane_pkg::LAT_COMP_FP16ALT \
sim:/ariane_pkg::LAT_COMP_FP16 \
sim:/ariane_pkg::LAT_COMP_FP8 \
sim:/ariane_pkg::ISSUE_WIDTH \
sim:/ariane_pkg::ISA_CODE \
sim:/ariane_pkg::INVALIDATE_ON_FLUSH \
sim:/ariane_pkg::INSTR_PER_FETCH \
sim:/ariane_pkg::ICACHE_TAG_WIDTH \
sim:/ariane_pkg::ICACHE_SET_ASSOC \
sim:/ariane_pkg::ICACHE_LINE_WIDTH \
sim:/ariane_pkg::ICACHE_INDEX_WIDTH \
sim:/ariane_pkg::FP_PRESENT \
sim:/ariane_pkg::FLEN \
sim:/ariane_pkg::FETCH_WIDTH \
sim:/ariane_pkg::FETCH_FIFO_DEPTH \
sim:/ariane_pkg::EXC_OFF_RST \
sim:/ariane_pkg::ENABLE_WFI \
sim:/ariane_pkg::ENABLE_SPIKE_COMMIT_LOG \
sim:/ariane_pkg::ENABLE_RENAME \
sim:/ariane_pkg::ENABLE_CYCLE_COUNT \
sim:/ariane_pkg::DEPTH_SPEC \
sim:/ariane_pkg::DEPTH_COMMIT \
sim:/ariane_pkg::DebugHartInfo \
sim:/ariane_pkg::DCACHE_TAG_WIDTH \
sim:/ariane_pkg::DCACHE_SET_ASSOC \
sim:/ariane_pkg::DCACHE_LINE_WIDTH \
sim:/ariane_pkg::DCACHE_INDEX_WIDTH \
sim:/ariane_pkg::BITS_SATURATION_COUNTER \
sim:/ariane_pkg::ASID_WIDTH \
sim:/ariane_pkg::ArianeDefaultConfig \
sim:/ariane_pkg::ARIANE_MARCHID

