#!/bin/bash
# checks if the rpc headers are installed properly on the host
# if not then install them

if [ ! -r /usr/include/rpc/types.h ]; then
	su -c 'mkdir -pv /usr/include/rpc'
	su -c 'cp -v sunrpc/rpc/*.h /usr/include/rpc'
fi

