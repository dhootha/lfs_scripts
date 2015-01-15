#!/bin/bash
# copy kernel header files

tar -xf linux-3.16.2.tar.xz

cd linux-3.16.2

make mrproper

make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include

rm -rf linux-3.16.2

