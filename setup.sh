#!/bin/bash

path=$PWD
ln -s $path/vimrc $HOME/.vimrc

mkdir -p ~/.vim 

ln -s $path/vim/plugin/ $HOME/.vim/plugin
ln -s $path/vim/after/ $HOME/.vim/after

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
