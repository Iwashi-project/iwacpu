-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Wed Dec  6 20:44:13 2017
-- Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/yamaguchi/CPU-Emperor/Emperor-core/Emperor-core.srcs/sources_1/bd/design_1/ip/design_1_core_fpu_0_0/design_1_core_fpu_0_0_sim_netlist.vhdl
-- Design      : design_1_core_fpu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_core_fpu_0_0_core_fpu is
  port (
    fpu_stole : out STD_LOGIC;
    mul_a_tvalid : out STD_LOGIC;
    div_a_tvalid : out STD_LOGIC;
    fcvtsw_a_tvalid : out STD_LOGIC;
    fcvtws_a_tvalid : out STD_LOGIC;
    fsqrts_a_tvalid : out STD_LOGIC;
    fpu_result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addsub_r_tready : out STD_LOGIC;
    addsub_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addsub_b_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mul_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mul_b_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    div_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    div_b_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    comp_r_tready : out STD_LOGIC;
    comp_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    comp_b_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    comp_op_tdata : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fcvtsw_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fcvtws_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fsqrts_a_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addsub_op_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_fmuls : in STD_LOGIC;
    i_fdivs : in STD_LOGIC;
    i_fcvtsw : in STD_LOGIC;
    i_fcvtws : in STD_LOGIC;
    i_fsqrts : in STD_LOGIC;
    fsqrts_r_tvalid : in STD_LOGIC;
    addsub_r_tvalid : in STD_LOGIC;
    fcvtsw_r_tvalid : in STD_LOGIC;
    fcvtws_r_tvalid : in STD_LOGIC;
    div_r_tvalid : in STD_LOGIC;
    comp_r_tvalid : in STD_LOGIC;
    mul_r_tvalid : in STD_LOGIC;
    CLK : in STD_LOGIC;
    frs1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_fsubs : in STD_LOGIC;
    i_fadds : in STD_LOGIC;
    frs2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_fles : in STD_LOGIC;
    i_flts : in STD_LOGIC;
    i_feqs : in STD_LOGIC;
    rs1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addsub_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fcvtws_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fsqrts_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RST_N : in STD_LOGIC;
    fcvtsw_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mul_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    div_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    comp_r_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_core_fpu_0_0_core_fpu : entity is "core_fpu";
end design_1_core_fpu_0_0_core_fpu;

architecture STRUCTURE of design_1_core_fpu_0_0_core_fpu is
  signal \addsub_a_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal addsub_b_tdata1 : STD_LOGIC;
  signal addsub_f : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of addsub_f : signal is std.standard.true;
  signal \^addsub_r_tready\ : STD_LOGIC;
  signal comp_a_tdata1 : STD_LOGIC;
  signal \comp_b_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal comp_f : STD_LOGIC;
  attribute MARK_DEBUG of comp_f : signal is std.standard.true;
  signal \comp_op_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \comp_op_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \^comp_r_tready\ : STD_LOGIC;
  signal \div_a_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \^div_a_tvalid\ : STD_LOGIC;
  signal div_a_tvalid_i_1_n_0 : STD_LOGIC;
  signal \div_b_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal div_f : STD_LOGIC;
  attribute MARK_DEBUG of div_f : signal is std.standard.true;
  signal \fcvtsw_a_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \^fcvtsw_a_tvalid\ : STD_LOGIC;
  signal fcvtsw_a_tvalid_i_1_n_0 : STD_LOGIC;
  signal fcvtsw_f : STD_LOGIC;
  attribute MARK_DEBUG of fcvtsw_f : signal is std.standard.true;
  signal \fcvtws_a_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \^fcvtws_a_tvalid\ : STD_LOGIC;
  signal fcvtws_a_tvalid_i_1_n_0 : STD_LOGIC;
  signal fcvtws_f : STD_LOGIC;
  attribute MARK_DEBUG of fcvtws_f : signal is std.standard.true;
  signal \fpu_result[0]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[0]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[0]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[0]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[10]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[10]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[10]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[10]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[11]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[11]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[11]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[11]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[12]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[12]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[12]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[12]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[13]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[13]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[13]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[13]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[14]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[14]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[14]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[14]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[15]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[15]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[15]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[15]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[16]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[16]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[16]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[16]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[17]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[17]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[17]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[18]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[18]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[18]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[18]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[19]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[19]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[19]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[19]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[1]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[1]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[1]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[1]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[20]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[20]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[20]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[20]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[21]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[21]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[21]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[21]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[22]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[22]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[22]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[22]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[23]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[23]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[23]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[23]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[24]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[24]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[24]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[24]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[25]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[25]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[25]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[25]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[26]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[26]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[26]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[26]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[27]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[27]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[27]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[27]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[28]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[28]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[28]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[28]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[28]_i_5_n_0\ : STD_LOGIC;
  signal \fpu_result[29]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[29]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[29]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[2]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[2]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[2]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[2]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[30]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[30]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[30]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[31]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[31]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[31]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[31]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[3]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[3]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[3]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[3]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[4]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[4]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[4]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[4]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[5]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[5]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[5]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[5]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[6]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[6]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[6]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[7]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[7]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[7]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[8]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[8]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[8]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[8]_i_4_n_0\ : STD_LOGIC;
  signal \fpu_result[9]_i_1_n_0\ : STD_LOGIC;
  signal \fpu_result[9]_i_2_n_0\ : STD_LOGIC;
  signal \fpu_result[9]_i_3_n_0\ : STD_LOGIC;
  signal \fpu_result[9]_i_4_n_0\ : STD_LOGIC;
  signal \^fpu_stole\ : STD_LOGIC;
  signal fpu_stole_i_1_n_0 : STD_LOGIC;
  signal fpu_stole_i_2_n_0 : STD_LOGIC;
  signal fpu_stole_i_3_n_0 : STD_LOGIC;
  signal \fsqrts_a_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \^fsqrts_a_tvalid\ : STD_LOGIC;
  signal fsqrts_a_tvalid_i_1_n_0 : STD_LOGIC;
  signal fsqrts_f : STD_LOGIC;
  attribute MARK_DEBUG of fsqrts_f : signal is std.standard.true;
  signal \mul_a_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \mul_a_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^mul_a_tvalid\ : STD_LOGIC;
  signal mul_a_tvalid_i_1_n_0 : STD_LOGIC;
  signal \mul_b_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal mul_f : STD_LOGIC;
  attribute MARK_DEBUG of mul_f : signal is std.standard.true;
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tvalid_once : STD_LOGIC;
  attribute MARK_DEBUG of tvalid_once : signal is std.standard.true;
  signal tvalid_once_i_1_n_0 : STD_LOGIC;
  signal tvalid_once_i_2_n_0 : STD_LOGIC;
  signal tvalid_once_i_3_n_0 : STD_LOGIC;
  signal tvalid_once_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of addsub_a_tvalid_i_1 : label is "soft_lutpair2";
  attribute KEEP : string;
  attribute KEEP of addsub_f_reg : label is "yes";
  attribute SOFT_HLUTNM of \addsub_op_tdata[0]_i_1\ : label is "soft_lutpair2";
  attribute KEEP of comp_f_reg : label is "yes";
  attribute SOFT_HLUTNM of \comp_op_tdata[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \comp_op_tdata[4]_i_1\ : label is "soft_lutpair1";
  attribute KEEP of div_f_reg : label is "yes";
  attribute SOFT_HLUTNM of fcvtsw_a_tvalid_i_1 : label is "soft_lutpair3";
  attribute KEEP of fcvtsw_f_reg : label is "yes";
  attribute KEEP of fcvtws_f_reg : label is "yes";
  attribute SOFT_HLUTNM of \fpu_result[10]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fpu_result[11]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fpu_result[12]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fpu_result[13]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fpu_result[14]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fpu_result[15]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fpu_result[16]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fpu_result[18]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fpu_result[19]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fpu_result[1]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fpu_result[20]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fpu_result[21]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fpu_result[22]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fpu_result[23]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fpu_result[24]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fpu_result[25]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \fpu_result[26]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \fpu_result[27]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fpu_result[28]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fpu_result[2]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fpu_result[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fpu_result[4]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fpu_result[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fpu_result[5]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fpu_result[8]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fpu_result[9]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of fpu_stole_i_3 : label is "soft_lutpair0";
  attribute KEEP of fsqrts_f_reg : label is "yes";
  attribute KEEP of mul_f_reg : label is "yes";
  attribute KEEP of tvalid_once_reg : label is "yes";
begin
  addsub_r_tready <= \^addsub_r_tready\;
  comp_r_tready <= \^comp_r_tready\;
  div_a_tvalid <= \^div_a_tvalid\;
  fcvtsw_a_tvalid <= \^fcvtsw_a_tvalid\;
  fcvtws_a_tvalid <= \^fcvtws_a_tvalid\;
  fpu_stole <= \^fpu_stole\;
  fsqrts_a_tvalid <= \^fsqrts_a_tvalid\;
  mul_a_tvalid <= \^mul_a_tvalid\;
\addsub_a_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => \^addsub_r_tready\,
      I2 => i_fsubs,
      I3 => i_fadds,
      O => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(0),
      Q => addsub_a_tdata(0),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(10),
      Q => addsub_a_tdata(10),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(11),
      Q => addsub_a_tdata(11),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(12),
      Q => addsub_a_tdata(12),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(13),
      Q => addsub_a_tdata(13),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(14),
      Q => addsub_a_tdata(14),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(15),
      Q => addsub_a_tdata(15),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(16),
      Q => addsub_a_tdata(16),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(17),
      Q => addsub_a_tdata(17),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(18),
      Q => addsub_a_tdata(18),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(19),
      Q => addsub_a_tdata(19),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(1),
      Q => addsub_a_tdata(1),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(20),
      Q => addsub_a_tdata(20),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(21),
      Q => addsub_a_tdata(21),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(22),
      Q => addsub_a_tdata(22),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(23),
      Q => addsub_a_tdata(23),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(24),
      Q => addsub_a_tdata(24),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(25),
      Q => addsub_a_tdata(25),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(26),
      Q => addsub_a_tdata(26),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(27),
      Q => addsub_a_tdata(27),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(28),
      Q => addsub_a_tdata(28),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(29),
      Q => addsub_a_tdata(29),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(2),
      Q => addsub_a_tdata(2),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(30),
      Q => addsub_a_tdata(30),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(31),
      Q => addsub_a_tdata(31),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(3),
      Q => addsub_a_tdata(3),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(4),
      Q => addsub_a_tdata(4),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(5),
      Q => addsub_a_tdata(5),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(6),
      Q => addsub_a_tdata(6),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(7),
      Q => addsub_a_tdata(7),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(8),
      Q => addsub_a_tdata(8),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_a_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs1(9),
      Q => addsub_a_tdata(9),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
addsub_a_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => i_fadds,
      I1 => i_fsubs,
      I2 => \^addsub_r_tready\,
      I3 => \^fpu_stole\,
      O => addsub_b_tdata1
    );
addsub_a_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => addsub_b_tdata1,
      Q => \^addsub_r_tready\,
      R => '0'
    );
\addsub_b_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(0),
      Q => addsub_b_tdata(0),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(10),
      Q => addsub_b_tdata(10),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(11),
      Q => addsub_b_tdata(11),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(12),
      Q => addsub_b_tdata(12),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(13),
      Q => addsub_b_tdata(13),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(14),
      Q => addsub_b_tdata(14),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(15),
      Q => addsub_b_tdata(15),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(16),
      Q => addsub_b_tdata(16),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(17),
      Q => addsub_b_tdata(17),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(18),
      Q => addsub_b_tdata(18),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(19),
      Q => addsub_b_tdata(19),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(1),
      Q => addsub_b_tdata(1),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(20),
      Q => addsub_b_tdata(20),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(21),
      Q => addsub_b_tdata(21),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(22),
      Q => addsub_b_tdata(22),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(23),
      Q => addsub_b_tdata(23),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(24),
      Q => addsub_b_tdata(24),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(25),
      Q => addsub_b_tdata(25),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(26),
      Q => addsub_b_tdata(26),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(27),
      Q => addsub_b_tdata(27),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(28),
      Q => addsub_b_tdata(28),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(29),
      Q => addsub_b_tdata(29),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(2),
      Q => addsub_b_tdata(2),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(30),
      Q => addsub_b_tdata(30),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(31),
      Q => addsub_b_tdata(31),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(3),
      Q => addsub_b_tdata(3),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(4),
      Q => addsub_b_tdata(4),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(5),
      Q => addsub_b_tdata(5),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(6),
      Q => addsub_b_tdata(6),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(7),
      Q => addsub_b_tdata(7),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(8),
      Q => addsub_b_tdata(8),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
\addsub_b_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(9),
      Q => addsub_b_tdata(9),
      R => \addsub_a_tdata[31]_i_1_n_0\
    );
addsub_f_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => addsub_r_tvalid,
      Q => addsub_f,
      R => fpu_stole_i_1_n_0
    );
