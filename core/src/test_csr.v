`timescale 1ns / 100ps
`default_nettype none
module test_csr();
  reg RST_N;
  reg CLK;

  wire [31:0]  CSR_RDATA;
  wire [31:0]  CSR_WDATA;
  wire [11:0]  CSR_ADDR;
  wire CSR_WE;

  wire clk, rst_n;

  assign clk = CLK;
  assign rst_n = RST_N;

  core_csr csr(rst_n, clk, CSR_RDATA, CSR_WDATA, CSR_ADDR, CSR_WE);

initial begin
$finish;
end

endmodule
`default_nettype wire
