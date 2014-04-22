#!/bin/sh

if [ ! -d "$HOME/.dotfiles" ]; then
    echo "Installing YADR for the first time"
    git clone https://github.com/sandeepjain/dotfiles.git "$HOME/.dotfiles"
    cd "$HOME/.dotfiles"
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "YADR is already installed"
fi
