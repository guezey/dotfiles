#!/bin/bash

# Color escape codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Constant strings
DONE="${GREEN}[SETUP]${NC}"
ERROR="${RED}[SETUP]${NC}"
INFO="${YELLOW}[SETUP]${NC}"

# Create a .bash_aliases file
cp .bash_aliases ~/.bash_aliases
echo -e "${DONE} .bash_aliases file created/updated"

# Create a .gitconfig file
cp .gitconfig ~/.gitconfig
echo -e "${DONE} .gitconfig file created/updated"

# Check if the .bashrc file exists
if [ -f ~/.bashrc ]; then
	echo -e "${INFO} .bashrc file already exists"
else
	touch ~/.bashrc
	echo -e "${DONE} .bashrc file created"
fi

# Check if the alias snippet is already in the .bashrc file
cat ~/.bashrc | grep -q "\. ~/\.bash_aliases"
if [ $? -ne 0 ]; then
	echo ". ~/.bash_aliases" >>~/.bashrc
	echo -e "${DONE} Alias snippet appended to .bashrc file"
else
	echo -e "${INFO} Alias snippet already exists in .bashrc file"
fi
