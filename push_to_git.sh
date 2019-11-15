#!/bin/bash

# quick script to update local changes to git repo

# disable history
set +o history

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -f  $HERE/bashrc
rm -f  $HERE/.alias
rm -f  $HERE/.functions

rm -f  $HERE/.ctags
rm -f  $HERE/.vimrc
rm -rf $HERE/.vim

# not deleting bash_local since it will vary by machine
cp ~/.bashrc    $HERE/bashrc
cp ~/.alias     $HERE/.alias
cp ~/.functions $HERE/.functions

cp ~/.ctags     $HERE/.ctags
cp ~/.vimrc     $HERE/.vimrc
cp -r ~/.vim    $HERE/.vim
