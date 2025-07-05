export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	git 
	kubectl 
	kubectx 
	docker 
	docker-compose 
	asdf
	zsh-syntax-highlighting
	fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Zoxide
eval "$(zoxide init zsh)"

source ~/.aliases

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/home/quinten/google-cloud-sdk/path.bash.inc' ]; then . '/home/quinten/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/quinten/google-cloud-sdk/completion.bash.inc' ]; then . '/home/quinten/google-cloud-sdk/completion.bash.inc'; fi

# Env Variables
export EDITOR="vim"
export CDPATH=".:~/code/projects"
export KUBECONFIG=$HOME/.kube/config
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export TERM=xterm-256color

# Asdf
export ASDF_DATA_DIR="/home/quinten/.asdf"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

source <(kubectl completion zsh)
if [ -f "/home/quinten/.config/fabric/fabric-bootstrap.inc" ]; then . "/home/quinten/.config/fabric/fabric-bootstrap.inc"; fi

# bat
export BAT_THEME="OneHalfDark"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--preview 'batcat -n --color=always {}'"

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:$HOME/dotfiles/scripts/bin"
