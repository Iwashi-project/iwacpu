#include "globalparam.hpp"
#include "exec.hpp"
#include <signal.h>
#include <unistd.h>
using namespace std;
#define Loop(i, n) for(int i = 0; i < (int)n; i++)
#define Loop1(i, n) for(int i = 1; i <= (int)n; i++)
#define Loopr(i, n) for(int i = (int)n - 1; i >= 0; i--)

deque<int> record_pc;
deque<int> record_inst;
vector<deque<int>> record_reg(32);
vector<deque<float>> record_freg(32);
//各種パラメータ
param_t *param = new param_t;

//functions
inline void preprocess_of_run(param_t* param);
inline void postprocess_of_run(param_t* param);
inline void update_wave1(param_t* param);
inline void update_wave2(param_t* param);
void run(param_t* param);
void run_break(param_t* param);
void run_wave(param_t* param);
void run_step(param_t* param);
void print_wave(int mode);
void print_call_time(param_t* param);
// void set_elf_data(param_t *param, string fname);

void sigsegv_handler(int signo) {
  printf("\n\nerror: segmentation fault\n\n");
  exit_message(param);
  exit(EXIT_FAILURE);
}

int main(int argc, char *argv[]) {
  init_param(param);
  signal(SIGSEGV, sigsegv_handler);

  //入力処理
  Loop1(i, argc - 1) {
    string strbuf = argv[i];
    if (strbuf.substr(0,12) == "-breakpoint=") {
      param->breakpoint = strtol((strbuf.substr(12,strbuf.size()-12)).c_str(), NULL, 0);
    }
    else if (strbuf.substr(0,10) == "-breakcnt=") {
      param->breakcnt = strtol((strbuf.substr(10,strbuf.size()-10)).c_str(), NULL, 0);
    }
    else if (strbuf == "-wave") {
      param->wave = 8;
    }
    else if (strbuf == "-step") {
      param->step = true;
    }
    else if (strbuf.substr(0,7) == "-trace=") {
      param->trace = strtol((strbuf.substr(7,strbuf.size()-7)).c_str(), NULL, 0);
    }
    else if (strbuf == "-warn") {
      param->warn = true;
    }
    else if (strbuf == "-contest") {
      param->contest = true;
    }
    else if (strbuf == "-f") {
      param->f_display = true;
    }/*
    else if (strbuf == "-elf") {
      param->elf_flag = true;
    }*/
    else if (strbuf == "-memset") {
      param->memset = true;
    }
    else if (strbuf.substr(0,8) == "-initpc=") {
      param->pc = strtol((strbuf.substr(8,strbuf.size()-8)).c_str(), NULL, 0);
    }
    else if (strbuf.substr(0,8) == "-period=") {
      param->time_int_period = strtol((strbuf.substr(8,strbuf.size()-8)).c_str(), NULL, 0);
    }
    else if (strbuf == "-i") {
      ++i;
      if (i >= argc) { printf("error: specify an input file after option \"-i\".\n"); exit(EXIT_FAILURE); }
      string strbuf = argv[i];
      if (strbuf.substr(strbuf.length() - 3, 3) != ".in") {
        printf("error: specify a binary input file \"*.in\".\n");
        exit(EXIT_FAILURE);
      }
      param->ifp = fopen(argv[i], "rb");
      if (param->ifp == NULL) { perror("fopen error"); exit(EXIT_FAILURE); }
    }
    else if (strbuf == "-o") {
      ++i;
      if (i >= argc) { printf("error: specify an output file after option \"-o\".\n"); exit(EXIT_FAILURE); }
      strbuf = argv[i];
      param->ofp = fopen(argv[i], "w");
      if (param->ofp == NULL) { perror("fopen error"); exit(EXIT_FAILURE); }
    }
    else {
      if (param->fp != NULL) { printf("error: unknown option of %s\n, use -help option to check options", strbuf.c_str()); exit(EXIT_FAILURE); }
      if (strbuf.substr(strbuf.length() - 4, 4) != ".bin" && !param->elf_flag) {
        printf("error: specify a binary file \"*.bin\".\n");
        exit(EXIT_FAILURE);
      }
      param->fp = fopen(argv[i], "rb");
      if (param->fp == NULL) { perror("fopen error"); exit(EXIT_FAILURE); }
      /*if (param->elf_flag) {
        set_elf_data(param, strbuf);
      }*/
      else if (param->memset) {
        param->rbuf_begin = 0;
        do {
          param->rsize = fread(param->rbuf, sizeof(unsigned), RBUFSIZE, param->fp);
          if (param->rsize < 0) { perror("fread error"); exit_message(param); }
          Loop(i, param->rsize) {
            Loop(j, 4) {
              param->mem[(param->rbuf_begin + i) * param->pc_interval + j] = (unsigned char)(param->rbuf[i] >> (8 * j));
            }
          }
          param->rbuf_begin += param->rsize;
        } while (param->rsize > 0);
        param->rbuf_begin = UINT_MAX - RBUFSIZE;
      }
    }
  }
  if (param->fp == NULL) { printf("error: specify a file\n"); exit(EXIT_FAILURE); }
  //pc初期値から読んで初期化
  exec_jmp_fread(param, param->pc);

  if (param->step) run_step(param);
  else {
    if (param->wave > 0) {
      run_wave(param);
    }
    else {
      if (param->breakpoint != UINT_MAX || param->breakpoint != ULLONG_MAX) run_break(param);
      else run(param);
    }
  }

  fclose(param->fp);
  return 0;
}
/*
void set_elf_data(param_t *param, string fname) {
  string cmd;
  cmd = "readelf -S " + fname + " > " + READELF_REDIRECT_FILENAME;
  if(system(cmd.c_str()) < 0) { printf("error: %s failed.\n", cmd.c_str()); exit(EXIT_FAILURE); };
  ifstream ifs(READELF_REDIRECT_FILENAME);
  if (!ifs.is_open()) { perror("fopen error\n"); exit(EXIT_FAILURE); }
  string readline;
  while(getline(ifs, readline)) {
    auto pos = readline.find(".");
    if(pos != string::npos) {
      vector<string> vsbuf(5, "");
      int p = pos;
      int k = p;
      Loop(i, 5) {
        while(readline[k] != ' ') k++;
        vsbuf[i] = readline.substr(p, k - p);
        while(readline[k] == ' ') k++;
        p = k;
      }
      param->elf_data.push_back({
        vsbuf[0],
        vsbuf[1],
        (unsigned)strtoul(vsbuf[2].c_str(), NULL, 16),
        (unsigned)strtoul(vsbuf[3].c_str(), NULL, 16),
        (unsigned)strtoul(vsbuf[4].c_str(), NULL, 16),
      });
    }
  }
  ifs.close();
  cmd = "rm " + READELF_REDIRECT_FILENAME;
  if(system(cmd.c_str()) < 0) { printf("error: %s failed.\n", cmd.c_str()); exit(EXIT_FAILURE); };
  Loop(i, param->elf_data.size()) {
    if(param->elf_data[i].name == ".text") {
      param->elf_addr = param->elf_data[i].addr;
      param->elf_offset = param->elf_data[i].offset;
      param->elf_seek = param->elf_addr - param->elf_offset;
      param->pc = param->elf_addr;
    }
    if(param->elf_data[i].name.substr(0, 6) == ".debug") continue;
    if (fseek(param->fp, param->elf_data[i].offset, SEEK_SET) != 0) { perror("fseek error"); exit_message(param); }
    unsigned rbuf[0x80000];
    unsigned rsize = fread(rbuf, sizeof(unsigned), param->elf_data[i].size >> 2, param->fp);
    if (rsize < 0) { perror("fread error"); exit_message(param); }
    Loop(j, rsize) {
      param->mem[param->elf_data[i].addr + j * 4] = rbuf[j];
    }
  }
  return;
}*/

