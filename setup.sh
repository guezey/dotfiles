#!/bin/bash

# Create a .bash_aliases file
cp bash_aliases ~/.bash_aliases
echo ".bash_aliases file created"

if [ ! -f ~/.bashrc ]; then
    touch ~/.bashrc
    echo ".bashrc file created"
fi

bashrc_file="$HOME/.bashrc"
alias_snippet='if [ -f ~/.bash_aliases ]; then\n    . ~/.bash_aliases\nfi'

echo "$alias_snippet" >> $bashrc_file 
echo "Aliases added to .bashrc file"

