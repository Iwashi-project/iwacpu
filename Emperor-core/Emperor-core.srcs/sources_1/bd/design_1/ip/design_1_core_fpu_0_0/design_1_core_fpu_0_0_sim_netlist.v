// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed Dec  6 20:44:13 2017
// Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/yamaguchi/CPU-Emperor/Emperor-core/Emperor-core.srcs/sources_1/bd/design_1/ip/design_1_core_fpu_0_0/design_1_core_fpu_0_0_sim_netlist.v
// Design      : design_1_core_fpu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_core_fpu_0_0,core_fpu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "core_fpu,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module design_1_core_fpu_0_0
   (RST_N,
    CLK,
    i_fadds,
    i_fsubs,
    i_fmuls,
    i_fdivs,
    i_feqs,
    i_flts,
    i_fles,
    i_fcvtsw,
    i_fcvtws,
    i_fsqrts,
    rs1,
    frs1,
    frs2,
    fpu_result,
    fpu_stole,
    addsub_a_tdata,
    addsub_a_tready,
    addsub_a_tvalid,
    addsub_b_tdata,
    addsub_b_tready,
    addsub_b_tvalid,
    addsub_op_tdata,
    addsub_op_tready,
    addsub_op_tvalid,
    addsub_r_tdata,
    addsub_r_tready,
    addsub_r_tvalid,
    mul_a_tdata,
    mul_a_tready,
    mul_a_tvalid,
    mul_b_tdata,
    mul_b_tready,
    mul_b_tvalid,
    mul_r_tdata,
    mul_r_tready,
    mul_r_tvalid,
    div_a_tdata,
    div_a_tready,
    div_a_tvalid,
    div_b_tdata,
    div_b_tready,
    div_b_tvalid,
    div_r_tdata,
    div_r_tready,
    div_r_tvalid,
    comp_a_tdata,
    comp_a_tready,
    comp_a_tvalid,
    comp_b_tdata,
    comp_b_tready,
    comp_b_tvalid,
    comp_op_tdata,
    comp_op_tready,
    comp_op_tvalid,
    comp_r_tdata,
    comp_r_tready,
    comp_r_tvalid,
    fcvtsw_a_tdata,
    fcvtsw_a_tready,
    fcvtsw_a_tvalid,
    fcvtsw_r_tdata,
    fcvtsw_r_tready,
    fcvtsw_r_tvalid,
    fcvtws_a_tdata,
    fcvtws_a_tready,
    fcvtws_a_tvalid,
    fcvtws_r_tdata,
    fcvtws_r_tready,
    fcvtws_r_tvalid,
    fsqrts_a_tdata,
    fsqrts_a_tready,
    fsqrts_a_tvalid,
    fsqrts_r_tdata,
    fsqrts_r_tready,
    fsqrts_r_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST_N RST" *) input RST_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) input CLK;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_a TDATA" *) output [31:0]addsub_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_a TREADY" *) input addsub_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_a TVALID" *) output addsub_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_b TDATA" *) output [31:0]addsub_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_b TREADY" *) input addsub_b_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_b TVALID" *) output addsub_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_op TDATA" *) output [7:0]addsub_op_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_op TREADY" *) input addsub_op_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_op TVALID" *) output addsub_op_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_r TDATA" *) input [31:0]addsub_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_r TREADY" *) output addsub_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_r TVALID" *) input addsub_r_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_a TDATA" *) output [31:0]mul_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_a TREADY" *) input mul_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_a TVALID" *) output mul_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_b TDATA" *) output [31:0]mul_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_b TREADY" *) input mul_b_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_b TVALID" *) output mul_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_r TDATA" *) input [31:0]mul_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_r TREADY" *) output mul_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_r TVALID" *) input mul_r_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_a TDATA" *) output [31:0]div_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_a TREADY" *) input div_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_a TVALID" *) output div_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_b TDATA" *) output [31:0]div_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_b TREADY" *) input div_b_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_b TVALID" *) output div_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_r TDATA" *) input [31:0]div_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_r TREADY" *) output div_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_r TVALID" *) input div_r_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_a TDATA" *) output [31:0]comp_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_a TREADY" *) input comp_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_a TVALID" *) output comp_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_b TDATA" *) output [31:0]comp_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_b TREADY" *) input comp_b_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_b TVALID" *) output comp_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_op TDATA" *) output [7:0]comp_op_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_op TREADY" *) input comp_op_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_op TVALID" *) output comp_op_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_r TDATA" *) input [31:0]comp_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_r TREADY" *) output comp_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_r TVALID" *) input comp_r_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_a TDATA" *) output [31:0]fcvtsw_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_a TREADY" *) input fcvtsw_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_a TVALID" *) output fcvtsw_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_r TDATA" *) input [31:0]fcvtsw_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_r TREADY" *) output fcvtsw_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_r TVALID" *) input fcvtsw_r_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_a TDATA" *) output [31:0]fcvtws_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_a TREADY" *) input fcvtws_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_a TVALID" *) output fcvtws_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_r TDATA" *) input [31:0]fcvtws_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_r TREADY" *) output fcvtws_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_r TVALID" *) input fcvtws_r_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_a TDATA" *) output [31:0]fsqrts_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_a TREADY" *) input fsqrts_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_a TVALID" *) output fsqrts_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_r TDATA" *) input [31:0]fsqrts_r_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_r TREADY" *) output fsqrts_r_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_r TVALID" *) input fsqrts_r_tvalid;

  wire \<const0> ;
  wire CLK;
  wire RST_N;
  wire [31:0]addsub_a_tdata;
  wire addsub_a_tvalid;
  wire [31:0]addsub_b_tdata;
  wire [0:0]\^addsub_op_tdata ;
  wire [31:0]addsub_r_tdata;
  wire addsub_r_tvalid;
  wire [31:0]comp_a_tdata;
  wire comp_a_tvalid;
  wire [31:0]comp_b_tdata;
  wire [4:3]\^comp_op_tdata ;
  wire [31:0]comp_r_tdata;
  wire comp_r_tvalid;
  wire [31:0]div_a_tdata;
  wire div_a_tvalid;
  wire [31:0]div_b_tdata;
  wire [31:0]div_r_tdata;
  wire div_r_tvalid;
  wire [31:0]fcvtsw_a_tdata;
  wire fcvtsw_a_tvalid;
  wire [31:0]fcvtsw_r_tdata;
  wire fcvtsw_r_tvalid;
  wire [31:0]fcvtws_a_tdata;
  wire fcvtws_a_tvalid;
  wire [31:0]fcvtws_r_tdata;
  wire fcvtws_r_tvalid;
  wire [31:0]fpu_result;
  wire fpu_stole;
  wire [31:0]frs1;
  wire [31:0]frs2;
  wire [31:0]fsqrts_a_tdata;
  wire fsqrts_a_tvalid;
  wire [31:0]fsqrts_r_tdata;
  wire fsqrts_r_tvalid;
  wire i_fadds;
  wire i_fcvtsw;
  wire i_fcvtws;
  wire i_fdivs;
  wire i_feqs;
  wire i_fles;
  wire i_flts;
  wire i_fmuls;
  wire i_fsqrts;
  wire i_fsubs;
  wire [31:0]mul_a_tdata;
  wire mul_a_tvalid;
  wire [31:0]mul_b_tdata;
  wire [31:0]mul_r_tdata;
  wire mul_r_tvalid;
  wire [31:0]rs1;

  assign addsub_b_tvalid = addsub_a_tvalid;
  assign addsub_op_tdata[7] = \<const0> ;
  assign addsub_op_tdata[6] = \<const0> ;
  assign addsub_op_tdata[5] = \<const0> ;
  assign addsub_op_tdata[4] = \<const0> ;
  assign addsub_op_tdata[3] = \<const0> ;
  assign addsub_op_tdata[2] = \<const0> ;
  assign addsub_op_tdata[1] = \<const0> ;
  assign addsub_op_tdata[0] = \^addsub_op_tdata [0];
  assign addsub_op_tvalid = addsub_a_tvalid;
  assign addsub_r_tready = addsub_a_tvalid;
  assign comp_b_tvalid = comp_a_tvalid;
  assign comp_op_tdata[7] = \<const0> ;
  assign comp_op_tdata[6] = \<const0> ;
  assign comp_op_tdata[5] = \<const0> ;
  assign comp_op_tdata[4:3] = \^comp_op_tdata [4:3];
  assign comp_op_tdata[2] = comp_a_tvalid;
  assign comp_op_tdata[1] = \<const0> ;
  assign comp_op_tdata[0] = \<const0> ;
  assign comp_op_tvalid = comp_a_tvalid;
  assign comp_r_tready = comp_a_tvalid;
  assign div_b_tvalid = div_a_tvalid;
  assign div_r_tready = div_a_tvalid;
  assign fcvtsw_r_tready = fcvtsw_a_tvalid;
  assign fcvtws_r_tready = fcvtws_a_tvalid;
  assign fsqrts_r_tready = fsqrts_a_tvalid;
  assign mul_b_tvalid = mul_a_tvalid;
  assign mul_r_tready = mul_a_tvalid;
  GND GND
       (.G(\<const0> ));
  design_1_core_fpu_0_0_core_fpu inst
       (.CLK(CLK),
        .RST_N(RST_N),
        .addsub_a_tdata(addsub_a_tdata),
        .addsub_b_tdata(addsub_b_tdata),
        .addsub_op_tdata(\^addsub_op_tdata ),
        .addsub_r_tdata(addsub_r_tdata),
        .addsub_r_tready(addsub_a_tvalid),
        .addsub_r_tvalid(addsub_r_tvalid),
        .comp_a_tdata(comp_a_tdata),
        .comp_b_tdata(comp_b_tdata),
        .comp_op_tdata(\^comp_op_tdata ),
        .comp_r_tdata(comp_r_tdata),
        .comp_r_tready(comp_a_tvalid),
        .comp_r_tvalid(comp_r_tvalid),
        .div_a_tdata(div_a_tdata),
        .div_a_tvalid(div_a_tvalid),
        .div_b_tdata(div_b_tdata),
        .div_r_tdata(div_r_tdata),
        .div_r_tvalid(div_r_tvalid),
        .fcvtsw_a_tdata(fcvtsw_a_tdata),
        .fcvtsw_a_tvalid(fcvtsw_a_tvalid),
        .fcvtsw_r_tdata(fcvtsw_r_tdata),
        .fcvtsw_r_tvalid(fcvtsw_r_tvalid),
        .fcvtws_a_tdata(fcvtws_a_tdata),
        .fcvtws_a_tvalid(fcvtws_a_tvalid),
        .fcvtws_r_tdata(fcvtws_r_tdata),
        .fcvtws_r_tvalid(fcvtws_r_tvalid),
        .fpu_result(fpu_result),
        .fpu_stole(fpu_stole),
        .frs1(frs1),
        .frs2(frs2),
        .fsqrts_a_tdata(fsqrts_a_tdata),
        .fsqrts_a_tvalid(fsqrts_a_tvalid),
        .fsqrts_r_tdata(fsqrts_r_tdata),
        .fsqrts_r_tvalid(fsqrts_r_tvalid),
        .i_fadds(i_fadds),
        .i_fcvtsw(i_fcvtsw),
        .i_fcvtws(i_fcvtws),
        .i_fdivs(i_fdivs),
        .i_feqs(i_feqs),
        .i_fles(i_fles),
        .i_flts(i_flts),
        .i_fmuls(i_fmuls),
        .i_fsqrts(i_fsqrts),
        .i_fsubs(i_fsubs),
        .mul_a_tdata(mul_a_tdata),
        .mul_a_tvalid(mul_a_tvalid),
        .mul_b_tdata(mul_b_tdata),
        .mul_r_tdata(mul_r_tdata),
        .mul_r_tvalid(mul_r_tvalid),
        .rs1(rs1));
