#!/bin/bash
# downloads and checks source-packages

mkdir -v $LFS/sources

chmod -v a+wt $LFS/sources

wget -i wget-list -P $LFS/sources

cp md5sums $LFS/sources

pushd $LFS/sources
md5sum -c md5sums
popd


