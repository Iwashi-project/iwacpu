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
#include <sys/stat.h>
#define OUTPUT_FILE_NAME "process_for_kernel"

using namespace std;

int main(int argc, char *argv[]) {
  if (argc != 3) { printf("error: select 2 files\n"); exit(EXIT_FAILURE); }
  FILE *ofp;
  struct stat statbuf;
  if (stat(argv[1], &statbuf) < 0) { perror("stat"); exit(EXIT_FAILURE); }
  fwrite((unsigned char)0, sizeof(unsigned char), 0x1000 - (int)statbuf.st_size, ofp) != 1) {
    perror("fwrite error"); exit_message(param);
  }
  if (stat(argv[2], &statbuf) < 0) { perror("stat"); exit(EXIT_FAILURE); }
  fwrite((unsigned char)0, sizeof(unsigned char), 0x1000 - (int)statbuf.st_size, ofp) != 1) {
    perror("fwrite error"); exit_message(param);
  }
  return 0;
}
