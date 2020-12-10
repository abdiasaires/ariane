onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/tw_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/tvm_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/tsr_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/priv_lvl_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/pc_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/is_illegal_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/is_control_flow_instr_o
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/is_compressed_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/irq_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/irq_ctrl_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/interrupt_cause
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/instruction_o
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/instruction_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/instr
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/imm_uj_type
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/imm_u_type
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/imm_select
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/imm_sb_type
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/imm_s_type
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/imm_i_type
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/imm_bi_type
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/illegal_instr
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/fs_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/frm_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/ex_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/ecall
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/ebreak
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/debug_req_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/debug_mode_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/compressed_instr_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/check_fprm
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/id_stage_i/decoder_i/branch_predict_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 114
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ns} {24909 ns}