\addsub_op_tdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => i_fsubs,
      I1 => \^addsub_r_tready\,
      I2 => \^fpu_stole\,
      O => p_1_out(0)
    );
\addsub_op_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_out(0),
      Q => addsub_op_tdata(0),
      R => '0'
    );
\comp_a_tdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => i_feqs,
      I1 => i_flts,
      I2 => i_fles,
      I3 => \^comp_r_tready\,
      I4 => \^fpu_stole\,
      O => comp_a_tdata1
    );
\comp_a_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(0),
      R => \mul_a_tdata[0]_i_1_n_0\
    );
\comp_a_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(10),
      R => \mul_a_tdata[10]_i_1_n_0\
    );
\comp_a_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(11),
      R => \mul_a_tdata[11]_i_1_n_0\
    );
\comp_a_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(12),
      R => \mul_a_tdata[12]_i_1_n_0\
    );
\comp_a_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(13),
      R => \mul_a_tdata[13]_i_1_n_0\
    );
\comp_a_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(14),
      R => \mul_a_tdata[14]_i_1_n_0\
    );
\comp_a_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(15),
      R => \mul_a_tdata[15]_i_1_n_0\
    );
\comp_a_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(16),
      R => \mul_a_tdata[16]_i_1_n_0\
    );
\comp_a_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(17),
      R => \mul_a_tdata[17]_i_1_n_0\
    );
\comp_a_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(18),
      R => \mul_a_tdata[18]_i_1_n_0\
    );
\comp_a_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(19),
      R => \mul_a_tdata[19]_i_1_n_0\
    );
\comp_a_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(1),
      R => \mul_a_tdata[1]_i_1_n_0\
    );
\comp_a_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(20),
      R => \mul_a_tdata[20]_i_1_n_0\
    );
\comp_a_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(21),
      R => \mul_a_tdata[21]_i_1_n_0\
    );
\comp_a_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(22),
      R => \mul_a_tdata[22]_i_1_n_0\
    );
\comp_a_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(23),
      R => \mul_a_tdata[23]_i_1_n_0\
    );
\comp_a_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(24),
      R => \mul_a_tdata[24]_i_1_n_0\
    );
\comp_a_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(25),
      R => \mul_a_tdata[25]_i_1_n_0\
    );
\comp_a_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(26),
      R => \mul_a_tdata[26]_i_1_n_0\
    );
\comp_a_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(27),
      R => \mul_a_tdata[27]_i_1_n_0\
    );
\comp_a_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(28),
      R => \mul_a_tdata[28]_i_1_n_0\
    );
\comp_a_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(29),
      R => \mul_a_tdata[29]_i_1_n_0\
    );
\comp_a_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(2),
      R => \mul_a_tdata[2]_i_1_n_0\
    );
\comp_a_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(30),
      R => \mul_a_tdata[30]_i_1_n_0\
    );
\comp_a_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(31),
      R => \mul_a_tdata[31]_i_1_n_0\
    );
\comp_a_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(3),
      R => \mul_a_tdata[3]_i_1_n_0\
    );
\comp_a_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(4),
      R => \mul_a_tdata[4]_i_1_n_0\
    );
\comp_a_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(5),
      R => \mul_a_tdata[5]_i_1_n_0\
    );
\comp_a_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(6),
      R => \mul_a_tdata[6]_i_1_n_0\
    );
\comp_a_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(7),
      R => \mul_a_tdata[7]_i_1_n_0\
    );
\comp_a_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(8),
      R => \mul_a_tdata[8]_i_1_n_0\
    );
\comp_a_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => comp_a_tdata(9),
      R => \mul_a_tdata[9]_i_1_n_0\
    );
comp_a_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_a_tdata1,
      Q => \^comp_r_tready\,
      R => '0'
    );
\comp_b_tdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEF"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => \^comp_r_tready\,
      I2 => i_fles,
      I3 => i_flts,
      I4 => i_feqs,
      O => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(0),
      Q => comp_b_tdata(0),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(10),
      Q => comp_b_tdata(10),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(11),
      Q => comp_b_tdata(11),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(12),
      Q => comp_b_tdata(12),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(13),
      Q => comp_b_tdata(13),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(14),
      Q => comp_b_tdata(14),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(15),
      Q => comp_b_tdata(15),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(16),
      Q => comp_b_tdata(16),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(17),
      Q => comp_b_tdata(17),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(18),
      Q => comp_b_tdata(18),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(19),
      Q => comp_b_tdata(19),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(1),
      Q => comp_b_tdata(1),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(20),
      Q => comp_b_tdata(20),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(21),
      Q => comp_b_tdata(21),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(22),
      Q => comp_b_tdata(22),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(23),
      Q => comp_b_tdata(23),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(24),
      Q => comp_b_tdata(24),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(25),
      Q => comp_b_tdata(25),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(26),
      Q => comp_b_tdata(26),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(27),
      Q => comp_b_tdata(27),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(28),
      Q => comp_b_tdata(28),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(29),
      Q => comp_b_tdata(29),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(2),
      Q => comp_b_tdata(2),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(30),
      Q => comp_b_tdata(30),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(31),
      Q => comp_b_tdata(31),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(3),
      Q => comp_b_tdata(3),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(4),
      Q => comp_b_tdata(4),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(5),
      Q => comp_b_tdata(5),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(6),
      Q => comp_b_tdata(6),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(7),
      Q => comp_b_tdata(7),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(8),
      Q => comp_b_tdata(8),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
\comp_b_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(9),
      Q => comp_b_tdata(9),
      R => \comp_b_tdata[31]_i_1_n_0\
    );
comp_f_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => comp_r_tvalid,
      Q => comp_f,
      R => fpu_stole_i_1_n_0
    );
\comp_op_tdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => \^comp_r_tready\,
      I2 => i_fles,
      I3 => i_flts,
      I4 => i_feqs,
      O => \comp_op_tdata[3]_i_1_n_0\
    );
\comp_op_tdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11001110"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => \^comp_r_tready\,
      I2 => i_fles,
      I3 => i_feqs,
      I4 => i_flts,
      O => \comp_op_tdata[4]_i_1_n_0\
    );
\comp_op_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \comp_op_tdata[3]_i_1_n_0\,
      Q => comp_op_tdata(0),
      R => '0'
    );
\comp_op_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \comp_op_tdata[4]_i_1_n_0\,
      Q => comp_op_tdata(1),
      R => '0'
    );
\div_a_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => i_fdivs,
      I2 => \^div_a_tvalid\,
      O => \div_a_tdata[31]_i_1_n_0\
    );
