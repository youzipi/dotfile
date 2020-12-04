# safe rm
function mv2trash() {mv "$@" ~/.Trash}
alias rm="mv2trash"

# date
alias date-f="date '+%Y-%m-%d %H:%M:%S'"

# history format
export HISTTIMEFORMAT='%F %T - '

## shells
#快速查看本机IP地址
function myip() {
  myip="$(ifconfig | grep 'inet.*netmask.*broadcast')"
  lanip="$(echo $myip | awk '{print $2}')"
  publicip="$(echo $myip | awk '{print $6}')"
  echo '你的局域网IP是: '$lanip
  # echo '你的外网IP是: '$publicip
  echo '复制到剪贴板' $lanip | pbcopy
}

#
alias ll="ls -al"

# homebrew
alias bs="brew search"
alias bcs="brew cask search"
alias bi="brew install"
alias bci="brew cask install"

# k8s
alias k="kubectl"

# chinese 中文乱码
export LC_ALL=zh_CN.UTF-8
export LANG=zh_CN.UTF-8

# for mac sed
export LC_CTYPE=C
export LANG=C

# 严格顺序：
# zsh-syntax-highlighting
# zsh-history-substring-search
source ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${ZSH_CUSTOM}/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
