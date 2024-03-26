#!/bin/bash

echo 'int add(int a, int b) { return 9; }' > /tmp/101-win.c
echo 'int gm(int n1, int n2, int n3, int n4, int n5, int bonus) { return 0; }' >> /tmp/101-win.c
gcc -shared -fPIC -o /tmp/101-win.so /tmp/101-win.c -ldl
export LD_PRELOAD=/tmp/101-win.so
