#!/bin/bash

# ask Y/n, function from https://github.com/bartekspitza/dotfiles/blob/master/install.sh
function ask() {
    read -p "$1 (Y/n): " resp
    if [ -z "$resp" ]; then
        response_lc="y" # empty is Yes
    else
        response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]') # case insensitive
    fi

    [ "$response_lc" = "y" ]
}

# determine which shell is being used
if [ "$SHELL" = "/bin/bash" ]; then
    DOTFILE="${HOME}/.bashrc"
elif [ "$SHELL" = "/bin/zsh" ]; then
    DOTFILE="${HOME}/.zshrc"
# elif [ "$SHELL" = "/bin/fish" ]; then
else
    echo "Shell not recognized"
    exit 1
fi

# determine whether or not dotfile exists
if [ -f "$DOTFILE" ]; then
    if ask "$DOTFILE exists, overwrite $DOTFILE?:"; then
        echo "Overwriting $DOTFILE..."
    else
        exit 1
    fi
else # dotfile doesn't exist
    touch $DOTFILE
fi
