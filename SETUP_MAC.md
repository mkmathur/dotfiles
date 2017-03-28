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

# Set iTerm color scheme
Preferences => Profiles => Colors => Color Presets

# Generate ssh key, and add it to Github account
# https://help.github.com/articles/connecting-to-github-with-ssh/

ssh-keygen -t rsa -b 4096 -C "mkmathur@cs.uw.edu"

# Clone my dotfiles repo

git clone git@github.com:mkmathur/dotfiles.git

# Run script to make soft links to dotfiles
./link_dotfiles.sh

# Install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

