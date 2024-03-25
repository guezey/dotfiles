#!/bin/bash

# Create a .bash_aliases file
cp bash_aliases ~/.bash_aliases
echo ".bash_aliases file created/updated"

if [ ! -f ~/.bashrc ]; then
    touch ~/.bashrc
    echo ".bashrc file created"
fi

# Check if the alias snippet is already in the .bashrc file
cat ~/.bashrc | grep -q "\. ~/\.bash_aliases"
if [ $? -ne 0 ]; then
  # Add the alias snippet to the .bashrc file
  echo ". ~/.bash_aliases" >> $bashrc_file
  echo "Alias snippet added to .bashrc file"
fi

