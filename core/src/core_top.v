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
    output MEM_WE,

    // CSRをメモリで管理する
    input [31:0] CSR_IN,
    output [31:0] CSR_DATA,
    output [11:0] CSR_ADDR,
    output CSR_WE,

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

    output reg [3:0] WSTRB,

    // FPU用出力
    output i_fadds,
    output i_fsubs,
    output i_fmuls,
    output i_fdivs,
    output i_feqs,
    output i_flts,
    output i_fles,
    output i_fcvtsw,
    output i_fcvtws,
    output i_fsqrts,
    output wire [31:0] rs1,
    output wire [31:0] frs1,
    output wire [31:0] frs2,
    input wire [31:0] fpu_result,
    input wire tvalid_once,
    output reg exec,
    output reg stole
  );

  // PC
 (* mark_debug = "true" *) wire [31:0] pc;
 (* mark_debug = "true" *) wire [4:0] rd_num, rs1_num, rs2_num;
 (* mark_debug = "true" *) wire [31:0] imm, rs2;
 (* mark_debug = "true" *) wire [4:0] frd_num, frs1_num, frs2_num;
 (* mark_debug = "true" *) wire [11:0] csr_num;

 // ALUの結果を入れる
 (* mark_debug = "true" *) wire [31:0] alu_result;

 // 各命令
 (* mark_debug = "true" *) wire i_lui, i_auipc, i_jal, i_jalr, i_beq, i_bne,
       i_blt, i_bge, i_bltu, i_bgeu, i_lb, i_lh, i_lw, i_lbu, i_lhu, i_sb, i_sh,
       i_sw, i_addi, i_slti, i_sltiu, i_xori, i_ori, i_andi, i_slli, i_srli, i_srai,
       i_add, i_sub, i_sll, i_slt, i_sltu, i_xor, i_srl, i_sra, i_or, i_and, i_rot, i_fence, i_fencei;
 (* mark_debug = "true" *) wire i_flw, i_fsw, i_fmvsx, i_fsgnjxs;
 (* mark_debug = "true" *) wire i_csrrw, i_csrrs, i_csrrc, i_csrrwi, i_csrrsi, i_csrrci;
 (* mark_debug = "true" *) wire i_in, i_out;

 // UARTから来るデータ
 (* mark_debug = "true" *) reg [7:0] rdata;

 // cpu state
 (* mark_debug = "true" *) reg [6:0] cpu_state;

 // RDとFRDに有効な値が入っているか
 (* mark_debug = "true" *) wire rdvalid, frdvalid, csrvalid;

  // in命令のデータを書き込むか
  (* mark_debug = "true" *) wire ine;
  // outとinの状態管理
  (* mark_debug = "true" *) reg [6:0] write_status;
  (* mark_debug = "true" *) reg [6:0] read_status;

  // 今まで実行した全命令数
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

  // CPU-state
  always @(posedge CLK) begin
    if(!RST_N) begin
      cpu_state <= IDLE;
      exec <= 0;
      total_cnt <= 0;
    end else begin
      if (stole) begin
        cpu_state <= cpu_state;
        exec <= exec;
      end else begin
        case(cpu_state)
          IDLE:
          begin
            cpu_state <= FETCH;
            exec <= 0;
          end
          FETCH:
          begin
            cpu_state <= DECODE;
            exec <= 0;
            total_cnt <= total_cnt + 1;
          end
          DECODE:
          begin
            cpu_state <= EXECUTE;
            exec <= 1;
          end
          EXECUTE:
          begin
            cpu_state <= MEMORY;
            exec <= 0;
          end
          MEMORY:
          begin
            cpu_state <= WRITEBACK;
            exec <= 0;
          end
          WRITEBACK:
          begin
            cpu_state <= FETCH;
            exec <= 0;
          end
        endcase
    end
    end
  end

  // それぞれの段階ごとのアサインをする
  // 1. 命令フェッチ Instruction Fetch
  
  assign I_MEM_ADDR = (pc >> 2);

  // 2. 命令デコード
  
  core_decode u_core_decode
  (
    .RST_N (RST_N),
    .CLK (CLK),

    .INST (I_MEM_IN),

    .RD_NUM (rd_num),
    .RS1_NUM (rs1_num),
    .RS2_NUM (rs2_num),
    .CSR_NUM (csr_num),

    .FRD_NUM (frd_num),
    .FRS1_NUM (frs1_num),
    .FRS2_NUM (frs2_num),

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

    .I_FLW (i_flw),
    .I_FSW (i_fsw),
    .I_FADDS (i_fadds),
    .I_FSUBS (i_fsubs),
    .I_FMULS (i_fmuls),
    .I_FDIVS (i_fdivs),
    .I_FEQS (i_feqs),
    .I_FLTS (i_flts),
    .I_FLES (i_fles),

    .I_FMVSX (i_fmvsx),
    .I_FCVTSW (i_fcvtsw),
    .I_FCVTWS (i_fcvtws),
    .I_FSQRTS (i_fsqrts),
    .I_FSGNJXS (i_fsgnjxs),

    .I_IN (i_in),
    .I_OUT (i_out),

    .I_FENCE (i_fence),
    .I_FENCEI (i_fencei),
    .I_CSRRW (i_csrrw),
    .I_CSRRS (i_csrrs),
    .I_CSRRC (i_csrrc),
    .I_CSRRWI (i_csrrwi),
    .I_CSRRSI (i_csrrsi),
    .I_CSRRCI (i_csrrci),

    .RDVALID (rdvalid),
    .FRDVALID (frdvalid),
    .CSRVALID (csrvalid),

    .I_ROT (i_rot)
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

    .I_FLW (i_flw),
    .I_FSW (i_fsw),
    .I_FMVSX (i_fmvsx),
    .I_FSGNJXS (i_fsgnjxs),
    .I_ROT (i_rot),

    .RS1 (rs1),
    .RS2 (rs2),
    .IMM (imm),

    .FRS1 (frs1),
    .FRS2 (frs2),
    
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
                  WDATA   <= rs1[7:0];
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

  // Stole
  always @(posedge CLK) begin
    if (!RST_N) begin
      stole <= 0;
    end else begin
      stole <= (stole && i_in) ? (((read_status == s_read2) & RVALID & RREADY) ? 0 : 1) :
               (stole && i_out) ? ((BVALID & BREADY) ? 0 : 1) :
               (stole && !(tvalid_once)) ? 1 :
               ((cpu_state == EXECUTE) && (stole == 0) && (i_in | i_out | i_fadds | i_fsubs | i_fmuls | i_fdivs | i_feqs | i_flts | i_fles | i_fcvtsw | i_fcvtws | i_fsqrts)) ? 1:
               0;
    end
  end

  // 4. メモリアクセス

  assign MEM_ADDR = alu_result;
  assign MEM_DATA = (i_sb) ? {4{rs2[7:0]}}:
                   (i_sh) ? {2{rs2[15:0]}}:
                   (i_sw) ? {rs2}:
                   (i_fsw) ? {frs2}:
                   32'd0;
  assign MEM_WE = (i_sb | i_sh | i_sw | i_fsw) && (cpu_state == MEMORY && !stole);
  assign CSR_ADDR = (csrvalid) ? csr_num : 0;
  assign CSR_DATA = (i_csrrw) ? rs1 :
                    (i_csrrwi) ? imm : 
                    32'b0;
  assign CSR_WE = (i_csrrw | i_csrrwi) && (cpu_state == WRITEBACK && !stole);
 
  // 5. 書き戻し
  
  // PC
 (* mark_debug = "true" *) reg [31:0] pc_add_imm, pc_add_4, pc_jalr, pc_before;
  always @(posedge CLK) begin
    pc_add_imm <= pc_before + imm; // AUIPC, BRANCH, JAL
    pc_jalr <= rs1 + imm;
    pc_add_4 <= pc_before + 4;
    pc_before <= pc;
  end

  // レジスタ

  // メモリアクセスの前に実行と切り分ける

 (* mark_debug = "true" *) wire [4:0] wr_addr;
 (* mark_debug = "true" *) wire [4:0] fwr_addr;
 (* mark_debug = "true" *) wire  we;
 (* mark_debug = "true" *) wire  fwe;
 (* mark_debug = "true" *) wire [31:0] wr_data;

 (* mark_debug = "true" *) wire wr_pc_we;
 (* mark_debug = "true" *) wire [31:0] wr_pc;

  assign wr_pc_we = (cpu_state == MEMORY && !stole);
  assign wr_pc = (((i_beq | i_bne | i_blt | i_bge | i_bltu | i_bgeu) & (alu_result == 32'd1)) | i_jal) ? pc_add_imm:
                 (i_jalr) ? pc_jalr:
                 pc_add_4;
  assign we = (rdvalid && cpu_state == WRITEBACK && !stole);
  assign fwe = (frdvalid && cpu_state == WRITEBACK && !stole);
  assign wr_data = (i_lui) ? imm:
                   (i_lw | i_lh | i_lb | i_lbu | i_lhu | i_flw) ? MEM_IN:
                   (i_auipc) ? pc_add_imm:
                   (i_jal | i_jalr) ? pc_add_4:
                   (i_fadds | i_fsubs | i_fmuls | i_fdivs | i_feqs | i_flts | i_fles | i_fcvtsw | i_fcvtws | i_fsqrts) ? fpu_result:
                   (i_csrrw | i_csrrwi) ? CSR_IN :
                   (i_csrrs) ? CSR_IN & rs1 :
                   // よくわからず。立っていたら0にするということ？
                   // FIXME
                   (i_csrrc) ? CSR_IN | rs1:
                   (i_csrrsi) ? CSR_IN & imm :
                   // よくわからず。立っていたら0にするということ？
                   // FIXME
                   (i_csrrci) ? CSR_IN | imm:
                     alu_result; 
  assign fwr_addr = frd_num;
  assign ine = (i_in & (cpu_state == WRITEBACK) & !stole);

  core_reg u_core_reg (
    .RST_N (RST_N),
    .CLK (CLK),

    .WADDR (wr_addr),
    .FWADDR (fwr_addr),

    .WE (we),
    .FWE (fwe),
    .WDATA (wr_data),
    .INE (ine),
    .INDATA (rdata),

    .RS1ADDR (rs1_num),
    .RS1 (rs1),
    .RS2ADDR (rs2_num),
    .RS2 (rs2),

    .FRS1ADDR (frs1_num),
    .FRS1 (frs1),
    .FRS2ADDR (frs2_num),
    .FRS2 (frs2),

    .PC_WE (wr_pc_we),
    .PC_WDATA (wr_pc),
    .PC (pc)
  );

endmodule
