# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
#
# # Set name of the theme to load.
# # Look in ~/.oh-my-zsh/themes/
# # Optionally, if you set this to "random", it'll load a random theme each
# # time that oh-my-zsh is loaded.
ZSH_THEME="skaro"
export TERM="xterm-256color"
setopt RM_STAR_WAIT

#
# # Example aliases
# # alias zshconfig="mate ~/.zshrc"
# # alias ohmyzsh="mate ~/.oh-my-zsh"
#
# # Set to this to use case-sensitive completion
# # CASE_SENSITIVE="true"
#
# # Comment this out to disable bi-weekly auto-update checks
# # DISABLE_AUTO_UPDATE="true"
#
# # Uncomment to change how often before auto-updates occur? (in days)
# # export UPDATE_ZSH_DAYS=13
#
# # Uncomment following line if you want to disable colors in ls
# # DISABLE_LS_COLORS="true"
#
# # Uncomment following line if you want to disable autosetting terminal title.
# # DISABLE_AUTO_TITLE="true"
#
# # Uncomment following line if you want to disable command autocorrection
# # DISABLE_CORRECTION="true"
#
# # Uncomment following line if you want red dots to be displayed while waiting for completion
# # COMPLETION_WAITING_DOTS="true"
#
# # Uncomment following line if you want to disable marking untracked files under
# # VCS as dirty. This makes repository status check for large repositories much,
# # much faster.
# # DISABLE_UNTRACKED_FILES_DIRTY="true"
#
# # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# # Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git virtualenv tmux knife zsh-syntax-highlighting)
#
export PATH=~/opt/bin:$PATH
#export NODE_PATH=/usr/local/lib/node_modules
export PYTHONPATH=.
source $ZSH/oh-my-zsh.sh
export EDITOR=vim
export LC_ALL="en_US.UTF-8"
alias tmux="TERM=screen-256color-bce tmux"
alias mem='top -l1 | grep PhysMem'
alias killit='kill -9 %%'
alias frontierD='cd ~/projects/frontier'
alias webapiD='cd ~/projects/web-api'
alias toolsD='cd ~/projects/tools'
alias linter='~/projects/frontier/node_modules/.bin/eslint --fix $1'
alias sendIncidentsAlert='~/projects/tools/sendIncidents_file.sh'
alias mergeThatShit='git mergetool'
alias esfix='node_modules/.bin/eslint --fix $1'

# GIT Aliases
alias git='hub'
alias gstatus='git status'
alias gcommit='git commit'
alias glog='git log'
alias glg='git lg'

source ~/.nvm/nvm.sh
source /Users/eranamrani/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.bin/tmuxinator.zsh
bindkey '<shift>+§' '~' 

function set_pane_title() {
    printf '\033]2;%s\033\\' "$( echo $1 $2 $3 | sed -e 's/[[:space:]]*$//')"
}

source ~/.zshenv_private
source ~/.git-prompt.sh
