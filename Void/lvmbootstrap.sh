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

lvcreate -L 16G matrix -n Root
lvcreate -L 32G matrix -n Swap
lvcreate -L 8G matrix -n Var
lvcreate -L 8G matrix -n Tmp
lvcreate -l +100%FREE matrix -n Home

mkfs.ext4 -L root /dev/matrix/Root
mkswap -L swap /dev/matrix/Swap
swapon /dev/matrix/Swap
mkfs.ext4 -L var /dev/matrix/Var
mkfs.ext4 -L tmp /dev/matrix/Tmp
mkfs.ext4 -L home /dev/matrix/Home

mount /dev/matrix/Root /mnt
mkdir -p /mnt/var
mount /dev/matrix/Var /mnt/var
mkdir -p /mnt/tmp
mount /dev/matrix/Tmp /mnt/tmp
mkdir -p /mnt/home
mount /dev/matrix/Home /mnt/home
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
