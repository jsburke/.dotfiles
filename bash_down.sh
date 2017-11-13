#!/bin/bash

rm -f ~/.bashrc
rm -f ~/.bash_alias
rm -f ~/.bash_fn
# not deleting bash_local since it will vary by machine

cp $BASH_SETUP/bashrc       ~/.bashrc
cp $BASH_SETUP/bash_alias   ~/.bash_alias
cp $BASH_SETUP/bash_fn      ~/.bash_fn
