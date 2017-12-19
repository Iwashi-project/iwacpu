// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:module_ref:core_fpu:1.0
// IP Revision: 1

(* X_CORE_INFO = "core_fpu,Vivado 2016.4" *)
(* CHECK_LICENSE_TYPE = "design_1_core_fpu_0_0,core_fpu,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_core_fpu_0_0 (
  RST_N,
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
  fsqrts_r_tvalid
);

(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST_N RST" *)
input wire RST_N;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire CLK;
input wire i_fadds;
input wire i_fsubs;
input wire i_fmuls;
input wire i_fdivs;
input wire i_feqs;
input wire i_flts;
input wire i_fles;
input wire i_fcvtsw;
input wire i_fcvtws;
input wire i_fsqrts;
input wire [31 : 0] rs1;
input wire [31 : 0] frs1;
input wire [31 : 0] frs2;
output wire [31 : 0] fpu_result;
output wire fpu_stole;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_a TDATA" *)
output wire [31 : 0] addsub_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_a TREADY" *)
input wire addsub_a_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_a TVALID" *)
output wire addsub_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_b TDATA" *)
output wire [31 : 0] addsub_b_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_b TREADY" *)
input wire addsub_b_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_b TVALID" *)
output wire addsub_b_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_op TDATA" *)
output wire [7 : 0] addsub_op_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_op TREADY" *)
input wire addsub_op_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_op TVALID" *)
output wire addsub_op_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_r TDATA" *)
input wire [31 : 0] addsub_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_r TREADY" *)
output wire addsub_r_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 addsub_r TVALID" *)
input wire addsub_r_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_a TDATA" *)
output wire [31 : 0] mul_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_a TREADY" *)
input wire mul_a_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_a TVALID" *)
output wire mul_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_b TDATA" *)
output wire [31 : 0] mul_b_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_b TREADY" *)
input wire mul_b_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_b TVALID" *)
output wire mul_b_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_r TDATA" *)
input wire [31 : 0] mul_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_r TREADY" *)
output wire mul_r_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 mul_r TVALID" *)
input wire mul_r_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_a TDATA" *)
output wire [31 : 0] div_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_a TREADY" *)
input wire div_a_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_a TVALID" *)
output wire div_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_b TDATA" *)
output wire [31 : 0] div_b_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_b TREADY" *)
input wire div_b_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_b TVALID" *)
output wire div_b_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_r TDATA" *)
input wire [31 : 0] div_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_r TREADY" *)
output wire div_r_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 div_r TVALID" *)
input wire div_r_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_a TDATA" *)
output wire [31 : 0] comp_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_a TREADY" *)
input wire comp_a_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_a TVALID" *)
output wire comp_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_b TDATA" *)
output wire [31 : 0] comp_b_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_b TREADY" *)
input wire comp_b_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_b TVALID" *)
output wire comp_b_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_op TDATA" *)
output wire [7 : 0] comp_op_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_op TREADY" *)
input wire comp_op_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_op TVALID" *)
output wire comp_op_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_r TDATA" *)
input wire [31 : 0] comp_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_r TREADY" *)
output wire comp_r_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 comp_r TVALID" *)
input wire comp_r_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_a TDATA" *)
output wire [31 : 0] fcvtsw_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_a TREADY" *)
input wire fcvtsw_a_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_a TVALID" *)
output wire fcvtsw_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_r TDATA" *)
input wire [31 : 0] fcvtsw_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_r TREADY" *)
output wire fcvtsw_r_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtsw_r TVALID" *)
input wire fcvtsw_r_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_a TDATA" *)
output wire [31 : 0] fcvtws_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_a TREADY" *)
input wire fcvtws_a_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_a TVALID" *)
output wire fcvtws_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_r TDATA" *)
input wire [31 : 0] fcvtws_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_r TREADY" *)
output wire fcvtws_r_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fcvtws_r TVALID" *)
input wire fcvtws_r_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_a TDATA" *)
output wire [31 : 0] fsqrts_a_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_a TREADY" *)
input wire fsqrts_a_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_a TVALID" *)
output wire fsqrts_a_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_r TDATA" *)
input wire [31 : 0] fsqrts_r_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_r TREADY" *)
output wire fsqrts_r_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fsqrts_r TVALID" *)
input wire fsqrts_r_tvalid;

  core_fpu inst (
    .RST_N(RST_N),
    .CLK(CLK),
    .i_fadds(i_fadds),
    .i_fsubs(i_fsubs),
    .i_fmuls(i_fmuls),
    .i_fdivs(i_fdivs),
    .i_feqs(i_feqs),
    .i_flts(i_flts),
    .i_fles(i_fles),
    .i_fcvtsw(i_fcvtsw),
    .i_fcvtws(i_fcvtws),
    .i_fsqrts(i_fsqrts),
    .rs1(rs1),
    .frs1(frs1),
    .frs2(frs2),
    .fpu_result(fpu_result),
    .fpu_stole(fpu_stole),
    .addsub_a_tdata(addsub_a_tdata),
    .addsub_a_tready(addsub_a_tready),
    .addsub_a_tvalid(addsub_a_tvalid),
    .addsub_b_tdata(addsub_b_tdata),
    .addsub_b_tready(addsub_b_tready),
    .addsub_b_tvalid(addsub_b_tvalid),
    .addsub_op_tdata(addsub_op_tdata),
    .addsub_op_tready(addsub_op_tready),
    .addsub_op_tvalid(addsub_op_tvalid),
    .addsub_r_tdata(addsub_r_tdata),
    .addsub_r_tready(addsub_r_tready),
    .addsub_r_tvalid(addsub_r_tvalid),
    .mul_a_tdata(mul_a_tdata),
    .mul_a_tready(mul_a_tready),
    .mul_a_tvalid(mul_a_tvalid),
    .mul_b_tdata(mul_b_tdata),
    .mul_b_tready(mul_b_tready),
    .mul_b_tvalid(mul_b_tvalid),
    .mul_r_tdata(mul_r_tdata),
    .mul_r_tready(mul_r_tready),
    .mul_r_tvalid(mul_r_tvalid),
    .div_a_tdata(div_a_tdata),
    .div_a_tready(div_a_tready),
    .div_a_tvalid(div_a_tvalid),
    .div_b_tdata(div_b_tdata),
    .div_b_tready(div_b_tready),
    .div_b_tvalid(div_b_tvalid),
    .div_r_tdata(div_r_tdata),
    .div_r_tready(div_r_tready),
    .div_r_tvalid(div_r_tvalid),
    .comp_a_tdata(comp_a_tdata),
    .comp_a_tready(comp_a_tready),
    .comp_a_tvalid(comp_a_tvalid),
    .comp_b_tdata(comp_b_tdata),
    .comp_b_tready(comp_b_tready),
    .comp_b_tvalid(comp_b_tvalid),
    .comp_op_tdata(comp_op_tdata),
    .comp_op_tready(comp_op_tready),
    .comp_op_tvalid(comp_op_tvalid),
    .comp_r_tdata(comp_r_tdata),
    .comp_r_tready(comp_r_tready),
    .comp_r_tvalid(comp_r_tvalid),
    .fcvtsw_a_tdata(fcvtsw_a_tdata),
    .fcvtsw_a_tready(fcvtsw_a_tready),
    .fcvtsw_a_tvalid(fcvtsw_a_tvalid),
    .fcvtsw_r_tdata(fcvtsw_r_tdata),
    .fcvtsw_r_tready(fcvtsw_r_tready),
    .fcvtsw_r_tvalid(fcvtsw_r_tvalid),
    .fcvtws_a_tdata(fcvtws_a_tdata),
    .fcvtws_a_tready(fcvtws_a_tready),
    .fcvtws_a_tvalid(fcvtws_a_tvalid),
    .fcvtws_r_tdata(fcvtws_r_tdata),
    .fcvtws_r_tready(fcvtws_r_tready),
    .fcvtws_r_tvalid(fcvtws_r_tvalid),
    .fsqrts_a_tdata(fsqrts_a_tdata),
    .fsqrts_a_tready(fsqrts_a_tready),
    .fsqrts_a_tvalid(fsqrts_a_tvalid),
    .fsqrts_r_tdata(fsqrts_r_tdata),
    .fsqrts_r_tready(fsqrts_r_tready),
    .fsqrts_r_tvalid(fsqrts_r_tvalid)
  );
endmodule
