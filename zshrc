export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ZSH="/Users/dehimb/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="theunraveler"

alias theHarvester='cd /Users/dehimb/hack/tools/theHarvester; python theHarvester.py'

plugins=(git npm osx python)

source $ZSH/oh-my-zsh.sh

alias b='bat'
alias c='cat'
alias patator='python /Users/dehimb/hack/tools/patator/patator.py'
alias lg='lazygit'
alias ld='lazydocker'
alias tf='terraform'
alias k='kubectl'
alias vim='vi'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$HOME/.jenv/bin:$PATH"
# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"
#local bin
export PATH="/Users/dehimb/.local/bin:$PATH"

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# pet functions
function pet-select() {
  BUFFER=$(pet search --color --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N pet-select
stty -ixon
bindkey '^ ' pet-select

function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}

export PATH="/usr/local/opt/gettext/bin:$PATH"
unset PYTHONPATH

export PATH="/Users/dehimb/Library/Python/2.7/bin:$PATH"
export EDITOR=vi
