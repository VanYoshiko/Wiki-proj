export PATH="/private/var/mobile/Library/Mobile Documents/com~apple~CloudDocs/sharedlocal/home/.local/bin:$PATH"
export PS1='\[\e[1;30;47m\][\W]\[\e[0m\]\[\e[1;31m\]\$\[\e[0m\] '

# ===== COLOR CODES =====
# Basic colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Alias{{{
alias INFO='echo "${YELLOW}[INFO]${RS}"'
alias DEBUG='echo "${BLUE}[DEBUG]${RS}"'
alias ERROR='echo "${RED}[ERROR]${RS}"'
alias SUCCESS='echo "${GREEN}[SUCCESS]${RS}"'
alias jupyter='ib https://bug-free-broccoli-g456pwrg4rx53vxg7.github.dev/?editor=jupyter'
alias vscode='ib https://bug-free-broccoli-g456pwrg4rx53vxg7.github.dev/'
alias bk='bookmark'
alias sm='showmarks'
alias j='jump'
alias tree='tree --dirsfirst -F'
alias h='history'
alias ..="cd .."
alias mkdir="mkdir -pv"
alias ll="ls -lahi"
alias lt="ls -tlahi"
alias la="ls -A"
alias cp='cp -v'
alias rm='rm -v'
alias mv='mv -v'
alias vs='vim -S'

#{{{ git
alias git='lg2'
alias ga='lg2 add'
alias gaa='lg2 add --all'
alias gc='lg2 commit -m'
alias gl='lg2 log --oneline'
alias gb='lg2 checkout -b'
alias gd='lg2 diff'
alias gs='lg2 status'
#}}}#}}}