inline void preprocess_of_run(param_t* param) {
  if (param->rbuf_p >= param->rsize) {
    if (param->rbuf_p == RBUFSIZE) {
      exec_jmp_fread(param, param->pc);
    }
    else {
      printf("\n\nPC = %08X (phys %08X)\n", param->pc, addr_cvt(param, param->pc));
      if (param->wave) {
        print_wave(0);
        // print_wave(1);
      }
      else print_standard_reg(param);
      printf("\n\nreach end of file.\n");
      printf("cnt = %lld, max_mem_no = %u\n", param->cnt, param->max_mem_no);
      print_call_time(param);
      fclose(param->fp);
      exit(EXIT_SUCCESS);
    }
  }
}

inline void postprocess_of_run(param_t* param) {
  if (param->prepc == param->pc) {
    printf("\n\nPC = %08X (phys %08X)\n", param->pc, addr_cvt(param, param->pc));
    if (param->wave) {
      print_wave(0);
      // print_wave(1);
    }
    else print_standard_reg(param);
    printf("\n\nprogram infinitely loops at pc %08x, simulation stops.\n", param->pc);
    printf("cnt = %lld, max_mem_no = %u\n", param->cnt, param->max_mem_no);
    print_call_time(param);
    fclose(param->fp);
    exit(EXIT_SUCCESS);
  }
}

