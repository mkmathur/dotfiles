alias c='clear'
alias ls='clear; ls'
alias cd='_() { cd $1; ls; }; _'

alias uwcc='gcc -Wall -g -std=c11 -o'
alias ccpp='g++ -Wall -g -std=c++11 -o'
alias valgrind='valgrind --leak-check=full '

alias viminstall='vim +BundleInstall +qall'
alias reload='. ~/.bashrc'
