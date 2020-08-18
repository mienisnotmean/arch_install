#!/bin/bash

sudo mount /dev/sda1 /mnt
sudo grub-mkconfig -o /boot/grub/grub.cfg

git clone https://aur.archlinux.org/trizen.git
(cd trizen && makepkg -si)
rm -rf trizen

trizen -S ant-dracula-gtk-theme --noconfirm

git clone https://github.com/dracula/gnome-terminal
gnome-terminal/install.sh
rm -rf gnome-terminal

sudo ufw default deny
sudo ufw allow from 192.168.0.0/24
sudo ufw enable
