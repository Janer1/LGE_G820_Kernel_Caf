make O=./out ARCH=arm64 REAL_CC=clang -j16
cp -f ./out/arch/arm64/boot/Image.gz-dtb ./packing/Image.gz-dtb
cd ./packing
./magiskboot split Image.gz-dtb
mv kernel_dtb dtb
./magiskboot dtb dtb patch
./magiskboot hexpatch ./kernel \
736B69705F696E697472616D667300 \
77616E745F696E697472616D667300
cp ramdisk_no_twrp.cpio ramdisk.cpio
cp header_kr header
./magiskboot repack ./sample_kr.img
mv new-boot.img Dragonfly/new-boot.img
cd Dragonfly
zip -r Dragonfly-KR.zip *
mv Dragonfly-KR.zip ../Dragonfly-KR-NoTWRP.zip
cd ..
cp header_us header
./magiskboot repack ./sample_us.img
mv new-boot.img Dragonfly/new-boot.img
cd Dragonfly
zip -r Dragonfly-US.zip *
mv Dragonfly-US.zip ../Dragonfly-US-NoTWRP.zip
cd ..
cp ramdisk_twrp_kr.cpio ramdisk.cpio
cp header_kr header
./magiskboot repack ./sample_kr.img
mv new-boot.img Dragonfly/new-boot.img
cd Dragonfly
zip -r Dragonfly-KR.zip *
mv Dragonfly-KR.zip ../Dragonfly-KR-TWRP.zip
cd ..
cp ramdisk_twrp_us.cpio ramdisk.cpio
cp header_us header
./magiskboot repack ./sample_us.img
mv new-boot.img Dragonfly/new-boot.img
cd Dragonfly
zip -r Dragonfly-US.zip *
mv Dragonfly-US.zip ../Dragonfly-US-TWRP.zip