#!/bin/bash

sudo -u mien git clone https://github.com/ohmyzsh/ohmyzsh.git /home/mien/.oh-my-zsh

sudo -u mien git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/mien/.oh-my-zsh/custom/themes/powerlevel10k

sudo -u mien git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git /home/mien/.oh-my-zsh/custom/plugins/zsh-autosuggestions

sudo -u mien git clone --depth=1 https://github.com/zsh-users/zsh-completions.git /home/mien/.oh-my-zsh/custom/plugins/zsh-completions

sudo -u mien git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git /home/mien/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

sudo -u mien cp /home/mien/.oh-my-zsh/templates/zshrc.zsh-template /home/mien/.zshrc


tput setaf 11;
echo "################################################################"
echo "# Oh-my-zsh have been installed"
echo "################################################################"
echo;tput sgr0
