#!/bin/bash
# checks the basic functions of the build toolchain
# output on terminal should be something like "Requesting program interpreter: /tools/lib/ld-linux.so.2"

echo 'main(){}' > dummy.c
$LFS_TGT-gcc dummy.c
readelf -l a.out | grep ': /tools'

rm -v dummy.c a.out

