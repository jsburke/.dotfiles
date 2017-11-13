#!/bin/bash

rm -f $BASH_SETUP/bashrc
rm -f $BASH_SETUP/bash_alias
rm -f $BASH_SETUP/bash_fn
# not deleting bash_local since it will vary by machine

cp ~/.bashrc       $BASH_SETUP/bashrc
cp ~/.bash_alias   $BASH_SETUP/bash_alias
cp ~/.bash_fn      $BASH_SETUP/bash_fn
