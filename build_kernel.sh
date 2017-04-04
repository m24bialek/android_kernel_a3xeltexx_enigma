#!/bin/bash

export CROSS_COMPILE=../PLATFORM/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64

/dtbtool -o /arch/arm64/boot/dt.img -s 2048 -p /scripts/dtc/ /arch/arm64/boot/dts/ -v?

make exynos7580-a3xelte_defconfig
make -j
