#!/bin/bash

git clone https://aur.archlinux.org/trizen.git
(cd trizen && makepkg -si)
rm -r trizen

tput setaf 11;
echo "################################################################"
echo "# AUR has been installed"
echo "################################################################"
echo;tput sgr0
