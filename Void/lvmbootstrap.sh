#!/bin/sh

# auto-installer for Void Linux with a Logical Volume Manager partition
# requires a DOS table with one part for boot and a second for the LVM

# For the LVM partition to be encrypted (LUKS), run:
#       cryptsetup --use-urandom luksFormat /dev/sda2
#       cryptsetup luksOpen /dev/sda2 lvm
# before executing this script

mkfs.ext2 -L boot /dev/sda1

pvcreate /dev/mapper/lvm
pvdisplay > log.dat
echo '' >> log.dat
vgcreate matrix /dev/mapper/lvm
vgdisplay >> log.dat

lvcreate -L 32G matrix -n swap
lvcreate -L 16G matrix -n root
lvcreate -L 8G matrix -n opt
lvcreate -L 8G matrix -n srv
lvcreate -l +100%FREE matrix -n home

mkfs.ext4 -L root /dev/matrix/root
mkswap -L swap /dev/matrix/swap
mkfs.ext4 -L opt /dev/matrix/opt
mkfs.ext4 -L srv /dev/matrix/srv
mkfs.ext4 -L home /dev/matrix/home

swapon /dev/matrix/swap
mount /dev/matrix/root /mnt
mkdir -p /mnt/opt
mount /dev/matrix/opt /mnt/opt
mkdir -p /mnt/srv
mount /dev/matrix/srv /mnt/srv
mkdir -p /mnt/home
mount /dev/matrix/home /mnt/home
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot

cd / ; for d in dev proc sys ; do
        mkdir -p /mnt/$d
        mount --rbind /$d /mnt/$d
done

# for the musl-libc version
export XBPS_ARCH=x86_64-musl
# change .../current/musl ... to .../current ... for glibc instead
xbps-install -Sy -R https://alpha.de.repo.voidlinux.org/current/musl -r /mnt base-system linux-lts lvm2 cryptsetup grub git NetworkManager

#cp fstab log.dat chrootsetup.sh /mnt
# When this script finishes, chroot into /mnt, set the password, and execute chrootsetup.sh
