#!/bin/bash
set -e

echo "System Info:"
uname -a
lscpu

rc=0
/usr/libexec/arch-test/armel || rc=1
/usr/libexec/arch-test/armhf || rc=1

exit $rc
