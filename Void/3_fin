#!/bin/sh

umount -R /mnt
swapoff -a

for f in swapfs rootfs homefs; do
        lvchange -an /dev/matrix/$f
done

cryptsetup luksCloselvm
shutdown -hf now
