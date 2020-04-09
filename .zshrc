# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/lopun/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=robbyrussell

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  fasd
  tmux
  tmuxinator
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias myvim="vim ~/.vim_runtime/my_configs.vim"
alias cl="clear"
alias cll="clear && l"
alias ctags="`brew --prefix`/bin/ctags"
alias mux="tmuxinator"
alias gs="git status"
alias gp="git push"
alias gl="git pull"
alias gpf="git push -f"
alias gc="git checkout"
alias gcb="git checkout -b"
alias dev="cd ~/Development"
alias interv="cd ~/Development/interview_preparation"
alias riiid="cd ~/Development/Riiid"
alias ocr="cd ~/Development/Riiid/bootcamp/jh.ko"
alias sab="cd ~/Development/Riiid/bootcamp/jh.ko/sentence_analysis_backoffice"
alias docker-rma="docker rm -f $(docker ps -a -q)"
alias sls="serverless"
alias k="kubectl"

# aws sam path configuration
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# aws sam path configuration
export PATH="${HOME}/Library/Python/2.7/bin:$PATH"

# rbenv configuration
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Personal Autoload
# autoload -U promptinit; promptinit
# prompt pure

# TheFuck initialization
eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/lopun/.nvm/versions/node/v11.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/lopun/.nvm/versions/node/v11.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/lopun/.nvm/versions/node/v11.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/lopun/.nvm/versions/node/v11.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
source /usr/local/opt/autoenv/activate.sh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
export MAILGUN_API_KEY="key-4ff46f2d503920e72f165514491739ae"
export MAILGUN_DOMAIN="lis.riiid.co"

export PATH="/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH"
export PATH="/Users/lopun/pbandk-0.8.0/protoc-gen-kotlin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export KUBECONFIG=$KUBECONFIG:~/.kube/config

# app-server
# -DCONF_CONTENT_SERVER_PORT=6565 -DCONF_RDB_HOST=santa-content-dev.csuygapvvxfi.ap-northeast-1.rds.amazonaws.com -DCONF_RDB_PORT=5432 -DCONF_RDB_DATABASE=santainsidedev -DCONF_RDB_USER=riiid -DCONF_RDB_PASSWORD=gsz6M934pCitak3QkFEC -DCONF_SM_SECRET_NAME=santa/accessTokenKey -DCONF_S3_BUCKET=santa-cms-statics -DCONF_S3_KEY_PREFIX="" -DCONF_CONTENT_SERVER_HOST=santa-content.riiid.io

# export CONF_CONTENT_SERVER_HOST="content.dev.riiid.cloud"
# export CONF_CONTENT_SERVER_PORT="31400"
# export CONF_RDB_HOST="sat-db.dev.riiid.cloud"
# export CONF_RDB_PORT="31400"
# export CONF_RDB_DATABASE="sat"
# export CONF_RDB_USER="root"
# export CONF_RDB_PASSWORD="santainside"
# export CONF_S3_BUCKET="sat-dev"
# export CONF_S3_KEY_PREFIX="app/"
# export CONF_DOMAIN="sat"
# export CONF_ENV="develop"
