#!/bin/bash

sudo -u mien git clone https://github.com/ohmyzsh/ohmyzsh.git /home/mien/.oh-my-zsh

sudo -u mien git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/mien/.oh-my-zsh/custom/themes/powerlevel10k

sudo -u mien git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git /home/mien/.oh-my-zsh/custom/plugins/zsh-autosuggestions

sudo -u mien git clone --depth=1 https://github.com/zsh-users/zsh-completions.git /home/mien/.oh-my-zsh/custom/plugins/zsh-completions

sudo -u mien git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git /home/mien/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

cp /home/mien/.oh-my-zsh/templates/zshrc.zsh-template /home/mien/.zshrc

git clone https://github.com/dracula/gnome-terminal /home/mien/gnome-terminal
sudo -u mien /home/mien/gnome-terminal/install.sh
rm -r /home/mien/gnome-terminal
