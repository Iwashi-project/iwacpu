module core_mul (

  input RST_N,
  input CLK,

  input wire [31:0] int_mul_a_tdata,
  output reg int_mul_a_tready,
  input wire int_mul_a_tvalid,
  input wire [31:0] int_mul_b_tdata,
  output reg int_mul_b_tready,
  input wire int_mul_b_tvalid,
  input wire [1:0] int_mul_op_tdata,
  output reg int_mul_op_tready,
  input wire int_mul_op_tvalid,
  output reg [31:0] int_mul_r_tdata,
  input wire int_mul_r_tready,
  output reg int_mul_r_tvalid

  );

  // int_mul_op に対応
  localparam I_MUL = 2'b00;
  localparam I_MULH = 2'b01;
  localparam I_MULHSU = 2'b10;
  localparam I_MULHU = 2'b11;

  // 定数加算値
  localparam add_const_in_mul_and_mulh = 64'h8000000000000000;

  reg [31:0] mul_a;
  reg [31:0] mul_b;
  reg [6:0] mul_trace_valid;

  reg [31:0] mul_ab[31:0];
  reg [33:0] mul_stage1[15:0];
  reg [36:0] mul_stage2[7:0];
  reg [41:0] mul_stage3[3:0];
  reg [50:0] mul_stage4[1:0];
  reg [67:0] mul_stage5;
  wire [63:0] last_in_mul_and_mulh;

  wire agreement;

  assign agreement = int_mul_a_tready && int_mul_a_tvalid && int_mul_b_tready && int_mul_b_tvalid && int_mul_op_tready && int_mul_op_tvalid;

  // 開始時制御信号
  always @(posedge CLK) begin
    if(!RST_N) begin
      int_mul_a_tready <= 0;
      int_mul_b_tready <= 0;
      int_mul_op_tready <= 0;
    end else begin
      int_mul_a_tready <= agreement ? 0 :
                          int_mul_r_tvalid ? 0 : 1;
      int_mul_b_tready <= agreement ? 0 :
                          int_mul_r_tvalid ? 0 : 1;
      int_mul_op_tready <= agreement ? 0 :
                           int_mul_r_tvalid ? 0 : 1;
    end
  end

  // 入力値
  always @(posedge CLK) begin
    if(!RST_N) begin
      mul_a <= 0;
      mul_b <= 0;
      mul_trace_valid[0] <= 0;
    end else begin
      mul_a <= agreement ? (int_mul_op_tdata == I_MULHU ?
                            {  int_mul_a_tdata[31], int_mul_a_tdata[30:0] } :
                            { !int_mul_a_tdata[31], int_mul_a_tdata[30:0] } )
               : mul_a;
      mul_b <= agreement ? ( (int_mul_op_tdata == I_MULHU  || int_mul_op_tdata == I_MULHSU) ?
                            {  int_mul_b_tdata[31], int_mul_b_tdata[30:0] } :
                            { !int_mul_b_tdata[31], int_mul_b_tdata[30:0] } )
               : mul_b;
      mul_trace_valid[0] <= agreement ? 1 : 0;
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      mul_trace_valid[1] <= 0;
    end else if(!int_mul_r_tvalid) begin
      mul_ab[0] <= mul_b[0] ? mul_a : 0;
      mul_ab[1] <= mul_b[1] ? mul_a : 0;
      mul_ab[2] <= mul_b[2] ? mul_a : 0;
      mul_ab[3] <= mul_b[3] ? mul_a : 0;
      mul_ab[4] <= mul_b[4] ? mul_a : 0;
      mul_ab[5] <= mul_b[5] ? mul_a : 0;
      mul_ab[6] <= mul_b[6] ? mul_a : 0;
      mul_ab[7] <= mul_b[7] ? mul_a : 0;
      mul_ab[8] <= mul_b[8] ? mul_a : 0;
      mul_ab[9] <= mul_b[9] ? mul_a : 0;
      mul_ab[10] <= mul_b[10] ? mul_a : 0;
      mul_ab[11] <= mul_b[11] ? mul_a : 0;
      mul_ab[12] <= mul_b[12] ? mul_a : 0;
      mul_ab[13] <= mul_b[13] ? mul_a : 0;
      mul_ab[14] <= mul_b[14] ? mul_a : 0;
      mul_ab[15] <= mul_b[15] ? mul_a : 0;
      mul_ab[16] <= mul_b[16] ? mul_a : 0;
      mul_ab[17] <= mul_b[17] ? mul_a : 0;
      mul_ab[18] <= mul_b[18] ? mul_a : 0;
      mul_ab[19] <= mul_b[19] ? mul_a : 0;
      mul_ab[20] <= mul_b[20] ? mul_a : 0;
      mul_ab[21] <= mul_b[21] ? mul_a : 0;
      mul_ab[22] <= mul_b[22] ? mul_a : 0;
      mul_ab[23] <= mul_b[23] ? mul_a : 0;
      mul_ab[24] <= mul_b[24] ? mul_a : 0;
      mul_ab[25] <= mul_b[25] ? mul_a : 0;
      mul_ab[26] <= mul_b[26] ? mul_a : 0;
      mul_ab[27] <= mul_b[27] ? mul_a : 0;
      mul_ab[28] <= mul_b[28] ? mul_a : 0;
      mul_ab[29] <= mul_b[29] ? mul_a : 0;
      mul_ab[30] <= mul_b[30] ? mul_a : 0;
      mul_ab[31] <= mul_b[31] ? mul_a : 0;
      mul_trace_valid[1] <= mul_trace_valid[0];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      mul_trace_valid[2] <= 0;
    end else if(!int_mul_r_tvalid) begin
      mul_stage1[0] <= { 1'b0, mul_ab[0] } + { mul_ab[1], 1'b0 };
      mul_stage1[1] <= { 1'b0, mul_ab[2] } + { mul_ab[3], 1'b0 };
      mul_stage1[2] <= { 1'b0, mul_ab[4] } + { mul_ab[5], 1'b0 };
      mul_stage1[3] <= { 1'b0, mul_ab[6] } + { mul_ab[7], 1'b0 };
      mul_stage1[4] <= { 1'b0, mul_ab[8] } + { mul_ab[9], 1'b0 };
      mul_stage1[5] <= { 1'b0, mul_ab[10] } + { mul_ab[11], 1'b0 };
      mul_stage1[6] <= { 1'b0, mul_ab[12] } + { mul_ab[13], 1'b0 };
      mul_stage1[7] <= { 1'b0, mul_ab[14] } + { mul_ab[15], 1'b0 };
      mul_stage1[8] <= { 1'b0, mul_ab[16] } + { mul_ab[17], 1'b0 };
      mul_stage1[9] <= { 1'b0, mul_ab[18] } + { mul_ab[19], 1'b0 };
      mul_stage1[10] <= { 1'b0, mul_ab[20] } + { mul_ab[21], 1'b0 };
      mul_stage1[11] <= { 1'b0, mul_ab[22] } + { mul_ab[23], 1'b0 };
      mul_stage1[12] <= { 1'b0, mul_ab[24] } + { mul_ab[25], 1'b0 };
      mul_stage1[13] <= { 1'b0, mul_ab[26] } + { mul_ab[27], 1'b0 };
      mul_stage1[14] <= { 1'b0, mul_ab[28] } + { mul_ab[29], 1'b0 };
      mul_stage1[15] <= { 1'b0, mul_ab[30] } + { mul_ab[31], 1'b0 };
      mul_trace_valid[2] <= mul_trace_valid[1];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      mul_trace_valid[3] <= 0;
    end else if(!int_mul_r_tvalid) begin
      mul_stage2[0] <= { 2'b0, mul_stage1[0] } + { mul_stage1[1], 2'b0 };
      mul_stage2[1] <= { 2'b0, mul_stage1[2] } + { mul_stage1[3], 2'b0 };
      mul_stage2[2] <= { 2'b0, mul_stage1[4] } + { mul_stage1[5], 2'b0 };
      mul_stage2[3] <= { 2'b0, mul_stage1[6] } + { mul_stage1[7], 2'b0 };
      mul_stage2[4] <= { 2'b0, mul_stage1[8] } + { mul_stage1[9], 2'b0 };
      mul_stage2[5] <= { 2'b0, mul_stage1[10] } + { mul_stage1[11], 2'b0 };
      mul_stage2[6] <= { 2'b0, mul_stage1[12] } + { mul_stage1[13], 2'b0 };
      mul_stage2[7] <= { 2'b0, mul_stage1[14] } + { mul_stage1[15], 2'b0 };
      mul_trace_valid[3] <= mul_trace_valid[2];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      mul_trace_valid[4] <= 0;
    end else if(!int_mul_r_tvalid) begin
      mul_stage3[0] <= { 4'b0, mul_stage2[0] } + { mul_stage2[1], 4'b0 };
      mul_stage3[1] <= { 4'b0, mul_stage2[2] } + { mul_stage2[3], 4'b0 };
      mul_stage3[2] <= { 4'b0, mul_stage2[4] } + { mul_stage2[5], 4'b0 };
      mul_stage3[3] <= { 4'b0, mul_stage2[6] } + { mul_stage2[7], 4'b0 };
      mul_trace_valid[4] <= mul_trace_valid[3];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      mul_trace_valid[5] <= 0;
    end else if(!int_mul_r_tvalid) begin
      mul_stage4[0] <= { 8'b0, mul_stage3[0] } + { mul_stage3[1], 8'b0 };
      mul_stage4[1] <= { 8'b0, mul_stage3[2] } + { mul_stage3[3], 8'b0 };
      mul_trace_valid[5] <= mul_trace_valid[4];
    end
  end

  always @(posedge CLK) begin
    if(!RST_N) begin
      mul_trace_valid[6] <= 0;
    end else if(!int_mul_r_tvalid) begin
      mul_stage5 <= { 16'b0, mul_stage4[0] } + { mul_stage4[1], 16'b0 };
      mul_trace_valid[6] <= mul_trace_valid[5];
    end
  end

  assign last_in_mul_and_mulh = mul_stage5 + add_const_in_mul_and_mulh;

  always @(posedge CLK) begin
    if(!RST_N) begin
      int_mul_r_tvalid <= 0;
    end else begin
      int_mul_r_tdata <=  (int_mul_op_tdata == I_MUL) ? last_in_mul_and_mulh[31:0] :
                          (int_mul_op_tdata == I_MULH) ? last_in_mul_and_mulh[63:32] :
                          mul_stage5[63:32];
      int_mul_r_tvalid <= (int_mul_r_tready && int_mul_r_tvalid) ? 0 :
                          (int_mul_r_tvalid | mul_trace_valid[6]);
    end
  end

endmodule
