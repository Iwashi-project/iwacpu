#include <iostream>
#include <climits>
#include <fstream>
#include <algorithm>
#include <bitset>
#include <vector>
#include <string.h>
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
#define FNAME "process.in"

#define Loop(i, n) for(int i = 0; i < (int)n; i++)
#define Loop1(i, n) for(int i = 1; i <= (int)n; i++)

using namespace std;

int main(int argc, char *argv[]) {
  unsigned char in_data[0x1000];
  if (argc <= 1) { printf("error: select file\n"); exit(EXIT_FAILURE); }
  FILE *ifp, *ofp;
  ofp = fopen(FNAME, "w");
  if (ofp == NULL) { perror("fopen error"); exit(EXIT_FAILURE); }

  Loop1(k, argc - 1) {
    memset(in_data, 0, 0x1000);
    ifp = fopen(argv[k], "rb");
    if (ifp == NULL) { perror("fopen error"); exit(EXIT_FAILURE); }
    fread(in_data, 1, 0x1000, ifp);
    if (fwrite(in_data, sizeof(unsigned char), 0x1000, ofp) < 0) {
      perror("fwrite error"); exit(EXIT_FAILURE);
    }
  }
  return 0;
}
