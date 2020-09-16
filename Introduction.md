# Introduce

First of all, I'd like to thank Metaphysics team for giving the first custom kernel of G8 USA. Unfortunately I'm using G8 - Korean and they haven't released version for the Korean variant yet. I had to learn how to build a kernel for myself based on their kernel source. However, I want to lean more so I decided to compile the kernel from LGE open source. Now, my intial kernel version is stable enough to be released and shared to the G8 community. You can call it the Dragonfly kernel :D 

# Main Features
- Based on LGE open source LMG820N_Android_Q_v20a: http://opensource.lge.com/osSch/list?types=NAME&search=g820n
- Linux-Stable-Upstream included to latest 4.14.198
- Next-Gen CAF-Tag LA.UM.8.11.r1-02600-NICOBAR.0 merged
- Regular CAF-Tag for SD855 merged LA.UM.8.1.r1-15800-sm8150.0
- Compiled by ProtonClang 12.0.0 with -O3 speed optimizations
- No VLAs
- Magisk included

# EAS related features
- EAS implementation patched up to latest CAF state
- Disable autogroups and use cgroups for more efficient task placement
- Cpu input boost

# GPU related features

# Network related features
- Add Wireguard VPN Tunnel Support
- Add new TCP controller BBR2
- Add new TCP controller Agile-SD

# Memory related features
- Add zram zstd support
- Use lz4 as default

# Wakelock Blocker
- Add Boeffla Wakelock Blocker v1.1.0
- A new list called "wakelock_blocker_default" which comes prepopulated with the most common and safe wakelocks to block: qcom_rx_wakelock;wlan;wlan_wow_wl;wlan_extscan_wl;netmgr_wl;NETLINK

# Known bugs
- Hotword Ok / hey Google doesn't work -> This is not important to me since we can use Assistant button to call the assistant
- You tell me

# Contributors
- Anh Tran
- Jean Carlos Bencosme

# Credits
- Metaphysics kernel team: https://github.com/KamioRinn/Metaphysics_LGE_G820_Kernel
- SGCMarkus for his guide of building kernel
- Jean Carlos Bencosme for adding / picking kernel features
- Kirisakura for his great kernels
- LGE for the kernel open source
- All other great kernel devs
