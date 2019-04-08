#!/bin/bash
rm -R -f ~/.zsh
mkdir ~/.zsh
git clone https://github.com/dehimb/zsh.git ~/.zsh
ln -sf ~/.zsh/zshrc ~/.zshrc
exit 0
