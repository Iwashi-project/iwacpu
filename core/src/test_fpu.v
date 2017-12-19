`timescale 1ns / 100ps
`default_nettype none
module test_fpu();
  reg RST_N;
  reg CLK;

  reg [31:0]  RS1;
  reg [31:0]  FRS1;
  reg [31:0]  FRS2;

  wire [31:0] FPU_RESULT;

  wire clk, rst_n;

  assign clk = CLK;
  assign rst_n = RST_N;

  core_fpu fpu(rst_n, clk, RS1, FRS1, FRS2, FPU_RESULT);

initial begin
$finish;
end

endmodule
`default_nettype wire
