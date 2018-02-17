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
#define OUTPUT_FILE_NAME "process_for_kernel"


int main(int argc, char *argv[]) {
  if (argc != 3) { printf("error: select 2 files\n"); exit(EXIT_FAILURE); }
  FILE* fp;
  fp = fopen(argv[1], "r");

  fp = fopen(OUTPUT_FILE_NAME, "w");
  if (fp == NULL) { perror("fopen error"); exit(EXIT_FAILURE); }

  if (param->contest && out_data == 0xaa) param->contest = false;
  else if (fwrite(&out_data, sizeof(unsigned char), 1, param->fp) != 1) {
    perror("fwrite error"); exit_message(param);
  }
  pc_inclement(param);
  return 0;
}
