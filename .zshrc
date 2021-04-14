# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/Users/quintenbuis/.oh-my-zsh"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export CGR_BIN_DIR=$HOME/bin
export PATH=/Users/Shared/DBngin/mysql/5.7.23/bin:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

SPACESHIP_TIME_SHOW=true
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  php
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  exit_code     # Exit code section
  char          # Prompt character
)

# export MANPATH="/usr/local/man:$MANPATH"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U promptinit; promptinit
prompt spaceship

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bitcomplete bit

source ~/.aliases
source ~/.deployer_completion
