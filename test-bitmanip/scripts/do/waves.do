onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi2mem/clk_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi2mem/rst_ni
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi2mem/req_o
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi2mem/we_o
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi2mem/addr_o
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi2mem/be_o
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi2mem/data_o
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi2mem/data_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi_xbar/clk
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi_xbar/rst_n
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi_xbar/test_en_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi_xbar/start_addr_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi_xbar/end_addr_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_axi_xbar/valid_rule_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/clk_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/rst_ni
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/boot_addr_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/hart_id_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/irq_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/ipi_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/time_irq_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/debug_req_i
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/axi_req_o
add wave -noupdate /ariane_bitmanip_tb/dut/i_ariane/axi_resp_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
update
WaveRestoreZoom {0 ns} {3878912 ns}

add wave  \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/clk_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/rst_ni \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/priv_lvl_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/flush_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/en_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/miss_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/areq_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/areq_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/dreq_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/dreq_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/axi_req_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_icache/axi_resp_i
add wave  \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/clk_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/rst_ni \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/enable_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/flush_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/flush_ack_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/miss_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/amo_req_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/amo_resp_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/req_ports_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/req_ports_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/axi_data_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/axi_data_i \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/axi_bypass_o \
sim:/ariane_bitmanip_tb/dut/i_ariane/i_cache_subsystem/i_nbdcache/axi_bypass_i

