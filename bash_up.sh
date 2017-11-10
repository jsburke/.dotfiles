#!/bin/bash

rm -f bashrc
rm -f bash_alias
rm -f bash_fn
# not deleting bash_local since it will vary by machine

cp ~/.bashrc bashrc
cp ~/.bash_alias bash_alias
cp ~/.bash_fn bash_fn
