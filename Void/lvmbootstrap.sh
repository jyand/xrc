#!/bin/sh

# auto-installer for Void Linux with a Logical Volume Manager partition
# requires a DOS table with one part for boot and a second for the LVM

# For the LVM partition to be encrypted (LUKS), run:
#       cryptsetup --use-random luksFormat /dev/sda2
#       cryptsetup luksOpen /dev/sda2 lvm
# before executing this script

mkfs.ext2 -L boot /dev/sda1

pvcreate /dev/mapper/lvm
pvdisplay > log.dat
echo '' >> log.dat
vgcreate matrix /dev/mapper/lvm
vgdisplay >> log.dat
echo '' >> log.dat

lvcreate -L 24G matrix -n swapfs
lvcreate -L 24G matrix -n rootfs
lvcreate -l +100%FREE matrix -n homefs

mkswap -L swapfs /dev/matrix/swapfs
swapon /dev/matrix/swapfs
mkfs.ext4 -L rootfs /dev/matrix/rootfs
mkfs.ext4 -L homefs /dev/matrix/homefs

mount /dev/matrix/rootfs /mnt
mkdir -p /mnt/home
mount /dev/matrix/homefs /mnt/home
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot
lsblk >> log.dat
echo '' >> log.dat

cd / ; for d in dev proc sys; do
        mkdir -p /mnt/$d
        mount --rbind /$d /mnt/$d
done

# for the musl-libc version
export XBPS_ARCH=x86_64-musl
# change .../current/musl ... to .../current ... for glibc instead
xbps-install -Sy -R https://alpha.de.repo.voidlinux.org/current/musl -r /mnt base-system lvm2 cryptsetup grub git NetworkManager >> log.dat
echo '' >> log.dat

#cp fstab log.dat chrootsetup.sh /mnt
# When this script finishes, chroot into /mnt, set the password, and execute chrootsetup.sh
