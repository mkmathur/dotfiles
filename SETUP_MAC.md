# Remap Caps Lock to Ctrl

System Preferences => Modifier Keys

# Get dotfiles repo with curl

# Install Homebrew, brew binaries, and cask binaries

./brew.sh

# Set iTerm color scheme
Preferences => Profiles => Colors => Color Presets

# Generate ssh key, and add it to Github account
# https://help.github.com/articles/connecting-to-github-with-ssh/

ssh-keygen -t rsa -b 4096 -C "mkmathur@cs.uw.edu"

# Clone my dotfiles repo

git clone git@github.com:mkmathur/dotfiles.git

# Run script to make soft links to dotfiles
./link_dotfiles.sh

# Source bash_profile
source ~/.bash_profile

# Install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Install App Store apps with mas

Doesn't work in tmux.

mas search <app-name>
mas install <app-id>

Quiver
Mindful Mynah

# Set up Dropbox

Selective Sync


