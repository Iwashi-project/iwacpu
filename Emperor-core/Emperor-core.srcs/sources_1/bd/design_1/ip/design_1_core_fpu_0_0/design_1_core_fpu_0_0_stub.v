// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed Dec  6 20:44:13 2017
// Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/yamaguchi/CPU-Emperor/Emperor-core/Emperor-core.srcs/sources_1/bd/design_1/ip/design_1_core_fpu_0_0/design_1_core_fpu_0_0_stub.v
// Design      : design_1_core_fpu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "core_fpu,Vivado 2016.4" *)
module design_1_core_fpu_0_0(RST_N, CLK, i_fadds, i_fsubs, i_fmuls, i_fdivs, 
  i_feqs, i_flts, i_fles, i_fcvtsw, i_fcvtws, i_fsqrts, rs1, frs1, frs2, fpu_result, fpu_stole, 
  addsub_a_tdata, addsub_a_tready, addsub_a_tvalid, addsub_b_tdata, addsub_b_tready, 
  addsub_b_tvalid, addsub_op_tdata, addsub_op_tready, addsub_op_tvalid, addsub_r_tdata, 
  addsub_r_tready, addsub_r_tvalid, mul_a_tdata, mul_a_tready, mul_a_tvalid, mul_b_tdata, 
  mul_b_tready, mul_b_tvalid, mul_r_tdata, mul_r_tready, mul_r_tvalid, div_a_tdata, 
  div_a_tready, div_a_tvalid, div_b_tdata, div_b_tready, div_b_tvalid, div_r_tdata, 
  div_r_tready, div_r_tvalid, comp_a_tdata, comp_a_tready, comp_a_tvalid, comp_b_tdata, 
  comp_b_tready, comp_b_tvalid, comp_op_tdata, comp_op_tready, comp_op_tvalid, comp_r_tdata, 
  comp_r_tready, comp_r_tvalid, fcvtsw_a_tdata, fcvtsw_a_tready, fcvtsw_a_tvalid, 
  fcvtsw_r_tdata, fcvtsw_r_tready, fcvtsw_r_tvalid, fcvtws_a_tdata, fcvtws_a_tready, 
  fcvtws_a_tvalid, fcvtws_r_tdata, fcvtws_r_tready, fcvtws_r_tvalid, fsqrts_a_tdata, 
  fsqrts_a_tready, fsqrts_a_tvalid, fsqrts_r_tdata, fsqrts_r_tready, fsqrts_r_tvalid)
/* synthesis syn_black_box black_box_pad_pin="RST_N,CLK,i_fadds,i_fsubs,i_fmuls,i_fdivs,i_feqs,i_flts,i_fles,i_fcvtsw,i_fcvtws,i_fsqrts,rs1[31:0],frs1[31:0],frs2[31:0],fpu_result[31:0],fpu_stole,addsub_a_tdata[31:0],addsub_a_tready,addsub_a_tvalid,addsub_b_tdata[31:0],addsub_b_tready,addsub_b_tvalid,addsub_op_tdata[7:0],addsub_op_tready,addsub_op_tvalid,addsub_r_tdata[31:0],addsub_r_tready,addsub_r_tvalid,mul_a_tdata[31:0],mul_a_tready,mul_a_tvalid,mul_b_tdata[31:0],mul_b_tready,mul_b_tvalid,mul_r_tdata[31:0],mul_r_tready,mul_r_tvalid,div_a_tdata[31:0],div_a_tready,div_a_tvalid,div_b_tdata[31:0],div_b_tready,div_b_tvalid,div_r_tdata[31:0],div_r_tready,div_r_tvalid,comp_a_tdata[31:0],comp_a_tready,comp_a_tvalid,comp_b_tdata[31:0],comp_b_tready,comp_b_tvalid,comp_op_tdata[7:0],comp_op_tready,comp_op_tvalid,comp_r_tdata[31:0],comp_r_tready,comp_r_tvalid,fcvtsw_a_tdata[31:0],fcvtsw_a_tready,fcvtsw_a_tvalid,fcvtsw_r_tdata[31:0],fcvtsw_r_tready,fcvtsw_r_tvalid,fcvtws_a_tdata[31:0],fcvtws_a_tready,fcvtws_a_tvalid,fcvtws_r_tdata[31:0],fcvtws_r_tready,fcvtws_r_tvalid,fsqrts_a_tdata[31:0],fsqrts_a_tready,fsqrts_a_tvalid,fsqrts_r_tdata[31:0],fsqrts_r_tready,fsqrts_r_tvalid" */;
  input RST_N;
  input CLK;
  input i_fadds;
  input i_fsubs;
  input i_fmuls;
  input i_fdivs;
  input i_feqs;
  input i_flts;
  input i_fles;
  input i_fcvtsw;
  input i_fcvtws;
  input i_fsqrts;
  input [31:0]rs1;
  input [31:0]frs1;
  input [31:0]frs2;
  output [31:0]fpu_result;
  output fpu_stole;
  output [31:0]addsub_a_tdata;
  input addsub_a_tready;
  output addsub_a_tvalid;
  output [31:0]addsub_b_tdata;
  input addsub_b_tready;
  output addsub_b_tvalid;
  output [7:0]addsub_op_tdata;
  input addsub_op_tready;
  output addsub_op_tvalid;
  input [31:0]addsub_r_tdata;
  output addsub_r_tready;
  input addsub_r_tvalid;
  output [31:0]mul_a_tdata;
  input mul_a_tready;
  output mul_a_tvalid;
  output [31:0]mul_b_tdata;
  input mul_b_tready;
  output mul_b_tvalid;
  input [31:0]mul_r_tdata;
  output mul_r_tready;
  input mul_r_tvalid;
  output [31:0]div_a_tdata;
  input div_a_tready;
  output div_a_tvalid;
  output [31:0]div_b_tdata;
  input div_b_tready;
  output div_b_tvalid;
  input [31:0]div_r_tdata;
  output div_r_tready;
  input div_r_tvalid;
  output [31:0]comp_a_tdata;
  input comp_a_tready;
  output comp_a_tvalid;
  output [31:0]comp_b_tdata;
  input comp_b_tready;
  output comp_b_tvalid;
  output [7:0]comp_op_tdata;
  input comp_op_tready;
  output comp_op_tvalid;
  input [31:0]comp_r_tdata;
  output comp_r_tready;
  input comp_r_tvalid;
  output [31:0]fcvtsw_a_tdata;
  input fcvtsw_a_tready;
  output fcvtsw_a_tvalid;
  input [31:0]fcvtsw_r_tdata;
  output fcvtsw_r_tready;
  input fcvtsw_r_tvalid;
  output [31:0]fcvtws_a_tdata;
  input fcvtws_a_tready;
  output fcvtws_a_tvalid;
  input [31:0]fcvtws_r_tdata;
  output fcvtws_r_tready;
  input fcvtws_r_tvalid;
  output [31:0]fsqrts_a_tdata;
  input fsqrts_a_tready;
  output fsqrts_a_tvalid;
  input [31:0]fsqrts_r_tdata;
  output fsqrts_r_tready;
  input fsqrts_r_tvalid;
endmodule
