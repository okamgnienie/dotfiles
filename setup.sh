#!/bin/bash

# Colors
PURPLE='\033[1;35m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# Paths
SRC=$(pwd)
DEST=${HOME}

checkIfExists() {
    if hash $1 2>/dev/null; then
        echo 1
    else
        echo 0
    fi
}

installScript() {
    infoMessage $1
    ln -sf $SRC/scripts/$1 $DEST/.scripts/$1
}

headlineMessage() {
    printf "\n${PURPLE}>_ $1 ${RESET}\n"
}

infoMessage() {
    printf "${YELLOW}$1 ${RESET}\n"
}

successMessage() {
    printf "${GREEN}$1 ${RESET}\n"
}

# Welcome ---------------------------------

clear
printf "\n${BLUE} - Welcome to the setup script! - ${RESET}\n"
sleep 2

# Homebrew ---------------------------------

headlineMessage "Homebrew - - - - - - - - - - -"

# Program

if [[ $(checkIfExists brew) == 0 ]]; then
    infoMessage "Installing..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    successMessage "Already installed"
fi

# Tmux ---------------------------------

headlineMessage "Tmux - - - - - - - - - - - - -"

# Program

if [[ $(checkIfExists tmux) == 0 ]]; then
    infoMessage "Installing..."
    brew install tmux
else
    successMessage "Already installed"
fi

# Config

infoMessage "Configuring"
ln -sf $SRC/.tmux.conf $DEST/.tmux.conf

# Tmux Package Manager ---------------------------------

headlineMessage "Tmux Package Manager - - - - -"

# Program

TPU_DIR=$DEST/.tmux/plugins/tpm

if [ -d "$TPU_DIR" ]; then
    successMessage "Already installed"
else
    infoMessage "Installing..."
    git clone https://github.com/tmux-plugins/tpm $TPU_DIR
fi

# Zsh ----------------------------------

headlineMessage "oh-my-zsh  - - - - - - - - - -"

# Program

if [[ $(checkIfExists zsh) == 0 ]]; then
    infoMessage "Installing..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    successMessage "Already installed"
fi

# Config

infoMessage "Configuring"
ln -sf $SRC/.zshrc $DEST/.zshrc

# Scripts ----------------------------------

headlineMessage "Installing scripts - - - - - - "

# Programs

[ -d $DEST/.scripts ] || mkdir -p $DEST/.scripts

installScript "tmux-git.sh"

# Finish ----------------------------------

successMessage "\nDone!\n"