\div_a_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(0),
      R => \mul_a_tdata[0]_i_1_n_0\
    );
\div_a_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(10),
      R => \mul_a_tdata[10]_i_1_n_0\
    );
\div_a_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(11),
      R => \mul_a_tdata[11]_i_1_n_0\
    );
\div_a_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(12),
      R => \mul_a_tdata[12]_i_1_n_0\
    );
\div_a_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(13),
      R => \mul_a_tdata[13]_i_1_n_0\
    );
\div_a_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(14),
      R => \mul_a_tdata[14]_i_1_n_0\
    );
\div_a_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(15),
      R => \mul_a_tdata[15]_i_1_n_0\
    );
\div_a_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(16),
      R => \mul_a_tdata[16]_i_1_n_0\
    );
\div_a_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(17),
      R => \mul_a_tdata[17]_i_1_n_0\
    );
\div_a_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(18),
      R => \mul_a_tdata[18]_i_1_n_0\
    );
\div_a_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(19),
      R => \mul_a_tdata[19]_i_1_n_0\
    );
\div_a_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(1),
      R => \mul_a_tdata[1]_i_1_n_0\
    );
\div_a_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(20),
      R => \mul_a_tdata[20]_i_1_n_0\
    );
\div_a_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(21),
      R => \mul_a_tdata[21]_i_1_n_0\
    );
\div_a_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(22),
      R => \mul_a_tdata[22]_i_1_n_0\
    );
\div_a_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(23),
      R => \mul_a_tdata[23]_i_1_n_0\
    );
\div_a_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(24),
      R => \mul_a_tdata[24]_i_1_n_0\
    );
\div_a_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(25),
      R => \mul_a_tdata[25]_i_1_n_0\
    );
\div_a_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(26),
      R => \mul_a_tdata[26]_i_1_n_0\
    );
\div_a_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(27),
      R => \mul_a_tdata[27]_i_1_n_0\
    );
\div_a_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(28),
      R => \mul_a_tdata[28]_i_1_n_0\
    );
\div_a_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(29),
      R => \mul_a_tdata[29]_i_1_n_0\
    );
\div_a_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(2),
      R => \mul_a_tdata[2]_i_1_n_0\
    );
\div_a_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(30),
      R => \mul_a_tdata[30]_i_1_n_0\
    );
\div_a_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(31),
      R => \mul_a_tdata[31]_i_1_n_0\
    );
\div_a_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(3),
      R => \mul_a_tdata[3]_i_1_n_0\
    );
\div_a_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(4),
      R => \mul_a_tdata[4]_i_1_n_0\
    );
\div_a_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(5),
      R => \mul_a_tdata[5]_i_1_n_0\
    );
\div_a_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(6),
      R => \mul_a_tdata[6]_i_1_n_0\
    );
\div_a_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(7),
      R => \mul_a_tdata[7]_i_1_n_0\
    );
\div_a_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(8),
      R => \mul_a_tdata[8]_i_1_n_0\
    );
\div_a_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \div_a_tdata[31]_i_1_n_0\,
      Q => div_a_tdata(9),
      R => \mul_a_tdata[9]_i_1_n_0\
    );
div_a_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_fdivs,
      I1 => \^div_a_tvalid\,
      O => div_a_tvalid_i_1_n_0
    );
div_a_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => div_a_tvalid_i_1_n_0,
      Q => \^div_a_tvalid\,
      R => \^fpu_stole\
    );
\div_b_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^div_a_tvalid\,
      I1 => i_fdivs,
      I2 => \^fpu_stole\,
      O => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(0),
      Q => div_b_tdata(0),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(10),
      Q => div_b_tdata(10),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(11),
      Q => div_b_tdata(11),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(12),
      Q => div_b_tdata(12),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(13),
      Q => div_b_tdata(13),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(14),
      Q => div_b_tdata(14),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(15),
      Q => div_b_tdata(15),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(16),
      Q => div_b_tdata(16),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(17),
      Q => div_b_tdata(17),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(18),
      Q => div_b_tdata(18),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(19),
      Q => div_b_tdata(19),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(1),
      Q => div_b_tdata(1),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(20),
      Q => div_b_tdata(20),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(21),
      Q => div_b_tdata(21),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(22),
      Q => div_b_tdata(22),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(23),
      Q => div_b_tdata(23),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(24),
      Q => div_b_tdata(24),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(25),
      Q => div_b_tdata(25),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(26),
      Q => div_b_tdata(26),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(27),
      Q => div_b_tdata(27),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(28),
      Q => div_b_tdata(28),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(29),
      Q => div_b_tdata(29),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(2),
      Q => div_b_tdata(2),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(30),
      Q => div_b_tdata(30),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(31),
      Q => div_b_tdata(31),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(3),
      Q => div_b_tdata(3),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(4),
      Q => div_b_tdata(4),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(5),
      Q => div_b_tdata(5),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(6),
      Q => div_b_tdata(6),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(7),
      Q => div_b_tdata(7),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(8),
      Q => div_b_tdata(8),
      R => \div_b_tdata[31]_i_1_n_0\
    );
\div_b_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(9),
      Q => div_b_tdata(9),
      R => \div_b_tdata[31]_i_1_n_0\
    );
div_f_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => div_r_tvalid,
      Q => div_f,
      R => fpu_stole_i_1_n_0
    );
\fcvtsw_a_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => i_fcvtsw,
      I2 => \^fcvtsw_a_tvalid\,
      O => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(0),
      Q => fcvtsw_a_tdata(0),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(10),
      Q => fcvtsw_a_tdata(10),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(11),
      Q => fcvtsw_a_tdata(11),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(12),
      Q => fcvtsw_a_tdata(12),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(13),
      Q => fcvtsw_a_tdata(13),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(14),
      Q => fcvtsw_a_tdata(14),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(15),
      Q => fcvtsw_a_tdata(15),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(16),
      Q => fcvtsw_a_tdata(16),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(17),
      Q => fcvtsw_a_tdata(17),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(18),
      Q => fcvtsw_a_tdata(18),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(19),
      Q => fcvtsw_a_tdata(19),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(1),
      Q => fcvtsw_a_tdata(1),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(20),
      Q => fcvtsw_a_tdata(20),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(21),
      Q => fcvtsw_a_tdata(21),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(22),
      Q => fcvtsw_a_tdata(22),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(23),
      Q => fcvtsw_a_tdata(23),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(24),
      Q => fcvtsw_a_tdata(24),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(25),
      Q => fcvtsw_a_tdata(25),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(26),
      Q => fcvtsw_a_tdata(26),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(27),
      Q => fcvtsw_a_tdata(27),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(28),
      Q => fcvtsw_a_tdata(28),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(29),
      Q => fcvtsw_a_tdata(29),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(2),
      Q => fcvtsw_a_tdata(2),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(30),
      Q => fcvtsw_a_tdata(30),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(31),
      Q => fcvtsw_a_tdata(31),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(3),
      Q => fcvtsw_a_tdata(3),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(4),
      Q => fcvtsw_a_tdata(4),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(5),
      Q => fcvtsw_a_tdata(5),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(6),
      Q => fcvtsw_a_tdata(6),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(7),
      Q => fcvtsw_a_tdata(7),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(8),
      Q => fcvtsw_a_tdata(8),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
\fcvtsw_a_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rs1(9),
      Q => fcvtsw_a_tdata(9),
      R => \fcvtsw_a_tdata[31]_i_1_n_0\
    );
fcvtsw_a_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => \^fcvtsw_a_tvalid\,
      O => fcvtsw_a_tvalid_i_1_n_0
    );
fcvtsw_a_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fcvtsw_a_tvalid_i_1_n_0,
      Q => \^fcvtsw_a_tvalid\,
      R => \^fpu_stole\
    );
fcvtsw_f_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fcvtsw_r_tvalid,
      Q => fcvtsw_f,
      R => fpu_stole_i_1_n_0
    );
\fcvtws_a_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => i_fcvtws,
      I2 => \^fcvtws_a_tvalid\,
      O => \fcvtws_a_tdata[31]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(0),
      R => \mul_a_tdata[0]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(10),
      R => \mul_a_tdata[10]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(11),
      R => \mul_a_tdata[11]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(12),
      R => \mul_a_tdata[12]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(13),
      R => \mul_a_tdata[13]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(14),
      R => \mul_a_tdata[14]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(15),
      R => \mul_a_tdata[15]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(16),
      R => \mul_a_tdata[16]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(17),
      R => \mul_a_tdata[17]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(18),
      R => \mul_a_tdata[18]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(19),
      R => \mul_a_tdata[19]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(1),
      R => \mul_a_tdata[1]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(20),
      R => \mul_a_tdata[20]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(21),
      R => \mul_a_tdata[21]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(22),
      R => \mul_a_tdata[22]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(23),
      R => \mul_a_tdata[23]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(24),
      R => \mul_a_tdata[24]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(25),
      R => \mul_a_tdata[25]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(26),
      R => \mul_a_tdata[26]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(27),
      R => \mul_a_tdata[27]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(28),
      R => \mul_a_tdata[28]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(29),
      R => \mul_a_tdata[29]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(2),
      R => \mul_a_tdata[2]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(30),
      R => \mul_a_tdata[30]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(31),
      R => \mul_a_tdata[31]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(3),
      R => \mul_a_tdata[3]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(4),
      R => \mul_a_tdata[4]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(5),
      R => \mul_a_tdata[5]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(6),
      R => \mul_a_tdata[6]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(7),
      R => \mul_a_tdata[7]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(8),
      R => \mul_a_tdata[8]_i_1_n_0\
    );
\fcvtws_a_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fcvtws_a_tdata[31]_i_1_n_0\,
      Q => fcvtws_a_tdata(9),
      R => \mul_a_tdata[9]_i_1_n_0\
    );
