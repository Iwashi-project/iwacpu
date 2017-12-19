module core_csr
(
  input CLK,
  input RST_N,
  // CSRをメモリで管理する
  output reg [31:0] CSR_RDATA,
  input wire [31:0] CSR_WDATA,
  input wire [11:0] CSR_ADDR,
  input wire CSR_WE
  );

   
  // Machine Information registers
   wire [31:0]        mvendorid;
   wire [31:0]        marchid;
   wire [31:0]        mimpid;
   wire [31:0]        mhartid;
   // Machine Trap Setup
   wire [31:0]        mstatus;
   wire [31:0]        misa;
   reg [31:0]         medeleg;
   reg [31:0]         mideleg;
   wire [31:0]         mie;
   reg [31:0]         mtvec;
   // Machine Trap Handlling
   reg [31:0]         mscratch;
   reg [31:0]         mepc;
   reg [31:0]         mcause;
   reg [31:0]         mtval;
   reg [31:0]         mip;
   // Machine Protction and Trnslation
   wire [31:0]         pmpcfg0;
   wire [31:0]         pmpcfg1;
   wire [31:0]         pmpcfg2;
   wire [31:0]         pmpcfg3;
   wire [31:0]         pmpaddr0;
   wire [31:0]         pmpaddr1;
   wire [31:0]         pmpaddr2;
   wire [31:0]         pmpaddr3;
   wire [31:0]         pmpaddr4;
   wire [31:0]         pmpaddr5;
   wire [31:0]         pmpaddr6;
   wire [31:0]         pmpaddr7;
   wire [31:0]         pmpaddr8;
   wire [31:0]         pmpaddr9;
   wire [31:0]         pmpaddr10;
   wire [31:0]         pmpaddr11;
   wire [31:0]         pmpaddr12;
   wire [31:0]         pmpaddr13;
   wire [31:0]         pmpaddr14;
   wire [31:0]         pmpaddr15;
   // Machine Counter/Timer
   reg [63:0]         mcycle;
   reg [63:0]         minstret;
   wire [63:0]         mhpmcounter3;
   wire [63:0]         mhpmcounter4;
   wire [63:0]         mhpmcounter5;
   wire [63:0]         mhpmcounter6;
   wire [63:0]         mhpmcounter7;
   wire [63:0]         mhpmcounter8;
   wire [63:0]         mhpmcounter9;
   wire [63:0]         mhpmcounter10;
   wire [63:0]         mhpmcounter11;
   wire [63:0]         mhpmcounter12;
   wire [63:0]         mhpmcounter13;
   wire [63:0]         mhpmcounter14;
   wire [63:0]         mhpmcounter15;
   wire [63:0]         mhpmcounter16;
   wire [63:0]         mhpmcounter17;
   wire [63:0]         mhpmcounter18;
   wire [63:0]         mhpmcounter19;
   wire [63:0]         mhpmcounter20;
   wire [63:0]         mhpmcounter21;
   wire [63:0]         mhpmcounter22;
   wire [63:0]         mhpmcounter23;
   wire [63:0]         mhpmcounter24;
   wire [63:0]         mhpmcounter25;
   wire [63:0]         mhpmcounter26;
   wire [63:0]         mhpmcounter27;
   wire [63:0]         mhpmcounter28;
   wire [63:0]         mhpmcounter29;
   wire [63:0]         mhpmcounter30;
   wire [63:0]         mhpmcounter31;
   // Machine Counter Setup
   wire [31:0]         mucounteren;
   wire [31:0]         mscounteren;
   wire [31:0]         mhcounteren;
   wire [31:0]         mhpmevent3;
   wire [31:0]         mhpmevent4;
   wire [31:0]         mhpmevent5;
   wire [31:0]         mhpmevent6;
   wire [31:0]         mhpmevent7;
   wire [31:0]         mhpmevent8;
   wire [31:0]         mhpmevent9;
   wire [31:0]         mhpmevent10;
   wire [31:0]         mhpmevent11;
   wire [31:0]         mhpmevent12;
   wire [31:0]         mhpmevent13;
   wire [31:0]         mhpmevent14;
   wire [31:0]         mhpmevent15;
   wire [31:0]         mhpmevent16;
   wire [31:0]         mhpmevent17;
   wire [31:0]         mhpmevent18;
   wire [31:0]         mhpmevent19;
   wire [31:0]         mhpmevent20;
   wire [31:0]         mhpmevent21;
   wire [31:0]         mhpmevent22;
   wire [31:0]         mhpmevent23;
   wire [31:0]         mhpmevent24;
   wire [31:0]         mhpmevent25;
   wire [31:0]         mhpmevent26;
   wire [31:0]         mhpmevent27;
   wire [31:0]         mhpmevent28;
   wire [31:0]         mhpmevent29;
   wire [31:0]         mhpmevent30;
   wire [31:0]         mhpmevent31;
   // Debug/Trace Register
   wire [31:0]         tselect;
   wire [31:0]         tdata1;
   wire [31:0]         tdata2;
   wire [31:0]         tdata3;
   // Debug Mode Register
   wire [31:0]         dcsr;
   wire [31:0]         dpc;
   wire [31:0]         dscratch;

   // mvendorid(F11h), marchid(F12h), mimpid(F13h), mhartid(F14h)
   assign mvendorid = 32'd0;
   assign marchid   = 32'd0;
   assign mimpid    = 32'd0;
   assign mhartid   = 32'd0;

   // mstatus(300h)
   reg [1:0]           ms_mpp;
   reg                 ms_mpie;
   reg                 ms_mie;
   always @(posedge CLK) begin
      if(!RST_N) begin
         ms_mpp  <= 0;
         ms_mpie <= 0;
         ms_mie  <= 0;
      end else begin
         if(CSR_WE & (CSR_ADDR == 12'h300)) begin
            ms_mpp[1:0] <= CSR_WDATA[12:11]; // MPP[1:0]
            ms_mpie     <= CSR_WDATA[7];     // MPIE
            ms_mie      <= CSR_WDATA[3];     // MIE
         end
      end
   end // always @ (posedge CLK)
   assign mstatus = {19'd0, ms_mpp[1:0], 3'd0, ms_mpie, 3'd0, ms_mie, 3'd0};

   // misa(301h)
   assign misa = {2'b01,   // base 32bit
                  4'b0000, // WIRI
                  26'b00_0000_0000_0001_0001_0010_1000}; // I,F,D,M 

   // medeleg(302h), mideleg(303h)
   always @(posedge CLK) begin
      if(!RST_N) begin
         mideleg <= 0;
         medeleg <= 0;
      end else begin
         if(CSR_WE & (CSR_ADDR == 12'h302)) begin
            medeleg <= CSR_WDATA;
         end
         if(CSR_WE & (CSR_ADDR == 12'h303)) begin
            mideleg <= CSR_WDATA;
         end
      end
   end

   // mie(304h)
   reg meie, mtie, msie;
   reg ueie, utie, usie;
   reg seie, stie, ssie;
   always @(posedge CLK) begin
      if(!RST_N) begin
         meie <= 0;
         mtie <= 0;
         msie <= 0;
         ueie <= 0;
         utie <= 0;
         usie <= 0;
         seie <= 0;
         stie <= 0;
         ssie <= 0;
      end else begin
         if(CSR_WE & (CSR_ADDR == 12'h304)) begin
            meie <= CSR_WDATA[11]; // MEIE(M-mode Exception Interrupt Enablee)
            seie <= CSR_WDATA[9]; // SEIE(S-mode Exception Interrupt Enablee)
            ueie <= CSR_WDATA[8]; // UEIE(U-mode Exception Interrupt Enablee)
            mtie <= CSR_WDATA[7];  // MTIE(M-mode Timer Interrupt Enable)
            stie <= CSR_WDATA[5];  // STIE(S-mode Timer Interrupt Enable)
            utie <= CSR_WDATA[4];  // UTIE(U-mode Timer Interrupt Enable)
            msie <= CSR_WDATA[3];  // MSIE(M-mode Software Interrupt Enable)
            ssie <= CSR_WDATA[1];  // SSIE(S-mode Software Interrupt Enable)
            usie <= CSR_WDATA[0];  // USIE(U-mode Software Interrupt Enable)
         end
      end
   end // always @ (posedge CLK)
   assign mie = {20'd0, meie, 1'b0, seie, ueie, mtie, 1'b0, stie, utie, msie, 1'b0, ssie, usie};

   // 割り込みベクタ
   // mtvec(305h)
   always @(posedge CLK) begin
      if(!RST_N) begin
         mtvec <= 0;
      end else begin
         if(CSR_WE & (CSR_ADDR == 12'h305)) begin
            mtvec <= CSR_WDATA;
         end
      end
   end

   // mscratch(340h)
   always @(posedge CLK) begin
      if(!RST_N) begin
         mscratch <= 0;
      end else begin
         if(CSR_WE & (CSR_ADDR == 12'h340)) begin
            mscratch <= CSR_WDATA;
         end
      end
   end

   // mepc(341h)
   // Machine exceptionが起きた時の仮想アドレス、今はとりあえず0
   // TODO
   always @(posedge CLK) begin
     if(!RST_N) begin
       mepc <= 0;
     end else begin
       if(CSR_WE & (CSR_ADDR == 12'h341)) begin
         mepc <= 0;
       end
     end
   end

   // mcause(342h)
   // Machine exceptionが起きた時にexception code,今は0
   // TODO
   always @(posedge CLK) begin
     if(!RST_N) begin
       mcause <= 0;
     end else begin
       if(CSR_WE & (CSR_ADDR == 12'h342)) begin
         mcause <= 0;
       end
     end
   end

   // mtval(343h)
   // execption specific information
   // TODO
   always @(posedge CLK) begin
     if(!RST_N) begin
       mtval <= 0;
     end else begin
       if(CSR_WE & (CSR_ADDR == 12'h343)) begin
         mtval <= 0;
       end
     end
   end

   // mip(344h)
   // pending exception の情報
   // TODO
   always @(posedge CLK) begin
     if(!RST_N) begin
       mip <= 0;
     end else begin
       if(CSR_WE & (CSR_ADDR == 12'h344)) begin
         mip <= 0;
       end
     end
   end

   // Physical memory protection
   // よくわからん、全部0じゃだめかね
   // pmpcfg0(3A0)
   assign pmpcfg0 = 32'b0;
   assign pmpcfg1 = 32'b0;
   assign pmpcfg2 = 32'b0;
   assign pmpcfg3 = 32'b0;
   assign pmpaddr0 = 32'b0;
   assign pmpaddr1 = 32'b0;
   assign pmpaddr2 = 32'b0;
   assign pmpaddr3 = 32'b0;
   assign pmpaddr4 = 32'b0;
   assign pmpaddr5 = 32'b0;
   assign pmpaddr6 = 32'b0;
   assign pmpaddr7 = 32'b0;
   assign pmpaddr8 = 32'b0;
   assign pmpaddr9 = 32'b0;
   assign pmpaddr10 = 32'b0;
   assign pmpaddr11 = 32'b0;
   assign pmpaddr12 = 32'b0;
   assign pmpaddr13 = 32'b0;
   assign pmpaddr14 = 32'b0;
   assign pmpaddr15 = 32'b0;

   // 出力
   always @(*) begin
      case(CSR_ADDR)
        // Machine Information
        12'hF11: CSR_RDATA <= mvendorid;
        12'hF12: CSR_RDATA <= marchid;
        12'hF13: CSR_RDATA <= mimpid;
        12'hF14: CSR_RDATA <= mhartid;
        // Machine Trap Setup
        12'h300: CSR_RDATA <= mstatus;
        12'h301: CSR_RDATA <= misa;
        12'h302: CSR_RDATA <= medeleg;
        12'h303: CSR_RDATA <= mideleg;
        12'h304: CSR_RDATA <= mie;
        12'h305: CSR_RDATA <= mtvec;
        // Machine Trap Handling
        12'h340: CSR_RDATA <= mscratch;
        12'h341: CSR_RDATA <= mepc;
        12'h342: CSR_RDATA <= mcause;
        12'h343: CSR_RDATA <= mtval;
        12'h344: CSR_RDATA <= mip;
        // Machine Protection and Translation
        12'h3A0: CSR_RDATA <= pmpcfg0;
        12'h3A1: CSR_RDATA <= pmpcfg1;
        12'h3A2: CSR_RDATA <= pmpcfg2;
        12'h3A3: CSR_RDATA <= pmpcfg3;
        12'h3B0: CSR_RDATA <= pmpaddr0;
        12'h3B1: CSR_RDATA <= pmpaddr1;
        12'h3B2: CSR_RDATA <= pmpaddr2;
        12'h3B3: CSR_RDATA <= pmpaddr3;
        12'h3B4: CSR_RDATA <= pmpaddr4;
        12'h3B5: CSR_RDATA <= pmpaddr5;
        12'h3B6: CSR_RDATA <= pmpaddr6;
        12'h3B7: CSR_RDATA <= pmpaddr7;
        12'h3B8: CSR_RDATA <= pmpaddr8;
        12'h3B9: CSR_RDATA <= pmpaddr9;
        12'h3BA: CSR_RDATA <= pmpaddr10;
        12'h3BB: CSR_RDATA <= pmpaddr11;
        12'h3BC: CSR_RDATA <= pmpaddr12;
        12'h3BD: CSR_RDATA <= pmpaddr13;
        12'h3BE: CSR_RDATA <= pmpaddr14;
        12'h3BF: CSR_RDATA <= pmpaddr15;
        // Machine Counter/Timer
        12'hB00: CSR_RDATA <= mcycle[31:0];
        12'hB02: CSR_RDATA <= minstret[31:0];
        12'hB03: CSR_RDATA <= mhpmcounter3[31:0];
        12'hB04: CSR_RDATA <= mhpmcounter4[31:0];
        12'hB05: CSR_RDATA <= mhpmcounter5[31:0];
        12'hB06: CSR_RDATA <= mhpmcounter6[31:0];
        12'hB07: CSR_RDATA <= mhpmcounter7[31:0];
        12'hB08: CSR_RDATA <= mhpmcounter8[31:0];
        12'hB09: CSR_RDATA <= mhpmcounter9[31:0];
        12'hB0A: CSR_RDATA <= mhpmcounter10[31:0];
        12'hB0B: CSR_RDATA <= mhpmcounter11[31:0];
        12'hB0C: CSR_RDATA <= mhpmcounter12[31:0];
        12'hB0D: CSR_RDATA <= mhpmcounter13[31:0];
        12'hB0E: CSR_RDATA <= mhpmcounter14[31:0];
        12'hB0F: CSR_RDATA <= mhpmcounter15[31:0];
        12'hB10: CSR_RDATA <= mhpmcounter16[31:0];
        12'hB11: CSR_RDATA <= mhpmcounter17[31:0];
        12'hB12: CSR_RDATA <= mhpmcounter18[31:0];
        12'hB13: CSR_RDATA <= mhpmcounter19[31:0];
        12'hB14: CSR_RDATA <= mhpmcounter20[31:0];
        12'hB15: CSR_RDATA <= mhpmcounter21[31:0];
        12'hB16: CSR_RDATA <= mhpmcounter22[31:0];
        12'hB17: CSR_RDATA <= mhpmcounter23[31:0];
        12'hB18: CSR_RDATA <= mhpmcounter24[31:0];
        12'hB19: CSR_RDATA <= mhpmcounter25[31:0];
        12'hB1A: CSR_RDATA <= mhpmcounter26[31:0];
        12'hB1B: CSR_RDATA <= mhpmcounter27[31:0];
        12'hB1C: CSR_RDATA <= mhpmcounter28[31:0];
        12'hB1D: CSR_RDATA <= mhpmcounter29[31:0];
        12'hB1E: CSR_RDATA <= mhpmcounter30[31:0];
        12'hB1F: CSR_RDATA <= mhpmcounter31[31:0];
        12'hB20: CSR_RDATA <= mcycle[63:32];
        12'hB22: CSR_RDATA <= minstret[63:32];
        12'hB23: CSR_RDATA <= mhpmcounter3[63:32];
        12'hB24: CSR_RDATA <= mhpmcounter4[63:32];
        12'hB25: CSR_RDATA <= mhpmcounter5[63:32];
        12'hB26: CSR_RDATA <= mhpmcounter6[63:32];
        12'hB27: CSR_RDATA <= mhpmcounter7[63:32];
        12'hB28: CSR_RDATA <= mhpmcounter8[63:32];
        12'hB29: CSR_RDATA <= mhpmcounter9[63:32];
        12'hB2A: CSR_RDATA <= mhpmcounter10[63:32];
        12'hB2B: CSR_RDATA <= mhpmcounter11[63:32];
        12'hB2C: CSR_RDATA <= mhpmcounter12[63:32];
        12'hB2D: CSR_RDATA <= mhpmcounter13[63:32];
        12'hB2E: CSR_RDATA <= mhpmcounter14[63:32];
        12'hB2F: CSR_RDATA <= mhpmcounter15[63:32];
        12'hB30: CSR_RDATA <= mhpmcounter16[63:32];
        12'hB31: CSR_RDATA <= mhpmcounter17[63:32];
        12'hB32: CSR_RDATA <= mhpmcounter18[63:32];
        12'hB33: CSR_RDATA <= mhpmcounter19[63:32];
        12'hB34: CSR_RDATA <= mhpmcounter20[63:32];
        12'hB35: CSR_RDATA <= mhpmcounter21[63:32];
        12'hB36: CSR_RDATA <= mhpmcounter22[63:32];
        12'hB37: CSR_RDATA <= mhpmcounter23[63:32];
        12'hB38: CSR_RDATA <= mhpmcounter24[63:32];
        12'hB39: CSR_RDATA <= mhpmcounter25[63:32];
        12'hB3A: CSR_RDATA <= mhpmcounter26[63:32];
        12'hB3B: CSR_RDATA <= mhpmcounter27[63:32];
        12'hB3C: CSR_RDATA <= mhpmcounter28[63:32];
        12'hB3D: CSR_RDATA <= mhpmcounter29[63:32];
        12'hB3E: CSR_RDATA <= mhpmcounter30[63:32];
        12'hB3F: CSR_RDATA <= mhpmcounter31[63:32];
        // Machine Counter Setup
        12'h320: CSR_RDATA <= mucounteren;
        12'h321: CSR_RDATA <= mscounteren;
        12'h322: CSR_RDATA <= mhcounteren;
        12'h323: CSR_RDATA <= mhpmevent3;
        12'h324: CSR_RDATA <= mhpmevent4;
        12'h325: CSR_RDATA <= mhpmevent5;
        12'h326: CSR_RDATA <= mhpmevent6;
        12'h327: CSR_RDATA <= mhpmevent7;
        12'h328: CSR_RDATA <= mhpmevent8;
        12'h329: CSR_RDATA <= mhpmevent9;
        12'h32A: CSR_RDATA <= mhpmevent10;
        12'h32B: CSR_RDATA <= mhpmevent11;
        12'h32C: CSR_RDATA <= mhpmevent12;
        12'h32D: CSR_RDATA <= mhpmevent13;
        12'h32E: CSR_RDATA <= mhpmevent14;
        12'h32F: CSR_RDATA <= mhpmevent15;
        12'h330: CSR_RDATA <= mhpmevent16;
        12'h331: CSR_RDATA <= mhpmevent17;
        12'h332: CSR_RDATA <= mhpmevent18;
        12'h333: CSR_RDATA <= mhpmevent19;
        12'h334: CSR_RDATA <= mhpmevent20;
        12'h335: CSR_RDATA <= mhpmevent21;
        12'h336: CSR_RDATA <= mhpmevent22;
        12'h337: CSR_RDATA <= mhpmevent23;
        12'h338: CSR_RDATA <= mhpmevent24;
        12'h339: CSR_RDATA <= mhpmevent25;
        12'h33A: CSR_RDATA <= mhpmevent26;
        12'h33B: CSR_RDATA <= mhpmevent27;
        12'h33C: CSR_RDATA <= mhpmevent28;
        12'h33D: CSR_RDATA <= mhpmevent29;
        12'h33E: CSR_RDATA <= mhpmevent30;
        12'h33F: CSR_RDATA <= mhpmevent31;
        // Debug/Trace Register
        12'h7A0: CSR_RDATA <= tselect;
        12'h7A1: CSR_RDATA <= tdata1;
        12'h7A2: CSR_RDATA <= tdata2;
        12'h7A3: CSR_RDATA <= tdata3;
        // D7bug Mode Register
        12'h7B0: CSR_RDATA <= dcsr;
        12'h7B1: CSR_RDATA <= dpc;
        12'h7B2: CSR_RDATA <= dscratch;
        default: CSR_RDATA <= 32'd0;
      endcase
   end
   endmodule
