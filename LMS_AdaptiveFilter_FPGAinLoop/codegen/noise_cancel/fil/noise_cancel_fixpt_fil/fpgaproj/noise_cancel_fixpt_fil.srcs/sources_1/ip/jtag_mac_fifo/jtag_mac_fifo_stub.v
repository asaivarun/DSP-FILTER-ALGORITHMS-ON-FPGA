// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Sat Apr 29 19:12:35 2017
// Host        : Sujay running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/admin/Desktop/bhavesh/codegen/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_stub.v
// Design      : jtag_mac_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_1_1,Vivado 2016.2" *)
module jtag_mac_fifo(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, almost_full, empty, rd_data_count)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[7:0],wr_en,rd_en,dout[7:0],full,almost_full,empty,rd_data_count[11:0]" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output almost_full;
  output empty;
  output [11:0]rd_data_count;
endmodule