# Arch-Script
ArchLinux Install script

This script was made based on https://gitlab.com/eflinux/arch-basic with some tweaks for those who sometimes has internet connection problem which makes running a single script multiple times impossible (since there are some echo command)

The first part of the Arch Linux install is manual, that is you will have to partition, format and mount the disk yourself. Install the base packages and make sure to inlcude git so that you can clone the repository in chroot.

Summary:

1. If needed, load your keymap
2. Refresh the servers with pacman -Syy
3. Partition the disk
4. Format the partitions
5. Mount the partitions
6. Install the base packages into /mnt (pacstrap /mnt base base-devel linux linux-firmware linux-headers git nano intel-ucode (or amd-ucode))
7. Generate the FSTAB file with genfstab -U /mnt >> /mnt/etc/fstab
8. Chroot in with arch-chroot /mnt
9. Download the git repository with git clone https://github.com/Evan-aja/Arch-Base-Install.git
10. chmod -R 755 Arch-Base-Install
11. cd Arch-Base-Install
12. cd to which system you're running
13. run each script in succession, DO NOT skip any script (./MBR1.sh and then ./MBR2.sh and so on) 