endmodule

(* ORIG_REF_NAME = "core_fpu" *) 
module design_1_core_fpu_0_0_core_fpu
   (fpu_stole,
    mul_a_tvalid,
    div_a_tvalid,
    fcvtsw_a_tvalid,
    fcvtws_a_tvalid,
    fsqrts_a_tvalid,
    fpu_result,
    addsub_r_tready,
    addsub_a_tdata,
    addsub_b_tdata,
    mul_a_tdata,
    mul_b_tdata,
    div_a_tdata,
    div_b_tdata,
    comp_r_tready,
    comp_a_tdata,
    comp_b_tdata,
    comp_op_tdata,
    fcvtsw_a_tdata,
    fcvtws_a_tdata,
    fsqrts_a_tdata,
    addsub_op_tdata,
    i_fmuls,
    i_fdivs,
    i_fcvtsw,
    i_fcvtws,
    i_fsqrts,
    fsqrts_r_tvalid,
    addsub_r_tvalid,
    fcvtsw_r_tvalid,
    fcvtws_r_tvalid,
    div_r_tvalid,
    comp_r_tvalid,
    mul_r_tvalid,
    CLK,
    frs1,
    i_fsubs,
    i_fadds,
    frs2,
    i_fles,
    i_flts,
    i_feqs,
    rs1,
    addsub_r_tdata,
    fcvtws_r_tdata,
    fsqrts_r_tdata,
    RST_N,
    fcvtsw_r_tdata,
    mul_r_tdata,
    div_r_tdata,
    comp_r_tdata);
  output fpu_stole;
  output mul_a_tvalid;
  output div_a_tvalid;
  output fcvtsw_a_tvalid;
  output fcvtws_a_tvalid;
  output fsqrts_a_tvalid;
  output [31:0]fpu_result;
  output addsub_r_tready;
  output [31:0]addsub_a_tdata;
  output [31:0]addsub_b_tdata;
  output [31:0]mul_a_tdata;
  output [31:0]mul_b_tdata;
  output [31:0]div_a_tdata;
  output [31:0]div_b_tdata;
  output comp_r_tready;
  output [31:0]comp_a_tdata;
  output [31:0]comp_b_tdata;
  output [1:0]comp_op_tdata;
  output [31:0]fcvtsw_a_tdata;
  output [31:0]fcvtws_a_tdata;
  output [31:0]fsqrts_a_tdata;
  output [0:0]addsub_op_tdata;
  input i_fmuls;
  input i_fdivs;
  input i_fcvtsw;
  input i_fcvtws;
  input i_fsqrts;
  input fsqrts_r_tvalid;
  input addsub_r_tvalid;
  input fcvtsw_r_tvalid;
  input fcvtws_r_tvalid;
  input div_r_tvalid;
  input comp_r_tvalid;
  input mul_r_tvalid;
  input CLK;
  input [31:0]frs1;
  input i_fsubs;
  input i_fadds;
  input [31:0]frs2;
  input i_fles;
  input i_flts;
  input i_feqs;
  input [31:0]rs1;
  input [31:0]addsub_r_tdata;
  input [31:0]fcvtws_r_tdata;
  input [31:0]fsqrts_r_tdata;
  input RST_N;
  input [31:0]fcvtsw_r_tdata;
  input [31:0]mul_r_tdata;
  input [31:0]div_r_tdata;
  input [31:0]comp_r_tdata;

  wire CLK;
  wire RST_N;
  wire [31:0]addsub_a_tdata;
  wire \addsub_a_tdata[31]_i_1_n_0 ;
  wire [31:0]addsub_b_tdata;
  wire addsub_b_tdata1;
  (* MARK_DEBUG *) wire addsub_f;
  wire [0:0]addsub_op_tdata;
  wire [31:0]addsub_r_tdata;
  wire addsub_r_tready;
  wire addsub_r_tvalid;
  wire [31:0]comp_a_tdata;
  wire comp_a_tdata1;
  wire [31:0]comp_b_tdata;
  wire \comp_b_tdata[31]_i_1_n_0 ;
  (* MARK_DEBUG *) wire comp_f;
  wire [1:0]comp_op_tdata;
  wire \comp_op_tdata[3]_i_1_n_0 ;
  wire \comp_op_tdata[4]_i_1_n_0 ;
  wire [31:0]comp_r_tdata;
  wire comp_r_tready;
  wire comp_r_tvalid;
  wire [31:0]div_a_tdata;
  wire \div_a_tdata[31]_i_1_n_0 ;
  wire div_a_tvalid;
  wire div_a_tvalid_i_1_n_0;
  wire [31:0]div_b_tdata;
  wire \div_b_tdata[31]_i_1_n_0 ;
  (* MARK_DEBUG *) wire div_f;
  wire [31:0]div_r_tdata;
  wire div_r_tvalid;
  wire [31:0]fcvtsw_a_tdata;
  wire \fcvtsw_a_tdata[31]_i_1_n_0 ;
  wire fcvtsw_a_tvalid;
  wire fcvtsw_a_tvalid_i_1_n_0;
  (* MARK_DEBUG *) wire fcvtsw_f;
  wire [31:0]fcvtsw_r_tdata;
  wire fcvtsw_r_tvalid;
  wire [31:0]fcvtws_a_tdata;
  wire \fcvtws_a_tdata[31]_i_1_n_0 ;
  wire fcvtws_a_tvalid;
  wire fcvtws_a_tvalid_i_1_n_0;
  (* MARK_DEBUG *) wire fcvtws_f;
  wire [31:0]fcvtws_r_tdata;
  wire fcvtws_r_tvalid;
  wire [31:0]fpu_result;
  wire \fpu_result[0]_i_1_n_0 ;
  wire \fpu_result[0]_i_2_n_0 ;
  wire \fpu_result[0]_i_3_n_0 ;
  wire \fpu_result[0]_i_4_n_0 ;
  wire \fpu_result[10]_i_1_n_0 ;
  wire \fpu_result[10]_i_2_n_0 ;
  wire \fpu_result[10]_i_3_n_0 ;
  wire \fpu_result[10]_i_4_n_0 ;
  wire \fpu_result[11]_i_1_n_0 ;
  wire \fpu_result[11]_i_2_n_0 ;
  wire \fpu_result[11]_i_3_n_0 ;
  wire \fpu_result[11]_i_4_n_0 ;
  wire \fpu_result[12]_i_1_n_0 ;
  wire \fpu_result[12]_i_2_n_0 ;
  wire \fpu_result[12]_i_3_n_0 ;
  wire \fpu_result[12]_i_4_n_0 ;
  wire \fpu_result[13]_i_1_n_0 ;
  wire \fpu_result[13]_i_2_n_0 ;
  wire \fpu_result[13]_i_3_n_0 ;
  wire \fpu_result[13]_i_4_n_0 ;
  wire \fpu_result[14]_i_1_n_0 ;
  wire \fpu_result[14]_i_2_n_0 ;
  wire \fpu_result[14]_i_3_n_0 ;
  wire \fpu_result[14]_i_4_n_0 ;
  wire \fpu_result[15]_i_1_n_0 ;
  wire \fpu_result[15]_i_2_n_0 ;
  wire \fpu_result[15]_i_3_n_0 ;
  wire \fpu_result[15]_i_4_n_0 ;
  wire \fpu_result[16]_i_1_n_0 ;
  wire \fpu_result[16]_i_2_n_0 ;
  wire \fpu_result[16]_i_3_n_0 ;
  wire \fpu_result[16]_i_4_n_0 ;
  wire \fpu_result[17]_i_1_n_0 ;
  wire \fpu_result[17]_i_2_n_0 ;
  wire \fpu_result[17]_i_3_n_0 ;
  wire \fpu_result[18]_i_1_n_0 ;
  wire \fpu_result[18]_i_2_n_0 ;
  wire \fpu_result[18]_i_3_n_0 ;
  wire \fpu_result[18]_i_4_n_0 ;
  wire \fpu_result[19]_i_1_n_0 ;
  wire \fpu_result[19]_i_2_n_0 ;
  wire \fpu_result[19]_i_3_n_0 ;
  wire \fpu_result[19]_i_4_n_0 ;
  wire \fpu_result[1]_i_1_n_0 ;
  wire \fpu_result[1]_i_2_n_0 ;
  wire \fpu_result[1]_i_3_n_0 ;
  wire \fpu_result[1]_i_4_n_0 ;
  wire \fpu_result[20]_i_1_n_0 ;
  wire \fpu_result[20]_i_2_n_0 ;
  wire \fpu_result[20]_i_3_n_0 ;
  wire \fpu_result[20]_i_4_n_0 ;
  wire \fpu_result[21]_i_1_n_0 ;
  wire \fpu_result[21]_i_2_n_0 ;
  wire \fpu_result[21]_i_3_n_0 ;
  wire \fpu_result[21]_i_4_n_0 ;
  wire \fpu_result[22]_i_1_n_0 ;
  wire \fpu_result[22]_i_2_n_0 ;
  wire \fpu_result[22]_i_3_n_0 ;
  wire \fpu_result[22]_i_4_n_0 ;
  wire \fpu_result[23]_i_1_n_0 ;
  wire \fpu_result[23]_i_2_n_0 ;
  wire \fpu_result[23]_i_3_n_0 ;
  wire \fpu_result[23]_i_4_n_0 ;
  wire \fpu_result[24]_i_1_n_0 ;
  wire \fpu_result[24]_i_2_n_0 ;
  wire \fpu_result[24]_i_3_n_0 ;
  wire \fpu_result[24]_i_4_n_0 ;
  wire \fpu_result[25]_i_1_n_0 ;
  wire \fpu_result[25]_i_2_n_0 ;
  wire \fpu_result[25]_i_3_n_0 ;
  wire \fpu_result[25]_i_4_n_0 ;
  wire \fpu_result[26]_i_1_n_0 ;
  wire \fpu_result[26]_i_2_n_0 ;
  wire \fpu_result[26]_i_3_n_0 ;
  wire \fpu_result[26]_i_4_n_0 ;
  wire \fpu_result[27]_i_1_n_0 ;
  wire \fpu_result[27]_i_2_n_0 ;
  wire \fpu_result[27]_i_3_n_0 ;
  wire \fpu_result[27]_i_4_n_0 ;
  wire \fpu_result[28]_i_1_n_0 ;
  wire \fpu_result[28]_i_2_n_0 ;
  wire \fpu_result[28]_i_3_n_0 ;
  wire \fpu_result[28]_i_4_n_0 ;
  wire \fpu_result[28]_i_5_n_0 ;
  wire \fpu_result[29]_i_1_n_0 ;
  wire \fpu_result[29]_i_2_n_0 ;
  wire \fpu_result[29]_i_3_n_0 ;
  wire \fpu_result[2]_i_1_n_0 ;
  wire \fpu_result[2]_i_2_n_0 ;
  wire \fpu_result[2]_i_3_n_0 ;
  wire \fpu_result[2]_i_4_n_0 ;
  wire \fpu_result[30]_i_1_n_0 ;
  wire \fpu_result[30]_i_2_n_0 ;
  wire \fpu_result[30]_i_3_n_0 ;
  wire \fpu_result[31]_i_1_n_0 ;
  wire \fpu_result[31]_i_2_n_0 ;
  wire \fpu_result[31]_i_3_n_0 ;
  wire \fpu_result[31]_i_4_n_0 ;
  wire \fpu_result[3]_i_1_n_0 ;
  wire \fpu_result[3]_i_2_n_0 ;
  wire \fpu_result[3]_i_3_n_0 ;
  wire \fpu_result[3]_i_4_n_0 ;
  wire \fpu_result[4]_i_1_n_0 ;
  wire \fpu_result[4]_i_2_n_0 ;
  wire \fpu_result[4]_i_3_n_0 ;
  wire \fpu_result[4]_i_4_n_0 ;
  wire \fpu_result[5]_i_1_n_0 ;
  wire \fpu_result[5]_i_2_n_0 ;
  wire \fpu_result[5]_i_3_n_0 ;
  wire \fpu_result[5]_i_4_n_0 ;
  wire \fpu_result[6]_i_1_n_0 ;
  wire \fpu_result[6]_i_2_n_0 ;
  wire \fpu_result[6]_i_3_n_0 ;
  wire \fpu_result[7]_i_1_n_0 ;
  wire \fpu_result[7]_i_2_n_0 ;
  wire \fpu_result[7]_i_3_n_0 ;
  wire \fpu_result[8]_i_1_n_0 ;
  wire \fpu_result[8]_i_2_n_0 ;
  wire \fpu_result[8]_i_3_n_0 ;
  wire \fpu_result[8]_i_4_n_0 ;
  wire \fpu_result[9]_i_1_n_0 ;
  wire \fpu_result[9]_i_2_n_0 ;
  wire \fpu_result[9]_i_3_n_0 ;
  wire \fpu_result[9]_i_4_n_0 ;
  wire fpu_stole;
  wire fpu_stole_i_1_n_0;
  wire fpu_stole_i_2_n_0;
  wire fpu_stole_i_3_n_0;
  wire [31:0]frs1;
  wire [31:0]frs2;
  wire [31:0]fsqrts_a_tdata;
  wire \fsqrts_a_tdata[31]_i_1_n_0 ;
  wire fsqrts_a_tvalid;
  wire fsqrts_a_tvalid_i_1_n_0;
  (* MARK_DEBUG *) wire fsqrts_f;
  wire [31:0]fsqrts_r_tdata;
  wire fsqrts_r_tvalid;
  wire i_fadds;
  wire i_fcvtsw;
  wire i_fcvtws;
  wire i_fdivs;
  wire i_feqs;
  wire i_fles;
  wire i_flts;
  wire i_fmuls;
  wire i_fsqrts;
  wire i_fsubs;
  wire [31:0]mul_a_tdata;
  wire \mul_a_tdata[0]_i_1_n_0 ;
  wire \mul_a_tdata[10]_i_1_n_0 ;
  wire \mul_a_tdata[11]_i_1_n_0 ;
  wire \mul_a_tdata[12]_i_1_n_0 ;
  wire \mul_a_tdata[13]_i_1_n_0 ;
  wire \mul_a_tdata[14]_i_1_n_0 ;
  wire \mul_a_tdata[15]_i_1_n_0 ;
  wire \mul_a_tdata[16]_i_1_n_0 ;
  wire \mul_a_tdata[17]_i_1_n_0 ;
  wire \mul_a_tdata[18]_i_1_n_0 ;
  wire \mul_a_tdata[19]_i_1_n_0 ;
  wire \mul_a_tdata[1]_i_1_n_0 ;
  wire \mul_a_tdata[20]_i_1_n_0 ;
  wire \mul_a_tdata[21]_i_1_n_0 ;
  wire \mul_a_tdata[22]_i_1_n_0 ;
  wire \mul_a_tdata[23]_i_1_n_0 ;
  wire \mul_a_tdata[24]_i_1_n_0 ;
  wire \mul_a_tdata[25]_i_1_n_0 ;
  wire \mul_a_tdata[26]_i_1_n_0 ;
  wire \mul_a_tdata[27]_i_1_n_0 ;
  wire \mul_a_tdata[28]_i_1_n_0 ;
  wire \mul_a_tdata[29]_i_1_n_0 ;
  wire \mul_a_tdata[2]_i_1_n_0 ;
  wire \mul_a_tdata[30]_i_1_n_0 ;
  wire \mul_a_tdata[31]_i_1_n_0 ;
  wire \mul_a_tdata[31]_i_2_n_0 ;
  wire \mul_a_tdata[3]_i_1_n_0 ;
  wire \mul_a_tdata[4]_i_1_n_0 ;
  wire \mul_a_tdata[5]_i_1_n_0 ;
  wire \mul_a_tdata[6]_i_1_n_0 ;
  wire \mul_a_tdata[7]_i_1_n_0 ;
  wire \mul_a_tdata[8]_i_1_n_0 ;
  wire \mul_a_tdata[9]_i_1_n_0 ;
  wire mul_a_tvalid;
  wire mul_a_tvalid_i_1_n_0;
  wire [31:0]mul_b_tdata;
  wire \mul_b_tdata[31]_i_1_n_0 ;
  (* MARK_DEBUG *) wire mul_f;
  wire [31:0]mul_r_tdata;
  wire mul_r_tvalid;
  wire [0:0]p_1_out;
  wire [31:0]rs1;
  (* MARK_DEBUG *) wire tvalid_once;
  wire tvalid_once_i_1_n_0;
  wire tvalid_once_i_2_n_0;
  wire tvalid_once_i_3_n_0;
  wire tvalid_once_i_4_n_0;

  LUT4 #(
    .INIT(16'hEEEF)) 
    \addsub_a_tdata[31]_i_1 
       (.I0(fpu_stole),
        .I1(addsub_r_tready),
        .I2(i_fsubs),
        .I3(i_fadds),
        .O(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[0]),
        .Q(addsub_a_tdata[0]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[10]),
        .Q(addsub_a_tdata[10]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[11]),
        .Q(addsub_a_tdata[11]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[12]),
        .Q(addsub_a_tdata[12]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[13]),
        .Q(addsub_a_tdata[13]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[14]),
        .Q(addsub_a_tdata[14]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[15]),
        .Q(addsub_a_tdata[15]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[16]),
        .Q(addsub_a_tdata[16]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[17]),
        .Q(addsub_a_tdata[17]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[18]),
        .Q(addsub_a_tdata[18]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[19]),
        .Q(addsub_a_tdata[19]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[1]),
        .Q(addsub_a_tdata[1]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[20]),
        .Q(addsub_a_tdata[20]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[21]),
        .Q(addsub_a_tdata[21]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[22]),
        .Q(addsub_a_tdata[22]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[23]),
        .Q(addsub_a_tdata[23]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[24]),
        .Q(addsub_a_tdata[24]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[25]),
        .Q(addsub_a_tdata[25]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[26]),
        .Q(addsub_a_tdata[26]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[27]),
        .Q(addsub_a_tdata[27]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[28]),
        .Q(addsub_a_tdata[28]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[29]),
        .Q(addsub_a_tdata[29]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[2]),
        .Q(addsub_a_tdata[2]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[30]),
        .Q(addsub_a_tdata[30]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[31]),
        .Q(addsub_a_tdata[31]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[3]),
        .Q(addsub_a_tdata[3]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[4]),
        .Q(addsub_a_tdata[4]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[5]),
        .Q(addsub_a_tdata[5]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[6]),
        .Q(addsub_a_tdata[6]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[7]),
        .Q(addsub_a_tdata[7]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[8]),
        .Q(addsub_a_tdata[8]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_a_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs1[9]),
        .Q(addsub_a_tdata[9]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    addsub_a_tvalid_i_1
       (.I0(i_fadds),
        .I1(i_fsubs),
        .I2(addsub_r_tready),
        .I3(fpu_stole),
        .O(addsub_b_tdata1));
  FDRE addsub_a_tvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(addsub_b_tdata1),
        .Q(addsub_r_tready),
        .R(1'b0));
  FDRE \addsub_b_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[0]),
        .Q(addsub_b_tdata[0]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[10]),
        .Q(addsub_b_tdata[10]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[11]),
        .Q(addsub_b_tdata[11]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[12]),
        .Q(addsub_b_tdata[12]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[13]),
        .Q(addsub_b_tdata[13]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[14]),
        .Q(addsub_b_tdata[14]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[15]),
        .Q(addsub_b_tdata[15]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[16]),
        .Q(addsub_b_tdata[16]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[17]),
        .Q(addsub_b_tdata[17]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[18]),
        .Q(addsub_b_tdata[18]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[19]),
        .Q(addsub_b_tdata[19]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[1]),
        .Q(addsub_b_tdata[1]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[20]),
        .Q(addsub_b_tdata[20]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[21]),
        .Q(addsub_b_tdata[21]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[22]),
        .Q(addsub_b_tdata[22]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[23]),
        .Q(addsub_b_tdata[23]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[24]),
        .Q(addsub_b_tdata[24]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[25]),
        .Q(addsub_b_tdata[25]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[26]),
        .Q(addsub_b_tdata[26]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[27]),
        .Q(addsub_b_tdata[27]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[28]),
        .Q(addsub_b_tdata[28]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[29]),
        .Q(addsub_b_tdata[29]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[2]),
        .Q(addsub_b_tdata[2]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[30]),
        .Q(addsub_b_tdata[30]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[31]),
        .Q(addsub_b_tdata[31]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[3]),
        .Q(addsub_b_tdata[3]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[4]),
        .Q(addsub_b_tdata[4]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[5]),
        .Q(addsub_b_tdata[5]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[6]),
        .Q(addsub_b_tdata[6]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[7]),
        .Q(addsub_b_tdata[7]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[8]),
        .Q(addsub_b_tdata[8]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  FDRE \addsub_b_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[9]),
        .Q(addsub_b_tdata[9]),
        .R(\addsub_a_tdata[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE addsub_f_reg
       (.C(CLK),
        .CE(1'b1),
        .D(addsub_r_tvalid),
        .Q(addsub_f),
        .R(fpu_stole_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addsub_op_tdata[0]_i_1 
       (.I0(i_fsubs),
        .I1(addsub_r_tready),
        .I2(fpu_stole),
        .O(p_1_out));
  FDRE \addsub_op_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_out),
        .Q(addsub_op_tdata),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000FE)) 
    \comp_a_tdata[31]_i_1 
       (.I0(i_feqs),
        .I1(i_flts),
        .I2(i_fles),
        .I3(comp_r_tready),
        .I4(fpu_stole),
        .O(comp_a_tdata1));
  FDRE \comp_a_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[0]),
        .R(\mul_a_tdata[0]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[10]),
        .R(\mul_a_tdata[10]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[11]),
        .R(\mul_a_tdata[11]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[12]),
        .R(\mul_a_tdata[12]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[13]),
        .R(\mul_a_tdata[13]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[14]),
        .R(\mul_a_tdata[14]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[15]),
        .R(\mul_a_tdata[15]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[16]),
        .R(\mul_a_tdata[16]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[17]),
        .R(\mul_a_tdata[17]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[18]),
        .R(\mul_a_tdata[18]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[19]),
        .R(\mul_a_tdata[19]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[1]),
        .R(\mul_a_tdata[1]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[20]),
        .R(\mul_a_tdata[20]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[21]),
        .R(\mul_a_tdata[21]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[22]),
        .R(\mul_a_tdata[22]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[23]),
        .R(\mul_a_tdata[23]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[24]),
        .R(\mul_a_tdata[24]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[25]),
        .R(\mul_a_tdata[25]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[26]),
        .R(\mul_a_tdata[26]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[27]),
        .R(\mul_a_tdata[27]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[28]),
        .R(\mul_a_tdata[28]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[29]),
        .R(\mul_a_tdata[29]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[2]),
        .R(\mul_a_tdata[2]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[30]),
        .R(\mul_a_tdata[30]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[31]),
        .R(\mul_a_tdata[31]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[3]),
        .R(\mul_a_tdata[3]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[4]),
        .R(\mul_a_tdata[4]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[5]),
        .R(\mul_a_tdata[5]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[6]),
        .R(\mul_a_tdata[6]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[7]),
        .R(\mul_a_tdata[7]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[8]),
        .R(\mul_a_tdata[8]_i_1_n_0 ));
  FDRE \comp_a_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_a_tdata[9]),
        .R(\mul_a_tdata[9]_i_1_n_0 ));
  FDRE comp_a_tvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(comp_a_tdata1),
        .Q(comp_r_tready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \comp_b_tdata[31]_i_1 
       (.I0(fpu_stole),
        .I1(comp_r_tready),
        .I2(i_fles),
        .I3(i_flts),
        .I4(i_feqs),
        .O(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[0]),
        .Q(comp_b_tdata[0]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[10]),
        .Q(comp_b_tdata[10]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[11]),
        .Q(comp_b_tdata[11]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[12]),
        .Q(comp_b_tdata[12]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[13]),
        .Q(comp_b_tdata[13]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[14]),
        .Q(comp_b_tdata[14]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[15]),
        .Q(comp_b_tdata[15]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[16]),
        .Q(comp_b_tdata[16]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[17]),
        .Q(comp_b_tdata[17]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[18]),
        .Q(comp_b_tdata[18]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[19]),
        .Q(comp_b_tdata[19]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[1]),
        .Q(comp_b_tdata[1]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[20]),
        .Q(comp_b_tdata[20]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[21]),
        .Q(comp_b_tdata[21]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[22]),
        .Q(comp_b_tdata[22]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[23]),
        .Q(comp_b_tdata[23]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[24]),
        .Q(comp_b_tdata[24]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[25]),
        .Q(comp_b_tdata[25]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[26]),
        .Q(comp_b_tdata[26]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[27]),
        .Q(comp_b_tdata[27]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[28]),
        .Q(comp_b_tdata[28]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[29]),
        .Q(comp_b_tdata[29]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[2]),
        .Q(comp_b_tdata[2]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[30]),
        .Q(comp_b_tdata[30]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[31]),
        .Q(comp_b_tdata[31]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[3]),
        .Q(comp_b_tdata[3]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[4]),
        .Q(comp_b_tdata[4]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[5]),
        .Q(comp_b_tdata[5]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[6]),
        .Q(comp_b_tdata[6]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[7]),
        .Q(comp_b_tdata[7]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[8]),
        .Q(comp_b_tdata[8]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  FDRE \comp_b_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[9]),
        .Q(comp_b_tdata[9]),
        .R(\comp_b_tdata[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE comp_f_reg
       (.C(CLK),
        .CE(1'b1),
        .D(comp_r_tvalid),
        .Q(comp_f),
        .R(fpu_stole_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001110)) 
    \comp_op_tdata[3]_i_1 
       (.I0(fpu_stole),
        .I1(comp_r_tready),
        .I2(i_fles),
        .I3(i_flts),
        .I4(i_feqs),
        .O(\comp_op_tdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h11001110)) 
    \comp_op_tdata[4]_i_1 
       (.I0(fpu_stole),
        .I1(comp_r_tready),
        .I2(i_fles),
        .I3(i_feqs),
        .I4(i_flts),
        .O(\comp_op_tdata[4]_i_1_n_0 ));
  FDRE \comp_op_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\comp_op_tdata[3]_i_1_n_0 ),
        .Q(comp_op_tdata[0]),
        .R(1'b0));
  FDRE \comp_op_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\comp_op_tdata[4]_i_1_n_0 ),
        .Q(comp_op_tdata[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \div_a_tdata[31]_i_1 
       (.I0(fpu_stole),
        .I1(i_fdivs),
        .I2(div_a_tvalid),
        .O(\div_a_tdata[31]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[0]),
        .R(\mul_a_tdata[0]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[10]),
        .R(\mul_a_tdata[10]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[11]),
        .R(\mul_a_tdata[11]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[12]),
        .R(\mul_a_tdata[12]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[13]),
        .R(\mul_a_tdata[13]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[14]),
        .R(\mul_a_tdata[14]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[15]),
        .R(\mul_a_tdata[15]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[16]),
        .R(\mul_a_tdata[16]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[17]),
        .R(\mul_a_tdata[17]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[18]),
        .R(\mul_a_tdata[18]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[19]),
        .R(\mul_a_tdata[19]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[1]),
        .R(\mul_a_tdata[1]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[20]),
        .R(\mul_a_tdata[20]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[21]),
        .R(\mul_a_tdata[21]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[22]),
        .R(\mul_a_tdata[22]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[23]),
        .R(\mul_a_tdata[23]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[24]),
        .R(\mul_a_tdata[24]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[25]),
        .R(\mul_a_tdata[25]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[26]),
        .R(\mul_a_tdata[26]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[27]),
        .R(\mul_a_tdata[27]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[28]),
        .R(\mul_a_tdata[28]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[29]),
        .R(\mul_a_tdata[29]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[2]),
        .R(\mul_a_tdata[2]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[30]),
        .R(\mul_a_tdata[30]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[31]),
        .R(\mul_a_tdata[31]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[3]),
        .R(\mul_a_tdata[3]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[4]),
        .R(\mul_a_tdata[4]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[5]),
        .R(\mul_a_tdata[5]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[6]),
        .R(\mul_a_tdata[6]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[7]),
        .R(\mul_a_tdata[7]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[8]),
        .R(\mul_a_tdata[8]_i_1_n_0 ));
  FDRE \div_a_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\div_a_tdata[31]_i_1_n_0 ),
        .Q(div_a_tdata[9]),
        .R(\mul_a_tdata[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    div_a_tvalid_i_1
       (.I0(i_fdivs),
        .I1(div_a_tvalid),
        .O(div_a_tvalid_i_1_n_0));
  FDRE div_a_tvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(div_a_tvalid_i_1_n_0),
        .Q(div_a_tvalid),
        .R(fpu_stole));
  LUT3 #(
    .INIT(8'hFB)) 
    \div_b_tdata[31]_i_1 
       (.I0(div_a_tvalid),
        .I1(i_fdivs),
        .I2(fpu_stole),
        .O(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[0]),
        .Q(div_b_tdata[0]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[10]),
        .Q(div_b_tdata[10]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[11]),
        .Q(div_b_tdata[11]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[12]),
        .Q(div_b_tdata[12]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[13]),
        .Q(div_b_tdata[13]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[14]),
        .Q(div_b_tdata[14]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[15]),
        .Q(div_b_tdata[15]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[16]),
        .Q(div_b_tdata[16]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[17]),
        .Q(div_b_tdata[17]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[18]),
        .Q(div_b_tdata[18]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[19]),
        .Q(div_b_tdata[19]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[1]),
        .Q(div_b_tdata[1]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[20]),
        .Q(div_b_tdata[20]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[21]),
        .Q(div_b_tdata[21]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[22]),
        .Q(div_b_tdata[22]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[23]),
        .Q(div_b_tdata[23]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[24]),
        .Q(div_b_tdata[24]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[25]),
        .Q(div_b_tdata[25]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[26]),
        .Q(div_b_tdata[26]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[27]),
        .Q(div_b_tdata[27]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[28]),
        .Q(div_b_tdata[28]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[29]),
        .Q(div_b_tdata[29]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[2]),
        .Q(div_b_tdata[2]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[30]),
        .Q(div_b_tdata[30]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[31]),
        .Q(div_b_tdata[31]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[3]),
        .Q(div_b_tdata[3]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[4]),
        .Q(div_b_tdata[4]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[5]),
        .Q(div_b_tdata[5]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[6]),
        .Q(div_b_tdata[6]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[7]),
        .Q(div_b_tdata[7]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[8]),
        .Q(div_b_tdata[8]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  FDRE \div_b_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[9]),
        .Q(div_b_tdata[9]),
        .R(\div_b_tdata[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE div_f_reg
       (.C(CLK),
        .CE(1'b1),
        .D(div_r_tvalid),
        .Q(div_f),
        .R(fpu_stole_i_1_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    \fcvtsw_a_tdata[31]_i_1 
       (.I0(fpu_stole),
        .I1(i_fcvtsw),
        .I2(fcvtsw_a_tvalid),
        .O(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[0]),
        .Q(fcvtsw_a_tdata[0]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[10]),
        .Q(fcvtsw_a_tdata[10]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[11]),
        .Q(fcvtsw_a_tdata[11]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[12]),
        .Q(fcvtsw_a_tdata[12]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[13]),
        .Q(fcvtsw_a_tdata[13]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[14]),
        .Q(fcvtsw_a_tdata[14]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[15]),
        .Q(fcvtsw_a_tdata[15]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[16]),
        .Q(fcvtsw_a_tdata[16]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[17]),
        .Q(fcvtsw_a_tdata[17]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[18]),
        .Q(fcvtsw_a_tdata[18]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[19]),
        .Q(fcvtsw_a_tdata[19]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[1]),
        .Q(fcvtsw_a_tdata[1]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[20]),
        .Q(fcvtsw_a_tdata[20]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[21]),
        .Q(fcvtsw_a_tdata[21]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[22]),
        .Q(fcvtsw_a_tdata[22]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[23]),
        .Q(fcvtsw_a_tdata[23]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[24]),
        .Q(fcvtsw_a_tdata[24]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[25]),
        .Q(fcvtsw_a_tdata[25]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[26]),
        .Q(fcvtsw_a_tdata[26]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[27]),
        .Q(fcvtsw_a_tdata[27]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[28]),
        .Q(fcvtsw_a_tdata[28]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[29]),
        .Q(fcvtsw_a_tdata[29]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[2]),
        .Q(fcvtsw_a_tdata[2]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[30]),
        .Q(fcvtsw_a_tdata[30]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[31]),
        .Q(fcvtsw_a_tdata[31]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[3]),
        .Q(fcvtsw_a_tdata[3]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[4]),
        .Q(fcvtsw_a_tdata[4]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[5]),
        .Q(fcvtsw_a_tdata[5]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[6]),
        .Q(fcvtsw_a_tdata[6]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[7]),
        .Q(fcvtsw_a_tdata[7]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[8]),
        .Q(fcvtsw_a_tdata[8]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtsw_a_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(rs1[9]),
        .Q(fcvtsw_a_tdata[9]),
        .R(\fcvtsw_a_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    fcvtsw_a_tvalid_i_1
       (.I0(i_fcvtsw),
        .I1(fcvtsw_a_tvalid),
        .O(fcvtsw_a_tvalid_i_1_n_0));
  FDRE fcvtsw_a_tvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(fcvtsw_a_tvalid_i_1_n_0),
        .Q(fcvtsw_a_tvalid),
        .R(fpu_stole));
  (* KEEP = "yes" *) 
  FDRE fcvtsw_f_reg
       (.C(CLK),
        .CE(1'b1),
        .D(fcvtsw_r_tvalid),
        .Q(fcvtsw_f),
        .R(fpu_stole_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \fcvtws_a_tdata[31]_i_1 
       (.I0(fpu_stole),
        .I1(i_fcvtws),
        .I2(fcvtws_a_tvalid),
        .O(\fcvtws_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[0]),
        .R(\mul_a_tdata[0]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[10]),
        .R(\mul_a_tdata[10]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[11]),
        .R(\mul_a_tdata[11]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[12]),
        .R(\mul_a_tdata[12]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[13]),
        .R(\mul_a_tdata[13]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[14]),
        .R(\mul_a_tdata[14]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[15]),
        .R(\mul_a_tdata[15]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[16]),
        .R(\mul_a_tdata[16]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[17]),
        .R(\mul_a_tdata[17]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[18]),
        .R(\mul_a_tdata[18]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[19]),
        .R(\mul_a_tdata[19]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[1]),
        .R(\mul_a_tdata[1]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[20]),
        .R(\mul_a_tdata[20]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[21]),
        .R(\mul_a_tdata[21]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[22]),
        .R(\mul_a_tdata[22]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[23]),
        .R(\mul_a_tdata[23]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[24]),
        .R(\mul_a_tdata[24]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[25]),
        .R(\mul_a_tdata[25]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[26]),
        .R(\mul_a_tdata[26]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[27]),
        .R(\mul_a_tdata[27]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[28]),
        .R(\mul_a_tdata[28]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[29]),
        .R(\mul_a_tdata[29]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[2]),
        .R(\mul_a_tdata[2]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[30]),
        .R(\mul_a_tdata[30]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[31]),
        .R(\mul_a_tdata[31]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[3]),
        .R(\mul_a_tdata[3]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[4]),
        .R(\mul_a_tdata[4]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[5]),
        .R(\mul_a_tdata[5]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[6]),
        .R(\mul_a_tdata[6]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[7]),
        .R(\mul_a_tdata[7]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[8]),
        .R(\mul_a_tdata[8]_i_1_n_0 ));
  FDRE \fcvtws_a_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fcvtws_a_tdata[31]_i_1_n_0 ),
        .Q(fcvtws_a_tdata[9]),
        .R(\mul_a_tdata[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    fcvtws_a_tvalid_i_1
       (.I0(i_fcvtws),
        .I1(fcvtws_a_tvalid),
        .O(fcvtws_a_tvalid_i_1_n_0));
  FDRE fcvtws_a_tvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(fcvtws_a_tvalid_i_1_n_0),
        .Q(fcvtws_a_tvalid),
        .R(fpu_stole));
  (* KEEP = "yes" *) 
  FDRE fcvtws_f_reg
       (.C(CLK),
        .CE(1'b1),
        .D(fcvtws_r_tvalid),
        .Q(fcvtws_f),
        .R(fpu_stole_i_1_n_0));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[0]_i_1 
       (.I0(addsub_r_tdata[0]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[0]_i_2_n_0 ),
        .I3(\fpu_result[0]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[0]_i_4_n_0 ),
        .O(\fpu_result[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[0]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[0]),
        .O(\fpu_result[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[0]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[0]),
        .I3(fsqrts_r_tdata[0]),
        .I4(i_fsqrts),
        .O(\fpu_result[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[0]_i_4 
       (.I0(mul_r_tdata[0]),
        .I1(i_fmuls),
        .I2(div_r_tdata[0]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[0]),
        .O(\fpu_result[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[10]_i_1 
       (.I0(addsub_r_tdata[10]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[10]_i_2_n_0 ),
        .I3(\fpu_result[10]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[10]_i_4_n_0 ),
        .O(\fpu_result[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[10]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[10]),
        .O(\fpu_result[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[10]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[10]),
        .I3(fsqrts_r_tdata[10]),
        .I4(i_fsqrts),
        .O(\fpu_result[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[10]_i_4 
       (.I0(mul_r_tdata[10]),
        .I1(i_fmuls),
        .I2(div_r_tdata[10]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[10]),
        .O(\fpu_result[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[11]_i_1 
       (.I0(addsub_r_tdata[11]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[11]_i_2_n_0 ),
        .I3(\fpu_result[11]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[11]_i_4_n_0 ),
        .O(\fpu_result[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[11]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[11]),
        .O(\fpu_result[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[11]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[11]),
        .I3(fsqrts_r_tdata[11]),
        .I4(i_fsqrts),
        .O(\fpu_result[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[11]_i_4 
       (.I0(mul_r_tdata[11]),
        .I1(i_fmuls),
        .I2(div_r_tdata[11]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[11]),
        .O(\fpu_result[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[12]_i_1 
       (.I0(addsub_r_tdata[12]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[12]_i_2_n_0 ),
        .I3(\fpu_result[12]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[12]_i_4_n_0 ),
        .O(\fpu_result[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[12]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[12]),
        .O(\fpu_result[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[12]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[12]),
        .I3(fsqrts_r_tdata[12]),
        .I4(i_fsqrts),
        .O(\fpu_result[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[12]_i_4 
       (.I0(mul_r_tdata[12]),
        .I1(i_fmuls),
        .I2(div_r_tdata[12]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[12]),
        .O(\fpu_result[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[13]_i_1 
       (.I0(addsub_r_tdata[13]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[13]_i_2_n_0 ),
        .I3(\fpu_result[13]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[13]_i_4_n_0 ),
        .O(\fpu_result[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[13]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[13]),
        .O(\fpu_result[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[13]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[13]),
        .I3(fsqrts_r_tdata[13]),
        .I4(i_fsqrts),
        .O(\fpu_result[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[13]_i_4 
       (.I0(mul_r_tdata[13]),
        .I1(i_fmuls),
        .I2(div_r_tdata[13]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[13]),
        .O(\fpu_result[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[14]_i_1 
       (.I0(addsub_r_tdata[14]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[14]_i_2_n_0 ),
        .I3(\fpu_result[14]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[14]_i_4_n_0 ),
        .O(\fpu_result[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[14]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[14]),
        .O(\fpu_result[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[14]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[14]),
        .I3(fsqrts_r_tdata[14]),
        .I4(i_fsqrts),
        .O(\fpu_result[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[14]_i_4 
       (.I0(mul_r_tdata[14]),
        .I1(i_fmuls),
        .I2(div_r_tdata[14]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[14]),
        .O(\fpu_result[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[15]_i_1 
       (.I0(addsub_r_tdata[15]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[15]_i_2_n_0 ),
        .I3(\fpu_result[15]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[15]_i_4_n_0 ),
        .O(\fpu_result[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[15]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[15]),
        .O(\fpu_result[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[15]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[15]),
        .I3(fsqrts_r_tdata[15]),
        .I4(i_fsqrts),
        .O(\fpu_result[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[15]_i_4 
       (.I0(mul_r_tdata[15]),
        .I1(i_fmuls),
        .I2(div_r_tdata[15]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[15]),
        .O(\fpu_result[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[16]_i_1 
       (.I0(addsub_r_tdata[16]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[16]_i_2_n_0 ),
        .I3(\fpu_result[16]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[16]_i_4_n_0 ),
        .O(\fpu_result[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[16]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[16]),
        .O(\fpu_result[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[16]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[16]),
        .I3(fsqrts_r_tdata[16]),
        .I4(i_fsqrts),
        .O(\fpu_result[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[16]_i_4 
       (.I0(mul_r_tdata[16]),
        .I1(i_fmuls),
        .I2(div_r_tdata[16]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[16]),
        .O(\fpu_result[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAACFAAAAAA03)) 
    \fpu_result[17]_i_1 
       (.I0(addsub_r_tdata[17]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[17]_i_2_n_0 ),
        .I3(i_fadds),
        .I4(i_fsubs),
        .I5(\fpu_result[17]_i_3_n_0 ),
        .O(\fpu_result[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF47774777)) 
    \fpu_result[17]_i_2 
       (.I0(fcvtws_r_tdata[17]),
        .I1(i_fcvtws),
        .I2(fsqrts_r_tdata[17]),
        .I3(i_fsqrts),
        .I4(fcvtsw_r_tdata[17]),
        .I5(i_fcvtsw),
        .O(\fpu_result[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[17]_i_3 
       (.I0(mul_r_tdata[17]),
        .I1(i_fmuls),
        .I2(div_r_tdata[17]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[17]),
        .O(\fpu_result[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[18]_i_1 
       (.I0(addsub_r_tdata[18]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[18]_i_2_n_0 ),
        .I3(\fpu_result[18]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[18]_i_4_n_0 ),
        .O(\fpu_result[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[18]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[18]),
        .O(\fpu_result[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[18]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[18]),
        .I3(fsqrts_r_tdata[18]),
        .I4(i_fsqrts),
        .O(\fpu_result[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[18]_i_4 
       (.I0(mul_r_tdata[18]),
        .I1(i_fmuls),
        .I2(div_r_tdata[18]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[18]),
        .O(\fpu_result[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[19]_i_1 
       (.I0(addsub_r_tdata[19]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[19]_i_2_n_0 ),
        .I3(\fpu_result[19]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[19]_i_4_n_0 ),
        .O(\fpu_result[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[19]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[19]),
        .O(\fpu_result[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[19]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[19]),
        .I3(fsqrts_r_tdata[19]),
        .I4(i_fsqrts),
        .O(\fpu_result[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[19]_i_4 
       (.I0(mul_r_tdata[19]),
        .I1(i_fmuls),
        .I2(div_r_tdata[19]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[19]),
        .O(\fpu_result[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[1]_i_1 
       (.I0(addsub_r_tdata[1]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[1]_i_2_n_0 ),
        .I3(\fpu_result[1]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[1]_i_4_n_0 ),
        .O(\fpu_result[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[1]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[1]),
        .O(\fpu_result[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[1]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[1]),
        .I3(fsqrts_r_tdata[1]),
        .I4(i_fsqrts),
        .O(\fpu_result[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[1]_i_4 
       (.I0(mul_r_tdata[1]),
        .I1(i_fmuls),
        .I2(div_r_tdata[1]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[1]),
        .O(\fpu_result[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[20]_i_1 
       (.I0(addsub_r_tdata[20]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[20]_i_2_n_0 ),
        .I3(\fpu_result[20]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[20]_i_4_n_0 ),
        .O(\fpu_result[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[20]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[20]),
        .O(\fpu_result[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[20]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[20]),
        .I3(fsqrts_r_tdata[20]),
        .I4(i_fsqrts),
        .O(\fpu_result[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[20]_i_4 
       (.I0(mul_r_tdata[20]),
        .I1(i_fmuls),
        .I2(div_r_tdata[20]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[20]),
        .O(\fpu_result[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[21]_i_1 
       (.I0(addsub_r_tdata[21]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[21]_i_2_n_0 ),
        .I3(\fpu_result[21]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[21]_i_4_n_0 ),
        .O(\fpu_result[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[21]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[21]),
        .O(\fpu_result[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[21]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[21]),
        .I3(fsqrts_r_tdata[21]),
        .I4(i_fsqrts),
        .O(\fpu_result[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[21]_i_4 
       (.I0(mul_r_tdata[21]),
        .I1(i_fmuls),
        .I2(div_r_tdata[21]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[21]),
        .O(\fpu_result[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[22]_i_1 
       (.I0(addsub_r_tdata[22]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[22]_i_2_n_0 ),
        .I3(\fpu_result[22]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[22]_i_4_n_0 ),
        .O(\fpu_result[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[22]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[22]),
        .O(\fpu_result[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[22]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[22]),
        .I3(fsqrts_r_tdata[22]),
        .I4(i_fsqrts),
        .O(\fpu_result[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[22]_i_4 
       (.I0(mul_r_tdata[22]),
        .I1(i_fmuls),
        .I2(div_r_tdata[22]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[22]),
        .O(\fpu_result[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[23]_i_1 
       (.I0(addsub_r_tdata[23]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[23]_i_2_n_0 ),
        .I3(\fpu_result[23]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[23]_i_4_n_0 ),
        .O(\fpu_result[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[23]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[23]),
        .O(\fpu_result[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[23]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[23]),
        .I3(fsqrts_r_tdata[23]),
        .I4(i_fsqrts),
        .O(\fpu_result[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[23]_i_4 
       (.I0(mul_r_tdata[23]),
        .I1(i_fmuls),
        .I2(div_r_tdata[23]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[23]),
        .O(\fpu_result[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[24]_i_1 
       (.I0(addsub_r_tdata[24]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[24]_i_2_n_0 ),
        .I3(\fpu_result[24]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[24]_i_4_n_0 ),
        .O(\fpu_result[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[24]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[24]),
        .O(\fpu_result[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[24]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[24]),
        .I3(fsqrts_r_tdata[24]),
        .I4(i_fsqrts),
        .O(\fpu_result[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[24]_i_4 
       (.I0(mul_r_tdata[24]),
        .I1(i_fmuls),
        .I2(div_r_tdata[24]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[24]),
        .O(\fpu_result[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[25]_i_1 
       (.I0(addsub_r_tdata[25]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[25]_i_2_n_0 ),
        .I3(\fpu_result[25]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[25]_i_4_n_0 ),
        .O(\fpu_result[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[25]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[25]),
        .O(\fpu_result[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[25]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[25]),
        .I3(fsqrts_r_tdata[25]),
        .I4(i_fsqrts),
        .O(\fpu_result[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[25]_i_4 
       (.I0(mul_r_tdata[25]),
        .I1(i_fmuls),
        .I2(div_r_tdata[25]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[25]),
        .O(\fpu_result[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[26]_i_1 
       (.I0(addsub_r_tdata[26]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[26]_i_2_n_0 ),
        .I3(\fpu_result[26]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[26]_i_4_n_0 ),
        .O(\fpu_result[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[26]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[26]),
        .O(\fpu_result[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[26]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[26]),
        .I3(fsqrts_r_tdata[26]),
        .I4(i_fsqrts),
        .O(\fpu_result[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[26]_i_4 
       (.I0(mul_r_tdata[26]),
        .I1(i_fmuls),
        .I2(div_r_tdata[26]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[26]),
        .O(\fpu_result[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[27]_i_1 
       (.I0(addsub_r_tdata[27]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[27]_i_2_n_0 ),
        .I3(\fpu_result[27]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[27]_i_4_n_0 ),
        .O(\fpu_result[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[27]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[27]),
        .O(\fpu_result[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[27]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[27]),
        .I3(fsqrts_r_tdata[27]),
        .I4(i_fsqrts),
        .O(\fpu_result[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[27]_i_4 
       (.I0(mul_r_tdata[27]),
        .I1(i_fmuls),
        .I2(div_r_tdata[27]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[27]),
        .O(\fpu_result[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[28]_i_1 
       (.I0(addsub_r_tdata[28]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[28]_i_2_n_0 ),
        .I3(\fpu_result[28]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[28]_i_5_n_0 ),
        .O(\fpu_result[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[28]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[28]),
        .O(\fpu_result[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[28]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[28]),
        .I3(fsqrts_r_tdata[28]),
        .I4(i_fsqrts),
        .O(\fpu_result[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \fpu_result[28]_i_4 
       (.I0(i_fsubs),
        .I1(i_fadds),
        .O(\fpu_result[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[28]_i_5 
       (.I0(mul_r_tdata[28]),
        .I1(i_fmuls),
        .I2(div_r_tdata[28]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[28]),
        .O(\fpu_result[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAACFAAAAAA03)) 
    \fpu_result[29]_i_1 
       (.I0(addsub_r_tdata[29]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[29]_i_2_n_0 ),
        .I3(i_fadds),
        .I4(i_fsubs),
        .I5(\fpu_result[29]_i_3_n_0 ),
        .O(\fpu_result[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF47774777)) 
    \fpu_result[29]_i_2 
       (.I0(fcvtws_r_tdata[29]),
        .I1(i_fcvtws),
        .I2(fsqrts_r_tdata[29]),
        .I3(i_fsqrts),
        .I4(fcvtsw_r_tdata[29]),
        .I5(i_fcvtsw),
        .O(\fpu_result[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[29]_i_3 
       (.I0(mul_r_tdata[29]),
        .I1(i_fmuls),
        .I2(div_r_tdata[29]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[29]),
        .O(\fpu_result[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[2]_i_1 
       (.I0(addsub_r_tdata[2]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[2]_i_2_n_0 ),
        .I3(\fpu_result[2]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[2]_i_4_n_0 ),
        .O(\fpu_result[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[2]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[2]),
        .O(\fpu_result[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[2]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[2]),
        .I3(fsqrts_r_tdata[2]),
        .I4(i_fsqrts),
        .O(\fpu_result[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[2]_i_4 
       (.I0(mul_r_tdata[2]),
        .I1(i_fmuls),
        .I2(div_r_tdata[2]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[2]),
        .O(\fpu_result[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAACFAAAAAA03)) 
    \fpu_result[30]_i_1 
       (.I0(addsub_r_tdata[30]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[30]_i_2_n_0 ),
        .I3(i_fadds),
        .I4(i_fsubs),
        .I5(\fpu_result[30]_i_3_n_0 ),
        .O(\fpu_result[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF47774777)) 
    \fpu_result[30]_i_2 
       (.I0(fcvtws_r_tdata[30]),
        .I1(i_fcvtws),
        .I2(fsqrts_r_tdata[30]),
        .I3(i_fsqrts),
        .I4(fcvtsw_r_tdata[30]),
        .I5(i_fcvtsw),
        .O(\fpu_result[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[30]_i_3 
       (.I0(mul_r_tdata[30]),
        .I1(i_fmuls),
        .I2(div_r_tdata[30]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[30]),
        .O(\fpu_result[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAACFAAAAAA03)) 
    \fpu_result[31]_i_1 
       (.I0(addsub_r_tdata[31]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[31]_i_3_n_0 ),
        .I3(i_fadds),
        .I4(i_fsubs),
        .I5(\fpu_result[31]_i_4_n_0 ),
        .O(\fpu_result[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fpu_result[31]_i_2 
       (.I0(i_feqs),
        .I1(i_flts),
        .I2(i_fles),
        .I3(i_fdivs),
        .I4(i_fmuls),
        .O(\fpu_result[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF47774777)) 
    \fpu_result[31]_i_3 
       (.I0(fcvtws_r_tdata[31]),
        .I1(i_fcvtws),
        .I2(fsqrts_r_tdata[31]),
        .I3(i_fsqrts),
        .I4(fcvtsw_r_tdata[31]),
        .I5(i_fcvtsw),
        .O(\fpu_result[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[31]_i_4 
       (.I0(mul_r_tdata[31]),
        .I1(i_fmuls),
        .I2(div_r_tdata[31]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[31]),
        .O(\fpu_result[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[3]_i_1 
       (.I0(addsub_r_tdata[3]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[3]_i_2_n_0 ),
        .I3(\fpu_result[3]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[3]_i_4_n_0 ),
        .O(\fpu_result[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[3]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[3]),
        .O(\fpu_result[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[3]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[3]),
        .I3(fsqrts_r_tdata[3]),
        .I4(i_fsqrts),
        .O(\fpu_result[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[3]_i_4 
       (.I0(mul_r_tdata[3]),
        .I1(i_fmuls),
        .I2(div_r_tdata[3]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[3]),
        .O(\fpu_result[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[4]_i_1 
       (.I0(addsub_r_tdata[4]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[4]_i_2_n_0 ),
        .I3(\fpu_result[4]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[4]_i_4_n_0 ),
        .O(\fpu_result[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[4]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[4]),
        .O(\fpu_result[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[4]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[4]),
        .I3(fsqrts_r_tdata[4]),
        .I4(i_fsqrts),
        .O(\fpu_result[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[4]_i_4 
       (.I0(mul_r_tdata[4]),
        .I1(i_fmuls),
        .I2(div_r_tdata[4]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[4]),
        .O(\fpu_result[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[5]_i_1 
       (.I0(addsub_r_tdata[5]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[5]_i_2_n_0 ),
        .I3(\fpu_result[5]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[5]_i_4_n_0 ),
        .O(\fpu_result[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[5]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[5]),
        .O(\fpu_result[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[5]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[5]),
        .I3(fsqrts_r_tdata[5]),
        .I4(i_fsqrts),
        .O(\fpu_result[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[5]_i_4 
       (.I0(mul_r_tdata[5]),
        .I1(i_fmuls),
        .I2(div_r_tdata[5]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[5]),
        .O(\fpu_result[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAACFAAAAAA03)) 
    \fpu_result[6]_i_1 
       (.I0(addsub_r_tdata[6]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[6]_i_2_n_0 ),
        .I3(i_fadds),
        .I4(i_fsubs),
        .I5(\fpu_result[6]_i_3_n_0 ),
        .O(\fpu_result[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF47774777)) 
    \fpu_result[6]_i_2 
       (.I0(fcvtws_r_tdata[6]),
        .I1(i_fcvtws),
        .I2(fsqrts_r_tdata[6]),
        .I3(i_fsqrts),
        .I4(fcvtsw_r_tdata[6]),
        .I5(i_fcvtsw),
        .O(\fpu_result[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[6]_i_3 
       (.I0(mul_r_tdata[6]),
        .I1(i_fmuls),
        .I2(div_r_tdata[6]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[6]),
        .O(\fpu_result[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAACFAAAAAA03)) 
    \fpu_result[7]_i_1 
       (.I0(addsub_r_tdata[7]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[7]_i_2_n_0 ),
        .I3(i_fadds),
        .I4(i_fsubs),
        .I5(\fpu_result[7]_i_3_n_0 ),
        .O(\fpu_result[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF47774777)) 
    \fpu_result[7]_i_2 
       (.I0(fcvtws_r_tdata[7]),
        .I1(i_fcvtws),
        .I2(fsqrts_r_tdata[7]),
        .I3(i_fsqrts),
        .I4(fcvtsw_r_tdata[7]),
        .I5(i_fcvtsw),
        .O(\fpu_result[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[7]_i_3 
       (.I0(mul_r_tdata[7]),
        .I1(i_fmuls),
        .I2(div_r_tdata[7]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[7]),
        .O(\fpu_result[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[8]_i_1 
       (.I0(addsub_r_tdata[8]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[8]_i_2_n_0 ),
        .I3(\fpu_result[8]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[8]_i_4_n_0 ),
        .O(\fpu_result[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[8]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[8]),
        .O(\fpu_result[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[8]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[8]),
        .I3(fsqrts_r_tdata[8]),
        .I4(i_fsqrts),
        .O(\fpu_result[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[8]_i_4 
       (.I0(mul_r_tdata[8]),
        .I1(i_fmuls),
        .I2(div_r_tdata[8]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[8]),
        .O(\fpu_result[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA3033AAAA)) 
    \fpu_result[9]_i_1 
       (.I0(addsub_r_tdata[9]),
        .I1(\fpu_result[31]_i_2_n_0 ),
        .I2(\fpu_result[9]_i_2_n_0 ),
        .I3(\fpu_result[9]_i_3_n_0 ),
        .I4(\fpu_result[28]_i_4_n_0 ),
        .I5(\fpu_result[9]_i_4_n_0 ),
        .O(\fpu_result[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fpu_result[9]_i_2 
       (.I0(i_fcvtsw),
        .I1(fcvtsw_r_tdata[9]),
        .O(\fpu_result[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEBFBFBF)) 
    \fpu_result[9]_i_3 
       (.I0(i_fcvtsw),
        .I1(i_fcvtws),
        .I2(fcvtws_r_tdata[9]),
        .I3(fsqrts_r_tdata[9]),
        .I4(i_fsqrts),
        .O(\fpu_result[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fpu_result[9]_i_4 
       (.I0(mul_r_tdata[9]),
        .I1(i_fmuls),
        .I2(div_r_tdata[9]),
        .I3(i_fdivs),
        .I4(comp_r_tdata[9]),
        .O(\fpu_result[9]_i_4_n_0 ));
  FDRE \fpu_result_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[0]_i_1_n_0 ),
        .Q(fpu_result[0]),
        .R(1'b0));
  FDRE \fpu_result_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[10]_i_1_n_0 ),
        .Q(fpu_result[10]),
        .R(1'b0));
  FDRE \fpu_result_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[11]_i_1_n_0 ),
        .Q(fpu_result[11]),
        .R(1'b0));
  FDRE \fpu_result_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[12]_i_1_n_0 ),
        .Q(fpu_result[12]),
        .R(1'b0));
  FDRE \fpu_result_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[13]_i_1_n_0 ),
        .Q(fpu_result[13]),
        .R(1'b0));
  FDRE \fpu_result_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[14]_i_1_n_0 ),
        .Q(fpu_result[14]),
        .R(1'b0));
  FDRE \fpu_result_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[15]_i_1_n_0 ),
        .Q(fpu_result[15]),
        .R(1'b0));
  FDRE \fpu_result_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[16]_i_1_n_0 ),
        .Q(fpu_result[16]),
        .R(1'b0));
  FDRE \fpu_result_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[17]_i_1_n_0 ),
        .Q(fpu_result[17]),
        .R(1'b0));
  FDRE \fpu_result_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[18]_i_1_n_0 ),
        .Q(fpu_result[18]),
        .R(1'b0));
  FDRE \fpu_result_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[19]_i_1_n_0 ),
        .Q(fpu_result[19]),
        .R(1'b0));
  FDRE \fpu_result_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[1]_i_1_n_0 ),
        .Q(fpu_result[1]),
        .R(1'b0));
  FDRE \fpu_result_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[20]_i_1_n_0 ),
        .Q(fpu_result[20]),
        .R(1'b0));
  FDRE \fpu_result_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[21]_i_1_n_0 ),
        .Q(fpu_result[21]),
        .R(1'b0));
  FDRE \fpu_result_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[22]_i_1_n_0 ),
        .Q(fpu_result[22]),
        .R(1'b0));
  FDRE \fpu_result_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[23]_i_1_n_0 ),
        .Q(fpu_result[23]),
        .R(1'b0));
  FDRE \fpu_result_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[24]_i_1_n_0 ),
        .Q(fpu_result[24]),
        .R(1'b0));
  FDRE \fpu_result_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[25]_i_1_n_0 ),
        .Q(fpu_result[25]),
        .R(1'b0));
  FDRE \fpu_result_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[26]_i_1_n_0 ),
        .Q(fpu_result[26]),
        .R(1'b0));
  FDRE \fpu_result_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[27]_i_1_n_0 ),
        .Q(fpu_result[27]),
        .R(1'b0));
  FDRE \fpu_result_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[28]_i_1_n_0 ),
        .Q(fpu_result[28]),
        .R(1'b0));
  FDRE \fpu_result_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[29]_i_1_n_0 ),
        .Q(fpu_result[29]),
        .R(1'b0));
  FDRE \fpu_result_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[2]_i_1_n_0 ),
        .Q(fpu_result[2]),
        .R(1'b0));
  FDRE \fpu_result_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[30]_i_1_n_0 ),
        .Q(fpu_result[30]),
        .R(1'b0));
  FDRE \fpu_result_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[31]_i_1_n_0 ),
        .Q(fpu_result[31]),
        .R(1'b0));
  FDRE \fpu_result_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[3]_i_1_n_0 ),
        .Q(fpu_result[3]),
        .R(1'b0));
  FDRE \fpu_result_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[4]_i_1_n_0 ),
        .Q(fpu_result[4]),
        .R(1'b0));
  FDRE \fpu_result_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[5]_i_1_n_0 ),
        .Q(fpu_result[5]),
        .R(1'b0));
  FDRE \fpu_result_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[6]_i_1_n_0 ),
        .Q(fpu_result[6]),
        .R(1'b0));
  FDRE \fpu_result_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[7]_i_1_n_0 ),
        .Q(fpu_result[7]),
        .R(1'b0));
  FDRE \fpu_result_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[8]_i_1_n_0 ),
        .Q(fpu_result[8]),
        .R(1'b0));
  FDRE \fpu_result_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fpu_result[9]_i_1_n_0 ),
        .Q(fpu_result[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    fpu_stole_i_1
       (.I0(RST_N),
        .O(fpu_stole_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFFFFEFFFEF)) 
    fpu_stole_i_2
       (.I0(fpu_stole_i_3_n_0),
        .I1(i_fcvtsw),
        .I2(\fpu_result[28]_i_4_n_0 ),
        .I3(\fpu_result[31]_i_2_n_0 ),
        .I4(tvalid_once),
        .I5(fpu_stole),
        .O(fpu_stole_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    fpu_stole_i_3
       (.I0(i_fsqrts),
        .I1(i_fcvtws),
        .O(fpu_stole_i_3_n_0));
  FDRE fpu_stole_reg
       (.C(CLK),
        .CE(1'b1),
        .D(fpu_stole_i_2_n_0),
        .Q(fpu_stole),
        .R(fpu_stole_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \fsqrts_a_tdata[31]_i_1 
       (.I0(fpu_stole),
        .I1(i_fsqrts),
        .I2(fsqrts_a_tvalid),
        .O(\fsqrts_a_tdata[31]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[0]),
        .R(\mul_a_tdata[0]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[10]),
        .R(\mul_a_tdata[10]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[11]),
        .R(\mul_a_tdata[11]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[12]),
        .R(\mul_a_tdata[12]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[13]),
        .R(\mul_a_tdata[13]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[14]),
        .R(\mul_a_tdata[14]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[15]),
        .R(\mul_a_tdata[15]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[16]),
        .R(\mul_a_tdata[16]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[17]),
        .R(\mul_a_tdata[17]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[18]),
        .R(\mul_a_tdata[18]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[19]),
        .R(\mul_a_tdata[19]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[1]),
        .R(\mul_a_tdata[1]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[20]),
        .R(\mul_a_tdata[20]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[21]),
        .R(\mul_a_tdata[21]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[22]),
        .R(\mul_a_tdata[22]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[23]),
        .R(\mul_a_tdata[23]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[24]),
        .R(\mul_a_tdata[24]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[25]),
        .R(\mul_a_tdata[25]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[26]),
        .R(\mul_a_tdata[26]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[27]),
        .R(\mul_a_tdata[27]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[28]),
        .R(\mul_a_tdata[28]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[29]),
        .R(\mul_a_tdata[29]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[2]),
        .R(\mul_a_tdata[2]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[30]),
        .R(\mul_a_tdata[30]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[31]),
        .R(\mul_a_tdata[31]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[3]),
        .R(\mul_a_tdata[3]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[4]),
        .R(\mul_a_tdata[4]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[5]),
        .R(\mul_a_tdata[5]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[6]),
        .R(\mul_a_tdata[6]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[7]),
        .R(\mul_a_tdata[7]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[8]),
        .R(\mul_a_tdata[8]_i_1_n_0 ));
  FDRE \fsqrts_a_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\fsqrts_a_tdata[31]_i_1_n_0 ),
        .Q(fsqrts_a_tdata[9]),
        .R(\mul_a_tdata[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    fsqrts_a_tvalid_i_1
       (.I0(i_fsqrts),
        .I1(fsqrts_a_tvalid),
        .O(fsqrts_a_tvalid_i_1_n_0));
  FDRE fsqrts_a_tvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(fsqrts_a_tvalid_i_1_n_0),
        .Q(fsqrts_a_tvalid),
        .R(fpu_stole));
  (* KEEP = "yes" *) 
  FDRE fsqrts_f_reg
       (.C(CLK),
        .CE(1'b1),
        .D(fsqrts_r_tvalid),
        .Q(fsqrts_f),
        .R(fpu_stole_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[0]_i_1 
       (.I0(frs1[0]),
        .O(\mul_a_tdata[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[10]_i_1 
       (.I0(frs1[10]),
        .O(\mul_a_tdata[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[11]_i_1 
       (.I0(frs1[11]),
        .O(\mul_a_tdata[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[12]_i_1 
       (.I0(frs1[12]),
        .O(\mul_a_tdata[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[13]_i_1 
       (.I0(frs1[13]),
        .O(\mul_a_tdata[13]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[14]_i_1 
       (.I0(frs1[14]),
        .O(\mul_a_tdata[14]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[15]_i_1 
       (.I0(frs1[15]),
        .O(\mul_a_tdata[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[16]_i_1 
       (.I0(frs1[16]),
        .O(\mul_a_tdata[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[17]_i_1 
       (.I0(frs1[17]),
        .O(\mul_a_tdata[17]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[18]_i_1 
       (.I0(frs1[18]),
        .O(\mul_a_tdata[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[19]_i_1 
       (.I0(frs1[19]),
        .O(\mul_a_tdata[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[1]_i_1 
       (.I0(frs1[1]),
        .O(\mul_a_tdata[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[20]_i_1 
       (.I0(frs1[20]),
        .O(\mul_a_tdata[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[21]_i_1 
       (.I0(frs1[21]),
        .O(\mul_a_tdata[21]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[22]_i_1 
       (.I0(frs1[22]),
        .O(\mul_a_tdata[22]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[23]_i_1 
       (.I0(frs1[23]),
        .O(\mul_a_tdata[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[24]_i_1 
       (.I0(frs1[24]),
        .O(\mul_a_tdata[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[25]_i_1 
       (.I0(frs1[25]),
        .O(\mul_a_tdata[25]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[26]_i_1 
       (.I0(frs1[26]),
        .O(\mul_a_tdata[26]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[27]_i_1 
       (.I0(frs1[27]),
        .O(\mul_a_tdata[27]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[28]_i_1 
       (.I0(frs1[28]),
        .O(\mul_a_tdata[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[29]_i_1 
       (.I0(frs1[29]),
        .O(\mul_a_tdata[29]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[2]_i_1 
       (.I0(frs1[2]),
        .O(\mul_a_tdata[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[30]_i_1 
       (.I0(frs1[30]),
        .O(\mul_a_tdata[30]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[31]_i_1 
       (.I0(frs1[31]),
        .O(\mul_a_tdata[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \mul_a_tdata[31]_i_2 
       (.I0(fpu_stole),
        .I1(i_fmuls),
        .I2(mul_a_tvalid),
        .O(\mul_a_tdata[31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[3]_i_1 
       (.I0(frs1[3]),
        .O(\mul_a_tdata[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[4]_i_1 
       (.I0(frs1[4]),
        .O(\mul_a_tdata[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[5]_i_1 
       (.I0(frs1[5]),
        .O(\mul_a_tdata[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[6]_i_1 
       (.I0(frs1[6]),
        .O(\mul_a_tdata[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[7]_i_1 
       (.I0(frs1[7]),
        .O(\mul_a_tdata[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[8]_i_1 
       (.I0(frs1[8]),
        .O(\mul_a_tdata[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mul_a_tdata[9]_i_1 
       (.I0(frs1[9]),
        .O(\mul_a_tdata[9]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[0]),
        .R(\mul_a_tdata[0]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[10]),
        .R(\mul_a_tdata[10]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[11]),
        .R(\mul_a_tdata[11]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[12]),
        .R(\mul_a_tdata[12]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[13]),
        .R(\mul_a_tdata[13]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[14]),
        .R(\mul_a_tdata[14]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[15]),
        .R(\mul_a_tdata[15]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[16]),
        .R(\mul_a_tdata[16]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[17]),
        .R(\mul_a_tdata[17]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[18]),
        .R(\mul_a_tdata[18]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[19]),
        .R(\mul_a_tdata[19]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[1]),
        .R(\mul_a_tdata[1]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[20]),
        .R(\mul_a_tdata[20]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[21]),
        .R(\mul_a_tdata[21]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[22]),
        .R(\mul_a_tdata[22]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[23]),
        .R(\mul_a_tdata[23]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[24]),
        .R(\mul_a_tdata[24]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[25]),
        .R(\mul_a_tdata[25]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[26]),
        .R(\mul_a_tdata[26]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[27]),
        .R(\mul_a_tdata[27]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[28]),
        .R(\mul_a_tdata[28]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[29]),
        .R(\mul_a_tdata[29]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[2]),
        .R(\mul_a_tdata[2]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[30]),
        .R(\mul_a_tdata[30]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[31]),
        .R(\mul_a_tdata[31]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[3]),
        .R(\mul_a_tdata[3]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[4]),
        .R(\mul_a_tdata[4]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[5]),
        .R(\mul_a_tdata[5]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[6]),
        .R(\mul_a_tdata[6]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[7]),
        .R(\mul_a_tdata[7]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[8]),
        .R(\mul_a_tdata[8]_i_1_n_0 ));
  FDRE \mul_a_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mul_a_tdata[31]_i_2_n_0 ),
        .Q(mul_a_tdata[9]),
        .R(\mul_a_tdata[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    mul_a_tvalid_i_1
       (.I0(i_fmuls),
        .I1(mul_a_tvalid),
        .O(mul_a_tvalid_i_1_n_0));
  FDRE mul_a_tvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mul_a_tvalid_i_1_n_0),
        .Q(mul_a_tvalid),
        .R(fpu_stole));
  LUT3 #(
    .INIT(8'hFB)) 
    \mul_b_tdata[31]_i_1 
       (.I0(mul_a_tvalid),
        .I1(i_fmuls),
        .I2(fpu_stole),
        .O(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[0]),
        .Q(mul_b_tdata[0]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[10]),
        .Q(mul_b_tdata[10]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[11]),
        .Q(mul_b_tdata[11]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[12]),
        .Q(mul_b_tdata[12]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[13]),
        .Q(mul_b_tdata[13]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[14]),
        .Q(mul_b_tdata[14]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[15]),
        .Q(mul_b_tdata[15]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[16]),
        .Q(mul_b_tdata[16]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[17]),
        .Q(mul_b_tdata[17]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[18]),
        .Q(mul_b_tdata[18]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[19]),
        .Q(mul_b_tdata[19]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[1]),
        .Q(mul_b_tdata[1]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[20]),
        .Q(mul_b_tdata[20]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[21]),
        .Q(mul_b_tdata[21]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[22]),
        .Q(mul_b_tdata[22]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[23]),
        .Q(mul_b_tdata[23]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[24]),
        .Q(mul_b_tdata[24]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[25]),
        .Q(mul_b_tdata[25]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[26]),
        .Q(mul_b_tdata[26]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[27]),
        .Q(mul_b_tdata[27]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[28]),
        .Q(mul_b_tdata[28]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[29]),
        .Q(mul_b_tdata[29]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[2]),
        .Q(mul_b_tdata[2]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[30]),
        .Q(mul_b_tdata[30]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[31]),
        .Q(mul_b_tdata[31]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[3]),
        .Q(mul_b_tdata[3]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[4]),
        .Q(mul_b_tdata[4]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[5]),
        .Q(mul_b_tdata[5]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[6]),
        .Q(mul_b_tdata[6]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[7]),
        .Q(mul_b_tdata[7]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[8]),
        .Q(mul_b_tdata[8]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  FDRE \mul_b_tdata_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(frs2[9]),
        .Q(mul_b_tdata[9]),
        .R(\mul_b_tdata[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE mul_f_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mul_r_tvalid),
        .Q(mul_f),
        .R(fpu_stole_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    tvalid_once_i_1
       (.I0(tvalid_once_i_2_n_0),
        .I1(tvalid_once_i_3_n_0),
        .I2(tvalid_once_i_4_n_0),
        .I3(RST_N),
        .I4(tvalid_once),
        .O(tvalid_once_i_1_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    tvalid_once_i_2
       (.I0(fcvtsw_f),
        .I1(fcvtsw_r_tvalid),
        .I2(fcvtws_f),
        .I3(fcvtws_r_tvalid),
        .O(tvalid_once_i_2_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    tvalid_once_i_3
       (.I0(fsqrts_f),
        .I1(fsqrts_r_tvalid),
        .I2(addsub_f),
        .I3(addsub_r_tvalid),
        .O(tvalid_once_i_3_n_0));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    tvalid_once_i_4
       (.I0(div_f),
        .I1(div_r_tvalid),
        .I2(comp_r_tvalid),
        .I3(comp_f),
        .I4(mul_r_tvalid),
        .I5(mul_f),
        .O(tvalid_once_i_4_n_0));
  (* KEEP = "yes" *) 
  FDRE tvalid_once_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tvalid_once_i_1_n_0),
        .Q(tvalid_once),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
