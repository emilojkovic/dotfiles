#!/usr/bin/env bash

# Install Xcode Command Line Tools.
xcode-select --install

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install stuff with brew
brew install git
brew install python3

# Install Haskell Stack
curl -sSL https://get.haskellstack.org/ | sh