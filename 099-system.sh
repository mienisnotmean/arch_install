#!/bin/bash

# Set hostname
echo 'arch' > /etc/hostname

# Set timezone
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
hwclock -w

# Generate locale
sed -i '/en_US.UTF-8/s/^# //g' script.sh
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf

# Create initramfs
mkinitcpio -P

# Install bootloader
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
grub-mkconfig -o /boot/grub/grub.cfg

# Set root password
passwd

# Create user
useradd -m -g users -s $(which zsh) mien
gpasswd -a mien wheel
passwd mien
sed -i '/%wheel ALL=(ALL) ALL/s/^# //g' script.sh
