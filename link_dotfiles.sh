#! /bin/bash

dir=~/dotfiles
olddir=~/old_dotfiles
files="aliases bash_profile bash_prompt exports extra functions gitconfig gitignore_global path tmux.conf vimrc"

# Create a directory to backup any existing backfiles. Overwrite if directory already exists.
rm -rf $olddir; mkdir -p $olddir

cd $dir

# Create a file for extra, machine-specific stuff to go
touch extra

# Create the symlinks
for file in $files; do
    echo "Creating symlink to $file in home directory."
    if [ -e ~/.$file ]
    then
        mv ~/.$file $olddir
    fi
    ln -s $dir/$file ~/.$file
done