fcvtws_a_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_fcvtws,
      I1 => \^fcvtws_a_tvalid\,
      O => fcvtws_a_tvalid_i_1_n_0
    );
fcvtws_a_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fcvtws_a_tvalid_i_1_n_0,
      Q => \^fcvtws_a_tvalid\,
      R => \^fpu_stole\
    );
fcvtws_f_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fcvtws_r_tvalid,
      Q => fcvtws_f,
      R => fpu_stole_i_1_n_0
    );
\fpu_result[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(0),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[0]_i_2_n_0\,
      I3 => \fpu_result[0]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[0]_i_4_n_0\,
      O => \fpu_result[0]_i_1_n_0\
    );
\fpu_result[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(0),
      O => \fpu_result[0]_i_2_n_0\
    );
\fpu_result[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(0),
      I3 => fsqrts_r_tdata(0),
      I4 => i_fsqrts,
      O => \fpu_result[0]_i_3_n_0\
    );
\fpu_result[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(0),
      I1 => i_fmuls,
      I2 => div_r_tdata(0),
      I3 => i_fdivs,
      I4 => comp_r_tdata(0),
      O => \fpu_result[0]_i_4_n_0\
    );
\fpu_result[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(10),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[10]_i_2_n_0\,
      I3 => \fpu_result[10]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[10]_i_4_n_0\,
      O => \fpu_result[10]_i_1_n_0\
    );
\fpu_result[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(10),
      O => \fpu_result[10]_i_2_n_0\
    );
\fpu_result[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(10),
      I3 => fsqrts_r_tdata(10),
      I4 => i_fsqrts,
      O => \fpu_result[10]_i_3_n_0\
    );
\fpu_result[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(10),
      I1 => i_fmuls,
      I2 => div_r_tdata(10),
      I3 => i_fdivs,
      I4 => comp_r_tdata(10),
      O => \fpu_result[10]_i_4_n_0\
    );
\fpu_result[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(11),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[11]_i_2_n_0\,
      I3 => \fpu_result[11]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[11]_i_4_n_0\,
      O => \fpu_result[11]_i_1_n_0\
    );
\fpu_result[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(11),
      O => \fpu_result[11]_i_2_n_0\
    );
\fpu_result[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(11),
      I3 => fsqrts_r_tdata(11),
      I4 => i_fsqrts,
      O => \fpu_result[11]_i_3_n_0\
    );
\fpu_result[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(11),
      I1 => i_fmuls,
      I2 => div_r_tdata(11),
      I3 => i_fdivs,
      I4 => comp_r_tdata(11),
      O => \fpu_result[11]_i_4_n_0\
    );
\fpu_result[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(12),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[12]_i_2_n_0\,
      I3 => \fpu_result[12]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[12]_i_4_n_0\,
      O => \fpu_result[12]_i_1_n_0\
    );
\fpu_result[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(12),
      O => \fpu_result[12]_i_2_n_0\
    );
\fpu_result[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(12),
      I3 => fsqrts_r_tdata(12),
      I4 => i_fsqrts,
      O => \fpu_result[12]_i_3_n_0\
    );
\fpu_result[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(12),
      I1 => i_fmuls,
      I2 => div_r_tdata(12),
      I3 => i_fdivs,
      I4 => comp_r_tdata(12),
      O => \fpu_result[12]_i_4_n_0\
    );
\fpu_result[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(13),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[13]_i_2_n_0\,
      I3 => \fpu_result[13]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[13]_i_4_n_0\,
      O => \fpu_result[13]_i_1_n_0\
    );
\fpu_result[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(13),
      O => \fpu_result[13]_i_2_n_0\
    );
\fpu_result[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(13),
      I3 => fsqrts_r_tdata(13),
      I4 => i_fsqrts,
      O => \fpu_result[13]_i_3_n_0\
    );
\fpu_result[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(13),
      I1 => i_fmuls,
      I2 => div_r_tdata(13),
      I3 => i_fdivs,
      I4 => comp_r_tdata(13),
      O => \fpu_result[13]_i_4_n_0\
    );
\fpu_result[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(14),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[14]_i_2_n_0\,
      I3 => \fpu_result[14]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[14]_i_4_n_0\,
      O => \fpu_result[14]_i_1_n_0\
    );
\fpu_result[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(14),
      O => \fpu_result[14]_i_2_n_0\
    );
\fpu_result[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(14),
      I3 => fsqrts_r_tdata(14),
      I4 => i_fsqrts,
      O => \fpu_result[14]_i_3_n_0\
    );
\fpu_result[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(14),
      I1 => i_fmuls,
      I2 => div_r_tdata(14),
      I3 => i_fdivs,
      I4 => comp_r_tdata(14),
      O => \fpu_result[14]_i_4_n_0\
    );
\fpu_result[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(15),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[15]_i_2_n_0\,
      I3 => \fpu_result[15]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[15]_i_4_n_0\,
      O => \fpu_result[15]_i_1_n_0\
    );
\fpu_result[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(15),
      O => \fpu_result[15]_i_2_n_0\
    );
\fpu_result[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(15),
      I3 => fsqrts_r_tdata(15),
      I4 => i_fsqrts,
      O => \fpu_result[15]_i_3_n_0\
    );
\fpu_result[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(15),
      I1 => i_fmuls,
      I2 => div_r_tdata(15),
      I3 => i_fdivs,
      I4 => comp_r_tdata(15),
      O => \fpu_result[15]_i_4_n_0\
    );
\fpu_result[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(16),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[16]_i_2_n_0\,
      I3 => \fpu_result[16]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[16]_i_4_n_0\,
      O => \fpu_result[16]_i_1_n_0\
    );
\fpu_result[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(16),
      O => \fpu_result[16]_i_2_n_0\
    );
\fpu_result[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(16),
      I3 => fsqrts_r_tdata(16),
      I4 => i_fsqrts,
      O => \fpu_result[16]_i_3_n_0\
    );
\fpu_result[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(16),
      I1 => i_fmuls,
      I2 => div_r_tdata(16),
      I3 => i_fdivs,
      I4 => comp_r_tdata(16),
      O => \fpu_result[16]_i_4_n_0\
    );
\fpu_result[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACFAAAAAA03"
    )
        port map (
      I0 => addsub_r_tdata(17),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[17]_i_2_n_0\,
      I3 => i_fadds,
      I4 => i_fsubs,
      I5 => \fpu_result[17]_i_3_n_0\,
      O => \fpu_result[17]_i_1_n_0\
    );
\fpu_result[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF47774777"
    )
        port map (
      I0 => fcvtws_r_tdata(17),
      I1 => i_fcvtws,
      I2 => fsqrts_r_tdata(17),
      I3 => i_fsqrts,
      I4 => fcvtsw_r_tdata(17),
      I5 => i_fcvtsw,
      O => \fpu_result[17]_i_2_n_0\
    );
\fpu_result[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(17),
      I1 => i_fmuls,
      I2 => div_r_tdata(17),
      I3 => i_fdivs,
      I4 => comp_r_tdata(17),
      O => \fpu_result[17]_i_3_n_0\
    );
\fpu_result[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(18),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[18]_i_2_n_0\,
      I3 => \fpu_result[18]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[18]_i_4_n_0\,
      O => \fpu_result[18]_i_1_n_0\
    );
\fpu_result[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(18),
      O => \fpu_result[18]_i_2_n_0\
    );
\fpu_result[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(18),
      I3 => fsqrts_r_tdata(18),
      I4 => i_fsqrts,
      O => \fpu_result[18]_i_3_n_0\
    );
\fpu_result[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(18),
      I1 => i_fmuls,
      I2 => div_r_tdata(18),
      I3 => i_fdivs,
      I4 => comp_r_tdata(18),
      O => \fpu_result[18]_i_4_n_0\
    );
\fpu_result[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(19),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[19]_i_2_n_0\,
      I3 => \fpu_result[19]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[19]_i_4_n_0\,
      O => \fpu_result[19]_i_1_n_0\
    );
\fpu_result[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(19),
      O => \fpu_result[19]_i_2_n_0\
    );
\fpu_result[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(19),
      I3 => fsqrts_r_tdata(19),
      I4 => i_fsqrts,
      O => \fpu_result[19]_i_3_n_0\
    );
\fpu_result[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(19),
      I1 => i_fmuls,
      I2 => div_r_tdata(19),
      I3 => i_fdivs,
      I4 => comp_r_tdata(19),
      O => \fpu_result[19]_i_4_n_0\
    );
\fpu_result[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(1),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[1]_i_2_n_0\,
      I3 => \fpu_result[1]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[1]_i_4_n_0\,
      O => \fpu_result[1]_i_1_n_0\
    );
\fpu_result[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(1),
      O => \fpu_result[1]_i_2_n_0\
    );
\fpu_result[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(1),
      I3 => fsqrts_r_tdata(1),
      I4 => i_fsqrts,
      O => \fpu_result[1]_i_3_n_0\
    );
\fpu_result[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(1),
      I1 => i_fmuls,
      I2 => div_r_tdata(1),
      I3 => i_fdivs,
      I4 => comp_r_tdata(1),
      O => \fpu_result[1]_i_4_n_0\
    );
\fpu_result[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(20),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[20]_i_2_n_0\,
      I3 => \fpu_result[20]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[20]_i_4_n_0\,
      O => \fpu_result[20]_i_1_n_0\
    );
\fpu_result[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(20),
      O => \fpu_result[20]_i_2_n_0\
    );
\fpu_result[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(20),
      I3 => fsqrts_r_tdata(20),
      I4 => i_fsqrts,
      O => \fpu_result[20]_i_3_n_0\
    );
