#!/usr/bin/env bash

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Python3
brew install python3

# Install git
brew install git

# Install golang
brew install go

# Copy Bash Profile over
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.bak
fi
cp config/.bash_profile ~/.bash_profile

# Copy Aliases and Functions
cp -r config/.aliases ~/.aliases
cp -r config/.functions ~/.functions