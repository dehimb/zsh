export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ZSH="/Users/dnezhydenko/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="theunraveler"

plugins=(git npm macos python)

source $ZSH/oh-my-zsh.sh

alias b='bat'
alias c='cat'
alias lg='lazygit'
alias ld='lazydocker'
alias tf='terraform'
alias k='kubectl'
alias r="ranger"
alias pip="pip3"
alias python="python3"
alias p="python"
alias sed="gsed"
alias asp="/Applications/Aseprite.app/Contents/MacOS/aseprite"
alias vi="lvim"
alias v=vi
alias rg="rg --hidden"
alias gp="gopls"
alias dp="kubectl run tmp-shell --rm -i --tty --image nicolaka/netshoot"
alias mt="mimirtool"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#local bin
export PATH="/Users/dnezhydenko/.local/bin:$PATH"

# Go development
export GOPATH="${HOME}/.go"
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

export EDITOR=vi

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
export HSTR_TIOCSTI=y

eval "$(/opt/homebrew/bin/brew shellenv)"
