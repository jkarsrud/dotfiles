#!/bin/bash
cd ~

cp ~/.dotfiles/.vim ~/.vim
cp ~/.dotfiles/.vimrc ~/.vimrc
cp ~/.dotfiles/.bash_prompt ~/.bash_prompt
cp ~/.dotfiles/.exports ~/.exports
cp ~/.dotfiles/.aliases ~/.aliases
cp ~/.dotfiles/.functions ~/.functions
cp ~/.dotfiles/.git-completion ~/.git-completion
cp ~/.dotfiles/.bash_profile ~/.bash_profile

echo "Don't forget to fix your .gitconfig!"
