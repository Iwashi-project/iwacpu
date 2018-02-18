// vim: ft=verilog
module core_top
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
    output [3:0] MEM_WE,

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

  // debug out
 (* mark_debug = "true" *) reg [31:0] i_mem_in;
 (* mark_debug = "true" *) reg [31:0] i_mem_addr;
 (* mark_debug = "true" *) reg [31:0] mem_in;
 (* mark_debug = "true" *) reg [31:0] mem_data;
 (* mark_debug = "true" *) reg [31:0] mem_addr;

  always @(posedge CLK) begin
    if(!RST_N) begin
      i_mem_in <= 0;
      i_mem_addr <= 0;
      mem_in <= 0;
      mem_data <= 0;
      mem_addr <= 0;
    end else begin
      i_mem_in <= I_MEM_IN;
      i_mem_addr <= I_MEM_ADDR;
      mem_in <= MEM_IN;
      mem_data <= MEM_DATA;
      mem_addr <= MEM_ADDR;
    end
  end

  // PC
 (* mark_debug = "true" *) wire [31:0] pc;
 (* mark_debug = "true" *) wire [4:0] rd_num, rs1_num, rs2_num;
 (* mark_debug = "true" *) wire [31:0] rs1, rs2, imm;

 (* mark_debug = "true" *) wire [31:0] alu_result;
 (* mark_debug = "true" *) wire i_lui, i_auipc, i_jal, i_jalr, i_beq, i_bne,
       i_blt, i_bge, i_bltu, i_bgeu, i_lb, i_lh, i_lw, i_lbu, i_lhu, i_sb, i_sh,
       i_sw, i_addi, i_slti, i_sltiu, i_xori, i_ori, i_andi, i_slli, i_srli, i_srai,
       i_add, i_sub, i_sll, i_slt, i_sltu, i_xor, i_srl, i_sra, i_or, i_and;
 (* mark_debug = "true" *) wire i_in, i_out;

 (* mark_debug = "true" *) reg stole;

 (* mark_debug = "true" *) reg [7:0] rdata;

  // Paging
 (* mark_debug = "true" *) wire [4:0] pd_num, ps1_num;
 (* mark_debug = "true" *) wire [31:0] ps1;

 // OS opecodes
 (* mark_debug = "true" *) wire i_mvptg, i_mvgtp, i_iret, i_mvgto, i_mvnpctg, i_mvgtnpc;
 (* mark_debug = "true" *) reg [31:0] osreg;

 // MMU on/off
 (* mark_debug = "true" *) reg mmu;
 localparam time_period = 10'b1111111111;

  // 乗除算はしない

  assign r0 = 32'b0;

  // CPU state
  (* mark_debug = "true" *) reg [6:0] cpu_state;

  (* mark_debug = "true" *) wire ine;
  (* mark_debug = "true" *) reg [6:0] write_status;
  (* mark_debug = "true" *) reg [6:0] read_status;

  (* mark_debug = "true" *) reg [63:0] total_cnt;

  localparam s_read_wait = 7'b0000001;
  localparam s_read_wait2 = 7'b0000010;
  localparam s_read = 7'b0000100;
  localparam s_read2 = 7'b0001000;
  localparam s_read3 = 7'b0010000;

  localparam s_write_wait = 7'b1000001;
  localparam s_write_wait2 = 7'b1000010;
  localparam s_write = 7'b1000100;
  localparam s_write2 = 7'b1001000;
  localparam s_write3 = 7'b1010000;
  localparam s_write4 = 7'b1100000;

  localparam IDLE = 7'b0000001;
  localparam FETCH = 7'b0000010;
  localparam DECODE = 7'b0000100;
  localparam EXECUTE = 7'b0001000;
  localparam MEMORY = 7'b0100000;
  localparam WRITEBACK = 7'b1000000;

  always @(posedge CLK) begin
    if(!RST_N) begin
      cpu_state <= IDLE;
      total_cnt <= 0;
    end else begin
      if (stole) begin
        cpu_state <= cpu_state;
      end else begin
        case(cpu_state)
          IDLE:
          begin
            cpu_state <= FETCH;
          end
          FETCH:
          begin
            cpu_state <= DECODE;
            total_cnt <= (mmu) ? ( (total_cnt == time_period) ? 0 : total_cnt + 1) : 0;
          end
          DECODE:
          begin
            cpu_state <= EXECUTE;
          end
          EXECUTE:
          begin
            cpu_state <= MEMORY;
          end
          MEMORY:
          begin
            cpu_state <= WRITEBACK;
          end
          WRITEBACK:
          begin
            cpu_state <= FETCH;
          end
        endcase
    end
    end
  end

  // 2. 命令デコード
  
  core_decode u_core_decode
  (
    .RST_N (RST_N),
    .CLK (CLK),

    .INST (I_MEM_IN),

    .RD_NUM (rd_num),
    .RS1_NUM (rs1_num),
    .RS2_NUM (rs2_num),

    .PD_NUM (pd_num),
    .PS1_NUM (ps1_num),

    .IMM (imm),

    .I_ADDI (i_addi),
    .I_SLTI (i_slti),
    .I_SLTIU (i_sltiu),
    .I_XORI (i_xori),
    .I_ORI (i_ori),
    .I_ANDI (i_andi),
    .I_SLLI (i_slli),
    .I_SRLI (i_srli),
    .I_SRAI (i_srai),
    .I_ADD (i_add),
    .I_SUB (i_sub),
    .I_SLL (i_sll),
    .I_SLT (i_slt),
    .I_SLTU (i_sltu),
    .I_XOR (i_xor),
    .I_SRL (i_srl),
    .I_SRA (i_sra),
    .I_OR (i_or),
    .I_AND (i_and),

    .I_BEQ (i_beq),
    .I_BNE (i_bne),
    .I_BLT (i_blt),
    .I_BGE (i_bge),
    .I_BLTU (i_bltu),
    .I_BGEU (i_bgeu),

    .I_LB (i_lb),
    .I_LH (i_lh),
    .I_LW (i_lw),
    .I_LBU (i_lbu),
    .I_LHU (i_lhu),
    .I_SB (i_sb),
    .I_SH (i_sh),
    .I_SW (i_sw),

    .I_JALR (i_jalr),
    .I_JAL (i_jal),
    .I_AUIPC (i_auipc),
    .I_LUI (i_lui),

    .I_IN (i_in),
    .I_OUT (i_out),

    .I_MVPTG (i_mvptg),
    .I_MVGTP (i_mvgtp),
    .I_IRET (i_iret),
    .I_MVGTO (i_mvgto),
    .I_MVNPCTG (i_mvnpctg),
    .I_MVGTNPC (i_mvgtnpc)
  );
  
  // 3. 実行
  
  core_alu u_core_alu
  (
    .RST_N (RST_N),
    .CLK (CLK),

    .I_ADDI (i_addi),
    .I_SLTI (i_slti),
    .I_SLTIU (i_sltiu),
    .I_XORI (i_xori),
    .I_ORI (i_ori),
    .I_ANDI (i_andi),
    .I_SLLI (i_slli),
    .I_SRLI (i_srli),
    .I_SRAI (i_srai),
    .I_ADD (i_add),
    .I_SUB (i_sub),
    .I_SLL (i_sll),
    .I_SLT (i_slt),
    .I_SLTU (i_sltu),
    .I_XOR (i_xor),
    .I_SRL (i_srl),
    .I_SRA (i_sra),
    .I_OR (i_or),
    .I_AND (i_and),

    .I_BEQ (i_beq),
    .I_BNE (i_bne),
    .I_BLT (i_blt),
    .I_BGE (i_bge),
    .I_BLTU (i_bltu),
    .I_BGEU (i_bgeu),

    .I_LB (i_lb),
    .I_LH (i_lh),
    .I_LW (i_lw),
    .I_LBU (i_lbu),
    .I_LHU (i_lhu),
    .I_SB (i_sb),
    .I_SH (i_sh),
    .I_SW (i_sw),

    .RS1 (rs1),
    .RS2 (rs2),
    .IMM (imm),

    .RESULT (alu_result)

  );

  // in/out実行
  // inならrdに書き込むだけ
  // ineをほげする
  // outならr1からoutする

  always @(posedge CLK) begin
      if (!RST_N) begin
          read_status <= s_read_wait;
          write_status <= s_write_wait;
          ARADDR <= 0;
          ARVALID <= 0;
          RREADY <= 0;
          AWADDR <= 0;
          AWVALID <= 0;
          WVALID <= 0;
          BREADY <= 0;
          WDATA <= 0;
          WSTRB <= 0;
          rdata <= 0;
      end else begin
          WSTRB <= 4'b0001;
          if (i_in && (cpu_state == MEMORY)) begin
            case (read_status)
              s_read_wait:
              begin
                  ARADDR  <= 4'b1000;
                  ARVALID <= (ARVALID & ARREADY) ? 0 : 1;
                  read_status  <= (ARVALID & ARREADY) ? s_read_wait2 : s_read_wait;
              end
              s_read_wait2:
              begin
                  RREADY <= (RREADY & RVALID) ? 0 : 1;
                  read_status <= (RREADY & RVALID) ? (RDATA[0] ? s_read : s_read_wait) : s_read_wait2;
              end
              s_read:
              begin
                  ARADDR  <= 4'b0000;
                  ARVALID <= (ARVALID & ARREADY) ? 0 : 1;
                  read_status  <= (ARVALID & ARREADY) ? s_read2 : s_read;
              end
              s_read2:
              begin
                  RREADY <= (RREADY & RVALID) ? 0 : 1;
                  read_status <= (RREADY & RVALID) ? s_read3 : s_read2;
                  rdata <= RDATA;
              end
              s_read3:
              begin
                  read_status <= s_read_wait;
              end
            endcase
          end else if (i_out && (cpu_state == MEMORY)) begin
            case (write_status)
              s_write_wait:
              begin
                  ARADDR  <= 4'b1000;
                  ARVALID <= (ARVALID & ARREADY) ? 0 : 1;
                  write_status  <= (ARVALID & ARREADY) ? s_write_wait2 : s_write_wait;
              end
              s_write_wait2:
              begin
                  RREADY <= (RREADY & RVALID) ? 0 : 1;
                  write_status <= (RREADY & RVALID) ? (RDATA[3] ? s_write_wait : s_write): s_write_wait2;
              end
              s_write:
              begin
                  AWADDR  <= 4'b0100;
                  WDATA   <= rs1;
                  AWVALID <= 1;
                  WVALID <= 1;
                  write_status <= s_write2;
              end
              s_write2:
              begin
                  AWVALID <= (AWVALID & !AWREADY) ? 1 : 0;
                  WVALID  <= (WVALID & !WREADY) ? 1 : 0;
                  write_status  <= (!AWVALID & !WVALID) ? s_write3 : s_write2;
              end
              s_write3:
              begin
                  BREADY <= (BREADY & BVALID) ? 0 : 1;
                  write_status <= (BREADY & BVALID) ? s_write4 : s_write3;
              end
              s_write4:
              begin
                  write_status <= s_write_wait;
              end
            endcase
          end
      end
  end

 (* mark_debug = "true" *) reg tvalid_once;

  // Stole
  always @(posedge CLK) begin
    if (!RST_N) begin
      stole <= 0;
      tvalid_once <= 0;
    end else begin
      tvalid_once <= (tvalid_once) ? 0 :
                     0;

      stole <= (stole && i_in) ? (((read_status == s_read2) & RVALID & RREADY) ? 0 : 1) :
               (stole && i_out) ? ((BVALID & BREADY) ? 0 : 1) :
               (stole && !(tvalid_once)) ? 1 :
               ((cpu_state == EXECUTE) && (stole == 0) && (i_in | i_out)) ? 1:
               0;
  end
  end

  // PC
 (* mark_debug = "true" *) reg [31:0] pc_add_imm, pc_add_4, pc_jalr, pc_before;
  always @(posedge CLK) begin
    pc_add_imm <= pc_before + imm; // AUIPC, BRANCH, JAL
    pc_jalr <= rs1 + imm;
    pc_add_4 <= pc_before + 4;
    pc_before <= pc;
  end
  
 // NPC
 (* mark_debug = "true" *) reg[31:0] npc;

  // 4. メモリアクセス

  // MMU
  (* mark_debug = "true" *) wire [3:0] mem_we;
  assign I_MEM_ADDR = (mmu) ? ((preg[pc[31:12]] + pc[11:0]) >> 2) : (pc >> 2);
  assign MEM_ADDR = (mmu) ? ((preg[alu_result[31:12]] + alu_result[11:0]) >> 2) : (alu_result[31:0] >> 2);

  assign MEM_DATA = (i_sb) ? {4{rs2[7:0]}}:
                   (i_sh) ? {2{rs2[15:0]}}:
                   (i_sw) ? {rs2}:
                   32'd0;
  assign mem_we[0] = (i_sb & (alu_result[1:0] == 2'b00)) |
			   (i_sh & (alu_result[1] == 1'b0)) |
			   (i_sw);
  assign mem_we[1] = (i_sb & (alu_result[1:0] == 2'b01)) |
			   (i_sh & (alu_result[1] == 1'b0)) |
			   (i_sw);
  assign mem_we[2] = (i_sb & (alu_result[1:0] == 2'b10)) |
			   (i_sh & (alu_result[1] == 1'b1)) |
			   (i_sw);
  assign mem_we[3] = (i_sb & (alu_result[1:0] == 2'b11)) |
			   (i_sh & (alu_result[1] == 1'b1)) |
			   (i_sw);
  assign MEM_WE = (cpu_state == MEMORY && !stole) ? mem_we : 4'b0;
 

  // 5. 書き戻し
  // レジスタ

  // Paging registers
 (* mark_debug = "true" *) wire [31:0][31:0] preg;
 (* mark_debug = "true" *) wire [31:0] pwr_data;
 (* mark_debug = "true" *) wire [4:0] pwr_addr;

  assign pwr_addr = pd_num;
  assign pwr_data = rs1;

  assign pr_we = (i_mvgtp) && (cpu_state == WRITEBACK && !stole);


  // General registers
 (* mark_debug = "true" *) wire [4:0] wr_addr;
 (* mark_debug = "true" *) wire [31:0] wr_data;

 (* mark_debug = "true" *) wire  wr_we;

  assign wr_addr = rd_num;
  assign wr_data = (i_lui) ? imm:
                   (i_lw) ? MEM_IN:
                   (i_lh & (alu_result[1] == 1'b0)) ? {{16{MEM_IN[15]}}, MEM_IN[15:0]}:
                   (i_lh & (alu_result[1] == 1'b1)) ? {{16{MEM_IN[31]}}, MEM_IN[31:16]}:
                   (i_lhu & (alu_result[1] == 1'b0)) ? {16'b0, MEM_IN[15:0]}:
                   (i_lhu & (alu_result[1] == 1'b1)) ? {16'b0, MEM_IN[31:16]}:
                   (i_lb & (alu_result[1:0] == 2'b00)) ? {{24{MEM_IN[7]}}, MEM_IN[7:0]}:
                   (i_lb & (alu_result[1:0] == 2'b01)) ? {{24{MEM_IN[15]}}, MEM_IN[15:8]}:
                   (i_lb & (alu_result[1:0] == 2'b10)) ? {{24{MEM_IN[23]}}, MEM_IN[23:16]}:
                   (i_lb & (alu_result[1:0] == 2'b11)) ? {{24{MEM_IN[31]}}, MEM_IN[31:24]}:
                   (i_lbu & (alu_result[1:0] == 2'b00)) ? {24'b0, MEM_IN[7:0]}:
                   (i_lbu & (alu_result[1:0] == 2'b01)) ? {24'b0, MEM_IN[15:8]}:
                   (i_lbu & (alu_result[1:0] == 2'b10)) ? {24'b0, MEM_IN[23:16]}:
                   (i_lbu & (alu_result[1:0] == 2'b11)) ? {24'b0, MEM_IN[31:24]}:
                   (i_auipc) ? pc_add_imm:
                   (i_jal | i_jalr) ? pc_add_4:
                   (i_mvptg) ? ps1:
                   (i_mvnpctg) ? npc:
                    alu_result;

  assign wr_we = ( (i_lui | i_lw | i_lh | i_lb | i_lbu | i_lhu | i_auipc | i_jal | i_jalr | i_mvptg | i_mvnpctg) |
                   (i_addi | i_slti | i_sltiu | i_xori | i_ori | i_andi | i_slli | i_srli | i_srai | i_add | i_sub | i_sll | i_slt | i_sltu | i_xor | i_srl | i_sra | i_or | i_and) )
                 & (cpu_state == WRITEBACK && !stole);

  assign ine = (i_in & (cpu_state == WRITEBACK) & !stole);

  // Program counters
 (* mark_debug = "true" *) wire wr_pc_we;
 (* mark_debug = "true" *) wire [31:0] wr_pc;

  assign wr_pc_we = (cpu_state == MEMORY && !stole);
  assign wr_pc = ( ( (i_beq | i_bne | i_blt | i_bge | i_bltu | i_bgeu) & (alu_result == 32'd1)) | i_jal) ? pc_add_imm:
                 (i_jalr) ? pc_jalr:
                 (i_iret) ? npc:
                 (total_cnt == time_period) ? osreg:
                 pc_add_4;


  core_reg u_core_reg
  (
    .RST_N (RST_N),
    .CLK (CLK),

    // paging register
    .PREG (preg),
    .PWADDR (pwr_addr),
    .PWDATA (pwr_data),

    // paging register write enable
    .PWE (pr_we),

    // paging registers
    .PS1ADDR (ps1_num),
    .PS1 (ps1),


    // general register
    .WADDR (wr_addr),
    .WDATA (wr_data),

    // general registers write enable
    .WE (wr_we),

    // in read data
    .INDATA (rdata),
    // in write enable
    .INE (ine),

    // general registers
    .RS1ADDR (rs1_num),
    .RS1 (rs1),
    .RS2ADDR (rs2_num),
    .RS2 (rs2),


    // program counter
    .PC_WE (wr_pc_we),
    .PC_WDATA (wr_pc),
    .PC (pc)
  );

  // Special registers
  always @(posedge CLK) begin
    if(!RST_N) begin
      mmu <= 0;
      osreg <= 0;
      npc <= 0;
    end else begin
    if (total_cnt == time_period) begin
        npc <= pc_before + 4;
        mmu <= 0;
      end
      osreg <= ((cpu_state == WRITEBACK && !stole) & i_mvgto ) ? rs1 : osreg;
      npc <= ((cpu_state == WRITEBACK && !stole) & i_mvgtnpc ) ? rs1 : npc;
      mmu <= ((cpu_state == MEMORY && !stole) & i_iret) ? 1 : mmu;
    end
  end

endmodule