\fpu_result[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(20),
      I1 => i_fmuls,
      I2 => div_r_tdata(20),
      I3 => i_fdivs,
      I4 => comp_r_tdata(20),
      O => \fpu_result[20]_i_4_n_0\
    );
\fpu_result[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(21),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[21]_i_2_n_0\,
      I3 => \fpu_result[21]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[21]_i_4_n_0\,
      O => \fpu_result[21]_i_1_n_0\
    );
\fpu_result[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(21),
      O => \fpu_result[21]_i_2_n_0\
    );
\fpu_result[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(21),
      I3 => fsqrts_r_tdata(21),
      I4 => i_fsqrts,
      O => \fpu_result[21]_i_3_n_0\
    );
\fpu_result[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(21),
      I1 => i_fmuls,
      I2 => div_r_tdata(21),
      I3 => i_fdivs,
      I4 => comp_r_tdata(21),
      O => \fpu_result[21]_i_4_n_0\
    );
\fpu_result[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(22),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[22]_i_2_n_0\,
      I3 => \fpu_result[22]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[22]_i_4_n_0\,
      O => \fpu_result[22]_i_1_n_0\
    );
\fpu_result[22]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(22),
      O => \fpu_result[22]_i_2_n_0\
    );
\fpu_result[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(22),
      I3 => fsqrts_r_tdata(22),
      I4 => i_fsqrts,
      O => \fpu_result[22]_i_3_n_0\
    );
\fpu_result[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(22),
      I1 => i_fmuls,
      I2 => div_r_tdata(22),
      I3 => i_fdivs,
      I4 => comp_r_tdata(22),
      O => \fpu_result[22]_i_4_n_0\
    );
\fpu_result[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(23),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[23]_i_2_n_0\,
      I3 => \fpu_result[23]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[23]_i_4_n_0\,
      O => \fpu_result[23]_i_1_n_0\
    );
\fpu_result[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(23),
      O => \fpu_result[23]_i_2_n_0\
    );
\fpu_result[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(23),
      I3 => fsqrts_r_tdata(23),
      I4 => i_fsqrts,
      O => \fpu_result[23]_i_3_n_0\
    );
\fpu_result[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(23),
      I1 => i_fmuls,
      I2 => div_r_tdata(23),
      I3 => i_fdivs,
      I4 => comp_r_tdata(23),
      O => \fpu_result[23]_i_4_n_0\
    );
\fpu_result[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(24),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[24]_i_2_n_0\,
      I3 => \fpu_result[24]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[24]_i_4_n_0\,
      O => \fpu_result[24]_i_1_n_0\
    );
\fpu_result[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(24),
      O => \fpu_result[24]_i_2_n_0\
    );
\fpu_result[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(24),
      I3 => fsqrts_r_tdata(24),
      I4 => i_fsqrts,
      O => \fpu_result[24]_i_3_n_0\
    );
\fpu_result[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(24),
      I1 => i_fmuls,
      I2 => div_r_tdata(24),
      I3 => i_fdivs,
      I4 => comp_r_tdata(24),
      O => \fpu_result[24]_i_4_n_0\
    );
\fpu_result[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(25),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[25]_i_2_n_0\,
      I3 => \fpu_result[25]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[25]_i_4_n_0\,
      O => \fpu_result[25]_i_1_n_0\
    );
\fpu_result[25]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(25),
      O => \fpu_result[25]_i_2_n_0\
    );
\fpu_result[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(25),
      I3 => fsqrts_r_tdata(25),
      I4 => i_fsqrts,
      O => \fpu_result[25]_i_3_n_0\
    );
\fpu_result[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(25),
      I1 => i_fmuls,
      I2 => div_r_tdata(25),
      I3 => i_fdivs,
      I4 => comp_r_tdata(25),
      O => \fpu_result[25]_i_4_n_0\
    );
\fpu_result[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(26),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[26]_i_2_n_0\,
      I3 => \fpu_result[26]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[26]_i_4_n_0\,
      O => \fpu_result[26]_i_1_n_0\
    );
\fpu_result[26]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(26),
      O => \fpu_result[26]_i_2_n_0\
    );
\fpu_result[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(26),
      I3 => fsqrts_r_tdata(26),
      I4 => i_fsqrts,
      O => \fpu_result[26]_i_3_n_0\
    );
\fpu_result[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(26),
      I1 => i_fmuls,
      I2 => div_r_tdata(26),
      I3 => i_fdivs,
      I4 => comp_r_tdata(26),
      O => \fpu_result[26]_i_4_n_0\
    );
\fpu_result[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(27),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[27]_i_2_n_0\,
      I3 => \fpu_result[27]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[27]_i_4_n_0\,
      O => \fpu_result[27]_i_1_n_0\
    );
\fpu_result[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(27),
      O => \fpu_result[27]_i_2_n_0\
    );
\fpu_result[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(27),
      I3 => fsqrts_r_tdata(27),
      I4 => i_fsqrts,
      O => \fpu_result[27]_i_3_n_0\
    );
\fpu_result[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(27),
      I1 => i_fmuls,
      I2 => div_r_tdata(27),
      I3 => i_fdivs,
      I4 => comp_r_tdata(27),
      O => \fpu_result[27]_i_4_n_0\
    );
\fpu_result[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(28),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[28]_i_2_n_0\,
      I3 => \fpu_result[28]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[28]_i_5_n_0\,
      O => \fpu_result[28]_i_1_n_0\
    );
\fpu_result[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(28),
      O => \fpu_result[28]_i_2_n_0\
    );
\fpu_result[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(28),
      I3 => fsqrts_r_tdata(28),
      I4 => i_fsqrts,
      O => \fpu_result[28]_i_3_n_0\
    );
\fpu_result[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_fsubs,
      I1 => i_fadds,
      O => \fpu_result[28]_i_4_n_0\
    );
\fpu_result[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(28),
      I1 => i_fmuls,
      I2 => div_r_tdata(28),
      I3 => i_fdivs,
      I4 => comp_r_tdata(28),
      O => \fpu_result[28]_i_5_n_0\
    );
\fpu_result[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACFAAAAAA03"
    )
        port map (
      I0 => addsub_r_tdata(29),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[29]_i_2_n_0\,
      I3 => i_fadds,
      I4 => i_fsubs,
      I5 => \fpu_result[29]_i_3_n_0\,
      O => \fpu_result[29]_i_1_n_0\
    );
\fpu_result[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF47774777"
    )
        port map (
      I0 => fcvtws_r_tdata(29),
      I1 => i_fcvtws,
      I2 => fsqrts_r_tdata(29),
      I3 => i_fsqrts,
      I4 => fcvtsw_r_tdata(29),
      I5 => i_fcvtsw,
      O => \fpu_result[29]_i_2_n_0\
    );
\fpu_result[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(29),
      I1 => i_fmuls,
      I2 => div_r_tdata(29),
      I3 => i_fdivs,
      I4 => comp_r_tdata(29),
      O => \fpu_result[29]_i_3_n_0\
    );
\fpu_result[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(2),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[2]_i_2_n_0\,
      I3 => \fpu_result[2]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[2]_i_4_n_0\,
      O => \fpu_result[2]_i_1_n_0\
    );
\fpu_result[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(2),
      O => \fpu_result[2]_i_2_n_0\
    );
\fpu_result[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(2),
      I3 => fsqrts_r_tdata(2),
      I4 => i_fsqrts,
      O => \fpu_result[2]_i_3_n_0\
    );
\fpu_result[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(2),
      I1 => i_fmuls,
      I2 => div_r_tdata(2),
      I3 => i_fdivs,
      I4 => comp_r_tdata(2),
      O => \fpu_result[2]_i_4_n_0\
    );
\fpu_result[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACFAAAAAA03"
    )
        port map (
      I0 => addsub_r_tdata(30),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[30]_i_2_n_0\,
      I3 => i_fadds,
      I4 => i_fsubs,
      I5 => \fpu_result[30]_i_3_n_0\,
      O => \fpu_result[30]_i_1_n_0\
    );
\fpu_result[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF47774777"
    )
        port map (
      I0 => fcvtws_r_tdata(30),
      I1 => i_fcvtws,
      I2 => fsqrts_r_tdata(30),
      I3 => i_fsqrts,
      I4 => fcvtsw_r_tdata(30),
      I5 => i_fcvtsw,
      O => \fpu_result[30]_i_2_n_0\
    );
\fpu_result[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(30),
      I1 => i_fmuls,
      I2 => div_r_tdata(30),
      I3 => i_fdivs,
      I4 => comp_r_tdata(30),
      O => \fpu_result[30]_i_3_n_0\
    );
\fpu_result[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACFAAAAAA03"
    )
        port map (
      I0 => addsub_r_tdata(31),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[31]_i_3_n_0\,
      I3 => i_fadds,
      I4 => i_fsubs,
      I5 => \fpu_result[31]_i_4_n_0\,
      O => \fpu_result[31]_i_1_n_0\
    );
\fpu_result[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => i_feqs,
      I1 => i_flts,
      I2 => i_fles,
      I3 => i_fdivs,
      I4 => i_fmuls,
      O => \fpu_result[31]_i_2_n_0\
    );
\fpu_result[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF47774777"
    )
        port map (
      I0 => fcvtws_r_tdata(31),
      I1 => i_fcvtws,
      I2 => fsqrts_r_tdata(31),
      I3 => i_fsqrts,
      I4 => fcvtsw_r_tdata(31),
      I5 => i_fcvtsw,
      O => \fpu_result[31]_i_3_n_0\
    );
\fpu_result[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(31),
      I1 => i_fmuls,
      I2 => div_r_tdata(31),
      I3 => i_fdivs,
      I4 => comp_r_tdata(31),
      O => \fpu_result[31]_i_4_n_0\
    );
\fpu_result[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(3),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[3]_i_2_n_0\,
      I3 => \fpu_result[3]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[3]_i_4_n_0\,
      O => \fpu_result[3]_i_1_n_0\
    );
