#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/quatrix/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# omg, java
brew uninstall --ignore-dependencies java
brew install java11

# install brew stuff
brew install tmux neovim zsh ag grip jq zsh-syntax-highlighting \
    bat antibody rg htop fzf fswatch tig postgres httpie ncdu \
    prettyping fd exa duf curlie xh gtop gping hyperfine leiningen \
    entr realpath 


brew install clojure/tools/clojure
brew install clojure-lsp/brew/clojure-lsp-native


# install terminfo
tic tmux-256color.terminfo

# install z
curl https://raw.githubusercontent.com/rupa/z/master/z.sh -o /usr/local/bin/z.sh

# installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install antibody
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin


for f in .zshrc .tmux.conf .zsh_plugins.txt
do
    ln -sfv `pwd`/${f} ~
done

antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
chsh -s /bin/zsh
