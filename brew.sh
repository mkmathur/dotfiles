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
)

brew install ${binaries[@]}

# Install Homebrew apps

apps=(
  iterm2
  alfred
  google-chrome
  dropbox
  1password
  fantastical
  omnifocus
  slack
  rescuetime
  kindle
  sublime-text
  dash
  popclip
)

brew cask install ${apps[@]}
