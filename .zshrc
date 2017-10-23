# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded
PROMPT_DIR="fishy"
ZSH_THEME="agnoster_mine"

DEFAULT_USER="jkarsrud"
HOMEBREW_NO_ANALYTICS=1

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U zmv

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node npm ruby rbenv osx bundler redis-cli brew brew-cask git-flow sublime nvm mix)

source $ZSH/oh-my-zsh.sh
source $HOME/.commonrc
source $HOME/.k

function diff {
    colordiff -u "$@" | less -RF
}

# Set larger limit of open files in OS X
ulimit -n 10000

# Customize to your needs...
brewrubypath=$(brew --prefix ruby)/bin
export PATH=$brewrubypath:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin

eval "$(rbenv init -)"

export DOCKER_HOST=tcp://127.0.0.1:2376
export DOCKER_CERT_PATH=/Users/jkarsrud/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

PSQL_PATH=/Applications/Postgres.app/Contents/Versions/9.5/bin

export PATH=$PATH:$PSQL_PATH

# added by travis gem
[ -f /Users/jkarsrud/.travis/travis.sh ] && source /Users/jkarsrud/.travis/travis.sh

export NVM_DIR="/Users/jkarsrud/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.yarn/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
