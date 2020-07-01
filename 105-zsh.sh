#!/bin/sh

git clone https://github.com/ohmyzsh/ohmyzsh.git /home/mien/.oh-my-zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-/home/mien/.oh-my-zsh/custom}/themes/powerlevel10k

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-/home/mien/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth=1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-/home/mien/.oh-my-zsh/custom}/plugins/zsh-completions

git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-/home/mien/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp /home/mien/.oh-my-zsh/templates/zshrc.zsh-template /home/mien/.zshrc
