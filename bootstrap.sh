#!/bin/bash
cd ~

ditto ~/.dotfiles/.vim ~/.vim
cp ~/.dotfiles/.vimrc ~/.vimrc
cp ~/.dotfiles/.aliases ~/.aliases
cp ~/.dotfiles/.git-completion ~/.git-completion
cp ~/.dotfiles/.commonrc ~/.commonrc

echo "Don't forget to fix your .gitconfig!"
