#!/bin/bash

# install brew stuff
brew install python3
brew install tmux
brew install neovim
brew install zsh
brew install nvm
brew install ag
brew install grip
brew install jq
brew install zsh-syntax-highlighting

# nvm 
mkdir ~/.nvm

# install terminfo
tic tmux-256color.terminfo

# install z
curl https://raw.githubusercontent.com/rupa/z/master/z.sh -o /usr/local/bin/z.sh

# install nvim

# installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install antibody
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

for f in .zshrc .tmux.conf
do
    ln -sfv `pwd`/${f} ~
done

chsh -s /bin/zsh
