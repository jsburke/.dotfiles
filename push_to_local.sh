#!/bin/bash

rm -f  ~/.bashrc
rm -f  ~/.bash_alias
rm -f  ~/.bash_fn

rm -f  ~/.ctags
rm -f  ~/.vimrc
rm -rf ~/.vim
# not deleting bash_local since it will vary by machine

cp bashrc       ~/.bashrc
cp bash_alias   ~/.bash_alias
cp bash_fn      ~/.bash_fn

cp ctags        ~/.ctags
cp vimrc        ~/.vimrc
cp -r vim       ~/.vim

# open Pandora's box
source ~/.bashrc