\fpu_result[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(3),
      O => \fpu_result[3]_i_2_n_0\
    );
\fpu_result[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(3),
      I3 => fsqrts_r_tdata(3),
      I4 => i_fsqrts,
      O => \fpu_result[3]_i_3_n_0\
    );
\fpu_result[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(3),
      I1 => i_fmuls,
      I2 => div_r_tdata(3),
      I3 => i_fdivs,
      I4 => comp_r_tdata(3),
      O => \fpu_result[3]_i_4_n_0\
    );
\fpu_result[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(4),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[4]_i_2_n_0\,
      I3 => \fpu_result[4]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[4]_i_4_n_0\,
      O => \fpu_result[4]_i_1_n_0\
    );
\fpu_result[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(4),
      O => \fpu_result[4]_i_2_n_0\
    );
\fpu_result[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(4),
      I3 => fsqrts_r_tdata(4),
      I4 => i_fsqrts,
      O => \fpu_result[4]_i_3_n_0\
    );
\fpu_result[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(4),
      I1 => i_fmuls,
      I2 => div_r_tdata(4),
      I3 => i_fdivs,
      I4 => comp_r_tdata(4),
      O => \fpu_result[4]_i_4_n_0\
    );
\fpu_result[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(5),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[5]_i_2_n_0\,
      I3 => \fpu_result[5]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[5]_i_4_n_0\,
      O => \fpu_result[5]_i_1_n_0\
    );
\fpu_result[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(5),
      O => \fpu_result[5]_i_2_n_0\
    );
\fpu_result[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(5),
      I3 => fsqrts_r_tdata(5),
      I4 => i_fsqrts,
      O => \fpu_result[5]_i_3_n_0\
    );
\fpu_result[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(5),
      I1 => i_fmuls,
      I2 => div_r_tdata(5),
      I3 => i_fdivs,
      I4 => comp_r_tdata(5),
      O => \fpu_result[5]_i_4_n_0\
    );
\fpu_result[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACFAAAAAA03"
    )
        port map (
      I0 => addsub_r_tdata(6),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[6]_i_2_n_0\,
      I3 => i_fadds,
      I4 => i_fsubs,
      I5 => \fpu_result[6]_i_3_n_0\,
      O => \fpu_result[6]_i_1_n_0\
    );
\fpu_result[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF47774777"
    )
        port map (
      I0 => fcvtws_r_tdata(6),
      I1 => i_fcvtws,
      I2 => fsqrts_r_tdata(6),
      I3 => i_fsqrts,
      I4 => fcvtsw_r_tdata(6),
      I5 => i_fcvtsw,
      O => \fpu_result[6]_i_2_n_0\
    );
\fpu_result[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(6),
      I1 => i_fmuls,
      I2 => div_r_tdata(6),
      I3 => i_fdivs,
      I4 => comp_r_tdata(6),
      O => \fpu_result[6]_i_3_n_0\
    );
\fpu_result[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAACFAAAAAA03"
    )
        port map (
      I0 => addsub_r_tdata(7),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[7]_i_2_n_0\,
      I3 => i_fadds,
      I4 => i_fsubs,
      I5 => \fpu_result[7]_i_3_n_0\,
      O => \fpu_result[7]_i_1_n_0\
    );
\fpu_result[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF47774777"
    )
        port map (
      I0 => fcvtws_r_tdata(7),
      I1 => i_fcvtws,
      I2 => fsqrts_r_tdata(7),
      I3 => i_fsqrts,
      I4 => fcvtsw_r_tdata(7),
      I5 => i_fcvtsw,
      O => \fpu_result[7]_i_2_n_0\
    );
\fpu_result[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(7),
      I1 => i_fmuls,
      I2 => div_r_tdata(7),
      I3 => i_fdivs,
      I4 => comp_r_tdata(7),
      O => \fpu_result[7]_i_3_n_0\
    );
\fpu_result[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(8),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[8]_i_2_n_0\,
      I3 => \fpu_result[8]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[8]_i_4_n_0\,
      O => \fpu_result[8]_i_1_n_0\
    );
\fpu_result[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(8),
      O => \fpu_result[8]_i_2_n_0\
    );
\fpu_result[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(8),
      I3 => fsqrts_r_tdata(8),
      I4 => i_fsqrts,
      O => \fpu_result[8]_i_3_n_0\
    );
\fpu_result[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(8),
      I1 => i_fmuls,
      I2 => div_r_tdata(8),
      I3 => i_fdivs,
      I4 => comp_r_tdata(8),
      O => \fpu_result[8]_i_4_n_0\
    );
\fpu_result[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA3033AAAA"
    )
        port map (
      I0 => addsub_r_tdata(9),
      I1 => \fpu_result[31]_i_2_n_0\,
      I2 => \fpu_result[9]_i_2_n_0\,
      I3 => \fpu_result[9]_i_3_n_0\,
      I4 => \fpu_result[28]_i_4_n_0\,
      I5 => \fpu_result[9]_i_4_n_0\,
      O => \fpu_result[9]_i_1_n_0\
    );
\fpu_result[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => fcvtsw_r_tdata(9),
      O => \fpu_result[9]_i_2_n_0\
    );
\fpu_result[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEBFBFBF"
    )
        port map (
      I0 => i_fcvtsw,
      I1 => i_fcvtws,
      I2 => fcvtws_r_tdata(9),
      I3 => fsqrts_r_tdata(9),
      I4 => i_fsqrts,
      O => \fpu_result[9]_i_3_n_0\
    );
\fpu_result[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => mul_r_tdata(9),
      I1 => i_fmuls,
      I2 => div_r_tdata(9),
      I3 => i_fdivs,
      I4 => comp_r_tdata(9),
      O => \fpu_result[9]_i_4_n_0\
    );
\fpu_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[0]_i_1_n_0\,
      Q => fpu_result(0),
      R => '0'
    );
\fpu_result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[10]_i_1_n_0\,
      Q => fpu_result(10),
      R => '0'
    );
\fpu_result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[11]_i_1_n_0\,
      Q => fpu_result(11),
      R => '0'
    );
\fpu_result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[12]_i_1_n_0\,
      Q => fpu_result(12),
      R => '0'
    );
\fpu_result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[13]_i_1_n_0\,
      Q => fpu_result(13),
      R => '0'
    );
\fpu_result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[14]_i_1_n_0\,
      Q => fpu_result(14),
      R => '0'
    );
\fpu_result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[15]_i_1_n_0\,
      Q => fpu_result(15),
      R => '0'
    );
\fpu_result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[16]_i_1_n_0\,
      Q => fpu_result(16),
      R => '0'
    );
\fpu_result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[17]_i_1_n_0\,
      Q => fpu_result(17),
      R => '0'
    );
\fpu_result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[18]_i_1_n_0\,
      Q => fpu_result(18),
      R => '0'
    );
\fpu_result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[19]_i_1_n_0\,
      Q => fpu_result(19),
      R => '0'
    );
\fpu_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[1]_i_1_n_0\,
      Q => fpu_result(1),
      R => '0'
    );
\fpu_result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[20]_i_1_n_0\,
      Q => fpu_result(20),
      R => '0'
    );
\fpu_result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[21]_i_1_n_0\,
      Q => fpu_result(21),
      R => '0'
    );
\fpu_result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[22]_i_1_n_0\,
      Q => fpu_result(22),
      R => '0'
    );
\fpu_result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[23]_i_1_n_0\,
      Q => fpu_result(23),
      R => '0'
    );
\fpu_result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[24]_i_1_n_0\,
      Q => fpu_result(24),
      R => '0'
    );
\fpu_result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[25]_i_1_n_0\,
      Q => fpu_result(25),
      R => '0'
    );
\fpu_result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[26]_i_1_n_0\,
      Q => fpu_result(26),
      R => '0'
    );
\fpu_result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[27]_i_1_n_0\,
      Q => fpu_result(27),
      R => '0'
    );
\fpu_result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[28]_i_1_n_0\,
      Q => fpu_result(28),
      R => '0'
    );
\fpu_result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[29]_i_1_n_0\,
      Q => fpu_result(29),
      R => '0'
    );
\fpu_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[2]_i_1_n_0\,
      Q => fpu_result(2),
      R => '0'
    );
\fpu_result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[30]_i_1_n_0\,
      Q => fpu_result(30),
      R => '0'
    );
\fpu_result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[31]_i_1_n_0\,
      Q => fpu_result(31),
      R => '0'
    );
\fpu_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[3]_i_1_n_0\,
      Q => fpu_result(3),
      R => '0'
    );
\fpu_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[4]_i_1_n_0\,
      Q => fpu_result(4),
      R => '0'
    );
\fpu_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[5]_i_1_n_0\,
      Q => fpu_result(5),
      R => '0'
    );
\fpu_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[6]_i_1_n_0\,
      Q => fpu_result(6),
      R => '0'
    );
\fpu_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[7]_i_1_n_0\,
      Q => fpu_result(7),
      R => '0'
    );
\fpu_result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[8]_i_1_n_0\,
      Q => fpu_result(8),
      R => '0'
    );
\fpu_result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fpu_result[9]_i_1_n_0\,
      Q => fpu_result(9),
      R => '0'
    );
fpu_stole_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_N,
      O => fpu_stole_i_1_n_0
    );
fpu_stole_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFEFFFEF"
    )
        port map (
      I0 => fpu_stole_i_3_n_0,
      I1 => i_fcvtsw,
      I2 => \fpu_result[28]_i_4_n_0\,
      I3 => \fpu_result[31]_i_2_n_0\,
      I4 => tvalid_once,
      I5 => \^fpu_stole\,
      O => fpu_stole_i_2_n_0
    );
