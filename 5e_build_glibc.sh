#!/bin/bash
# builds glibc

tar -xf glibc-2.20.tar.xz

mkdir -v glibc-build
cd glibc-build

../glibc-2.20/configure \
	--prefix=/tools \
	--host=$LFS_TGT \
	--build=$(../glibc-2.20/scripts/config.guess) \
	--disable-profile \
	--enable-kernel=2.6.32 \
	--with-headers=/tools/include \
	libc_cv_forced_unwind=yes \
	libc_cv_ctors_header=yes \
	libc_cv_c_cleanup=yes

make

make install

cd ..
rm -rf glibc-build
rm -rf glibc-2.20

