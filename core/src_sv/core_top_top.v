// vim: ft=verilog
module core_top_top
  (
    input RST_N,
    input CLK,
    // Memory input and output

    input [31:0] I_MEM_IN,
    output [31:0] I_MEM_ADDR,
    // メモリからのデータをMEM_INで受け取り、欲しいアドレスをMEM_ADDRで出力
    // する
    input [31:0] MEM_IN,
    output [31:0] MEM_DATA,
    output [31:0] MEM_ADDR,
    output MEM_WE,

    // In/Out
    output reg [3:0] ARADDR,
    input wire ARREADY,
    output reg ARVALID,

    output reg [3:0] AWADDR,
    input wire AWREADY,
    output reg AWVALID,

    output reg BREADY,
    input wire [1:0] BRESP,
    input wire BVALID,

    input wire [31:0] RDATA,
    output reg RREADY,
    input wire [1:0] RRESP,
    input wire RVALID,

    output reg [31:0] WDATA,
    input wire WREADY,
    output reg WVALID,

    output reg [3:0] WSTRB

  );

core_top u_core_top
(
    .RST_N (RST_N),
    .CLK (CLK),

    .I_MEM_IN (I_MEM_IN),
    .I_MEM_ADDR (I_MEM_ADDR),

    .MEM_IN (MEM_IN),
    .MEM_DATA (MEM_DATA),
    .MEM_ADDR (MEM_ADDR),
    .MEM_WE (MEM_WE),

    .ARADDR (ARADDR),
    .ARREADY (ARREADY),
    .ARVALID (ARVALID),
    
    .AWADDR (ARADDR),
    .AWREADY (AWREADY),
    .AWVALID (AWVALID),

    .BREADY (BREAD),
    .BRESP (BRESP),
    .BVALID (BVALID),

    .RDATA (RDATA),
    .RREADY (RREADY),
    .RRESP (RRESP),
    .RVALID (RVALID),

    .WDATA (WDATA),
    .WREADY (WREADY),
    .WVALID (WVALID),

    .WSTRB (WSTRB)
);

endmodule
