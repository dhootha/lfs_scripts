#!/bin/bash
# creates and mounts partitions for LFS

export LFS=/mnt/lfs

mkdir -pv $LFS
mount -v -t ext4 /dev/sdb3 $LFS

mkdir -v $LFS/boot
mount -v -t ext2 /dev/sdb1 $LFS/boot

/sbin/swapon -v /dev/sdb2