inline void update_wave1(param_t* param) {
  record_pc.push_back(param->pc);
  record_inst.push_back((param->rbuf)[param->rbuf_p]);
}

inline void update_wave2(param_t* param) {
  Loop(i, 32) {
    record_reg[i].push_back(param->reg[i]);
    record_freg[i].push_back(param->freg[i]);
  }
  if (record_reg[0].size() > param->wave) {
    record_pc.pop_front();
    record_inst.pop_front();
    Loop(i, 32) record_reg[i].pop_front();
    Loop(i, 32) record_freg[i].pop_front();
  }
}

void run(param_t* param) {
  while(1) {
    preprocess_of_run(param);
    exec_main(param);
    postprocess_of_run(param);
  }
}

void run_break(param_t* param) {
  while(1) {
    if(param->breakpoint == addr_cvt(param, param->pc)) {
      if(param->breakcnt == ULLONG_MAX || param->breakcnt <= param->cnt + 1) {
        run_step(param); return;
      }
    }
    if(param->breakcnt == param->cnt + 1) { run_step(param); return; }
    preprocess_of_run(param);
    exec_main(param);
    postprocess_of_run(param);
  }
  return;
}

void run_wave(param_t* param) {
  while(1) {
    if(param->breakpoint == addr_cvt(param, param->pc)) {
      if(param->breakcnt == ULLONG_MAX || param->breakcnt <= param->cnt + 1) {
        run_step(param); return;
      }
    }
    if(param->breakcnt == param->cnt + 1) { run_step(param); return; }
    preprocess_of_run(param);
    update_wave1(param);
    exec_main(param);
    update_wave2(param);
    postprocess_of_run(param);
  }
  return;
}

void run_step(param_t* param){
  param->step = true;
  while(1) {
    preprocess_of_run(param);
	printf("\nPC = %08X (phys %08X), cnt = %lld, inst = %08X : \n", param->pc, addr_cvt(param, param->pc), param->cnt + 1, param->rbuf[param->rbuf_p]);
    if (param->wave) {
      update_wave1(param);
    }
    exec_main(param);
    if (param->wave) {
      update_wave2(param);
      print_wave(0);
      // print_wave(1);
    }
    else print_standard_reg(param);
    while(1) {
      printf("\npress enter to step-in, enter 'r' to run (with breakpoint), or a number to show the value of the memory address. ");
      string s;
      if (getline(cin, s)) {
        if (s == "") {
          postprocess_of_run(param);
          break;
        }
        else if (s == "r") {
          param->step = false;
          postprocess_of_run(param);
          if (param->breakpoint != UINT_MAX || param->breakcnt != ULLONG_MAX) {
            if (param->wave) { run_wave(param); return; }
            else { run_break(param); return; }
          }
          else {
            if (param->wave) { run_wave(param); return; }
            else { run(param); return; }
          }
          break;
        }
        else {
          unsigned a;
          try { a = stoll(s.c_str(), NULL, 0); }
          catch (invalid_argument err) {
            if(param->csr_rtable.find(s) == param->csr_rtable.end()) {
              printf("error: invalid argument, please redo");
            }
            else printf("%s: %08X", s.c_str(), param->csr[param->csr_rtable[s]]);
            continue;
          }
          Loop(j, 4) {
            printf("M[%x]: %02X,  ", a + j, param->mem[a + j]);
          }
        }
      }
      else {
        perror("getline failed"); continue;
      }
    }
  }
}

// mode = 1 -> float, 0 -> int
void print_wave(int mode) {
  printf("  PC: ");
  Loop(i, record_pc.size()) {
    printf("%08X ", record_pc[i]);
    if (i == (int)record_pc.size() - 1 || record_pc[i] != record_pc[i + 1]) {
      printf("| ");
    }
    else printf("  ");
  }
  printf("\n");
  printf("inst: ");
  Loop(i, record_inst.size()) {
    printf("%08X ", record_inst[i]);
    if (i == (int)record_inst.size() - 1 || record_inst[i] != record_inst[i + 1]) {
      printf("| ");
    }
    else printf("  ");
  }
  printf("\n");
  if (mode) {
    Loop(i, 32) {
      printf("freg[%02d]: ", i);
	  int_float_mover ifm, ifm2;
      Loop(j, record_freg[i].size()) {
        ifm.f = record_freg[i][j];
        printf("%08X ", ifm.i);
		if (j < (int)record_freg[i].size() - 1) ifm2.f = record_freg[i][j + 1];
		else ifm2.f = 0;
        if (j == (int)record_freg[i].size() - 1 || ifm.i != ifm2.i) {
          printf("| ");
        }
        else printf("  ");
      }
      printf("\n");
    }
  }
  else {
    Loop(i, 32) {
      printf(" reg[%02d]: ", i);
      Loop(j, record_reg[i].size()) {
        printf("%08X ", record_reg[i][j]);
        if (j == (int)record_reg[i].size() - 1 || record_reg[i][j] != record_reg[i][j + 1]) {
          printf("| ");
        }
        else printf("  ");
      }
      printf("\n");
    }
  }
  return;
}

