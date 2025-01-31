export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ZSH="/Users/dnezhydenko/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="theunraveler"

plugins=(git npm macos python kubectl)

source $ZSH/oh-my-zsh.sh

alias b='bat'
alias c='cat'
alias lg='lazygit'
alias ld='lazydocker'
alias tf='terraform'
alias k='kubecolor'
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

function ksn() {
  if [ -z "$1" ]; then
    echo "Namespace not specified"
    return 1
  fi

  if ! kubectl get namespace "$1" &>/dev/null; then
    echo "Namespace '$1' not found"
    return 1
  fi

  kubectl config set-context --current --namespace="$1"
  echo "Namespace set to '$1'"
}

compdef kubecolor=kubectl

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#local bin
export PATH="/Users/dnezhydenko/.local/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
source <(kubecolor completion zsh)
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

export EDITOR=vim

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
export HSTR_TIOCSTI=y
export HSTR_CONFIG=raw-history-view
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
