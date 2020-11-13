#!/bin/sh
make O=./out ARCH=arm64 REAL_CC=clang -j16
cp -f ./out/arch/arm64/boot/Image.gz-dtb ./release/Dragonfly/Image.gz-dtb
cd release/Dragonfly
zip -r Dragonfly.zip *
mv Dragonfly.zip ../Dragonfly.zip