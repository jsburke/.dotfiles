#!/bin/bash

rm -f  $BASH_SETUP/bashrc
rm -f  $BASH_SETUP/bash_alias
rm -f  $BASH_SETUP/bash_fn

rm -f  $BASH_SETUP/ctags
rm -f  $BASH_SETUP/vimrc
rm -rf $BASH_SETUP/vim
# not deleting bash_local since it will vary by machine

cp ~/.bashrc       $BASH_SETUP/bashrc
cp ~/.bash_alias   $BASH_SETUP/bash_alias
cp ~/.bash_fn      $BASH_SETUP/bash_fn

cp ~/.ctags        $BASH_SETUP/ctags
cp ~/.vimrc        $BASH_SETUP/vimrc
cp ~/.vim          $BASH_SETUP/vim
