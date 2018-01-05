#! /bin/bash

# Install Homebrew apps

apps=(
  iterm2
  alfred
  google-chrome
  dropbox
  1password
  fantastical
  rescuetime
  kindle
  dash
  spillo
)

brew cask install ${apps[@]}
