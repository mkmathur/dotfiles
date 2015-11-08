FROM ubuntu:14.04

MAINTAINER Mallika Mathur <mkmathur@cs.uw.edu>

RUN apt-get update && apt-get -y install \
  build-essential \
  valgrind \
  vim \
  git \
  sudo \
  exuberant-ctags

COPY ubuntu.bash_aliases /root/.bash_aliases
COPY vimrc.vim /root/.vimrc
COPY vim /root/.vim

RUN git clone https://github.com/gmarik/Vundle.vim.git /root/.vim/bundle/Vundle.vim
