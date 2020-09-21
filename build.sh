#!/bin/sh
sudo rm -rf ./out
mkdir -p out
make O=./out ARCH=arm64 vendor/alpha_lao_com-perf_defconfig
make O=./out ARCH=arm64 REAL_CC=clang -j16
cp -f ./out/arch/arm64/boot/Image.gz-dtb ./packing/Image.gz-dtb
cd ./packing
./magiskboot split Image.gz-dtb
mv kernel_dtb dtb
./magiskboot dtb dtb patch
./magiskboot hexpatch ./kernel \
736B69705F696E697472616D667300 \
77616E745F696E697472616D667300
mv header_kr header
./magiskboot repack ./sample_kr.img
mv header header_kr
mv new-boot.img Dragonfly/new-boot.img
cd Dragonfly
zip -r Dragonfly-KR.zip *
mv Dragonfly-KR.zip ../Dragonfly-KR.zip
cd ..
mv header_us header
./magiskboot repack ./sample_us.img
mv header header_us
mv new-boot.img Dragonfly/new-boot.img
cd Dragonfly
zip -r Dragonfly-US.zip *
mv Dragonfly-US.zip ../Dragonfly-US.zip
