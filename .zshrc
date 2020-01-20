#zmodload zsh/zprof 


alias activate='source .pyenv/bin/activate'
alias gdc='git diff --cached'
#alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl="tig"
alias ssh='TERM=xterm ssh'
alias vi=vim
alias cat=bat
alias ping='prettyping --nolegend'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias ncdu='ncdu --color dark --exclude .git --exclude node_modules'

# git aliases
alias gc="git commit -v"
alias gc!='git commit -v --amend'
alias ga="git add"
alias gst="git status"
alias gco="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias ggpush='git push origin $(current_branch)'
alias ggpull='git pull origin $(current_branch)'

alias c='code-insiders'
alias :e='code-insiders'
alias :q='exit'

alias gerp='rg'
alias grep='rg'
alias ag='rg'

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code-insiders {})+abort'"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/Users/quatrix/workspace/misc/jira-flow:/Applications/Postgres.app/Contents/Versions/latest/bin:/Applications/Xcode.app/Contents/Developer/usr/bin/



export EDITOR='vim'
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/Applications/Julia-1.3.app/Contents/Resources/julia/bin:$HOME/miniconda3/bin/:$PATH"
export ZSH="/Users/quatrix/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
export NVM_LAZY_LOAD=true


# kaldi

export PATH=$PATH:/kaldi/src/bin:/kaldi/src/chainbin:/kaldi/src/featbin:/kaldi/src/fgmmbin:/kaldi/src/fstbin:/kaldi/src/gmmbin:/kaldi/src/ivectorbin:/kaldi/src/kwsbin:/kaldi/src/latbin:/kaldi/src/lmbin:/kaldi/src/nnet2bin:/kaldi/src/nnet3bin:/kaldi/src/nnetbin:/kaldi/src/online2bin:/kaldi/src/onlinebin:/kaldi/src/sgmm2bin:/kaldi/src/sgmmbin:/kaldi/src/tfrnnlmbin:/kaldi/tools/openfst/bin:/kaldi/tools/irstlm/bin:/kaldi/tools/openfst-1.6.7/bin/


# don't copy hidden mac files
export COPYFILE_DISABLE=true

setopt PROMPT_SUBST
source ~/.zsh_plugins.sh

alias grep='rg'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#zprof

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
#[[ -f /Users/quatrix/.nvm/versions/node/v8.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/quatrix/.nvm/versions/node/v8.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
#[[ -f /Users/quatrix/.nvm/versions/node/v8.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/quatrix/.nvm/versions/node/v8.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
#[[ -f /Users/quatrix/.nvm/versions/node/v8.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/quatrix/.nvm/versions/node/v8.15.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
