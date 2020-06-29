#!/bin/bash

func_install() {
    if pacman -Qi $1 &> /dev/null; then
	tput setaf 2
  	echo "###############################################################"
  	echo "# The package " $1 " is already installed"
      	echo "###############################################################"
      	echo
	tput sgr0
    else
    	tput setaf 3
    	echo "###############################################################"
    	echo "# Installing package " $1
    	echo "###############################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

package_list=(
    pulseaudio
    pulseaudio-alsa
    alsa-firmware
    alsa-lib
    alsa-plugins
    alsa-utils
    gst-plugins-good
    gst-plugins-bad
    gst-plugins-base
    gst-plugins-ugly
    playerctl
)

count=0

for name in "${package_list[@]}" ; do
    count=$[count+1]
    tput setaf 3;echo "Installing package nr. " $count " " $name;tput sgr0;
    func_install $name
done

tput setaf 11;
echo "################################################################"
echo "# Sound has been installed"
echo "################################################################"
echo;tput sgr0
