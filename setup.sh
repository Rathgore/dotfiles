#!/bin/bash

SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $SCRIPTPATH/zshrc $HOME/.zshrc
ln -s $SCRIPTPATH/vim/ $HOME/.vim
ln -s $SCRIPTPATH/vim/vimrc $HOME/.vimrc
ln -s $SCRIPTPATH/vim/gvimrc $HOME/.gvimrc
