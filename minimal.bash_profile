export PATH="/usr/local/bin:$PATH"

export PS1="[\W]\\$ "

# solarized ls colors
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

alias ls='ls -G'
alias la="ls -a"
alias ll="ls -l"
alias lc='clear; ls'

alias code='cd ~/Documents/Code'
alias cse='cd ~/Dropbox/CSE'
alias dotfiles='cd ~/Documents/dotfiles'
alias reload='source ~/.bash_profile'

alias c='clear'
alias cd='_() { cd $1; ls; }; _'
alias attu='ssh mkmathur@attu.cs.washington.edu'

export ATTUHOME=/homes/iws/mkmathur/
export EDITOR=vim
