#! /bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old
files="aliases bash_profile bash_prompt exports extra functions gitconfig gitignore_global path tmux.conf vimrc"

echo "Creating $olddir for backup of any existing dotfiles"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
    echo "Creating symlink to $file in home directory."
    if [ -e "~/.$file" ]
    then
        mv ~/.$file $olddir
    fi
    ln -s $dir/$file ~/.$file
done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
