FROM ubuntu:14.04

MAINTAINER Mallika Mathur <mkmathur@cs.uw.edu>

RUN apt-get -y update
RUN apt-get -y install \
  build-essential \
  valgrind \
  vim \
  git \
  sudo

COPY ubuntu.bash_aliases /root/.bash_aliases
COPY vim/vimrc.vim /root/.vimrc
COPY vim/hw_header.txt /root/.vim/hw_header.txt

RUN git clone https://github.com/gmarik/Vundle.vim.git /root/.vim/bundle/Vundle.vim
