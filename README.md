Installation
------------

Clone the repo and update submodules:

    git clone https://github.com/moolicious/dotfiles.git
    cd dotfiles
    git submodule update --init

To use my zshrc file, symlink it from the repo path to your home
directory:

    ln -s dotfiles/zshrc ~/.zshrc

If you want to override or define your own settings for ZSH, you can put
them in .zshrc.local and it will pick them up.

To use my Vim configuration setup the following symlinks:

    ln -s dotfiles/vim ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Because Git rules, you can make your own changes to these files in a local
branch and then rebase on top of my changes.
