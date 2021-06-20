#!/bin/bash

echo "GRUB_DISABLE_OS_PROBER=false" >> /etc/default/grub
grub-install /dev/sdX # replace sdx with your disk name, not the partition i.e sda, sdb, etc
grub-mkconfig -o /boot/grub/grub.cfg

# Change the username to your own

useradd -m evan

# Set your own password, or leave default. this will set the password for root as "password"

echo evan:password | chpasswd
usermod -aG libvirt evan

echo "evan ALL=(ALL) ALL" >> /etc/sudoers.d/evan

printf "\e[1;32mDone! Type exit, umount -a and reboot.\e[0m"
