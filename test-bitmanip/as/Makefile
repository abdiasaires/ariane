ifndef testname
$(error Set testname)
endif

macros      = macros/macros.s

# 	riscv64-unknown-elf-objcopy -O verilog --verilog-data-width 8 -S $< $(testname)/$(testname).vh
#   riscv64-unknown-elf-objcopy -O ihex -S  $< $(testname)/$(testname).hex

mem: $(testname)/$(testname).o
	rm -f $(testname)/$(testname).dump
	rm -f $(testname)/$(testname).mem
	riscv64-unknown-elf-objdump $(testname)/$(testname).o -d >> $(testname)/$(testname).dump
	riscv64-unknown-elf-objcopy $(testname)/$(testname).o -O binary  $(testname)/$(testname).bin
	riscv64-unknown-elf-bin2hex -w 64 $(testname)/$(testname).bin $(testname)/$(testname).mem 
#	riscv64-unknown-elf-objcopy -O binary $< $(testname)/$(testname).bin
#	riscv64-unknown-elf-objcopy -O verilog --verilog-data-width 4 $< $(testname)/$(testname).vh
#	riscv64-unknown-elf-elf2hex --bit-width 64 --input $(testname)/$(testname).o >> $(testname)/$(testname).mem
	cp $(testname)/$(testname).mem preloader.mem

$(testname)/$(testname).o: $(testname)/$(testname).s $(macros)
	riscv64-unknown-elf-gcc $(testname)/$(testname).s $(macros) -c -march=rv64g
	mv $(testname).o $(testname)/$(testname).o

clean:
	rm $(testname)/$(testname).o -f
	rm $(testname)/$(testname).dump -f
	rm $(testname)/$(testname).mem -f
	

