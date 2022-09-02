#!/bin/bash

make clean && make mrproper
export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s


make ARCH=arm64 mcrazymanu_defconfig
make ARCH=arm64 -j16

cp -r arch/arm64/boot/Image AIK/Image
cp -r arch/arm64/boot/dtb_exynos.img AIK/dtb
cp -r dtbof1/dtbo.img AIK/dtbo
cd AIK
rm -rf McRaPsY_v3.6-OC_a13.zip
rm -rf McRaPsY_kernel_a12s.zip
zip -r9 McRaPsY_3.6-OC_a13.zip * -x .git README.md *placeholder
cd ..
