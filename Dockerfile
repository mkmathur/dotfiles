FROM ubuntu:14.04

MAINTAINER Mallika Mathur <mkmathur@cs.uw.edu>

RUN apt-get update && apt-get -y install \
  build-essential \
  valgrind \
  vim \
  git \
  sudo \
  man \
  exuberant-ctags \
  curl \
  ruby ruby-dev ruby-bundler && \
  rm -rf /var/lib/apt/lists/*

COPY ubuntu.bash_aliases /root/.bash_aliases
COPY vimrc.vim /root/.vimrc
COPY vim /root/.vim

RUN cd /root/.vim/ && \
      ./install_plugins.rb
