#!/bin/bash

# TODO: Maybe change the way ls works to ls -a --color=auto, for now can use la, which is the default in bashrc

# Setting up vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./.vimrc ~
vim +PluginInstall +qall

# Setting up tmux
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
sed -i '/set -g mouse on/s/^#//g' .tmux.conf.local