fpu_stole_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_fsqrts,
      I1 => i_fcvtws,
      O => fpu_stole_i_3_n_0
    );
fpu_stole_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fpu_stole_i_2_n_0,
      Q => \^fpu_stole\,
      R => fpu_stole_i_1_n_0
    );
\fsqrts_a_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => i_fsqrts,
      I2 => \^fsqrts_a_tvalid\,
      O => \fsqrts_a_tdata[31]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(0),
      R => \mul_a_tdata[0]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(10),
      R => \mul_a_tdata[10]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(11),
      R => \mul_a_tdata[11]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(12),
      R => \mul_a_tdata[12]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(13),
      R => \mul_a_tdata[13]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(14),
      R => \mul_a_tdata[14]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(15),
      R => \mul_a_tdata[15]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(16),
      R => \mul_a_tdata[16]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(17),
      R => \mul_a_tdata[17]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(18),
      R => \mul_a_tdata[18]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(19),
      R => \mul_a_tdata[19]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(1),
      R => \mul_a_tdata[1]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(20),
      R => \mul_a_tdata[20]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(21),
      R => \mul_a_tdata[21]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(22),
      R => \mul_a_tdata[22]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(23),
      R => \mul_a_tdata[23]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(24),
      R => \mul_a_tdata[24]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(25),
      R => \mul_a_tdata[25]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(26),
      R => \mul_a_tdata[26]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(27),
      R => \mul_a_tdata[27]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(28),
      R => \mul_a_tdata[28]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(29),
      R => \mul_a_tdata[29]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(2),
      R => \mul_a_tdata[2]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(30),
      R => \mul_a_tdata[30]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(31),
      R => \mul_a_tdata[31]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(3),
      R => \mul_a_tdata[3]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(4),
      R => \mul_a_tdata[4]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(5),
      R => \mul_a_tdata[5]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(6),
      R => \mul_a_tdata[6]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(7),
      R => \mul_a_tdata[7]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(8),
      R => \mul_a_tdata[8]_i_1_n_0\
    );
\fsqrts_a_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \fsqrts_a_tdata[31]_i_1_n_0\,
      Q => fsqrts_a_tdata(9),
      R => \mul_a_tdata[9]_i_1_n_0\
    );
fsqrts_a_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_fsqrts,
      I1 => \^fsqrts_a_tvalid\,
      O => fsqrts_a_tvalid_i_1_n_0
    );
fsqrts_a_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fsqrts_a_tvalid_i_1_n_0,
      Q => \^fsqrts_a_tvalid\,
      R => \^fpu_stole\
    );
fsqrts_f_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fsqrts_r_tvalid,
      Q => fsqrts_f,
      R => fpu_stole_i_1_n_0
    );
\mul_a_tdata[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(0),
      O => \mul_a_tdata[0]_i_1_n_0\
    );
\mul_a_tdata[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(10),
      O => \mul_a_tdata[10]_i_1_n_0\
    );
\mul_a_tdata[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(11),
      O => \mul_a_tdata[11]_i_1_n_0\
    );
\mul_a_tdata[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(12),
      O => \mul_a_tdata[12]_i_1_n_0\
    );
\mul_a_tdata[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(13),
      O => \mul_a_tdata[13]_i_1_n_0\
    );
\mul_a_tdata[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(14),
      O => \mul_a_tdata[14]_i_1_n_0\
    );
\mul_a_tdata[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(15),
      O => \mul_a_tdata[15]_i_1_n_0\
    );
\mul_a_tdata[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(16),
      O => \mul_a_tdata[16]_i_1_n_0\
    );
\mul_a_tdata[17]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(17),
      O => \mul_a_tdata[17]_i_1_n_0\
    );
\mul_a_tdata[18]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(18),
      O => \mul_a_tdata[18]_i_1_n_0\
    );
\mul_a_tdata[19]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(19),
      O => \mul_a_tdata[19]_i_1_n_0\
    );
\mul_a_tdata[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(1),
      O => \mul_a_tdata[1]_i_1_n_0\
    );
\mul_a_tdata[20]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(20),
      O => \mul_a_tdata[20]_i_1_n_0\
    );
\mul_a_tdata[21]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(21),
      O => \mul_a_tdata[21]_i_1_n_0\
    );
\mul_a_tdata[22]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(22),
      O => \mul_a_tdata[22]_i_1_n_0\
    );
\mul_a_tdata[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(23),
      O => \mul_a_tdata[23]_i_1_n_0\
    );
\mul_a_tdata[24]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(24),
      O => \mul_a_tdata[24]_i_1_n_0\
    );
\mul_a_tdata[25]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(25),
      O => \mul_a_tdata[25]_i_1_n_0\
    );
\mul_a_tdata[26]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(26),
      O => \mul_a_tdata[26]_i_1_n_0\
    );
\mul_a_tdata[27]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(27),
      O => \mul_a_tdata[27]_i_1_n_0\
    );
\mul_a_tdata[28]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(28),
      O => \mul_a_tdata[28]_i_1_n_0\
    );
\mul_a_tdata[29]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(29),
      O => \mul_a_tdata[29]_i_1_n_0\
    );
\mul_a_tdata[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(2),
      O => \mul_a_tdata[2]_i_1_n_0\
    );
\mul_a_tdata[30]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(30),
      O => \mul_a_tdata[30]_i_1_n_0\
    );
\mul_a_tdata[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(31),
      O => \mul_a_tdata[31]_i_1_n_0\
    );
\mul_a_tdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^fpu_stole\,
      I1 => i_fmuls,
      I2 => \^mul_a_tvalid\,
      O => \mul_a_tdata[31]_i_2_n_0\
    );
\mul_a_tdata[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(3),
      O => \mul_a_tdata[3]_i_1_n_0\
    );
\mul_a_tdata[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(4),
      O => \mul_a_tdata[4]_i_1_n_0\
    );
\mul_a_tdata[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(5),
      O => \mul_a_tdata[5]_i_1_n_0\
    );
\mul_a_tdata[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(6),
      O => \mul_a_tdata[6]_i_1_n_0\
    );
\mul_a_tdata[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(7),
      O => \mul_a_tdata[7]_i_1_n_0\
    );
\mul_a_tdata[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(8),
      O => \mul_a_tdata[8]_i_1_n_0\
    );
\mul_a_tdata[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frs1(9),
      O => \mul_a_tdata[9]_i_1_n_0\
    );
\mul_a_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(0),
      R => \mul_a_tdata[0]_i_1_n_0\
    );
\mul_a_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(10),
      R => \mul_a_tdata[10]_i_1_n_0\
    );
\mul_a_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(11),
      R => \mul_a_tdata[11]_i_1_n_0\
    );
\mul_a_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(12),
      R => \mul_a_tdata[12]_i_1_n_0\
    );
\mul_a_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(13),
      R => \mul_a_tdata[13]_i_1_n_0\
    );
\mul_a_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(14),
      R => \mul_a_tdata[14]_i_1_n_0\
    );
\mul_a_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(15),
      R => \mul_a_tdata[15]_i_1_n_0\
    );
\mul_a_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(16),
      R => \mul_a_tdata[16]_i_1_n_0\
    );
\mul_a_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(17),
      R => \mul_a_tdata[17]_i_1_n_0\
    );
\mul_a_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(18),
      R => \mul_a_tdata[18]_i_1_n_0\
    );
\mul_a_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(19),
      R => \mul_a_tdata[19]_i_1_n_0\
    );
\mul_a_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(1),
      R => \mul_a_tdata[1]_i_1_n_0\
    );
\mul_a_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(20),
      R => \mul_a_tdata[20]_i_1_n_0\
    );
\mul_a_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(21),
      R => \mul_a_tdata[21]_i_1_n_0\
    );
\mul_a_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(22),
      R => \mul_a_tdata[22]_i_1_n_0\
    );
\mul_a_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(23),
      R => \mul_a_tdata[23]_i_1_n_0\
    );
\mul_a_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(24),
      R => \mul_a_tdata[24]_i_1_n_0\
    );
\mul_a_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(25),
      R => \mul_a_tdata[25]_i_1_n_0\
    );
\mul_a_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(26),
      R => \mul_a_tdata[26]_i_1_n_0\
    );
\mul_a_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(27),
      R => \mul_a_tdata[27]_i_1_n_0\
    );
\mul_a_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(28),
      R => \mul_a_tdata[28]_i_1_n_0\
    );
\mul_a_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(29),
      R => \mul_a_tdata[29]_i_1_n_0\
    );
\mul_a_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(2),
      R => \mul_a_tdata[2]_i_1_n_0\
    );
\mul_a_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(30),
      R => \mul_a_tdata[30]_i_1_n_0\
    );
\mul_a_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(31),
      R => \mul_a_tdata[31]_i_1_n_0\
    );
\mul_a_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(3),
      R => \mul_a_tdata[3]_i_1_n_0\
    );
\mul_a_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(4),
      R => \mul_a_tdata[4]_i_1_n_0\
    );
\mul_a_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(5),
      R => \mul_a_tdata[5]_i_1_n_0\
    );
\mul_a_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(6),
      R => \mul_a_tdata[6]_i_1_n_0\
    );
\mul_a_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(7),
      R => \mul_a_tdata[7]_i_1_n_0\
    );
\mul_a_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(8),
      R => \mul_a_tdata[8]_i_1_n_0\
    );
\mul_a_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \mul_a_tdata[31]_i_2_n_0\,
      Q => mul_a_tdata(9),
      R => \mul_a_tdata[9]_i_1_n_0\
    );
mul_a_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_fmuls,
      I1 => \^mul_a_tvalid\,
      O => mul_a_tvalid_i_1_n_0
    );
mul_a_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => mul_a_tvalid_i_1_n_0,
      Q => \^mul_a_tvalid\,
      R => \^fpu_stole\
    );
