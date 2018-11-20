#! /bin/bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Cask
brew tap caskroom/cask

# Install Homebrew binaries
binaries=(
  git
  tmux
  reattach-to-user-namespace
  mas
  httpie
)

brew install ${binaries[@]}

