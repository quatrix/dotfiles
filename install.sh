#!/bin/bash

for f in .zshrc .vimrc .tmux.conf
do
    ln -sfv `pwd`/${f} ~
done
