#!/bin/bash

# Set hostname
echo 'arch' > /etc/hostname

# Set timezone
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
hwclock -w

# Generate locale
sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf

# Create initramfs
mkinitcpio -P

# Install bootloader
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
grub-mkconfig -o /boot/grub/grub.cfg

# Set root password
tput setaf 11;
echo "################################################################"
echo "# Enter root password:"
echo "################################################################"
echo;tput sgr0
passwd

# Create user
useradd -m -g users -s $(which zsh) mien
gpasswd -a mien wheel
tput setaf 11;
echo "################################################################"
echo "# Enter root password:"
echo "################################################################"
echo;tput sgr0
passwd mien
sed -i '/%wheel ALL=(ALL) ALL/s/^# //g' /etc/sudoers
