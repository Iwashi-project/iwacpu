inline int mod(int x, int m) {
    while(x <  0) x += m;
    while(x >= 0) x -= m;
    return x + m;
}
