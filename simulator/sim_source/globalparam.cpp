#include "globalparam.hpp"

void init_param (param_t* param) {
  //parameters
  param->pc_interval = 4; // default
  param->breakpoint = UINT_MAX;
  param->wave = 0;
  param->step = false;
  param->trace = ULLONG_MAX;
  param->fp = NULL; // 命令列ファイル記述子
  param->ifp = NULL; // 入力ファイル記述子
  param->ofp = NULL; // 出力ファイル記述子
  param->rbuf_p = 0; // rbuf中の何命令目
  param->rsize = 0; // rbuf中の有効なサイズ
  param->rbuf_begin = UINT_MAX - RBUFSIZE; // rbufが何命令目から始まっているか
  param->pc = 0; // 大域プログラムカウンタ、0から pc_interval ずつスタート
  param->prepc = UINT_MAX; // 直前のプログラムカウンタ、pc = prepcとなったときシミュレータは終了
  param->f_display = false; // 浮動小数点表示
  param->warn = false; // 警告表示
  param->cnt = 0; // 命令数カウント
  param->contest = false;
  param->breakcnt = ULONG_MAX;
  param->max_mem_no = 0; // 最大使用メモリ番号
  Loop(i, 128) param->call_time[i] = 0;
  param->elf_flag = false;
  param->elf_seek = 0;
  param->mmu_control = false;

  //csr_table
  param->csr_table = {

    { 0x000, "ustatus" },
    { 0x001, "fflags" },
    { 0x002, "frm" },
    { 0x003, "fcsr" },
    { 0x004, "uie" },
    { 0x005, "utvec" },
    { 0x040, "uscratch" },
    { 0x041, "uepc" },
    { 0x042, "ucause" },
    { 0x043, "utval" },
    { 0x044, "uip" },

    { 0x100, "sstatus" },
    { 0x102, "sedeleg" },
    { 0x103, "sideleg" },
    { 0x104, "sie" },
    { 0x105, "stvec" },
    { 0x106, "scounteren" },
    { 0x140, "sscratch" },
    { 0x141, "sepc" },
    { 0x142, "scause" },
    { 0x143, "stval" },
    { 0x144, "sip" },
    { 0x180, "satp" },

    { 0x200, "hstatus" },
    { 0x202, "hedeleg" },
    { 0x203, "hideleg" },
    { 0x204, "hie" },
    { 0x205, "htvec" },
    { 0x206, "hcounteren" },
    { 0x240, "hscratch" },
    { 0x241, "hepc" },
    { 0x242, "hcause" },
    { 0x243, "htval" },
    { 0x244, "hip" },

    { 0x300, "mstatus" },
    { 0x301, "misa" },
    { 0x302, "medeleg" },
    { 0x303, "mideleg" },
    { 0x304, "mie" },
    { 0x305, "mtvec" },
    { 0x306, "mcounteren" },
    { 0x340, "mscratch" },
    { 0x341, "mepc" },
    { 0x342, "mcause" },
    { 0x343, "mtval" },
    { 0x344, "mip" },
    { 0x380, "mbase" },
    { 0x381, "mbound" },
    { 0x382, "mibase" },
    { 0x383, "mibound" },
    { 0x384, "mdbase" },
    { 0x385, "mdbound" },

    { 0x7a0, "tselect" },
    { 0x7b0, "dcsr" },
    { 0x7b1, "dpc" },
    { 0x7b2, "dscratch" },

    { 0xb00, "mcycle" },
    { 0xb02, "minstret" },
    { 0xb80, "mcycleh" },
    { 0xb82, "minstreth" },

    { 0xc00, "cycle" },
    { 0xc01, "time" },
    { 0xc02, "instret" },
    { 0xc80, "cycleh" },
    { 0xc81, "timeh" },
    { 0xc82, "instreth" },

    { 0xf14, "mhartid" }
  };

  for(auto itr = param->csr_table.begin(); itr != param->csr_table.end(); itr++) {
    param->csr_rtable[itr->second] = itr->first;
  }

  /* csr_init_val */
  param->last_written_csr = 0xfff;
  param->csr[param->csr_rtable["mip"]] = 0x8;
  param->csr[param->csr_rtable["misa"]] =
    (1 << 30) |
    (1 << ('I' - 'A')) |
    (1 << ('A' - 'A'));
  param->csr[param->csr_rtable["mhartid"]] = 0;
}

void exit_message(param_t* param) {
  printf("program terminated in failure, in prePC = %08X, PC = %08X, cnt = %lld, inst = %08X : \n", param->prepc, param->pc, param->cnt, param->rbuf[param->rbuf_p]);
  print_standard_reg(param);
  printf("\n\n");
  exit(EXIT_FAILURE);
}

void print_standard_reg(param_t* param) {
  Loop(i, 32) {
    if (i % 8 == 0) printf("\n");
    printf("r%02d:%08X ", i, param->reg[i]);
  }
  printf("\n");
  Loop(i, 32) {
    if (i % 8 == 0) printf("\n");
    printf("p%02d:%08X ", i, param->preg[i]);
  }
  printf("\n");
  printf("\nMMU_Control %d", param->mmu_control);
  printf("\n OS_handler %08X", param->os_handler_addr);
  printf("\n        NPC %08X", param->npc);
  printf("\nCounter_reg %08X", param->counter_reg);
  /*printf("\n");
  Loop(i, 32) {
    if (i % 8 == 0) printf("\n");
    if(param->f_display) printf("f%02d:%8f ", i, param->freg[i]);
    else {
      int_float_mover ifm;
      ifm.f = param->freg[i];
      printf("f%02d:%08X ", i, ifm.i);
    }
  }*/
  return;
}
