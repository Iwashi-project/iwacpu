-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Wed Dec  6 20:44:13 2017
-- Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/yamaguchi/CPU-Emperor/Emperor-core/Emperor-core.srcs/sources_1/bd/design_1/ip/design_1_core_fpu_0_0/design_1_core_fpu_0_0_stub.vhdl
-- Design      : design_1_core_fpu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_core_fpu_0_0 is
  Port ( 
    RST_N : in STD_LOGIC;
    CLK : in STD_LOGIC;
    i_fadds : in STD_LOGIC;
    i_fsubs : in STD_LOGIC;
    i_fmuls : in STD_LOGIC;
    i_fdivs : in STD_LOGIC;
    i_feqs : in STD_LOGIC;
    i_flts : in STD_LOGIC;
    i_fles : in STD_LOGIC;
    i_fcvtsw : in STD_LOGIC;
    i_fcvtws : in STD_LOGIC;
    i_fsqrts : in STD_LOGIC;
    rs1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    frs1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    frs2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fpu_result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fpu_stole : out STD_LOGIC;
    addsub_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addsub_a_tready : in STD_LOGIC;
    addsub_a_tvalid : out STD_LOGIC;
    addsub_b_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addsub_b_tready : in STD_LOGIC;
    addsub_b_tvalid : out STD_LOGIC;
    addsub_op_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addsub_op_tready : in STD_LOGIC;
    addsub_op_tvalid : out STD_LOGIC;
    addsub_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addsub_r_tready : out STD_LOGIC;
    addsub_r_tvalid : in STD_LOGIC;
    mul_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mul_a_tready : in STD_LOGIC;
    mul_a_tvalid : out STD_LOGIC;
    mul_b_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mul_b_tready : in STD_LOGIC;
    mul_b_tvalid : out STD_LOGIC;
    mul_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mul_r_tready : out STD_LOGIC;
    mul_r_tvalid : in STD_LOGIC;
    div_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    div_a_tready : in STD_LOGIC;
    div_a_tvalid : out STD_LOGIC;
    div_b_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    div_b_tready : in STD_LOGIC;
    div_b_tvalid : out STD_LOGIC;
    div_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    div_r_tready : out STD_LOGIC;
    div_r_tvalid : in STD_LOGIC;
    comp_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    comp_a_tready : in STD_LOGIC;
    comp_a_tvalid : out STD_LOGIC;
    comp_b_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    comp_b_tready : in STD_LOGIC;
    comp_b_tvalid : out STD_LOGIC;
    comp_op_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    comp_op_tready : in STD_LOGIC;
    comp_op_tvalid : out STD_LOGIC;
    comp_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    comp_r_tready : out STD_LOGIC;
    comp_r_tvalid : in STD_LOGIC;
    fcvtsw_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fcvtsw_a_tready : in STD_LOGIC;
    fcvtsw_a_tvalid : out STD_LOGIC;
    fcvtsw_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fcvtsw_r_tready : out STD_LOGIC;
    fcvtsw_r_tvalid : in STD_LOGIC;
    fcvtws_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fcvtws_a_tready : in STD_LOGIC;
    fcvtws_a_tvalid : out STD_LOGIC;
    fcvtws_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fcvtws_r_tready : out STD_LOGIC;
    fcvtws_r_tvalid : in STD_LOGIC;
    fsqrts_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fsqrts_a_tready : in STD_LOGIC;
    fsqrts_a_tvalid : out STD_LOGIC;
    fsqrts_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fsqrts_r_tready : out STD_LOGIC;
    fsqrts_r_tvalid : in STD_LOGIC
  );

end design_1_core_fpu_0_0;

architecture stub of design_1_core_fpu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RST_N,CLK,i_fadds,i_fsubs,i_fmuls,i_fdivs,i_feqs,i_flts,i_fles,i_fcvtsw,i_fcvtws,i_fsqrts,rs1[31:0],frs1[31:0],frs2[31:0],fpu_result[31:0],fpu_stole,addsub_a_tdata[31:0],addsub_a_tready,addsub_a_tvalid,addsub_b_tdata[31:0],addsub_b_tready,addsub_b_tvalid,addsub_op_tdata[7:0],addsub_op_tready,addsub_op_tvalid,addsub_r_tdata[31:0],addsub_r_tready,addsub_r_tvalid,mul_a_tdata[31:0],mul_a_tready,mul_a_tvalid,mul_b_tdata[31:0],mul_b_tready,mul_b_tvalid,mul_r_tdata[31:0],mul_r_tready,mul_r_tvalid,div_a_tdata[31:0],div_a_tready,div_a_tvalid,div_b_tdata[31:0],div_b_tready,div_b_tvalid,div_r_tdata[31:0],div_r_tready,div_r_tvalid,comp_a_tdata[31:0],comp_a_tready,comp_a_tvalid,comp_b_tdata[31:0],comp_b_tready,comp_b_tvalid,comp_op_tdata[7:0],comp_op_tready,comp_op_tvalid,comp_r_tdata[31:0],comp_r_tready,comp_r_tvalid,fcvtsw_a_tdata[31:0],fcvtsw_a_tready,fcvtsw_a_tvalid,fcvtsw_r_tdata[31:0],fcvtsw_r_tready,fcvtsw_r_tvalid,fcvtws_a_tdata[31:0],fcvtws_a_tready,fcvtws_a_tvalid,fcvtws_r_tdata[31:0],fcvtws_r_tready,fcvtws_r_tvalid,fsqrts_a_tdata[31:0],fsqrts_a_tready,fsqrts_a_tvalid,fsqrts_r_tdata[31:0],fsqrts_r_tready,fsqrts_r_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "core_fpu,Vivado 2016.4";
begin
end;
