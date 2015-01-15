#!/bin/bash

tar -xf binutils-2.24.tar.bz2

cd binutils-2.24

mkdir -v ../binutils-build
cd ../binutils-build

../binutils-2.24/configure \
	--prefix=/tools \
	--with-sysroot=$LFS \
	--with-lib-path=/tools/lib \
	--target=$LFS_TGT \
	--disable-nls \
	--disable-werror 

make

make install

cd ..

rm -rf binutils-build
rm -rf binutils-2.24

