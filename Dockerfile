FROM ubuntu:20.04

ENV XDG_CACHE_HOME /tmp/.cache
ENV PYTEST_ADDOPTS="-o cache_dir=/tmp"
ENV PYLINTHOME=/tmp

RUN apt-get update && \
  apt-get install -y fzf git vim && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
