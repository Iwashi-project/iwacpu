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

#define READELF_FILENAME "readelf.log";

int main(int argc, char *argv[]) {
    if (argc != 2) {
      printf("error: specify an input file.\n"); exit(EXIT_FAILURE);
    }
    string cmd = "readelf -S ";
    cmd += argv[1];
    cmd += " > " + READELF_FILENAME;
    system(cmd.c_str());
    ifstream ifs(READELF_FILENAME);
    if (!ifs.is_open()) { perror("fopen error\n"); exit(EXIT_FAILURE); }
    string readline;
    while(getline(ifs, readline)) {
      int mode = 0;
      Loop(i, readline.length()) {
        if (readline[i] == ' ' || '\t') continue;
        else if (readline[i] == [ && mode == 0]) mode = 1;
        else if (mode >= 1) {
          if(readline.find())
        }
      }
    }
    return 0;
}
