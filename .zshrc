# go
export GOROOT=/usr/local/go
export GOPATH=/Users/youzipi/projects/go-work
export PATH="$GOROOT:$PATH"
# react
export REACT_EDITOR=atom
# android sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

# chinese 中文乱码
export LC_ALL=zh_CN.UTF-8  
export LANG=zh_CN.UTF-8


# for mac sed 
export LC_CTYPE=C 
export LANG=C


# Path to your oh-my-zsh installation.
export ZSH=/Users/youzipi/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fwalch"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vitualenv autojump zsh-autosuggestions osx zshmarks)

# zshmarks alias
alias jj="jump"

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# pyenv

eval "$(pyenv init -)"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"

alias rna="react-native run-android"
alias rni="react-native run-ios"

# brew
alias bs="brew search"
alias bcs="brew cask search"
alias bi="brew install"
alias bci="brew cask install"

# basic
function mv2trash () {mv "$@" ~/.Trash}
alias rm="mv2trash"
alias date-f="date '+%Y-%m-%d %H:%M:%S'"
export NVM_DIR="/Users/youzipi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# history timestamp
export HISTTIMEFORMAT='%F %T - '

## shells
#快速查看本机IP地址
function myip(){
myip="$(ifconfig | grep 'inet.*netmask.*broadcast')"
lanip="$(echo $myip | awk '{print $2}')"
publicip="$(echo $myip | awk '{print $6}')"
echo '你的局域网IP是: '$lanip
echo '你的外网IP是: '$publicip
echo '复制到剪贴板' $lanip | pbcopy
}
# flow watch
function flow-watch () {
    flow status;
    fswatch -e "/\." -o . | xargs -n1 -I{} flow status;
}
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
