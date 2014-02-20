#! /bin/bash -e

export CROSS_COMPILE=arm-linux-gnueabihf-
export PATH=$PATH:/home/rdp/bin/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin
export ARCH=arm
export PATH=$PATH:/home/rdp/work/ti/am3359/tools/arm-2009q1/bin

if [[ $2 == c ]]; then
    make O=$1 distclean
    make am335x_$1_config O=$1
fi

make O=$1

cp $1/u-boot.img /tftpboot/
cp $1/MLO /tftpboot/
