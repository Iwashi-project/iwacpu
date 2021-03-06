#ifndef GLOBALPARAM_HPP
#define GLOBALPARAM_HPP

#include <iostream>
#include <climits>
#include <fstream>
#include <algorithm>
#include <bitset>
#include <vector>
#include <queue>
#include <list>
#include <stack>
#include <string>
#include <functional>
#include <numeric>
#define _USE_MATH_DEFINES
#include <math.h>
#include <map>
#include <unordered_map>
#include <set>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

using namespace std;

#define RBUFSIZE 1024
#define READELF_REDIRECT_FILENAME (string)".readelf_tmp"

#define Loop(i, n) for(int i = 0; i < (int)n; i++)
#define Loop1(i, n) for(int i = 1; i <= (int)n; i++)

struct elf_data_t {
  string name;
  string type;
  unsigned addr;
  unsigned offset;
  unsigned size;
};

union int_float_mover {
  int i;
  unsigned u;
  float f;
};

struct param_t {
  unsigned pc_interval;
  unsigned breakpoint;
  unsigned wave;
  bool step;
  unsigned long long trace;
  FILE *fp;
  FILE *ifp, *ofp;
  unsigned rbuf[RBUFSIZE];
  unsigned decoded[RBUFSIZE][4];
  unsigned rbuf_p;
  unsigned rsize;
  unsigned rbuf_begin;
  unsigned pc;
  unsigned prepc;
  bool f_display;
  bool warn;
  bool contest;
  int reg[32];
  float freg[32];
  unsigned preg[32];
  bool mmu_control;
  unsigned os_handler_addr;
  unsigned npc;
  unsigned counter_reg;
  unsigned csr[4096];
  unordered_map<unsigned, unsigned char> mem;
  unsigned long long cnt;
  unsigned long long breakcnt;
  unsigned call_time[256];
  unsigned max_mem_no;
  unsigned elf_flag;
  unsigned elf_seek;
  unsigned last_written_csr;
  map<unsigned, string> csr_table;
  map<string, unsigned> csr_rtable;
  vector<elf_data_t> elf_data;
  unsigned elf_addr;
  unsigned elf_offset;
  bool memset;
  unsigned time_int_period;
};

enum inst_t {
  LUI, AUIPC, JAL, JALR,
  BEQ, BNE, BLT, BGE, BLTU, BGEU,
  LB, LH, LW, LBU, LHU,
  SB, SH, SW,
  ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI,
  ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND,
  MUL, DIV, FLW, FSW, FADDS, FSUBS, FMULS, FDIVS,
  FEQS, FLTS, FLES, FMVSX, FMVXS, FCVTSW, FCVTWS, FSQRTS, FSGNJXS,
  CSRRW, CSRRS, CSRRC, CSRRWI, CSRRSI, CSRRCI,
  SCALL, SBREAK, WFI, FENCE,
  ROT, IN, OUT,
  MVPTG, MVGTP, MVGTO, MVNPCTG, MVGTNPC, IRET,
  LRW, SCW, AMOSWAPW, AMOADDW, AMOXORW, AMOANDW, AMOORW, AMOMINW, AMOMAXW, AMOMINUW, AMOMAXUW
};

void init_param(param_t* param);

void exit_message(param_t* param);

void print_standard_reg(param_t* param);

unsigned addr_cvt(param_t* param, unsigned x);

#endif
