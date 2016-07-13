# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="steeef"
#ZSH_THEME="agnoster"
ZSH_THEME="drichard"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
#export UPDATE_ZSH_DAYS=99

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git)
#plugins=(drichard plenv rbenv  mvn autojump git python rails textmate ruby ssh-agent vundle brew osx history-substring-search zsh-syntax-highlighting)
plugins=(drichard glide docker vagrant autojump git python ssh-agent vundle brew osx history-substring-search zsh-syntax-highlighting golang postgres)

source $ZSH/oh-my-zsh.sh

#. ~/.bash_aliases

# Turn on autocorrect 
#setopt correct
#setopt correctall
#setopt nonomatch
#
# To allow for regex history search
fpath=($HOME/.zsh/functions $fpath)
autoload -U history-incremental-multi-search

# make new widgets from function
zle -N history-incremental-multi-search-backward history-incremental-multi-search
zle -N history-incremental-multi-search-forward history-incremental-multi-search

# bind the widgets to keys
bindkey '^Xr' history-incremental-multi-search-backward
bindkey '^Xs' history-incremental-multi-search-forward

unsetopt correct_all

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
