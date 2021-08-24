#!/bin/bash

DOTFILES_DIR=~/.dotfiles

for file in $(ls $DOTFILES_DIR | grep -v 'install.sh'); do
    ln -sf "$DOTFILES_DIR/$file" "$HOME/.$file";
    echo "link $DOTFILES_DIR/$file to $HOME/.$file"
done

