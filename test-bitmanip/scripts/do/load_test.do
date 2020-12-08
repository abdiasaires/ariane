do waves_bitmanip.do

run 20000 ns

mem save -o /home/abdias/Documents/ArianeBitmanip/ariane/test-bitmanip/as/memory_state.mem -f mti -data symbolic -addr hex -startaddress 0 -endaddress 65536 {/ariane_bitmanip_tb/dut/i_sram/genmem[0]/i_ram/Mem_DP}

do write_registers.do

quit -f
