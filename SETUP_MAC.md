# Remap Caps Lock to Ctrl

System Preferences => Modifier Keys

# Install Homebrew

https://brew.sh

# Install stuff with Homebrew

brew tap caskroom/cask
brew install git
brew install tmux

# Install stuff with Cask
brew cask install iterm2
brew cask install alfred

# Generate ssh key, and add it to Github account
# https://help.github.com/articles/connecting-to-github-with-ssh/

ssh-keygen -t rsa -b 4096 -C "mkmathur@cs.uw.edu"

# Clone my dotfiles repo

git clone https://github.com/mkmathur/dotfiles.git
