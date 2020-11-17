#!/bin/sh
sudo rm -rf ./out
mkdir -p out
make O=./out ARCH=arm64 dragonfly_defconfig
make O=./out ARCH=arm64 REAL_CC=clang -j16
cp -f ./out/arch/arm64/boot/Image.gz-dtb ./release/Dragonfly/Image.gz-dtb