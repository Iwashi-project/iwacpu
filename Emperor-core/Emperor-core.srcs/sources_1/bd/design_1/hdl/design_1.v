//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Thu Dec  7 15:58:57 2017
//Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=16,numNonXlnxBlks=2,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_board_cnt=5,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    reset,
    rs232_uart_rxd,
    rs232_uart_txd);
  input default_sysclk_300_clk_n;
  input default_sysclk_300_clk_p;
  input reset;
  input rs232_uart_rxd;
  output rs232_uart_txd;

  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire [31:0]blk_mem_gen_0_douta;
  wire [31:0]blk_mem_gen_1_douta;
  wire [31:0]blk_mem_gen_2_douta;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [31:0]core_fpu_0_addsub_a_TDATA;
  wire core_fpu_0_addsub_a_TREADY;
  wire core_fpu_0_addsub_a_TVALID;
  wire [31:0]core_fpu_0_addsub_b_TDATA;
  wire core_fpu_0_addsub_b_TREADY;
  wire core_fpu_0_addsub_b_TVALID;
  wire [7:0]core_fpu_0_addsub_op_TDATA;
  wire core_fpu_0_addsub_op_TREADY;
  wire core_fpu_0_addsub_op_TVALID;
  wire [31:0]core_fpu_0_comp_a_TDATA;
  wire core_fpu_0_comp_a_TREADY;
  wire core_fpu_0_comp_a_TVALID;
  wire [31:0]core_fpu_0_comp_b_TDATA;
  wire core_fpu_0_comp_b_TREADY;
  wire core_fpu_0_comp_b_TVALID;
  wire [7:0]core_fpu_0_comp_op_TDATA;
  wire core_fpu_0_comp_op_TREADY;
  wire core_fpu_0_comp_op_TVALID;
  wire [31:0]core_fpu_0_div_a_TDATA;
  wire core_fpu_0_div_a_TREADY;
  wire core_fpu_0_div_a_TVALID;
  wire [31:0]core_fpu_0_div_b_TDATA;
  wire core_fpu_0_div_b_TREADY;
  wire core_fpu_0_div_b_TVALID;
  wire [31:0]core_fpu_0_fcvtsw_a_TDATA;
  wire core_fpu_0_fcvtsw_a_TREADY;
  wire core_fpu_0_fcvtsw_a_TVALID;
  wire [31:0]core_fpu_0_fcvtws_a_TDATA;
  wire core_fpu_0_fcvtws_a_TREADY;
  wire core_fpu_0_fcvtws_a_TVALID;
  wire [31:0]core_fpu_0_fpu_result;
  wire [31:0]core_fpu_0_fsqrts_a_TDATA;
  wire core_fpu_0_fsqrts_a_TREADY;
  wire core_fpu_0_fsqrts_a_TVALID;
  wire [31:0]core_fpu_0_mul_a_TDATA;
  wire core_fpu_0_mul_a_TREADY;
  wire core_fpu_0_mul_a_TVALID;
  wire [31:0]core_fpu_0_mul_b_TDATA;
  wire core_fpu_0_mul_b_TREADY;
  wire core_fpu_0_mul_b_TVALID;
  wire core_fpu_0_tvalid_once;
  wire [11:0]core_top_0_CSR_ADDR;
  wire [31:0]core_top_0_CSR_DATA;
  wire core_top_0_CSR_WE;
  wire [31:0]core_top_0_I_MEM_ADDR;
  wire [31:0]core_top_0_MEM_ADDR;
  wire [31:0]core_top_0_MEM_DATA;
  wire core_top_0_MEM_WE;
  wire [3:0]core_top_0_axi_periph_M00_AXI_ARADDR;
  wire core_top_0_axi_periph_M00_AXI_ARREADY;
  wire core_top_0_axi_periph_M00_AXI_ARVALID;
  wire [3:0]core_top_0_axi_periph_M00_AXI_AWADDR;
  wire core_top_0_axi_periph_M00_AXI_AWREADY;
  wire core_top_0_axi_periph_M00_AXI_AWVALID;
  wire core_top_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]core_top_0_axi_periph_M00_AXI_BRESP;
  wire core_top_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]core_top_0_axi_periph_M00_AXI_RDATA;
  wire core_top_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]core_top_0_axi_periph_M00_AXI_RRESP;
  wire core_top_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]core_top_0_axi_periph_M00_AXI_WDATA;
  wire core_top_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]core_top_0_axi_periph_M00_AXI_WSTRB;
  wire core_top_0_axi_periph_M00_AXI_WVALID;
  wire core_top_0_exec;
  wire [31:0]core_top_0_frs1;
  wire [31:0]core_top_0_frs2;
  wire core_top_0_i_fadds;
  wire core_top_0_i_fcvtsw;
  wire core_top_0_i_fcvtws;
  wire core_top_0_i_fdivs;
  wire core_top_0_i_feqs;
  wire core_top_0_i_fles;
  wire core_top_0_i_flts;
  wire core_top_0_i_fmuls;
  wire core_top_0_i_fsqrts;
  wire core_top_0_i_fsubs;
  wire [3:0]core_top_0_interface_aximm_ARADDR;
  wire core_top_0_interface_aximm_ARREADY;
  wire core_top_0_interface_aximm_ARVALID;
  wire [3:0]core_top_0_interface_aximm_AWADDR;
  wire core_top_0_interface_aximm_AWREADY;
  wire core_top_0_interface_aximm_AWVALID;
  wire core_top_0_interface_aximm_BREADY;
  wire [1:0]core_top_0_interface_aximm_BRESP;
  wire core_top_0_interface_aximm_BVALID;
  wire [31:0]core_top_0_interface_aximm_RDATA;
  wire core_top_0_interface_aximm_RREADY;
  wire [1:0]core_top_0_interface_aximm_RRESP;
  wire core_top_0_interface_aximm_RVALID;
  wire [31:0]core_top_0_interface_aximm_WDATA;
  wire core_top_0_interface_aximm_WREADY;
  wire [3:0]core_top_0_interface_aximm_WSTRB;
  wire core_top_0_interface_aximm_WVALID;
  wire [31:0]core_top_0_rs1;
  wire core_top_0_stole;
  wire default_sysclk_300_1_CLK_N;
  wire default_sysclk_300_1_CLK_P;
  wire [31:0]floating_point_0_M_AXIS_RESULT_TDATA;
  wire floating_point_0_M_AXIS_RESULT_TREADY;
  wire floating_point_0_M_AXIS_RESULT_TVALID;
  wire [7:0]floating_point_1_M_AXIS_RESULT_TDATA;
  wire floating_point_1_M_AXIS_RESULT_TREADY;
  wire floating_point_1_M_AXIS_RESULT_TVALID;
  wire [31:0]floating_point_2_M_AXIS_RESULT_TDATA;
  wire floating_point_2_M_AXIS_RESULT_TREADY;
  wire floating_point_2_M_AXIS_RESULT_TVALID;
  wire [31:0]floating_point_3_M_AXIS_RESULT_TDATA;
  wire floating_point_3_M_AXIS_RESULT_TREADY;
  wire floating_point_3_M_AXIS_RESULT_TVALID;
  wire [31:0]floating_point_4_M_AXIS_RESULT_TDATA;
  wire floating_point_4_M_AXIS_RESULT_TREADY;
  wire floating_point_4_M_AXIS_RESULT_TVALID;
  wire [31:0]floating_point_5_M_AXIS_RESULT_TDATA;
  wire floating_point_5_M_AXIS_RESULT_TREADY;
  wire floating_point_5_M_AXIS_RESULT_TVALID;
  wire [31:0]floating_point_6_M_AXIS_RESULT_TDATA;
  wire floating_point_6_M_AXIS_RESULT_TREADY;
  wire floating_point_6_M_AXIS_RESULT_TVALID;
  wire reset_1;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign axi_uartlite_0_UART_RxD = rs232_uart_rxd;
  assign default_sysclk_300_1_CLK_N = default_sysclk_300_clk_n;
  assign default_sysclk_300_1_CLK_P = default_sysclk_300_clk_p;
  assign reset_1 = reset;
  assign rs232_uart_txd = axi_uartlite_0_UART_TxD;
  design_1_axi_uartlite_0_0 axi_uartlite_0
       (.rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(core_top_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_aresetn(clk_wiz_0_locked),
        .s_axi_arready(core_top_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(core_top_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(core_top_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_awready(core_top_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(core_top_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(core_top_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(core_top_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(core_top_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(core_top_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(core_top_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(core_top_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(core_top_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(core_top_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(core_top_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(core_top_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(core_top_0_axi_periph_M00_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(core_top_0_I_MEM_ADDR[15:0]),
        .clka(clk_wiz_0_clk_out1),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(blk_mem_gen_0_douta),
        .wea(xlconstant_0_dout));
  design_1_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(core_top_0_MEM_ADDR[18:0]),
        .clka(clk_wiz_0_clk_out1),
        .dina(core_top_0_MEM_DATA),
        .douta(blk_mem_gen_1_douta),
        .ena(xlconstant_1_dout),
        .wea(core_top_0_MEM_WE));
  design_1_blk_mem_gen_2_0 blk_mem_gen_2
       (.addra(core_top_0_CSR_ADDR),
        .clka(clk_wiz_0_clk_out1),
        .dina(core_top_0_CSR_DATA),
        .douta(blk_mem_gen_2_douta),
        .wea(core_top_0_CSR_WE));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(default_sysclk_300_1_CLK_N),
        .clk_in1_p(default_sysclk_300_1_CLK_P),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
  design_1_core_fpu_0_0 core_fpu_0
       (.CLK(clk_wiz_0_clk_out1),
        .RST_N(clk_wiz_0_locked),
        .addsub_a_tdata(core_fpu_0_addsub_a_TDATA),
        .addsub_a_tready(core_fpu_0_addsub_a_TREADY),
        .addsub_a_tvalid(core_fpu_0_addsub_a_TVALID),
        .addsub_b_tdata(core_fpu_0_addsub_b_TDATA),
        .addsub_b_tready(core_fpu_0_addsub_b_TREADY),
        .addsub_b_tvalid(core_fpu_0_addsub_b_TVALID),
        .addsub_op_tdata(core_fpu_0_addsub_op_TDATA),
        .addsub_op_tready(core_fpu_0_addsub_op_TREADY),
        .addsub_op_tvalid(core_fpu_0_addsub_op_TVALID),
        .addsub_r_tdata(floating_point_0_M_AXIS_RESULT_TDATA),
        .addsub_r_tready(floating_point_0_M_AXIS_RESULT_TREADY),
        .addsub_r_tvalid(floating_point_0_M_AXIS_RESULT_TVALID),
        .comp_a_tdata(core_fpu_0_comp_a_TDATA),
        .comp_a_tready(core_fpu_0_comp_a_TREADY),
        .comp_a_tvalid(core_fpu_0_comp_a_TVALID),
        .comp_b_tdata(core_fpu_0_comp_b_TDATA),
        .comp_b_tready(core_fpu_0_comp_b_TREADY),
        .comp_b_tvalid(core_fpu_0_comp_b_TVALID),
        .comp_op_tdata(core_fpu_0_comp_op_TDATA),
        .comp_op_tready(core_fpu_0_comp_op_TREADY),
        .comp_op_tvalid(core_fpu_0_comp_op_TVALID),
        .comp_r_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,floating_point_1_M_AXIS_RESULT_TDATA}),
        .comp_r_tready(floating_point_1_M_AXIS_RESULT_TREADY),
        .comp_r_tvalid(floating_point_1_M_AXIS_RESULT_TVALID),
        .div_a_tdata(core_fpu_0_div_a_TDATA),
        .div_a_tready(core_fpu_0_div_a_TREADY),
        .div_a_tvalid(core_fpu_0_div_a_TVALID),
        .div_b_tdata(core_fpu_0_div_b_TDATA),
        .div_b_tready(core_fpu_0_div_b_TREADY),
        .div_b_tvalid(core_fpu_0_div_b_TVALID),
        .div_r_tdata(floating_point_2_M_AXIS_RESULT_TDATA),
        .div_r_tready(floating_point_2_M_AXIS_RESULT_TREADY),
        .div_r_tvalid(floating_point_2_M_AXIS_RESULT_TVALID),
        .exec(core_top_0_exec),
        .fcvtsw_a_tdata(core_fpu_0_fcvtsw_a_TDATA),
        .fcvtsw_a_tready(core_fpu_0_fcvtsw_a_TREADY),
        .fcvtsw_a_tvalid(core_fpu_0_fcvtsw_a_TVALID),
        .fcvtsw_r_tdata(floating_point_3_M_AXIS_RESULT_TDATA),
        .fcvtsw_r_tready(floating_point_3_M_AXIS_RESULT_TREADY),
        .fcvtsw_r_tvalid(floating_point_3_M_AXIS_RESULT_TVALID),
        .fcvtws_a_tdata(core_fpu_0_fcvtws_a_TDATA),
        .fcvtws_a_tready(core_fpu_0_fcvtws_a_TREADY),
        .fcvtws_a_tvalid(core_fpu_0_fcvtws_a_TVALID),
        .fcvtws_r_tdata(floating_point_4_M_AXIS_RESULT_TDATA),
        .fcvtws_r_tready(floating_point_4_M_AXIS_RESULT_TREADY),
        .fcvtws_r_tvalid(floating_point_4_M_AXIS_RESULT_TVALID),
        .fpu_result(core_fpu_0_fpu_result),
        .frs1(core_top_0_frs1),
        .frs2(core_top_0_frs2),
        .fsqrts_a_tdata(core_fpu_0_fsqrts_a_TDATA),
        .fsqrts_a_tready(core_fpu_0_fsqrts_a_TREADY),
        .fsqrts_a_tvalid(core_fpu_0_fsqrts_a_TVALID),
        .fsqrts_r_tdata(floating_point_5_M_AXIS_RESULT_TDATA),
        .fsqrts_r_tready(floating_point_5_M_AXIS_RESULT_TREADY),
        .fsqrts_r_tvalid(floating_point_5_M_AXIS_RESULT_TVALID),
        .i_fadds(core_top_0_i_fadds),
        .i_fcvtsw(core_top_0_i_fcvtsw),
        .i_fcvtws(core_top_0_i_fcvtws),
        .i_fdivs(core_top_0_i_fdivs),
        .i_feqs(core_top_0_i_feqs),
        .i_fles(core_top_0_i_fles),
        .i_flts(core_top_0_i_flts),
        .i_fmuls(core_top_0_i_fmuls),
        .i_fsqrts(core_top_0_i_fsqrts),
        .i_fsubs(core_top_0_i_fsubs),
        .mul_a_tdata(core_fpu_0_mul_a_TDATA),
        .mul_a_tready(core_fpu_0_mul_a_TREADY),
        .mul_a_tvalid(core_fpu_0_mul_a_TVALID),
        .mul_b_tdata(core_fpu_0_mul_b_TDATA),
        .mul_b_tready(core_fpu_0_mul_b_TREADY),
        .mul_b_tvalid(core_fpu_0_mul_b_TVALID),
        .mul_r_tdata(floating_point_6_M_AXIS_RESULT_TDATA),
        .mul_r_tready(floating_point_6_M_AXIS_RESULT_TREADY),
        .mul_r_tvalid(floating_point_6_M_AXIS_RESULT_TVALID),
        .rs1(core_top_0_rs1),
        .stole(core_top_0_stole),
        .tvalid_once(core_fpu_0_tvalid_once));
  design_1_core_top_0_0 core_top_0
       (.ARADDR(core_top_0_interface_aximm_ARADDR),
        .ARREADY(core_top_0_interface_aximm_ARREADY),
        .ARVALID(core_top_0_interface_aximm_ARVALID),
        .AWADDR(core_top_0_interface_aximm_AWADDR),
        .AWREADY(core_top_0_interface_aximm_AWREADY),
        .AWVALID(core_top_0_interface_aximm_AWVALID),
        .BREADY(core_top_0_interface_aximm_BREADY),
        .BRESP(core_top_0_interface_aximm_BRESP),
        .BVALID(core_top_0_interface_aximm_BVALID),
        .CLK(clk_wiz_0_clk_out1),
        .CSR_ADDR(core_top_0_CSR_ADDR),
        .CSR_DATA(core_top_0_CSR_DATA),
        .CSR_IN(blk_mem_gen_2_douta),
        .CSR_WE(core_top_0_CSR_WE),
        .I_MEM_ADDR(core_top_0_I_MEM_ADDR),
        .I_MEM_IN(blk_mem_gen_0_douta),
        .MEM_ADDR(core_top_0_MEM_ADDR),
        .MEM_DATA(core_top_0_MEM_DATA),
        .MEM_IN(blk_mem_gen_1_douta),
        .MEM_WE(core_top_0_MEM_WE),
        .RDATA(core_top_0_interface_aximm_RDATA),
        .RREADY(core_top_0_interface_aximm_RREADY),
        .RRESP(core_top_0_interface_aximm_RRESP),
        .RST_N(clk_wiz_0_locked),
        .RVALID(core_top_0_interface_aximm_RVALID),
        .WDATA(core_top_0_interface_aximm_WDATA),
        .WREADY(core_top_0_interface_aximm_WREADY),
        .WSTRB(core_top_0_interface_aximm_WSTRB),
        .WVALID(core_top_0_interface_aximm_WVALID),
        .exec(core_top_0_exec),
        .fpu_result(core_fpu_0_fpu_result),
        .frs1(core_top_0_frs1),
        .frs2(core_top_0_frs2),
        .i_fadds(core_top_0_i_fadds),
        .i_fcvtsw(core_top_0_i_fcvtsw),
        .i_fcvtws(core_top_0_i_fcvtws),
        .i_fdivs(core_top_0_i_fdivs),
        .i_feqs(core_top_0_i_feqs),
        .i_fles(core_top_0_i_fles),
        .i_flts(core_top_0_i_flts),
        .i_fmuls(core_top_0_i_fmuls),
        .i_fsqrts(core_top_0_i_fsqrts),
        .i_fsubs(core_top_0_i_fsubs),
        .rs1(core_top_0_rs1),
        .stole(core_top_0_stole),
        .tvalid_once(core_fpu_0_tvalid_once));
  design_1_core_top_0_axi_periph_1 core_top_0_axi_periph
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(clk_wiz_0_locked),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(clk_wiz_0_locked),
        .M00_AXI_araddr(core_top_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(core_top_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(core_top_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(core_top_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(core_top_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(core_top_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(core_top_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(core_top_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(core_top_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(core_top_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(core_top_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(core_top_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(core_top_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(core_top_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(core_top_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(core_top_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(core_top_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(clk_wiz_0_locked),
        .S00_AXI_araddr(core_top_0_interface_aximm_ARADDR),
        .S00_AXI_arready(core_top_0_interface_aximm_ARREADY),
        .S00_AXI_arvalid(core_top_0_interface_aximm_ARVALID),
        .S00_AXI_awaddr(core_top_0_interface_aximm_AWADDR),
        .S00_AXI_awready(core_top_0_interface_aximm_AWREADY),
        .S00_AXI_awvalid(core_top_0_interface_aximm_AWVALID),
        .S00_AXI_bready(core_top_0_interface_aximm_BREADY),
        .S00_AXI_bresp(core_top_0_interface_aximm_BRESP),
        .S00_AXI_bvalid(core_top_0_interface_aximm_BVALID),
        .S00_AXI_rdata(core_top_0_interface_aximm_RDATA),
        .S00_AXI_rready(core_top_0_interface_aximm_RREADY),
        .S00_AXI_rresp(core_top_0_interface_aximm_RRESP),
        .S00_AXI_rvalid(core_top_0_interface_aximm_RVALID),
        .S00_AXI_wdata(core_top_0_interface_aximm_WDATA),
        .S00_AXI_wready(core_top_0_interface_aximm_WREADY),
        .S00_AXI_wstrb(core_top_0_interface_aximm_WSTRB),
        .S00_AXI_wvalid(core_top_0_interface_aximm_WVALID));
  design_1_floating_point_0_0 floating_point_0
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(clk_wiz_0_locked),
        .m_axis_result_tdata(floating_point_0_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_0_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_0_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(core_fpu_0_addsub_a_TDATA),
        .s_axis_a_tready(core_fpu_0_addsub_a_TREADY),
        .s_axis_a_tvalid(core_fpu_0_addsub_a_TVALID),
        .s_axis_b_tdata(core_fpu_0_addsub_b_TDATA),
        .s_axis_b_tready(core_fpu_0_addsub_b_TREADY),
        .s_axis_b_tvalid(core_fpu_0_addsub_b_TVALID),
        .s_axis_operation_tdata(core_fpu_0_addsub_op_TDATA),
        .s_axis_operation_tready(core_fpu_0_addsub_op_TREADY),
        .s_axis_operation_tvalid(core_fpu_0_addsub_op_TVALID));
  design_1_floating_point_0_1 floating_point_1
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(clk_wiz_0_locked),
        .m_axis_result_tdata(floating_point_1_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_1_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_1_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(core_fpu_0_comp_a_TDATA),
        .s_axis_a_tready(core_fpu_0_comp_a_TREADY),
        .s_axis_a_tvalid(core_fpu_0_comp_a_TVALID),
        .s_axis_b_tdata(core_fpu_0_comp_b_TDATA),
        .s_axis_b_tready(core_fpu_0_comp_b_TREADY),
        .s_axis_b_tvalid(core_fpu_0_comp_b_TVALID),
        .s_axis_operation_tdata(core_fpu_0_comp_op_TDATA),
        .s_axis_operation_tready(core_fpu_0_comp_op_TREADY),
        .s_axis_operation_tvalid(core_fpu_0_comp_op_TVALID));
  design_1_floating_point_1_0 floating_point_2
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(clk_wiz_0_locked),
        .m_axis_result_tdata(floating_point_2_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_2_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_2_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(core_fpu_0_div_a_TDATA),
        .s_axis_a_tready(core_fpu_0_div_a_TREADY),
        .s_axis_a_tvalid(core_fpu_0_div_a_TVALID),
        .s_axis_b_tdata(core_fpu_0_div_b_TDATA),
        .s_axis_b_tready(core_fpu_0_div_b_TREADY),
        .s_axis_b_tvalid(core_fpu_0_div_b_TVALID));
  design_1_floating_point_2_0 floating_point_3
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(clk_wiz_0_locked),
        .m_axis_result_tdata(floating_point_3_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_3_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_3_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(core_fpu_0_fcvtsw_a_TDATA),
        .s_axis_a_tready(core_fpu_0_fcvtsw_a_TREADY),
        .s_axis_a_tvalid(core_fpu_0_fcvtsw_a_TVALID));
  design_1_floating_point_3_0 floating_point_4
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(clk_wiz_0_locked),
        .m_axis_result_tdata(floating_point_4_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_4_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_4_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(core_fpu_0_fcvtws_a_TDATA),
        .s_axis_a_tready(core_fpu_0_fcvtws_a_TREADY),
        .s_axis_a_tvalid(core_fpu_0_fcvtws_a_TVALID));
  design_1_floating_point_4_0 floating_point_5
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(clk_wiz_0_locked),
        .m_axis_result_tdata(floating_point_5_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_5_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_5_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(core_fpu_0_fsqrts_a_TDATA),
        .s_axis_a_tready(core_fpu_0_fsqrts_a_TREADY),
        .s_axis_a_tvalid(core_fpu_0_fsqrts_a_TVALID));
  design_1_floating_point_5_0 floating_point_6
       (.aclk(clk_wiz_0_clk_out1),
        .aresetn(clk_wiz_0_locked),
        .m_axis_result_tdata(floating_point_6_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_6_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_6_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(core_fpu_0_mul_a_TDATA),
        .s_axis_a_tready(core_fpu_0_mul_a_TREADY),
        .s_axis_a_tvalid(core_fpu_0_mul_a_TVALID),
        .s_axis_b_tdata(core_fpu_0_mul_b_TDATA),
        .s_axis_b_tready(core_fpu_0_mul_b_TREADY),
        .s_axis_b_tvalid(core_fpu_0_mul_b_TVALID));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module design_1_core_top_0_axi_periph_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [3:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [3:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [3:0]S00_AXI_araddr;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [3:0]S00_AXI_awaddr;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire core_top_0_axi_periph_ACLK_net;
  wire core_top_0_axi_periph_ARESETN_net;
  wire [3:0]core_top_0_axi_periph_to_s00_couplers_ARADDR;
  wire core_top_0_axi_periph_to_s00_couplers_ARREADY;
  wire core_top_0_axi_periph_to_s00_couplers_ARVALID;
  wire [3:0]core_top_0_axi_periph_to_s00_couplers_AWADDR;
  wire core_top_0_axi_periph_to_s00_couplers_AWREADY;
  wire core_top_0_axi_periph_to_s00_couplers_AWVALID;
  wire core_top_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]core_top_0_axi_periph_to_s00_couplers_BRESP;
  wire core_top_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]core_top_0_axi_periph_to_s00_couplers_RDATA;
  wire core_top_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]core_top_0_axi_periph_to_s00_couplers_RRESP;
  wire core_top_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]core_top_0_axi_periph_to_s00_couplers_WDATA;
  wire core_top_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]core_top_0_axi_periph_to_s00_couplers_WSTRB;
  wire core_top_0_axi_periph_to_s00_couplers_WVALID;
  wire [3:0]s00_couplers_to_core_top_0_axi_periph_ARADDR;
  wire s00_couplers_to_core_top_0_axi_periph_ARREADY;
  wire s00_couplers_to_core_top_0_axi_periph_ARVALID;
  wire [3:0]s00_couplers_to_core_top_0_axi_periph_AWADDR;
  wire s00_couplers_to_core_top_0_axi_periph_AWREADY;
  wire s00_couplers_to_core_top_0_axi_periph_AWVALID;
  wire s00_couplers_to_core_top_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_core_top_0_axi_periph_BRESP;
  wire s00_couplers_to_core_top_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_core_top_0_axi_periph_RDATA;
  wire s00_couplers_to_core_top_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_core_top_0_axi_periph_RRESP;
  wire s00_couplers_to_core_top_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_core_top_0_axi_periph_WDATA;
  wire s00_couplers_to_core_top_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_core_top_0_axi_periph_WSTRB;
  wire s00_couplers_to_core_top_0_axi_periph_WVALID;

  assign M00_AXI_araddr[3:0] = s00_couplers_to_core_top_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_core_top_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[3:0] = s00_couplers_to_core_top_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_core_top_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_core_top_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_core_top_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_core_top_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_core_top_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_core_top_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = core_top_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = core_top_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = core_top_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = core_top_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = core_top_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = core_top_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = core_top_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = core_top_0_axi_periph_to_s00_couplers_WREADY;
  assign core_top_0_axi_periph_ACLK_net = M00_ACLK;
  assign core_top_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign core_top_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[3:0];
  assign core_top_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign core_top_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[3:0];
  assign core_top_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign core_top_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign core_top_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign core_top_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign core_top_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign core_top_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_core_top_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_core_top_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_core_top_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_core_top_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_core_top_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_core_top_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_core_top_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_core_top_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_1T2I6AR s00_couplers
       (.M_ACLK(core_top_0_axi_periph_ACLK_net),
        .M_ARESETN(core_top_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_core_top_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_core_top_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_core_top_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_core_top_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_core_top_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_core_top_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_core_top_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_core_top_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_core_top_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_core_top_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_core_top_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_core_top_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_core_top_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_core_top_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_core_top_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_core_top_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_core_top_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(core_top_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arready(core_top_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(core_top_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(core_top_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awready(core_top_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(core_top_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(core_top_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(core_top_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(core_top_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(core_top_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(core_top_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(core_top_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(core_top_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(core_top_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(core_top_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(core_top_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(core_top_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_1T2I6AR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [3:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [3:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [3:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [3:0]s00_couplers_to_s00_couplers_ARADDR;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [3:0]s00_couplers_to_s00_couplers_AWADDR;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[3:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
