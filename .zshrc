export ZSH=/Users/quatrix/.oh-my-zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

ZSH_THEME="robbyrussell"
#ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# 
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  bundler
  dotenv
  zsh-syntax-highlighting
  osx
  fzf-zsh
)

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
source /usr/local/bin/z.sh

alias activate='source .pyenv/bin/activate'
alias gdc='git diff --cached'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ssh='TERM=xterm ssh'
alias vi=vim
alias cat=bat
alias ping='prettyping --nolegend'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias ncdu='ncdu --color dark --exclude .git --exclude node_modules'
alias c='code-insiders'
alias :e='code-insiders'
alias :q='exit'
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code-insiders {})+abort'"
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/Users/quatrix/workspace/misc/jira-flow:/Applications/Postgres.app/Contents/Versions/latest/bin


export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/Applications/Julia-1.1.app/Contents/Resources/julia/bin:/$PATH"
