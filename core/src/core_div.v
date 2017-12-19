module core_div (

  input RST_N,
  input CLK,

  input wire [31:0] int_div_a_tdata,
  output reg int_div_a_tready,
  input wire int_div_a_tvalid,
  input wire [31:0] int_div_b_tdata,
  output reg int_div_b_tready,
  input wire int_div_b_tvalid,
  input wire [1:0] int_div_op_tdata,
  output reg int_div_op_tready,
  input wire int_div_op_tvalid,
  output reg [31:0] int_div_r_tdata,
  input wire int_div_r_tready,
  output reg int_div_r_tvalid
  
  );

  // int_div_op に対応
  localparam I_DIV = 2'b00;
  localparam I_DIVU = 2'b01;
  localparam I_REM = 2'b10;
  localparam I_REMU = 2'b11;

  reg [64:0] div_a;
  reg div_a_sign;
  reg [64:0] div_b;
  reg div_b_sign;
  reg [16:0] div_trace_valid;
  wire div_r_sign;

  reg [64:0] div_stage1[4:0];
  reg [64:0] div_stage2[4:0];
  reg [64:0] div_stage3[4:0];
  reg [64:0] div_stage4[4:0];
  reg [64:0] div_stage5[4:0];
  reg [64:0] div_stage6[4:0];
  reg [64:0] div_stage7[4:0];
  reg [64:0] div_stage8[4:0];
  reg [64:0] div_stage9[4:0];
  reg [64:0] div_stage10[4:0];
  reg [64:0] div_stage11[4:0];
  reg [64:0] div_stage12[4:0];
  reg [64:0] div_stage13[4:0];
  reg [64:0] div_stage14[4:0];
  reg [64:0] div_stage15[4:0];
  reg [64:0] div_stage16[4:0];

  wire agreement;

  assign agreement = int_div_a_tready && int_div_a_tvalid && int_div_b_tready && int_div_b_tvalid && int_div_op_tready && int_div_op_tvalid;

  // 開始時制御信号
  always @(posedge CLK) begin
    if(!RST_N) begin
      int_div_a_tready <= 0;
      int_div_b_tready <= 0;
      int_div_op_tready <= 0;
    end else begin
      int_div_a_tready <= agreement ? 0 :
                          int_div_r_tvalid ? 0 : 1;
      int_div_b_tready <= agreement ? 0 :
                          int_div_r_tvalid ? 0 : 1;
      int_div_op_tready <= agreement ? 0 :
                           int_div_r_tvalid ? 0 : 1;
    end
  end

  // 入力値
  always @(posedge CLK) begin
    if(!RST_N) begin
      div_a <= 0;
      div_b <= 0;
      div_a_sign <= 0;
      div_b_sign <= 0;
      div_trace_valid[0] <= 0;
    end else begin
      div_a <= agreement ? ((int_div_op_tdata == I_DIVU || int_div_op_tdata == I_REMU)? int_div_a_tdata :
                            int_div_a_tdata[31] ? 0 - { 33'h1ffffffff, int_div_b_tdata[31:0] } : int_div_a_tdata)
               : div_a;
      div_b <= agreement ? ((int_div_op_tdata == I_DIVU || int_div_op_tdata == I_REMU)? int_div_b_tdata :
                            int_div_b_tdata[31] ? 0 - { 33'h1ffffffff, int_div_b_tdata[31:0] } : int_div_b_tdata)
               : div_b;
      div_a_sign <= agreement ? ((int_div_op_tdata == I_DIVU || int_div_op_tdata == I_REMU)? 0 : int_div_a_tdata[31]) : div_a_sign;
      div_b_sign <= agreement ? ((int_div_op_tdata == I_DIVU || int_div_op_tdata == I_REMU)? 0 : int_div_b_tdata[31]) : div_b_sign;
      div_trace_valid[0] <= agreement ? 1 : 0;
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[1] <= 0;
    end else if(!int_div_r_tvalid) begin
      div_stage1[0] <= div_a;
      div_stage1[1] <= div_a - { div_b, 30'b0 };
      div_stage1[2] <= div_a - { div_b, 31'b0 };
      div_stage1[3] <= div_a - ({ div_b, 31'b0 } + { div_b, 30'b0 });
      div_stage1[4] <= 0;
      div_trace_valid[1] <= div_trace_valid[0];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[2] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage1[3][64]) begin
        div_stage2[0] <= div_stage1[3];
        div_stage2[1] <= div_stage1[3] - { div_b, 28'b0 };
        div_stage2[2] <= div_stage1[3] - { div_b, 29'b0 };
        div_stage2[3] <= div_stage1[3] - ({ div_b, 29'b0 } + { div_b, 28'b0 });
        div_stage2[4] <= { 2'b11, div_stage1[4][29:0] };
      end else if(!div_stage1[2][64]) begin
        div_stage2[0] <= div_stage1[2];
        div_stage2[1] <= div_stage1[2] - { div_b, 28'b0 };
        div_stage2[2] <= div_stage1[2] - { div_b, 29'b0 };
        div_stage2[3] <= div_stage1[2] - ({ div_b, 29'b0 } + { div_b, 28'b0 });
        div_stage2[4] <= { 2'b10, div_stage1[4][29:0] };
      end else if(!div_stage1[1][64]) begin
        div_stage2[0] <= div_stage1[1];
        div_stage2[1] <= div_stage1[1] - { div_b, 28'b0 };
        div_stage2[2] <= div_stage1[1] - { div_b, 29'b0 };
        div_stage2[3] <= div_stage1[1] - ({ div_b, 29'b0 } + { div_b, 28'b0 });
        div_stage2[4] <= { 2'b01, div_stage1[4][29:0] };
      end else begin
        div_stage2[0] <= div_stage1[0];
        div_stage2[1] <= div_stage1[0] - { div_b, 28'b0 };
        div_stage2[2] <= div_stage1[0] - { div_b, 29'b0 };
        div_stage2[3] <= div_stage1[0] - ({ div_b, 29'b0 } + { div_b, 28'b0 });
        div_stage2[4] <= div_stage1[4];
      end
      div_trace_valid[2] <= div_trace_valid[1];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[3] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage2[3][64]) begin
        div_stage3[0] <= div_stage2[3];
        div_stage3[1] <= div_stage2[3] - { div_b, 26'b0 };
        div_stage3[2] <= div_stage2[3] - { div_b, 27'b0 };
        div_stage3[3] <= div_stage2[3] - ({ div_b, 27'b0 } + { div_b, 26'b0 });
        div_stage3[4] <= { div_stage2[4][31:30], 2'b11, div_stage2[4][27:0] };
      end else if(!div_stage2[2][64]) begin
        div_stage3[0] <= div_stage2[2];
        div_stage3[1] <= div_stage2[2] - { div_b, 26'b0 };
        div_stage3[2] <= div_stage2[2] - { div_b, 27'b0 };
        div_stage3[3] <= div_stage2[2] - ({ div_b, 27'b0 } + { div_b, 26'b0 });
        div_stage3[4] <= { div_stage2[4][31:30], 2'b10, div_stage2[4][27:0] };
      end else if(!div_stage2[1][64]) begin
        div_stage3[0] <= div_stage2[1];
        div_stage3[1] <= div_stage2[1] - { div_b, 26'b0 };
        div_stage3[2] <= div_stage2[1] - { div_b, 27'b0 };
        div_stage3[3] <= div_stage2[1] - ({ div_b, 27'b0 } + { div_b, 26'b0 });
        div_stage3[4] <= { div_stage2[4][31:30], 2'b01, div_stage2[4][27:0] };
      end else begin
        div_stage3[0] <= div_stage2[0];
        div_stage3[1] <= div_stage2[0] - { div_b, 26'b0 };
        div_stage3[2] <= div_stage2[0] - { div_b, 27'b0 };
        div_stage3[3] <= div_stage2[0] - ({ div_b, 27'b0 } + { div_b, 26'b0 });
        div_stage3[4] <= div_stage2[4];
      end
      div_trace_valid[3] <= div_trace_valid[2];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[4] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage3[3][64]) begin
        div_stage4[0] <= div_stage3[3];
        div_stage4[1] <= div_stage3[3] - { div_b, 24'b0 };
        div_stage4[2] <= div_stage3[3] - { div_b, 25'b0 };
        div_stage4[3] <= div_stage3[3] - ({ div_b, 25'b0 } + { div_b, 24'b0 });
        div_stage4[4] <= { div_stage3[4][31:28], 2'b11, div_stage3[4][25:0] };
      end else if(!div_stage3[2][64]) begin
        div_stage4[0] <= div_stage3[2];
        div_stage4[1] <= div_stage3[2] - { div_b, 24'b0 };
        div_stage4[2] <= div_stage3[2] - { div_b, 25'b0 };
        div_stage4[3] <= div_stage3[2] - ({ div_b, 25'b0 } + { div_b, 24'b0 });
        div_stage4[4] <= { div_stage3[4][31:28], 2'b10, div_stage3[4][25:0] };
      end else if(!div_stage3[1][64]) begin
        div_stage4[0] <= div_stage3[1];
        div_stage4[1] <= div_stage3[1] - { div_b, 24'b0 };
        div_stage4[2] <= div_stage3[1] - { div_b, 25'b0 };
        div_stage4[3] <= div_stage3[1] - ({ div_b, 25'b0 } + { div_b, 24'b0 });
        div_stage4[4] <= { div_stage3[4][31:28], 2'b01, div_stage3[4][25:0] };
      end else begin
        div_stage4[0] <= div_stage3[0];
        div_stage4[1] <= div_stage3[0] - { div_b, 24'b0 };
        div_stage4[2] <= div_stage3[0] - { div_b, 25'b0 };
        div_stage4[3] <= div_stage3[0] - ({ div_b, 25'b0 } + { div_b, 24'b0 });
        div_stage4[4] <= div_stage3[4];
      end
      div_trace_valid[4] <= div_trace_valid[3];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[5] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage4[3][64]) begin
        div_stage5[0] <= div_stage4[3];
        div_stage5[1] <= div_stage4[3] - { div_b, 22'b0 };
        div_stage5[2] <= div_stage4[3] - { div_b, 23'b0 };
        div_stage5[3] <= div_stage4[3] - ({ div_b, 23'b0 } + { div_b, 22'b0 });
        div_stage5[4] <= { div_stage4[4][31:26], 2'b11, div_stage4[4][23:0] };
      end else if(!div_stage4[2][64]) begin
        div_stage5[0] <= div_stage4[2];
        div_stage5[1] <= div_stage4[2] - { div_b, 22'b0 };
        div_stage5[2] <= div_stage4[2] - { div_b, 23'b0 };
        div_stage5[3] <= div_stage4[2] - ({ div_b, 23'b0 } + { div_b, 22'b0 });
        div_stage5[4] <= { div_stage4[4][31:26], 2'b10, div_stage4[4][23:0] };
      end else if(!div_stage4[1][64]) begin
        div_stage5[0] <= div_stage4[1];
        div_stage5[1] <= div_stage4[1] - { div_b, 22'b0 };
        div_stage5[2] <= div_stage4[1] - { div_b, 23'b0 };
        div_stage5[3] <= div_stage4[1] - ({ div_b, 23'b0 } + { div_b, 22'b0 });
        div_stage5[4] <= { div_stage4[4][31:26], 2'b01, div_stage4[4][23:0] };
      end else begin
        div_stage5[0] <= div_stage4[0];
        div_stage5[1] <= div_stage4[0] - { div_b, 22'b0 };
        div_stage5[2] <= div_stage4[0] - { div_b, 23'b0 };
        div_stage5[3] <= div_stage4[0] - ({ div_b, 23'b0 } + { div_b, 22'b0 });
        div_stage5[4] <= div_stage4[4];
      end
      div_trace_valid[5] <= div_trace_valid[4];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[6] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage5[3][64]) begin
        div_stage6[0] <= div_stage5[3];
        div_stage6[1] <= div_stage5[3] - { div_b, 20'b0 };
        div_stage6[2] <= div_stage5[3] - { div_b, 21'b0 };
        div_stage6[3] <= div_stage5[3] - ({ div_b, 21'b0 } + { div_b, 20'b0 });
        div_stage6[4] <= { div_stage5[4][31:24], 2'b11, div_stage5[4][21:0] };
      end else if(!div_stage5[2][64]) begin
        div_stage6[0] <= div_stage5[2];
        div_stage6[1] <= div_stage5[2] - { div_b, 20'b0 };
        div_stage6[2] <= div_stage5[2] - { div_b, 21'b0 };
        div_stage6[3] <= div_stage5[2] - ({ div_b, 21'b0 } + { div_b, 20'b0 });
        div_stage6[4] <= { div_stage5[4][31:24], 2'b10, div_stage5[4][21:0] };
      end else if(!div_stage5[1][64]) begin
        div_stage6[0] <= div_stage5[1];
        div_stage6[1] <= div_stage5[1] - { div_b, 20'b0 };
        div_stage6[2] <= div_stage5[1] - { div_b, 21'b0 };
        div_stage6[3] <= div_stage5[1] - ({ div_b, 21'b0 } + { div_b, 20'b0 });
        div_stage6[4] <= { div_stage5[4][31:24], 2'b01, div_stage5[4][21:0] };
      end else begin
        div_stage6[0] <= div_stage5[0];
        div_stage6[1] <= div_stage5[0] - { div_b, 20'b0 };
        div_stage6[2] <= div_stage5[0] - { div_b, 21'b0 };
        div_stage6[3] <= div_stage5[0] - ({ div_b, 21'b0 } + { div_b, 20'b0 });
        div_stage6[4] <= div_stage5[4];
      end
      div_trace_valid[6] <= div_trace_valid[5];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[7] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage6[3][64]) begin
        div_stage7[0] <= div_stage6[3];
        div_stage7[1] <= div_stage6[3] - { div_b, 18'b0 };
        div_stage7[2] <= div_stage6[3] - { div_b, 19'b0 };
        div_stage7[3] <= div_stage6[3] - ({ div_b, 19'b0 } + { div_b, 18'b0 });
        div_stage7[4] <= { div_stage6[4][31:22], 2'b11, div_stage6[4][19:0] };
      end else if(!div_stage6[2][64]) begin
        div_stage7[0] <= div_stage6[2];
        div_stage7[1] <= div_stage6[2] - { div_b, 18'b0 };
        div_stage7[2] <= div_stage6[2] - { div_b, 19'b0 };
        div_stage7[3] <= div_stage6[2] - ({ div_b, 19'b0 } + { div_b, 18'b0 });
        div_stage7[4] <= { div_stage6[4][31:22], 2'b10, div_stage6[4][19:0] };
      end else if(!div_stage6[1][64]) begin
        div_stage7[0] <= div_stage6[1];
        div_stage7[1] <= div_stage6[1] - { div_b, 18'b0 };
        div_stage7[2] <= div_stage6[1] - { div_b, 19'b0 };
        div_stage7[3] <= div_stage6[1] - ({ div_b, 19'b0 } + { div_b, 18'b0 });
        div_stage7[4] <= { div_stage6[4][31:22], 2'b01, div_stage6[4][19:0] };
      end else begin
        div_stage7[0] <= div_stage6[0];
        div_stage7[1] <= div_stage6[0] - { div_b, 18'b0 };
        div_stage7[2] <= div_stage6[0] - { div_b, 19'b0 };
        div_stage7[3] <= div_stage6[0] - ({ div_b, 19'b0 } + { div_b, 18'b0 });
        div_stage7[4] <= div_stage6[4];
      end
      div_trace_valid[7] <= div_trace_valid[6];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[8] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage7[3][64]) begin
        div_stage8[0] <= div_stage7[3];
        div_stage8[1] <= div_stage7[3] - { div_b, 16'b0 };
        div_stage8[2] <= div_stage7[3] - { div_b, 17'b0 };
        div_stage8[3] <= div_stage7[3] - ({ div_b, 17'b0 } + { div_b, 16'b0 });
        div_stage8[4] <= { div_stage7[4][31:20], 2'b11, div_stage7[4][17:0] };
      end else if(!div_stage7[2][64]) begin
        div_stage8[0] <= div_stage7[2];
        div_stage8[1] <= div_stage7[2] - { div_b, 16'b0 };
        div_stage8[2] <= div_stage7[2] - { div_b, 17'b0 };
        div_stage8[3] <= div_stage7[2] - ({ div_b, 17'b0 } + { div_b, 16'b0 });
        div_stage8[4] <= { div_stage7[4][31:20], 2'b10, div_stage7[4][17:0] };
      end else if(!div_stage7[1][64]) begin
        div_stage8[0] <= div_stage7[1];
        div_stage8[1] <= div_stage7[1] - { div_b, 16'b0 };
        div_stage8[2] <= div_stage7[1] - { div_b, 17'b0 };
        div_stage8[3] <= div_stage7[1] - ({ div_b, 17'b0 } + { div_b, 16'b0 });
        div_stage8[4] <= { div_stage7[4][31:20], 2'b01, div_stage7[4][17:0] };
      end else begin
        div_stage8[0] <= div_stage7[0];
        div_stage8[1] <= div_stage7[0] - { div_b, 16'b0 };
        div_stage8[2] <= div_stage7[0] - { div_b, 17'b0 };
        div_stage8[3] <= div_stage7[0] - ({ div_b, 17'b0 } + { div_b, 16'b0 });
        div_stage8[4] <= div_stage7[4];
      end
      div_trace_valid[8] <= div_trace_valid[7];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[9] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage8[3][64]) begin
        div_stage9[0] <= div_stage8[3];
        div_stage9[1] <= div_stage8[3] - { div_b, 14'b0 };
        div_stage9[2] <= div_stage8[3] - { div_b, 15'b0 };
        div_stage9[3] <= div_stage8[3] - ({ div_b, 15'b0 } + { div_b, 14'b0 });
        div_stage9[4] <= { div_stage8[4][31:18], 2'b11, div_stage8[4][15:0] };
      end else if(!div_stage8[2][64]) begin
        div_stage9[0] <= div_stage8[2];
        div_stage9[1] <= div_stage8[2] - { div_b, 14'b0 };
        div_stage9[2] <= div_stage8[2] - { div_b, 15'b0 };
        div_stage9[3] <= div_stage8[2] - ({ div_b, 15'b0 } + { div_b, 14'b0 });
        div_stage9[4] <= { div_stage8[4][31:18], 2'b10, div_stage8[4][15:0] };
      end else if(!div_stage8[1][64]) begin
        div_stage9[0] <= div_stage8[1];
        div_stage9[1] <= div_stage8[1] - { div_b, 14'b0 };
        div_stage9[2] <= div_stage8[1] - { div_b, 15'b0 };
        div_stage9[3] <= div_stage8[1] - ({ div_b, 15'b0 } + { div_b, 14'b0 });
        div_stage9[4] <= { div_stage8[4][31:18], 2'b01, div_stage8[4][15:0] };
      end else begin
        div_stage9[0] <= div_stage8[0];
        div_stage9[1] <= div_stage8[0] - { div_b, 14'b0 };
        div_stage9[2] <= div_stage8[0] - { div_b, 15'b0 };
        div_stage9[3] <= div_stage8[0] - ({ div_b, 15'b0 } + { div_b, 14'b0 });
        div_stage9[4] <= div_stage8[4];
      end
      div_trace_valid[9] <= div_trace_valid[8];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[10] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage9[3][64]) begin
        div_stage10[0] <= div_stage9[3];
        div_stage10[1] <= div_stage9[3] - { div_b, 12'b0 };
        div_stage10[2] <= div_stage9[3] - { div_b, 13'b0 };
        div_stage10[3] <= div_stage9[3] - ({ div_b, 13'b0 } + { div_b, 12'b0 });
        div_stage10[4] <= { div_stage9[4][31:16], 2'b11, div_stage9[4][13:0] };
      end else if(!div_stage9[2][64]) begin
        div_stage10[0] <= div_stage9[2];
        div_stage10[1] <= div_stage9[2] - { div_b, 12'b0 };
        div_stage10[2] <= div_stage9[2] - { div_b, 13'b0 };
        div_stage10[3] <= div_stage9[2] - ({ div_b, 13'b0 } + { div_b, 12'b0 });
        div_stage10[4] <= { div_stage9[4][31:16], 2'b10, div_stage9[4][13:0] };
      end else if(!div_stage9[1][64]) begin
        div_stage10[0] <= div_stage9[1];
        div_stage10[1] <= div_stage9[1] - { div_b, 12'b0 };
        div_stage10[2] <= div_stage9[1] - { div_b, 13'b0 };
        div_stage10[3] <= div_stage9[1] - ({ div_b, 13'b0 } + { div_b, 12'b0 });
        div_stage10[4] <= { div_stage9[4][31:16], 2'b01, div_stage9[4][13:0] };
      end else begin
        div_stage10[0] <= div_stage9[0];
        div_stage10[1] <= div_stage9[0] - { div_b, 12'b0 };
        div_stage10[2] <= div_stage9[0] - { div_b, 13'b0 };
        div_stage10[3] <= div_stage9[0] - ({ div_b, 13'b0 } + { div_b, 12'b0 });
        div_stage10[4] <= div_stage9[4];
      end
      div_trace_valid[10] <= div_trace_valid[9];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[11] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage10[3][64]) begin
        div_stage11[0] <= div_stage10[3];
        div_stage11[1] <= div_stage10[3] - { div_b, 10'b0 };
        div_stage11[2] <= div_stage10[3] - { div_b, 11'b0 };
        div_stage11[3] <= div_stage10[3] - ({ div_b, 11'b0 } + { div_b, 10'b0 });
        div_stage11[4] <= { div_stage10[4][31:14], 2'b11, div_stage10[4][11:0] };
      end else if(!div_stage10[2][64]) begin
        div_stage11[0] <= div_stage10[2];
        div_stage11[1] <= div_stage10[2] - { div_b, 10'b0 };
        div_stage11[2] <= div_stage10[2] - { div_b, 11'b0 };
        div_stage11[3] <= div_stage10[2] - ({ div_b, 11'b0 } + { div_b, 10'b0 });
        div_stage11[4] <= { div_stage10[4][31:14], 2'b10, div_stage10[4][11:0] };
      end else if(!div_stage10[1][64]) begin
        div_stage11[0] <= div_stage10[1];
        div_stage11[1] <= div_stage10[1] - { div_b, 10'b0 };
        div_stage11[2] <= div_stage10[1] - { div_b, 11'b0 };
        div_stage11[3] <= div_stage10[1] - ({ div_b, 11'b0 } + { div_b, 10'b0 });
        div_stage11[4] <= { div_stage10[4][31:14], 2'b01, div_stage10[4][11:0] };
      end else begin
        div_stage11[0] <= div_stage10[0];
        div_stage11[1] <= div_stage10[0] - { div_b, 10'b0 };
        div_stage11[2] <= div_stage10[0] - { div_b, 11'b0 };
        div_stage11[3] <= div_stage10[0] - ({ div_b, 11'b0 } + { div_b, 10'b0 });
        div_stage11[4] <= div_stage10[4];
      end
      div_trace_valid[11] <= div_trace_valid[10];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[12] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage11[3][64]) begin
        div_stage12[0] <= div_stage11[3];
        div_stage12[1] <= div_stage11[3] - { div_b, 8'b0 };
        div_stage12[2] <= div_stage11[3] - { div_b, 9'b0 };
        div_stage12[3] <= div_stage11[3] - ({ div_b, 9'b0 } + { div_b, 8'b0 });
        div_stage12[4] <= { div_stage11[4][31:12], 2'b11, div_stage11[4][9:0] };
      end else if(!div_stage11[2][64]) begin
        div_stage12[0] <= div_stage11[2];
        div_stage12[1] <= div_stage11[2] - { div_b, 8'b0 };
        div_stage12[2] <= div_stage11[2] - { div_b, 9'b0 };
        div_stage12[3] <= div_stage11[2] - ({ div_b, 9'b0 } + { div_b, 8'b0 });
        div_stage12[4] <= { div_stage11[4][31:12], 2'b10, div_stage11[4][9:0] };
      end else if(!div_stage11[1][64]) begin
        div_stage12[0] <= div_stage11[1];
        div_stage12[1] <= div_stage11[1] - { div_b, 8'b0 };
        div_stage12[2] <= div_stage11[1] - { div_b, 9'b0 };
        div_stage12[3] <= div_stage11[1] - ({ div_b, 9'b0 } + { div_b, 8'b0 });
        div_stage12[4] <= { div_stage11[4][31:12], 2'b01, div_stage11[4][9:0] };
      end else begin
        div_stage12[0] <= div_stage11[0];
        div_stage12[1] <= div_stage11[0] - { div_b, 8'b0 };
        div_stage12[2] <= div_stage11[0] - { div_b, 9'b0 };
        div_stage12[3] <= div_stage11[0] - ({ div_b, 9'b0 } + { div_b, 8'b0 });
        div_stage12[4] <= div_stage11[4];
      end
      div_trace_valid[12] <= div_trace_valid[11];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[13] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage12[3][64]) begin
        div_stage13[0] <= div_stage12[3];
        div_stage13[1] <= div_stage12[3] - { div_b, 6'b0 };
        div_stage13[2] <= div_stage12[3] - { div_b, 7'b0 };
        div_stage13[3] <= div_stage12[3] - ({ div_b, 7'b0 } + { div_b, 6'b0 });
        div_stage13[4] <= { div_stage12[4][31:10], 2'b11, div_stage12[4][7:0] };
      end else if(!div_stage12[2][64]) begin
        div_stage13[0] <= div_stage12[2];
        div_stage13[1] <= div_stage12[2] - { div_b, 6'b0 };
        div_stage13[2] <= div_stage12[2] - { div_b, 7'b0 };
        div_stage13[3] <= div_stage12[2] - ({ div_b, 7'b0 } + { div_b, 6'b0 });
        div_stage13[4] <= { div_stage12[4][31:10], 2'b10, div_stage12[4][7:0] };
      end else if(!div_stage12[1][64]) begin
        div_stage13[0] <= div_stage12[1];
        div_stage13[1] <= div_stage12[1] - { div_b, 6'b0 };
        div_stage13[2] <= div_stage12[1] - { div_b, 7'b0 };
        div_stage13[3] <= div_stage12[1] - ({ div_b, 7'b0 } + { div_b, 6'b0 });
        div_stage13[4] <= { div_stage12[4][31:10], 2'b01, div_stage12[4][7:0] };
      end else begin
        div_stage13[0] <= div_stage12[0];
        div_stage13[1] <= div_stage12[0] - { div_b, 6'b0 };
        div_stage13[2] <= div_stage12[0] - { div_b, 7'b0 };
        div_stage13[3] <= div_stage12[0] - ({ div_b, 7'b0 } + { div_b, 6'b0 });
        div_stage13[4] <= div_stage12[4];
      end
      div_trace_valid[13] <= div_trace_valid[12];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[14] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage13[3][64]) begin
        div_stage14[0] <= div_stage13[3];
        div_stage14[1] <= div_stage13[3] - { div_b, 4'b0 };
        div_stage14[2] <= div_stage13[3] - { div_b, 5'b0 };
        div_stage14[3] <= div_stage13[3] - ({ div_b, 5'b0 } + { div_b, 4'b0 });
        div_stage14[4] <= { div_stage13[4][31:8], 2'b11, div_stage13[4][5:0] };
      end else if(!div_stage13[2][64]) begin
        div_stage14[0] <= div_stage13[2];
        div_stage14[1] <= div_stage13[2] - { div_b, 4'b0 };
        div_stage14[2] <= div_stage13[2] - { div_b, 5'b0 };
        div_stage14[3] <= div_stage13[2] - ({ div_b, 5'b0 } + { div_b, 4'b0 });
        div_stage14[4] <= { div_stage13[4][31:8], 2'b10, div_stage13[4][5:0] };
      end else if(!div_stage13[1][64]) begin
        div_stage14[0] <= div_stage13[1];
        div_stage14[1] <= div_stage13[1] - { div_b, 4'b0 };
        div_stage14[2] <= div_stage13[1] - { div_b, 5'b0 };
        div_stage14[3] <= div_stage13[1] - ({ div_b, 5'b0 } + { div_b, 4'b0 });
        div_stage14[4] <= { div_stage13[4][31:8], 2'b01, div_stage13[4][5:0] };
      end else begin
        div_stage14[0] <= div_stage13[0];
        div_stage14[1] <= div_stage13[0] - { div_b, 4'b0 };
        div_stage14[2] <= div_stage13[0] - { div_b, 5'b0 };
        div_stage14[3] <= div_stage13[0] - ({ div_b, 5'b0 } + { div_b, 4'b0 });
        div_stage14[4] <= div_stage13[4];
      end
      div_trace_valid[14] <= div_trace_valid[13];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[15] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage14[3][64]) begin
        div_stage15[0] <= div_stage14[3];
        div_stage15[1] <= div_stage14[3] - { div_b, 2'b0 };
        div_stage15[2] <= div_stage14[3] - { div_b, 3'b0 };
        div_stage15[3] <= div_stage14[3] - ({ div_b, 3'b0 } + { div_b, 2'b0 });
        div_stage15[4] <= { div_stage14[4][31:6], 2'b11, div_stage14[4][3:0] };
      end else if(!div_stage14[2][64]) begin
        div_stage15[0] <= div_stage14[2];
        div_stage15[1] <= div_stage14[2] - { div_b, 2'b0 };
        div_stage15[2] <= div_stage14[2] - { div_b, 3'b0 };
        div_stage15[3] <= div_stage14[2] - ({ div_b, 3'b0 } + { div_b, 2'b0 });
        div_stage15[4] <= { div_stage14[4][31:6], 2'b10, div_stage14[4][3:0] };
      end else if(!div_stage14[1][64]) begin
        div_stage15[0] <= div_stage14[1];
        div_stage15[1] <= div_stage14[1] - { div_b, 2'b0 };
        div_stage15[2] <= div_stage14[1] - { div_b, 3'b0 };
        div_stage15[3] <= div_stage14[1] - ({ div_b, 3'b0 } + { div_b, 2'b0 });
        div_stage15[4] <= { div_stage14[4][31:6], 2'b01, div_stage14[4][3:0] };
      end else begin
        div_stage15[0] <= div_stage14[0];
        div_stage15[1] <= div_stage14[0] - { div_b, 2'b0 };
        div_stage15[2] <= div_stage14[0] - { div_b, 3'b0 };
        div_stage15[3] <= div_stage14[0] - ({ div_b, 3'b0 } + { div_b, 2'b0 });
        div_stage15[4] <= div_stage14[4];
      end
      div_trace_valid[15] <= div_trace_valid[14];
    end
  end


  always @(posedge CLK) begin
    if(!RST_N) begin
      div_trace_valid[16] <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage15[3][64]) begin
        div_stage16[0] <= div_stage15[3];
        div_stage16[1] <= div_stage15[3] - div_b;
        div_stage16[2] <= div_stage15[3] - { div_b, 1'b0 };
        div_stage16[3] <= div_stage15[3] - ({ div_b, 1'b0 } + div_b);
        div_stage16[4] <= { div_stage15[4][31:4], 2'b11, div_stage15[4][1:0] };
      end else if(!div_stage15[2][64]) begin
        div_stage16[0] <= div_stage15[2];
        div_stage16[1] <= div_stage15[2] - div_b;
        div_stage16[2] <= div_stage15[2] - { div_b, 1'b0 };
        div_stage16[3] <= div_stage15[2] - ({ div_b, 1'b0 } + div_b);
        div_stage16[4] <= { div_stage15[4][31:4], 2'b10, div_stage15[4][1:0] };
      end else if(!div_stage15[1][64]) begin
        div_stage16[0] <= div_stage15[1];
        div_stage16[1] <= div_stage15[1] - div_b;
        div_stage16[2] <= div_stage15[1] - { div_b, 1'b0 };
        div_stage16[3] <= div_stage15[1] - ({ div_b, 1'b0 } + div_b);
        div_stage16[4] <= { div_stage15[4][31:4], 2'b01, div_stage15[4][1:0] };
      end else begin
        div_stage16[0] <= div_stage15[0];
        div_stage16[1] <= div_stage15[0] - div_b;
        div_stage16[2] <= div_stage15[0] - { div_b, 1'b0 };
        div_stage16[3] <= div_stage15[0] - ({ div_b, 1'b0 } + div_b);
        div_stage16[4] <= div_stage15[4];
      end
      div_trace_valid[16] <= div_trace_valid[15];
    end
  end

  assign div_r_sign = div_a_sign ^ div_b_sign;

  always @(posedge CLK) begin
    if(!RST_N) begin
      int_div_r_tvalid <= 0;
    end else if(!int_div_r_tvalid) begin
      if(!div_stage16[3][64]) begin
        int_div_r_tdata <=  (int_div_op_tdata == I_DIV) ? 0 - { div_stage16[4][31:2], 2'b11 } :
                            (int_div_op_tdata == I_DIVU) ? { div_stage16[4][31:2], 2'b11 }
                            : div_stage16[3];
      end else if(!div_stage16[2][64]) begin
        int_div_r_tdata <=  (int_div_op_tdata == I_DIV) ? 0 - { div_stage16[4][31:2], 2'b10 } :
                            (int_div_op_tdata == I_DIVU) ? { div_stage16[4][31:2], 2'b10 }
                            : div_stage16[2];
      end else if(!div_stage16[1][64]) begin
        int_div_r_tdata <=  (int_div_op_tdata == I_DIV) ? 0 - { div_stage16[4][31:2], 2'b01 } :
                            (int_div_op_tdata == I_DIVU) ? { div_stage16[4][31:2], 2'b01 }
                            : div_stage16[1];
      end else begin
        int_div_r_tdata <=  (int_div_op_tdata == I_DIV) ? 0 - { div_stage16[4][31:2], 2'b00 } :
                            (int_div_op_tdata == I_DIVU) ? { div_stage16[4][31:2], 2'b00 }
                            : div_stage16[0];
      end
    end
    int_div_r_tvalid <= (int_div_r_tready && int_div_r_tvalid) ? 0 :
                        (int_div_r_tvalid | div_trace_valid[16]);
  end

endmodule
