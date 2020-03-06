#!/bin/sh

chown root:root /
chmod 755 /

echo 'v' > /etc/hostname

mv -f fstab /etc

grub-install /dev/sda >> log.dat
echo '' >> log.dat

# Uncomment if using glibc, musl does not support locales
# echo "LANG=en_US.UTF-8" > /etc/locale.conf
# echo "en_US.UTF-8 UTF-8" >> /etc/default/libc-locales
# xbps-reconfigure -f glibc-locales

sed 's/page_poison=1\/page_poison=1 rd.auto=1/g'  /etc/default/grub > /etc/default/grub

# change if kernel version is different
xbps-reconfigure -f linux5.4 >> log.dat

for s in NetworkManager dbus; do
        ln -s /etc/sv/$s /var/service
done

# exit the chroot then execute fin.sh
