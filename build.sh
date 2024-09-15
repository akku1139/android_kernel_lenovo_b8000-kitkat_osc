#/bin/bash
cd `dirname $BASH_SOURCE`

export CROSS_COMPILE="`dirname $BASH_SOURCE`/toolchain/arm-cortex_a7-linux-gnueabihf-linaro_4.9/bin/arm-cortex_a7-linux-gnueabihf-"

export KCFLAGS="-pipe -mtune=cortex-a7 -march=armv7-a -mfpu=neon-vfpv4"

cd kernel
bash build.sh
