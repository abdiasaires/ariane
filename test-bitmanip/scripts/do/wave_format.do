onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Decoder /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/rst_ni
add wave -noupdate -expand -group Decoder /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/issue_entry_valid_o
add wave -noupdate -expand -group Decoder /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/issue_entry_o
add wave -noupdate -expand -group Decoder /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/fetch_entry_valid_i
add wave -noupdate -expand -group Decoder /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/fetch_entry_i
add wave -noupdate -expand -group Decoder /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/clk_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/wt_valid_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/we_gpr_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/we_fpr_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/wdata_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/wbdata_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/waddr_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/trans_id_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/sb_full_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/resolved_branch_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/resolve_branch_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/pc_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/mult_valid_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/lsu_valid_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/lsu_ready_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/is_ctrl_flow_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/is_compressed_instr_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fu_data_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fpu_valid_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fpu_rm_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fpu_ready_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/fpu_fmt_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/flush_unissued_instr_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/flush_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/flu_ready_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/ex_ex_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/decoded_instr_valid_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/decoded_instr_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/decoded_instr_ack_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/csr_valid_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/commit_instr_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/commit_ack_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/branch_valid_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/branch_predict_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/bitmanip_valid_o
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/bitmanip_ready_i
add wave -noupdate -expand -group Issue /ariane_bitmanip_tb/dut/i_ariane/issue_stage_i/alu_valid_o
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/trans_id
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/stall
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/reset
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/output_value
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/output_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_trans_id_s
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_trans_id_d
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_simple_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_simple
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_shifter_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_shifter
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_crc_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_crc
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_clmul_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_clmul
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bmatxor_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bmatxor
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bitcnt_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bitcnt
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bextdep_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_bextdep
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/out_any_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/op_select
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_simple
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_shifter
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_crc
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_clmul
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_bmatxor
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_bitcnt
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/insn_bextdep
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_trans_id_s
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_trans_id_d
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_simple_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_simple
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_shifter_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_shifter
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_rs3
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_rs2
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_rs1
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_op_select
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_crc_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_crc
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_clmul_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_clmul
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bmatxor_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bmatxor
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bitcnt_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bitcnt
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bextdep_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/in_bextdep
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/fu_data_i
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/dout_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/dout_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/dout_rd
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_valid
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_rs3
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_rs2
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_rs1
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_ready
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/din_decoded
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/clock
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/busy_reg
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/busy
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_valid_o
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_valid_i
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_trans_id_o
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_result_o
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_ready_o
add wave -noupdate -expand -group Bitmanip /ariane_bitmanip_tb/dut/i_ariane/ex_stage_i/bitmanip_unit_i/bitmanip_exception_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {14085 ns}
