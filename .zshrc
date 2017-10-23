export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/quatrix/Library/Android/sdk/platform-tools:/Users/quatrix/workspace/misc/jira-flow"

source /usr/local/bin/z.sh
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle nvm
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

alias activate='source .pyenv/bin/activate'
alias gdc='git diff --cached'
alias vi=nvim
alias vim=nvim
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
