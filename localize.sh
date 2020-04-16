#!/bin/bash

# script to push updates from git to local machine

# disable history
set +o history

rm -f  ~/.bashrc
rm -f  ~/.alias
rm -f  ~/.functions

rm -f  ~/.ctags
rm -f  ~/.vimrc
rm -rf ~/.vim

# not deleting bash_local since it will vary by machine
cp    .bashrc    ~/.bashrc
cp    .alias     ~/.alias
cp    .functions ~/.functions

cp    .ctags     ~/.ctags
cp    .vimrc     ~/.vimrc
cp -r .vim       ~/.vim
