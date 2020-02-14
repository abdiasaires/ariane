probe -create -name Mem ariane_bitmanip_tb.dut.i_sram.genmem[0].i_ram.Mem_DP -database waves -waveform -unpacked 33554432
run 10000
cat trace_hart_0.log
