#!/bin/bash

if [ ! -L "$HOME/.vimrc" ]; then
  ln -s $(realpath config/vimrc.vim) $HOME/.vimrc
fi

mkdir -p $HOME/.vim/undo


