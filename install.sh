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

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim
mkdir -p ~/.config/nvim/bundle

ln -sfv `pwd`/nvim/init.vim ~/.config/nvim/init.vim

# installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

for f in .zshrc .tmux.conf
do
    ln -sfv `pwd`/${f} ~
done

chsh -s /bin/zsh
