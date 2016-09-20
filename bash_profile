# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,sensible,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

source ~/.bashrc
source ~/.clever_bash
source /usr/local/bin/virtualenvwrapper.sh
export GOPATH=~/
export PATH=$PATH:$GOPATH/bin
