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
    zsh-autosuggestion
    zsh-completions
    zsh-syntax-highlighting
    zsh-theme-powerlevel10k
)

count=0

sudo -u mien git clone https://github.com/ohmyzsh/ohmyzsh.git /home/mien/.config/.oh-my-zsh

for name in "${package_list[@]}" ; do
    count=$[count+1]
    tput setaf 3;echo "Installing package nr. " $count " " $name;tput sgr0;
    func_install $name
done

sudo -u mien cp arch_install/dotfiles/.zshrc /home/mien/.zshrc

tput setaf 11;
echo "################################################################"
echo "# Oh-my-zsh have been installed"
echo "################################################################"
echo;tput sgr0
