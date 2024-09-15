#/bin/bash
cd `dirname $BASH_SOURCE`/kernel

export CROSS_COMPILE="`dirname $BASH_SOURCE`/toolchain/arm-cortex_a7-linux-gnueabihf-linaro_4.9/bin/arm-cortex_a7-linux-gnueabihf-"
export KCFLAGS="-pipe -mtune=cortex-a7 -march=armv7-a -mfpu=neon-vfpv4"
export MTK_ROOT_CUSTOM="`dirname $BASH_SOURCE`/mediatek/custom/"

echo $CROSS_COMPILE
echo $MTK_ROOT_CUSTOM

bash build.sh lenovo89_tb_x10_jb2
