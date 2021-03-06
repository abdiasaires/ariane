// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//
// Author: Florian Zaruba, ETH Zurich
// Date: 15/04/2017
// Description: Top level testbench module. Instantiates the top level DUT, configures
//              the virtual interfaces and starts the test passed by +UVM_TEST+


import ariane_pkg::*;
import uvm_pkg::*;

`include "uvm_macros.svh"

//`define MAIN_MEM(P) dut.i_sram.genmem[0].i_ram.Mem_DP[(``P``)]
`define MAIN_MEM dut.i_sram.genmem[0].i_ram.Mem_DP

module ariane_bitmanip_tb;

    static uvm_cmdline_processor uvcl = uvm_cmdline_processor::get_inst();

    localparam int unsigned CLOCK_PERIOD = 20ns;
    // toggle with RTC period
    localparam int unsigned RTC_CLOCK_PERIOD = 30.517us;

    localparam NUM_WORDS = 2**25;
    logic clk_i;
    logic rst_ni;
    logic rtc_i;

    longint unsigned cycles;
    longint unsigned max_cycles;

    logic [31:0] exit_o;

    string binary = "";

    ariane_testharness #(
        .NUM_WORDS         ( NUM_WORDS ),
        .InclSimDTM        ( 1'b1      ),
        .StallRandomOutput ( 1'b1      ),
        .StallRandomInput  ( 1'b1      )
    ) dut (
        .clk_i,
        .rst_ni,
        .rtc_i,
        .exit_o
    );

`ifdef SPIKE_TANDEM
    spike #(
        .Size ( NUM_WORDS * 8 )
    ) i_spike (
        .clk_i,
        .rst_ni,
        .clint_tick_i   ( rtc_i                               ),
        .commit_instr_i ( dut.i_ariane.commit_instr_id_commit ),
        .commit_ack_i   ( dut.i_ariane.commit_ack             ),
        .exception_i    ( dut.i_ariane.ex_commit              ),
        .waddr_i        ( dut.i_ariane.waddr_commit_id        ),
        .wdata_i        ( dut.i_ariane.wdata_commit_id        ),
        .priv_lvl_i     ( dut.i_ariane.priv_lvl               )
    );
    initial begin
        $display("Running binary in tandem mode");
    end
`endif

    // Clock process
    initial begin
        clk_i = 1'b0;
        rst_ni = 1'b0;
        repeat(8)
            #(CLOCK_PERIOD/2) clk_i = ~clk_i;
        rst_ni = 1'b1;
        $display(" **************** Loading rom *******************");
        $readmemh("../test-bitmanip/as/preloader.mem", `MAIN_MEM, 0, 1024);
        $writememh("../test-bitmanip/as/preloader_w.mem", `MAIN_MEM, 0, 1024);

        forever begin
            #(CLOCK_PERIOD/2) clk_i = 1'b1;
            #(CLOCK_PERIOD/2) clk_i = 1'b0;

            //if (cycles > max_cycles)
            //    $fatal(1, "Simulation reached maximum cycle count of %d", max_cycles);

            cycles++;
        end
    end

    initial begin
        forever begin
            rtc_i = 1'b0;
            #(RTC_CLOCK_PERIOD/2) rtc_i = 1'b1;
            #(RTC_CLOCK_PERIOD/2) rtc_i = 1'b0;
        end
    end

    initial begin
        forever begin

            wait (exit_o[0]);

            if ((exit_o >> 1)) begin
                `uvm_error( "Core Test",  $sformatf("*** FAILED *** (tohost = %0d)", (exit_o >> 1)))
            end else begin
                `uvm_info( "Core Test",  $sformatf("*** SUCCESS *** (tohost = %0d)", (exit_o >> 1)), UVM_LOW)
            end

            $finish();
        end
    end

    // for faster simulation we can directly preload the ELF
/*    initial begin
        $display(" **************** Loading rom, 17:43. *******************");
        $readmemh("/home/abdias/Ariane-Bitmanip/ariane-bitmanip/test-bitmanip/test.mem", `MAIN_MEM, 0, 1024);
        $writememh("/home/abdias/Ariane-Bitmanip/ariane-bitmanip/test-bitmanip/test_write.mem", `MAIN_MEM, 0, 1024);
    end
*/
endmodule
