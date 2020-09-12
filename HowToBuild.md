# Preparation

Install required packages
```sh
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig
```

Setup build tool environment
- Download Proton-Clang from https://github.com/kdrag0n/proton-clang/releases
- Unzip to any location, e.g. `~/toolchain/proton-clang`
- Add the following into your shell configs:
```
export USE_CCACHE=1
export CCACHE_COMPRESS=1
export CCACHE_MAXSIZE=50G # 50 GB
export PATH=~/toolchain/proton-clang/bin:$PATH
export CROSS_COMPILE=aarch64-linux-gnu-
```

Clone my repo
```sh
git clone https://github.com/anht3889/LGE_G820_Kernel_Caf.git
```

# Build the kernel
Building the kernel is really simple by excuting the scripts, thanks to KamioRinn from https://github.com/KamioRinn/Metaphysics_LGE_G820_Kernel

Build kernel for both G8 Korean & US
```sh
./build.sh
```

Two flashable kernel zip is located at `/packing/Dragonfly-KR.zip` and `/packing/Dragonfly-US.zip`