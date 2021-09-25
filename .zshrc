#zmodload zsh/zprof 


alias gdc='git diff --cached'
#alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl="tig"
alias ssh='TERM=xterm ssh'
alias vi=nvim
alias vim=nvim
alias cat=bat
alias ping='prettyping --nolegend'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias ncdu='ncdu --color dark --exclude .git --exclude node_modules'
alias nrepl='clj -R:nREPL -m nrepl.cmdline --middleware "[cider.nrepl/cider-middleware]"'

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
alias df='duf'

alias c='code-insiders'
alias :e='code-insiders'
alias :q='exit'

alias gerp='rg'
alias grep='rg'
alias ag='rg'

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code-insiders {})+abort'"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

export EDITOR='vim'
export NVM_DIR="$HOME/.nvm"
export PATH="/opt/homebrew/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/Applications/Julia-1.5.app/Contents/Resources/julia/bin:$HOME/miniconda3/bin/:$PATH"

export LEIN_USE_BOOTCLASSPATH=no

source "/Users/quatrix/Library/Application Support/edgedb/env"

#if [ -e "/Users/quatrix/Library/Caches" ] 
#then
#    export ZSH="/Users/quatrix/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
#else
#    export ZSH="${HOME}/.caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
#fi

export NVM_LAZY_LOAD=true

# don't copy hidden mac files
export COPYFILE_DISABLE=true

setopt PROMPT_SUBST
source ~/.zsh_plugins.sh
#

alias grep='rg'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#zprof

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/quatrix/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/quatrix/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/quatrix/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/quatrix/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true


export PATH="$HOME/.poetry/bin:$PATH"

alias ls='exa'
alias ll='exa -l'
