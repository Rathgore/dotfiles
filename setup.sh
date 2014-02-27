#!/bin/bash

SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $SCRIPTPATH/vim/ $HOME/.vim
ln -s $SCRIPTPATH/vim/vimrc $HOME/.vimrc
ln -s $SCRIPTPATH/vim/gvimrc $HOME/.gvimrc

git clone https://github.com/gmarik/vundle.git $SCRIPTPATH/vim/bundle/vundle

vim +BundleInstall +qall

cd $SCRIPTPATH/vim/bundle/YouCompleteMe
install.sh
