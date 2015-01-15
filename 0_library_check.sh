#!/bin/bash
# libs should be all present or all absent
for lib in lib{gmp,mpfr,mpc}.la; do
  echo $lib: $(if find /usr/lib* -name $lib | grep -q $lib;then :;else echo not;fi) found
done
unset lib
