#! /bin/bash -e

export CROSS_COMPILE=arm-none-linux-gnueabi-
export PATH=$PATH:/home/rdp/work/ti/am3359/tools/
export ARCH=arm
export PATH=$PATH:/home/rdp/work/ti/am3359/tools/arm-2009q1/bin

if [[ $2 == c ]]; then
    make O=$1 distclean
    make am335x_$1_config O=$1
fi

make O=$1
