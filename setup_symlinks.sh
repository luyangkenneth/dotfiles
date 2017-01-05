#!/bin/bash

files=".bash_profile .bashrc .git-completion.bash .gitconfig .gitignore_global .inputrc"

mkdir ~/dotfiles_old

for file in $files; do
    mv ~/$file ~/dotfiles_old
    ln -s ~/dotfiles/$file ~/$file
done
