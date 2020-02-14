# root path 
mkfile_path     := $(abspath $(lastword $(MAKEFILE_LIST)))
root-dir        := $(dir $(mkfile_path))
# Top level module to compile
top_level      ?= ariane_tb
# library for DPI
dpi-library    ?= work-dpi
# DPI
dpi := $(patsubst tb/dpi/%.cc, ${dpi-library}/%.o, $(wildcard tb/dpi/*.cc))
# Test-bitmanip directory
test-bitmanip  := $(root-dir)/test-bitmanip
# Tcl start-up file
tcl-run        := $(test-bitmanip)/run.tcl
guicmd         := 

ifeq ($(gui), 1)
	guicmd := -gui
endif

# Sources
# Package files -> compile first
ariane_pkg := include/riscv_pkg.sv                          \
              src/riscv-dbg/src/dm_pkg.sv                   \
              include/ariane_pkg.sv                         \
              include/std_cache_pkg.sv                      \
              include/wt_cache_pkg.sv                       \
              src/axi/src/axi_pkg.sv                        \
              src/register_interface/src/reg_intf.sv        \
              src/register_interface/src/reg_intf_pkg.sv    \
              include/axi_intf.sv                           \
              tb/ariane_soc_pkg.sv                          \
              include/ariane_axi_pkg.sv                     \
              src/fpu/src/fpnew_pkg.sv                      \
              src/fpu/src/fpu_div_sqrt_mvp/hdl/defs_div_sqrt_mvp.sv \
              include/apb_bus.sv                            \
              include/ariane_bitmanip_pkg.sv                     
              

ariane_pkg := $(addprefix $(root-dir), $(ariane_pkg))
ariane_pkg += /home/abdias/Ariane-Bitmanip/uvm-1.1b/src/uvm_pkg.sv



# utility modules
util := include/instr_tracer_pkg.sv                         \
        src/util/instr_tracer_if.sv                         \
        src/util/instr_tracer.sv                            \
        src/tech_cells_generic/src/cluster_clock_gating.sv  \
        tb/common/mock_uart.sv                              \
        src/util/sram.sv

util := $(addprefix $(root-dir), $(util))

# this list contains the standalone components
# deleted: src/common_cells/src/deprecated/find_first_one.sv                   
#        tb/common/SimDTM.sv                                                    \
#        tb/common/SimJTAG.sv                                                   \

src :=  $(filter-out src/ariane_regfile.sv, $(wildcard src/*.sv))              \
        $(filter-out src/fpu/src/fpnew_pkg.sv, $(wildcard src/fpu/src/*.sv))   \
        $(filter-out src/fpu/src/fpu_div_sqrt_mvp/hdl/defs_div_sqrt_mvp.sv,    \
        $(wildcard src/fpu/src/fpu_div_sqrt_mvp/hdl/*.sv))                     \
        $(wildcard src/frontend/*.sv)                                          \
        $(filter-out src/cache_subsystem/std_no_dcache.sv                      \
        $(wildcard src/cache_subsystem/wt_*.sv),                               \
        $(wildcard src/cache_subsystem/*.sv))                                  \
        $(wildcard bootrom/*.sv)                                               \
        $(wildcard src/clint/*.sv)                                             \
        $(wildcard fpga/src/axi2apb/src/*.sv)                                  \
        $(wildcard fpga/src/axi_slice/src/*.sv)                                \
        $(filter-out src/axi_riscv_atomics/src/axi_riscv_lrsc_wrap.sv,         \
        $(wildcard src/axi_riscv_atomics/src/*.sv))                            \
        $(wildcard src/axi_mem_if/src/*.sv)                                    \
        src/rv_plic/rtl/rv_plic_target.sv                                      \
        src/rv_plic/rtl/rv_plic_gateway.sv                                     \
        src/rv_plic/rtl/plic_regmap.sv                                         \
        src/rv_plic/rtl/plic_top.sv                                            \
        src/riscv-dbg/src/dmi_cdc.sv                                           \
        src/riscv-dbg/src/dmi_jtag.sv                                          \
        src/riscv-dbg/src/dmi_jtag_tap.sv                                      \
        src/riscv-dbg/src/dm_csrs.sv                                           \
        src/riscv-dbg/src/dm_mem.sv                                            \
        src/riscv-dbg/src/dm_sba.sv                                            \
        src/riscv-dbg/src/dm_top.sv                                            \
        src/riscv-dbg/debug_rom/debug_rom.sv                                   \
        src/register_interface/src/apb_to_reg.sv                               \
        src/axi/src/axi_multicut.sv                                            \
        src/common_cells/src/deprecated/generic_fifo.sv                        \
        src/common_cells/src/deprecated/pulp_sync.sv                           \
        src/common_cells/src/rstgen_bypass.sv                                  \
        src/common_cells/src/rstgen.sv                                         \
        src/common_cells/src/stream_mux.sv                                     \
        src/common_cells/src/stream_demux.sv                                   \
        src/common_cells/src/exp_backoff.sv                                    \
        src/util/axi_master_connect.sv                                         \
        src/util/axi_slave_connect.sv                                          \
        src/util/axi_master_connect_rev.sv                                     \
        src/util/axi_slave_connect_rev.sv                                      \
        src/axi/src/axi_cut.sv                                                 \
        src/axi/src/axi_join.sv                                                \
        src/axi/src/axi_delayer.sv                                             \
        src/fpga-support/rtl/SyncSpRamBeNx64.sv                                \
        src/common_cells/src/unread.sv                                         \
        src/common_cells/src/sync.sv                                           \
        src/common_cells/src/cdc_2phase.sv                                     \
        src/common_cells/src/spill_register.sv                                 \
        src/common_cells/src/sync_wedge.sv                                     \
        src/common_cells/src/edge_detect.sv                                    \
        src/common_cells/src/stream_arbiter.sv                                 \
        src/common_cells/src/stream_arbiter_flushable.sv                       \
        src/common_cells/src/deprecated/fifo_v1.sv                             \
        src/common_cells/src/deprecated/fifo_v2.sv                             \
        src/common_cells/src/fifo_v3.sv                                        \
        src/common_cells/src/lzc.sv                                            \
        src/common_cells/src/popcount.sv                                       \
        src/common_cells/src/rr_arb_tree.sv                                    \
        src/common_cells/src/deprecated/rrarbiter.sv                           \
        src/common_cells/src/stream_delay.sv                                   \
        src/common_cells/src/lfsr_8bit.sv                                      \
        src/common_cells/src/lfsr_16bit.sv                                     \
        src/common_cells/src/counter.sv                                        \
        src/common_cells/src/shift_reg.sv                                      \
        src/axi_node/src/axi_regs_top.sv                                       \
        src/axi_node/src/axi_BR_allocator.sv                                   \
        src/axi_node/src/axi_BW_allocator.sv                                   \
        src/axi_node/src/axi_address_decoder_BR.sv                             \
        src/axi_node/src/axi_DW_allocator.sv                                   \
        src/axi_node/src/axi_address_decoder_BW.sv                             \
        src/axi_node/src/axi_address_decoder_DW.sv                             \
        src/axi_node/src/axi_node_arbiter.sv                                   \
        src/axi_node/src/axi_response_block.sv                                 \
        src/axi_node/src/axi_request_block.sv                                  \
        src/axi_node/src/axi_AR_allocator.sv                                   \
        src/axi_node/src/axi_AW_allocator.sv                                   \
        src/axi_node/src/axi_address_decoder_AR.sv                             \
        src/axi_node/src/axi_address_decoder_AW.sv                             \
        src/axi_node/src/apb_regs_top.sv                                       \
        src/axi_node/src/axi_node_intf_wrap.sv                                 \
        src/axi_node/src/axi_node.sv                                           \
        src/axi_node/src/axi_multiplexer.sv                                    \
        src/tech_cells_generic/src/pulp_clock_gating.sv                        \
        src/tech_cells_generic/src/cluster_clock_inverter.sv                   \
        src/tech_cells_generic/src/pulp_clock_mux2.sv                          \
        tb/ariane_testharness.sv                                               \
        tb/ariane_peripherals.sv                                               \
        tb/common/uart.sv                                                      \
        src/bitmanip/verilog/rvb_bitcnt/rvb_bitcnt.v

src := $(addprefix $(root-dir), $(src))

uart_src := $(wildcard fpga/src/apb_uart/src/*.vhd)
uart_src := $(addprefix $(root-dir), $(uart_src))

fpga_src :=  $(wildcard fpga/src/*.sv) $(wildcard fpga/src/bootrom/*.sv) $(wildcard fpga/src/ariane-ethernet/*.sv)
fpga_src := $(addprefix $(root-dir), $(fpga_src))

# look for testbenches
tbs := tb/ariane_bitmanip_tb.sv tb/ariane_testharness.sv

# Search here for include files (e.g.: non-standalone components)
# deleted: /home/abdias/Ariane-Bitmanip/uvm-1.1b/src src/common_cells/include/ \
#          /home/abdias/Ariane-Bitmanip/uvm-1.1b/src/dpi 

incdir := src/common_cells/include/ src/util include
          
# Iterate over all include directories and write them with -incdir prefixed
# +incdir+ works for Verilator and QuestaSim
list_incdir := $(foreach dir, ${incdir}, -incdir $(dir))

# DPI
dpi_list := $(patsubst tb/dpi/%.cc, ${dpi-library}/%.o, $(wildcard tb/dpi/*.cc))
dpi = $(dpi_list)

# Build the TB and module using QuestaSim
build:  
	xrun $(ariane_pkg) $(tbs) $(src) $(uart_src) $(util) $(list_incdir) -V93 -disable_sem2009 -uvm -UVMNOAUTOCOMPILE -access rwc -input $(tcl-run) $(guicmd) 

