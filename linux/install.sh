#!/bin/bash
mkdir -p ~/bin
cp $(dirname $0)/aio ~/bin
echo 'export PATH=$PATH:~/bin' >>~/.bash_profile
source ~/.bash_profile
aio version


