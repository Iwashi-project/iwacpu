#include <iostream>
#include <climits>
#include <fstream>
#include <algorithm>
#include <bitset>
#include <iostream>
#include <climits>
#include <algorithm>
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

#define Loop(i, n) for(int i = 0; i < (int)n; i++)
#define Loop1(i, n) for(int i = 1; i <= (int)n; i++)

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
}