void print_call_time(param_t* param) {
  vector<pair<unsigned, string>> mnemonic_cnts = {
    { param->call_time[LUI], "LUI" },
    { param->call_time[AUIPC], "AUIPC" },
    { param->call_time[JAL], "JAL" },
    { param->call_time[JALR], "JALR" },
    { param->call_time[BEQ], "BEQ" },
    { param->call_time[BNE], "BNE" },
    { param->call_time[BLT], "BLT" },
    { param->call_time[BGE], "BGE" },
    { param->call_time[BLTU], "BLTU" },
    { param->call_time[BGEU], "BGEU" },
    { param->call_time[LB], "LB" },
    { param->call_time[LH], "LH" },
    { param->call_time[LW], "LW" },
    { param->call_time[LBU], "LBU" },
    { param->call_time[LHU], "LHU" },
    { param->call_time[SB], "SB" },
    { param->call_time[SH], "SH" },
    { param->call_time[SW], "SW" },
    { param->call_time[ADDI], "ADDI" },
    { param->call_time[SLTI], "SLTI" },
    { param->call_time[SLTIU], "SLTIU" },
    { param->call_time[XORI], "XORI" },
    { param->call_time[ORI], "ORI" },
    { param->call_time[ANDI], "ANDI" },
    { param->call_time[SLLI], "SLLI" },
    { param->call_time[SRLI], "SRLI" },
    { param->call_time[SRAI], "SRAI" },
    { param->call_time[ADD], "ADD" },
    { param->call_time[SUB], "SUB" },
    { param->call_time[SLL], "SLL" },
    { param->call_time[SLT], "SLT" },
    { param->call_time[SLTU], "SLTU" },
    { param->call_time[XOR], "XOR" },
    { param->call_time[SRL], "SRL" },
    { param->call_time[SRA], "SRA" },
    { param->call_time[OR], "OR" },
    { param->call_time[AND], "AND" },
    { param->call_time[MUL], "MUL" },
    { param->call_time[DIV], "DIV" },
    { param->call_time[FLW], "FLW" },
    { param->call_time[FSW], "FSW" },
    { param->call_time[FADDS], "FADDS" },
    { param->call_time[FSUBS], "FSUBS" },
    { param->call_time[FMULS], "FMULS" },
    { param->call_time[FDIVS], "FDIVS" },
    { param->call_time[FEQS], "FEQS" },
    { param->call_time[FLTS], "FLTS" },
    { param->call_time[FLES], "FLES" },
    { param->call_time[FMVSX], "FMVSX" },
    { param->call_time[FMVXS], "FMVXS" },
    { param->call_time[FCVTSW], "FCVTSW" },
    { param->call_time[FCVTWS], "FCVTWS" },
    { param->call_time[FSQRTS], "FSQRTS" },
    { param->call_time[FSGNJXS], "FSGNJXS" },
    { param->call_time[CSRRW], "CSRRW" },
    { param->call_time[CSRRS], "CSRRS" },
    { param->call_time[CSRRC], "CSRRC" },
    { param->call_time[CSRRWI], "CSRRWI" },
    { param->call_time[CSRRSI], "CSRRSI" },
    { param->call_time[CSRRCI], "CSRRCI" },
    { param->call_time[ROT], "ROT" },
    { param->call_time[IN], "IN" },
    { param->call_time[MVPTG], "MVPTG" },
    { param->call_time[MVGTP], "MVGTP" },
    { param->call_time[MVGTO], "MVGTO" },
    { param->call_time[MVNPCTG], "MVNPCTG" },
    { param->call_time[MVGTNPC], "MVGTNPC" },
    { param->call_time[IRET], "IRET" }
  };
  sort(mnemonic_cnts.begin(), mnemonic_cnts.end(), greater<pair<unsigned, string>>());
  Loop(i, mnemonic_cnts.size()) {
    if (mnemonic_cnts[i].first != 0)
      printf("%10s: %13d times, %lf %%\n",
        mnemonic_cnts[i].second.c_str(), mnemonic_cnts[i].first, (double)mnemonic_cnts[i].first * 100 /param->cnt);
  }
  return;
}