\mul_b_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^mul_a_tvalid\,
      I1 => i_fmuls,
      I2 => \^fpu_stole\,
      O => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(0),
      Q => mul_b_tdata(0),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(10),
      Q => mul_b_tdata(10),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(11),
      Q => mul_b_tdata(11),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(12),
      Q => mul_b_tdata(12),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(13),
      Q => mul_b_tdata(13),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(14),
      Q => mul_b_tdata(14),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(15),
      Q => mul_b_tdata(15),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(16),
      Q => mul_b_tdata(16),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(17),
      Q => mul_b_tdata(17),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(18),
      Q => mul_b_tdata(18),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(19),
      Q => mul_b_tdata(19),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(1),
      Q => mul_b_tdata(1),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(20),
      Q => mul_b_tdata(20),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(21),
      Q => mul_b_tdata(21),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(22),
      Q => mul_b_tdata(22),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(23),
      Q => mul_b_tdata(23),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(24),
      Q => mul_b_tdata(24),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(25),
      Q => mul_b_tdata(25),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(26),
      Q => mul_b_tdata(26),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(27),
      Q => mul_b_tdata(27),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(28),
      Q => mul_b_tdata(28),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(29),
      Q => mul_b_tdata(29),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(2),
      Q => mul_b_tdata(2),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(30),
      Q => mul_b_tdata(30),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(31),
      Q => mul_b_tdata(31),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(3),
      Q => mul_b_tdata(3),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(4),
      Q => mul_b_tdata(4),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(5),
      Q => mul_b_tdata(5),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(6),
      Q => mul_b_tdata(6),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(7),
      Q => mul_b_tdata(7),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(8),
      Q => mul_b_tdata(8),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
\mul_b_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => frs2(9),
      Q => mul_b_tdata(9),
      R => \mul_b_tdata[31]_i_1_n_0\
    );
mul_f_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => mul_r_tvalid,
      Q => mul_f,
      R => fpu_stole_i_1_n_0
    );
tvalid_once_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE00"
    )
        port map (
      I0 => tvalid_once_i_2_n_0,
      I1 => tvalid_once_i_3_n_0,
      I2 => tvalid_once_i_4_n_0,
      I3 => RST_N,
      I4 => tvalid_once,
      O => tvalid_once_i_1_n_0
    );
tvalid_once_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => fcvtsw_f,
      I1 => fcvtsw_r_tvalid,
      I2 => fcvtws_f,
      I3 => fcvtws_r_tvalid,
      O => tvalid_once_i_2_n_0
    );
tvalid_once_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => fsqrts_f,
      I1 => fsqrts_r_tvalid,
      I2 => addsub_f,
      I3 => addsub_r_tvalid,
      O => tvalid_once_i_3_n_0
    );
tvalid_once_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => div_f,
      I1 => div_r_tvalid,
      I2 => comp_r_tvalid,
      I3 => comp_f,
      I4 => mul_r_tvalid,
      I5 => mul_f,
      O => tvalid_once_i_4_n_0
    );
tvalid_once_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tvalid_once_i_1_n_0,
      Q => tvalid_once,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_core_fpu_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_core_fpu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_core_fpu_0_0 : entity is "design_1_core_fpu_0_0,core_fpu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_core_fpu_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_core_fpu_0_0 : entity is "core_fpu,Vivado 2016.4";
end design_1_core_fpu_0_0;

architecture STRUCTURE of design_1_core_fpu_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^addsub_a_tvalid\ : STD_LOGIC;
  signal \^addsub_op_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^comp_a_tvalid\ : STD_LOGIC;
  signal \^comp_op_tdata\ : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \^div_a_tvalid\ : STD_LOGIC;
  signal \^fcvtsw_a_tvalid\ : STD_LOGIC;
  signal \^fcvtws_a_tvalid\ : STD_LOGIC;
  signal \^fsqrts_a_tvalid\ : STD_LOGIC;
  signal \^mul_a_tvalid\ : STD_LOGIC;
begin
  addsub_a_tvalid <= \^addsub_a_tvalid\;
  addsub_b_tvalid <= \^addsub_a_tvalid\;
  addsub_op_tdata(7) <= \<const0>\;
  addsub_op_tdata(6) <= \<const0>\;
  addsub_op_tdata(5) <= \<const0>\;
  addsub_op_tdata(4) <= \<const0>\;
  addsub_op_tdata(3) <= \<const0>\;
  addsub_op_tdata(2) <= \<const0>\;
  addsub_op_tdata(1) <= \<const0>\;
  addsub_op_tdata(0) <= \^addsub_op_tdata\(0);
  addsub_op_tvalid <= \^addsub_a_tvalid\;
  addsub_r_tready <= \^addsub_a_tvalid\;
  comp_a_tvalid <= \^comp_a_tvalid\;
  comp_b_tvalid <= \^comp_a_tvalid\;
  comp_op_tdata(7) <= \<const0>\;
  comp_op_tdata(6) <= \<const0>\;
  comp_op_tdata(5) <= \<const0>\;
  comp_op_tdata(4 downto 3) <= \^comp_op_tdata\(4 downto 3);
  comp_op_tdata(2) <= \^comp_a_tvalid\;
  comp_op_tdata(1) <= \<const0>\;
  comp_op_tdata(0) <= \<const0>\;
  comp_op_tvalid <= \^comp_a_tvalid\;
  comp_r_tready <= \^comp_a_tvalid\;
  div_a_tvalid <= \^div_a_tvalid\;
  div_b_tvalid <= \^div_a_tvalid\;
  div_r_tready <= \^div_a_tvalid\;
  fcvtsw_a_tvalid <= \^fcvtsw_a_tvalid\;
  fcvtsw_r_tready <= \^fcvtsw_a_tvalid\;
  fcvtws_a_tvalid <= \^fcvtws_a_tvalid\;
  fcvtws_r_tready <= \^fcvtws_a_tvalid\;
  fsqrts_a_tvalid <= \^fsqrts_a_tvalid\;
  fsqrts_r_tready <= \^fsqrts_a_tvalid\;
  mul_a_tvalid <= \^mul_a_tvalid\;
  mul_b_tvalid <= \^mul_a_tvalid\;
  mul_r_tready <= \^mul_a_tvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_core_fpu_0_0_core_fpu
     port map (
      CLK => CLK,
      RST_N => RST_N,
      addsub_a_tdata(31 downto 0) => addsub_a_tdata(31 downto 0),
      addsub_b_tdata(31 downto 0) => addsub_b_tdata(31 downto 0),
      addsub_op_tdata(0) => \^addsub_op_tdata\(0),
      addsub_r_tdata(31 downto 0) => addsub_r_tdata(31 downto 0),
      addsub_r_tready => \^addsub_a_tvalid\,
      addsub_r_tvalid => addsub_r_tvalid,
      comp_a_tdata(31 downto 0) => comp_a_tdata(31 downto 0),
      comp_b_tdata(31 downto 0) => comp_b_tdata(31 downto 0),
      comp_op_tdata(1 downto 0) => \^comp_op_tdata\(4 downto 3),
      comp_r_tdata(31 downto 0) => comp_r_tdata(31 downto 0),
      comp_r_tready => \^comp_a_tvalid\,
      comp_r_tvalid => comp_r_tvalid,
      div_a_tdata(31 downto 0) => div_a_tdata(31 downto 0),
      div_a_tvalid => \^div_a_tvalid\,
      div_b_tdata(31 downto 0) => div_b_tdata(31 downto 0),
      div_r_tdata(31 downto 0) => div_r_tdata(31 downto 0),
      div_r_tvalid => div_r_tvalid,
      fcvtsw_a_tdata(31 downto 0) => fcvtsw_a_tdata(31 downto 0),
      fcvtsw_a_tvalid => \^fcvtsw_a_tvalid\,
      fcvtsw_r_tdata(31 downto 0) => fcvtsw_r_tdata(31 downto 0),
      fcvtsw_r_tvalid => fcvtsw_r_tvalid,
      fcvtws_a_tdata(31 downto 0) => fcvtws_a_tdata(31 downto 0),
      fcvtws_a_tvalid => \^fcvtws_a_tvalid\,
      fcvtws_r_tdata(31 downto 0) => fcvtws_r_tdata(31 downto 0),
      fcvtws_r_tvalid => fcvtws_r_tvalid,
      fpu_result(31 downto 0) => fpu_result(31 downto 0),
      fpu_stole => fpu_stole,
      frs1(31 downto 0) => frs1(31 downto 0),
      frs2(31 downto 0) => frs2(31 downto 0),
      fsqrts_a_tdata(31 downto 0) => fsqrts_a_tdata(31 downto 0),
      fsqrts_a_tvalid => \^fsqrts_a_tvalid\,
      fsqrts_r_tdata(31 downto 0) => fsqrts_r_tdata(31 downto 0),
      fsqrts_r_tvalid => fsqrts_r_tvalid,
      i_fadds => i_fadds,
      i_fcvtsw => i_fcvtsw,
      i_fcvtws => i_fcvtws,
      i_fdivs => i_fdivs,
      i_feqs => i_feqs,
      i_fles => i_fles,
      i_flts => i_flts,
      i_fmuls => i_fmuls,
      i_fsqrts => i_fsqrts,
      i_fsubs => i_fsubs,
      mul_a_tdata(31 downto 0) => mul_a_tdata(31 downto 0),
      mul_a_tvalid => \^mul_a_tvalid\,
      mul_b_tdata(31 downto 0) => mul_b_tdata(31 downto 0),
      mul_r_tdata(31 downto 0) => mul_r_tdata(31 downto 0),
      mul_r_tvalid => mul_r_tvalid,
      rs1(31 downto 0) => rs1(31 downto 0)
    );
end STRUCTURE;
