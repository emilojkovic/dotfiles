#!/usr/bin/env bash

# Install Xcode Command Line Tools.
xcode-select --install

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install stuff with brew
brew install git
brew install python3
brew install tmux

# Install Haskell Stack
# curl -sSL https://get.haskellstack.org/ | sh

# Copy files from this repo to local machine
sh copy_dotfiles_to_local.sh
