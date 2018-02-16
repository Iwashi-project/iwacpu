// vim: ft=verilog
module core_decode
(
  input RST_N,
  input CLK,

  input wire [31:0] INST,

  output wire [4:0] RD_NUM,
  output wire [4:0] RS1_NUM,
  output wire [4:0] RS2_NUM,

  output wire [4:0] PD_NUM,
  output wire [4:0] PS1_NUM,

  output reg [31:0] IMM,

  output reg I_ADDI,
  output reg I_SLTI,
  output reg I_SLTIU,
  output reg I_XORI,
  output reg I_ORI,
  output reg I_ANDI,
  output reg I_SLLI,
  output reg I_SRLI,
  output reg I_SRAI,
  output reg I_ADD,
  output reg I_SUB,
  output reg I_SLL,
  output reg I_SLT,
  output reg I_SLTU,
  output reg I_XOR,
  output reg I_SRL,
  output reg I_SRA,
  output reg I_OR,
  output reg I_AND,
  
  output reg I_BEQ,
  output reg I_BNE,
  output reg I_BLT,
  output reg I_BGE,
  output reg I_BLTU,
  output reg I_BGEU,

  output reg I_LB,
  output reg I_LH,
  output reg I_LW,
  output reg I_LBU,
  output reg I_LHU,
  output reg I_SB,
  output reg I_SH,
  output reg I_SW,
  
  output reg I_JALR,
  output reg I_JAL,
  output reg I_AUIPC,
  output reg I_LUI,

  output reg I_IN,
  output reg I_OUT,

  output reg I_MVPTG,
  output reg I_MVGTP,
  output reg I_IRET,
  output reg I_MVGTO,
  output reg I_MVNPCTG,
  output reg I_MVGTNPC
);

  wire [2:0] func3;
  wire [6:0] func7;
  assign func3 = INST[14:12];
  assign func7 = INST[31:25];

  // IMM
  always @(posedge CLK) begin
    if(!RST_N) begin
      IMM <= 0;
    end else begin
             // I type JALR, 
      IMM <= ((INST[6:0] == 7'b1100111) || (INST[6:0] == 7'b0000011) || (INST[6:0] == 7'b0010011)) ? {{21{INST[31]}}, INST[30:20]} :
             // S type sb sh sw, 
             ((INST[6:0] == 7'b0100011)) ? {{21{INST[31]}}, INST[30:25], INST[11:7]} :
             // B type, beq bne blt bge bltu bgeu
             ((INST[6:0] == 7'b1100011)) ? {{20{INST[31]}}, INST[7], INST[30:25], INST[11:8], 1'b0} :
             // U type, LUI and AUIPC
             ((INST[4:0] == 5'b10111)) ? {INST[31:12], 12'b0000_0000_0000} :
             // JAL
             ((INST[6:0] == 7'b1101111)) ? {{12{INST[31]}}, INST[19:12], INST[20], INST[30:21], 1'b0} :
             32'd0;
    end
  end

  assign RD_NUM =  INST[11:7];
  assign RS1_NUM = INST[19:15];
  assign RS2_NUM = INST[24:20];

  assign PD_NUM = INST[11:7];
  assign PS1_NUM = INST[19:15];


  always @(posedge CLK) begin
    if(!RST_N) begin
      I_ADDI <= 1'b0;
      I_SLTI <= 1'b0;
      I_SLTIU <= 1'b0;
      I_XORI <= 1'b0;
      I_ORI <= 1'b0;
      I_ANDI <= 1'b0;
      I_SLLI <= 1'b0;
      I_SRLI <= 1'b0;
      I_SRAI <= 1'b0;
      I_ADD <= 1'b0;
      I_SUB <= 1'b0;
      I_SLL <= 1'b0;
      I_SLT <= 1'b0;
      I_SLTU <= 1'b0;
      I_XOR <= 1'b0;
      I_SRL <= 1'b0;
      I_SRA <= 1'b0;
      I_OR <= 1'b0;
      I_AND <= 1'b0;
      
      I_BEQ <= 1'b0;
      I_BNE <= 1'b0;
      I_BLT <= 1'b0;
      I_BGE <= 1'b0;
      I_BLTU <= 1'b0;
      I_BGEU <= 1'b0;

      I_LB <= 1'b0;
      I_LH <= 1'b0;
      I_LW <= 1'b0;
      I_LBU <= 1'b0;
      I_LHU <= 1'b0;
      I_SB <= 1'b0;
      I_SH <= 1'b0;
      I_SW <= 1'b0;

      I_JALR <= 1'b0;
      I_JAL <= 1'b0;
      I_AUIPC <= 1'b0;
      I_LUI <= 1'b0;

      I_MVPTG <= 1'b0;
      I_MVGTP <= 1'b0;
      I_MVGTO <= 1'b0;
      I_MVNPCTG <= 1'b0;
      I_MVGTNPC <= 1'b0;
      I_IRET <= 1'b0;

      I_IN <= 1'b0;
      I_OUT <= 1'b0;
    end else begin
      I_ADDI <= (INST[6:0] == 7'b0010011) && (func3 == 3'b000);
      I_SLTI  <= (INST[6:0] == 7'b0010011) && (func3 == 3'b010);
      I_SLTIU  <= (INST[6:0] == 7'b0010011) && (func3 == 3'b011);
      I_XORI  <= (INST[6:0] == 7'b0010011) && (func3 == 3'b100);
      I_ORI  <= (INST[6:0] == 7'b0010011) && (func3 == 3'b110);
      I_ANDI  <= (INST[6:0] == 7'b0010011) && (func3 == 3'b111);
      I_SLLI  <=  (INST[6:0] == 7'b0010011) && (func3 == 3'b001);
      I_SRLI  <= (INST[6:0] == 7'b0010011) && (func3 == 3'b101) && (func7 == 7'b0000000);
      I_SRAI  <= (INST[6:0] == 7'b0010011) && (func3 == 3'b101) && (func7 == 7'b0100000);
      I_ADD  <= (INST[6:2] == 5'b01100) && (func3 == 3'b000) && (func7 == 7'b0000000);
      I_SUB  <= (INST[6:2] == 5'b01100) && (func3 == 3'b000) && (func7 == 7'b0100000);
      I_SLL  <= (INST[6:2] == 5'b01100) && (func3 == 3'b001);
      I_SLT  <= (INST[6:2] == 5'b01100) && (func3 == 3'b010);
      I_SLTU  <= (INST[6:2] == 5'b01100) && (func3 == 3'b011);
      I_XOR  <= (INST[6:2] == 5'b01100) && (func3 == 3'b100);
      I_SRL  <= (INST[6:2] == 5'b01100) && (func3 == 3'b101) && (func7 == 7'b0000000);
      I_SRA  <= (INST[6:2] == 5'b01100) && (func3 == 3'b101) && (func7 == 7'b0100000);
      I_OR  <= (INST[6:2] == 5'b01100) && (func3 == 3'b110);
      I_AND  <= (INST[6:2] == 5'b01100) && (func3 == 3'b111);
      
      I_BEQ <= (INST[6:0] == 7'b1100011) && (func3 == 3'b000);
      I_BNE <= (INST[6:0] == 7'b1100011) && (func3 == 3'b001);
      I_BLT <= (INST[6:0] == 7'b1100011) && (func3 == 3'b100);
      I_BGE <= (INST[6:0] == 7'b1100011) && (func3 == 3'b101);
      I_BLTU <= (INST[6:0] == 7'b1100011) && (func3 == 3'b110);
      I_BGEU <= (INST[6:0] == 7'b1100011) && (func3 == 3'b111);

      I_LB <= (INST[6:0] == 7'b0000011) && (func3 == 3'b000);
      I_LH <= (INST[6:0] == 7'b0000011) && (func3 == 3'b001);
      I_LW <= (INST[6:0] == 7'b0000011) && (func3 == 3'b010);
      I_LBU <= (INST[6:0] == 7'b0000011) && (func3 == 3'b100);
      I_LHU <= (INST[6:0] == 7'b0000011) && (func3 == 3'b101);

      I_SB <= (INST[6:0] == 7'b0100011) && (func3 == 3'b000);
      I_SH <= (INST[6:0] == 7'b0100011) && (func3 == 3'b001);
      I_SW <= (INST[6:0] == 7'b0100011) && (func3 == 3'b010);

      I_LUI <= (INST[6:0] == 7'b0110111);
      I_AUIPC <= (INST[6:0] == 7'b0010111);
      I_JAL <= (INST[6:0] == 7'b1101111);
      I_JALR <= (INST[6:0] == 7'b1100111);

      I_MVPTG <= ( (INST[6:0] == 7'b1011011) && (func3 == 3'b000) && (func7 == 7'b0000000));
      I_MVGTP <= ( (INST[6:0] == 7'b1011011) && (func3 == 3'b000) && (func7 == 7'b0100000));
      I_MVGTO <= ( (INST[6:0] == 7'b1011011) && (func3 == 3'b001) && (func7 == 7'b0000000));
      I_MVNPCTG <= ( (INST[6:0] == 7'b1011011) && (func3 == 3'b010) && (func7 == 7'b0000000));
      I_MVGTNPC <= ( (INST[6:0] == 7'b1011011) && (func3 == 3'b010) && (func7 == 7'b0100000));
      I_IRET <= ( (INST[6:0] == 7'b1011011) && (func3 == 3'b111) && (func7 == 7'b0000000));

      I_IN <= (INST[6:0] == 7'b0101011) && (func3 == 3'b001);
      I_OUT <= (INST[6:0] == 7'b0101011) && (func3 == 3'b000);
    end
  end
endmodule
