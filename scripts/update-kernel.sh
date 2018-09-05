#!/bin/bash
cd /usr/src/linux
zcat /proc/config.gz > ./.config
make oldconfig
make -j4
make modules_install
mount /boot
make install
ver=`readlink /usr/src/linux | sed -e 's/linux-//'`
dracut -H -f --kver $ver
if which grub-mkconfig; then
    grub-mkconfig > /boot/grub/grub.cfg;
else
    mv /boot/vmlinuz-* /boot/EFI/gentoo
    mv /boot/initramfs-* /boot/EFI/gentoo
fi
umount /boot
