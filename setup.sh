#!/bin/bash

# Colors
PURPLE='\033[1;35m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RESET='\033[0m'

# Paths
SRC="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DEST=${HOME}

clear

printf "\n${BLUE}| Welcome to setup script. ${RESET}\n"
sleep 3

printf "\n${PURPLE}>_ Creating symlink for .tmux.conf${RESET}\n"
ln -s $SRC/.tmux.conf $DEST/.tmux.conf

printf "\n${PURPLE}>_ Creating symlink for .zshrc${RESET}\n"
ln -s $SRC/configs/.zshrc $DEST/.zshrc

printf "\n${GREEN}| Done.${RESET}\n\n"
