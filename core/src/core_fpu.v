module core_fpu
  (
    input RST_N,
    input CLK,

    // FPU用入力
    input i_fadds,
    input i_fsubs,
    input i_fmuls,
    input i_fdivs,
    input i_feqs,
    input i_flts,
    input i_fles,
    input i_fcvtsw,
    input i_fcvtws,
    input i_fsqrts,
    input [31:0] rs1,
    input [31:0] frs1,
    input [31:0] frs2,
    output reg [31:0] fpu_result,
    output reg tvalid_once,
    input exec,
    input stole,

    // 浮動小数点
    // ADD/SUB
    output reg [31:0] addsub_a_tdata,
    input wire addsub_a_tready,
    output reg addsub_a_tvalid,
    output reg [31:0] addsub_b_tdata,
    input wire addsub_b_tready,
    output reg addsub_b_tvalid,
    output reg [7:0] addsub_op_tdata,
    input wire addsub_op_tready,
    output reg addsub_op_tvalid,
    input wire [31:0] addsub_r_tdata,
    output reg addsub_r_tready,
    input wire addsub_r_tvalid,

    // 浮動小数点
    // mul 
    output reg [31:0] mul_a_tdata,
    input wire mul_a_tready,
    output reg mul_a_tvalid,
    output reg [31:0] mul_b_tdata,
    input wire mul_b_tready,
    output reg mul_b_tvalid,
    input wire [31:0] mul_r_tdata,
    output reg mul_r_tready,
    input wire mul_r_tvalid,

    // 浮動小数点
    // div
    output reg [31:0] div_a_tdata,
    input wire div_a_tready,
    output reg div_a_tvalid,
    output reg [31:0] div_b_tdata,
    input wire div_b_tready,
    output reg div_b_tvalid,
    input wire [31:0] div_r_tdata,
    output reg div_r_tready,
    input wire div_r_tvalid,

    // 浮動小数点
    // comp
    output reg [31:0] comp_a_tdata,
    input wire comp_a_tready,
    output reg comp_a_tvalid,
    output reg [31:0] comp_b_tdata,
    input wire comp_b_tready,
    output reg comp_b_tvalid,
    output reg [7:0] comp_op_tdata,
    input wire comp_op_tready,
    output reg comp_op_tvalid,
    input wire [31:0] comp_r_tdata,
    output reg comp_r_tready,
    input wire comp_r_tvalid,

    // 浮動小数点
    // fcvtsw
    output reg [31:0] fcvtsw_a_tdata,
    input wire fcvtsw_a_tready,
    output reg fcvtsw_a_tvalid,
    input wire [31:0] fcvtsw_r_tdata,
    output reg fcvtsw_r_tready,
    input wire fcvtsw_r_tvalid,

    // 浮動小数点
    // fcvtws
    output reg [31:0] fcvtws_a_tdata,
    input wire fcvtws_a_tready,
    output reg fcvtws_a_tvalid,
    input wire [31:0] fcvtws_r_tdata,
    output reg fcvtws_r_tready,
    input wire fcvtws_r_tvalid,

    // 浮動小数点
    // fsqrts
    output reg [31:0] fsqrts_a_tdata,
    input wire fsqrts_a_tready,
    output reg fsqrts_a_tvalid,
    input wire [31:0] fsqrts_r_tdata,
    output reg fsqrts_r_tready,
    input wire fsqrts_r_tvalid

  );

  localparam EXECUTE = 7'b0001000;
 (* mark_debug = "true" *) reg addsub_f, mul_f, div_f, comp_f, fcvtsw_f, fcvtws_f, fsqrts_f;

  always @(posedge CLK) begin
    if (!RST_N) begin
      fpu_result <= 0;
    end else begin
    fpu_result <= (i_fadds | i_fsubs) ? addsub_r_tdata :
                  i_fmuls ? mul_r_tdata :
                  i_fdivs ? div_r_tdata :
                  (i_feqs | i_flts | i_fles) ? comp_r_tdata :
                  i_fcvtsw ? fcvtsw_r_tdata :
                  i_fcvtws ? fcvtws_r_tdata :
                  i_fsqrts ? fsqrts_r_tdata :
                  fpu_result;
    end
  end

  // 浮動小数点実行
  // ADD/SUB
  always @(posedge CLK) begin
    addsub_b_tdata <= frs2;
    addsub_a_tdata <= frs1;
    addsub_op_tdata <= i_fsubs ? 6'b000001 : 6'b000000;
    if ((i_fadds | i_fsubs) && (!stole) && !(addsub_r_tready) && exec) begin
      addsub_a_tvalid <= 1'b1;
      addsub_b_tvalid <= 1'b1;
      addsub_op_tvalid <= 1'b1;
      addsub_r_tready <= 1'b1;
    end else begin
      addsub_a_tdata <= 0;
      addsub_a_tvalid <= 0;
      addsub_b_tdata <= 0;
      addsub_b_tvalid <= 0;
      addsub_op_tdata <= 0;
      addsub_op_tvalid <= 0;
      addsub_r_tready <= 0;
    end
  end

  // 浮動小数点実行
  // MULS
  always @(posedge CLK) begin
    mul_a_tdata <= frs1;
    mul_b_tdata <= frs2;
    if ((i_fmuls) && (!stole) && !(mul_r_tready) && exec) begin
      mul_a_tvalid <= 1'b1;
      mul_b_tvalid <= 1'b1;
      mul_r_tready <= 1'b1;
    end else begin
      mul_a_tdata <= 0;
      mul_a_tvalid <= 0;
      mul_b_tdata <= 0;
      mul_b_tvalid <= 0;
      mul_r_tready <= 0;
    end
  end

  // 浮動小数点実行
  // DIVS
  always @(posedge CLK) begin
    div_a_tdata <= frs1;
    div_b_tdata <= frs2;
    if ((i_fdivs) && (!stole) && !(div_r_tready) && exec) begin
      div_a_tvalid <= 1'b1;
      div_b_tvalid <= 1'b1;
      div_r_tready <= 1'b1;
    end else begin
      div_a_tdata <= 0;
      div_a_tvalid <= 0;
      div_b_tdata <= 0;
      div_b_tvalid <= 0;
      div_r_tready <= 0;
    end
  end

  // 浮動小数点実行
  // COMP
  always @(posedge CLK) begin
      comp_a_tdata <= frs1;
      comp_b_tdata <= frs2;
      comp_op_tdata <= i_feqs ? 6'b010100 :
                       i_flts ? 6'b001100:
                       6'b011100;
    if ((i_feqs | i_flts | i_fles) && (!stole) && !(comp_r_tready) && exec) begin
      comp_a_tvalid <= 1'b1;
      comp_b_tvalid <= 1'b1;
      comp_op_tvalid <= 1'b1;
      comp_r_tready <= 1'b1;
    end else begin
      comp_a_tdata <= 0;
      comp_a_tvalid <= 0;
      comp_b_tdata <= 0;
      comp_b_tvalid <= 0;
      comp_op_tdata <= 0;
      comp_op_tvalid <= 0;
      comp_r_tready <= 0;
    end
  end

  // 浮動小数点実行
  // FCVTSW int to float
  always @(posedge CLK) begin
    fcvtsw_a_tdata <= rs1;
    if ((i_fcvtsw) && (!stole) && !(fcvtsw_r_tready) && exec) begin
      fcvtsw_a_tvalid <= 1'b1;
      fcvtsw_r_tready <= 1'b1;
    end else begin
      fcvtsw_a_tdata <= 0;
      fcvtsw_a_tvalid <= 0;
      fcvtsw_r_tready <= 0;
    end
  end

  // 浮動小数点実行
  // FCVTWS float to int
  always @(posedge CLK) begin
    fcvtws_a_tdata <= frs1;
    if ((i_fcvtws) && (!stole) && !(fcvtws_r_tready) && exec) begin
      fcvtws_a_tvalid <= 1'b1;
      fcvtws_r_tready <= 1'b1;
    end else begin
      fcvtws_a_tdata <= 0;
      fcvtws_a_tvalid <= 0;
      fcvtws_r_tready <= 0;
    end
  end

  // 浮動小数点実行
  // FSQRTS
  always @(posedge CLK) begin
    fsqrts_a_tdata <= frs1;
    if ((i_fsqrts) && (!stole) && !(fsqrts_r_tready) && exec) begin
      fsqrts_a_tvalid <= 1'b1;
      fsqrts_r_tready <= 1'b1;
    end else begin
      fsqrts_a_tdata <= 0;
      fsqrts_a_tvalid <= 0;
      fsqrts_r_tready <= 0;
    end
  end

  always @(posedge CLK) begin
    if (!RST_N) begin
      addsub_f <= 0;
      mul_f <= 0;
      div_f <= 0;
      comp_f <= 0;
      fcvtsw_f <= 0;
      fcvtws_f <= 0;
      fsqrts_f <= 0;
      tvalid_once <= 0;
    end else begin
      addsub_f <= addsub_r_tvalid;
      mul_f <= mul_r_tvalid;
      div_f <= div_r_tvalid;
      comp_f <= comp_r_tvalid;
      fcvtsw_f <= fcvtsw_r_tvalid;
      fcvtws_f <= fcvtws_r_tvalid;
      fsqrts_f <= fsqrts_r_tvalid;

      tvalid_once <= (tvalid_once) ? 0 :
                     ((!addsub_f && addsub_r_tvalid) || (!mul_f && mul_r_tvalid) || (!div_f && div_r_tvalid) || (!comp_f && comp_r_tvalid) || (!fcvtsw_f && fcvtsw_r_tvalid) || (!fcvtws_f && fcvtws_r_tvalid) || (!fsqrts_f && fsqrts_r_tvalid)) ? 1:
                     0;
    end
  end

endmodule
