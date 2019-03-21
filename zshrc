export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/carlosprieto/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME=""powerlevel9k/powerlevel9k""

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
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


##Carlos Custom##

export PATH=$PWD/:$PATH:$HOME/Desarrollo/scripts:$HOME/Desarrollo/google-cloud-sdk/platform/google_appengine
export GCLOUD_COMMAND='docker run --rm -ti  -v ~/.local/share/nvim:/root/.local/share/nvim:cached -v ~/.ssh:/root/.ssh:cached -v ~/.config:/root/.config:cached -v ~/.kube:/root/.kube:cached -v $PWD:/var/gcloud:cached -w /var/gcloud cprietorod/my-cloud-sdk-docker:latest'
alias vscode=code
alias whatismyip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias mysqld_start="docker run --name mysql1 --rm -p 3306:3306 -v $HOME:$HOME -v $HOME/Desarrollo/db/mysql-conf:/etc/mysql/mysql.conf.d -v $HOME/Desarrollo/db/mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Ove52SWE -d mysql:5.7"
alias mysqld_stop="docker stop mysql1"
alias mysql="docker exec -it mysql1  mysql"
alias postgresd_start="docker run --name postgres1 --rm  -p 5432:5432 -v $HOME/Desarrollo/db/postgres-data:/var/lib/postgresql/data  -e POSTGRES_PASSWORD=Ove52SWE -d postgres:9.4"
alias postgresd_stop="docker stop postgres1"
alias psql="docker exec -it postgres1 psql"
alias pgadmin4='docker run -p 8080:80 -e "PGADMIN_DEFAULT_EMAIL=user@domain.com" -e "PGADMIN_DEFAULT_PASSWORD=SuperSecret" -d dpage/pgadmin4'
alias gcloud="$GCLOUD_COMMAND gcloud"
alias gsutil="$GCLOUD_COMMAND gsutil"
alias kubectl="$GCLOUD_COMMAND kubectl"
alias python3="$GCLOUD_COMMAND python3"
alias pip3="$GCLOUD_COMMAND pip3"
#alias python="$GCLOUD_COMMAND python2"
#alias pip="$GCLOUD_COMMAND pip2"
alias make="$GCLOUD_COMMAND make"
alias dev_bash="$GCLOUD_COMMAND bash"
alias dev_nvim="$GCLOUD_COMMAND nvim"


#source ~/Desarrollo/google-cloud-sdk/completion.zsh.inc

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/carlosprieto/Desarrollo/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/carlosprieto/Desarrollo/google-cloud-sdk/path.zsh.inc'; fi
#if [ -f '/Users/carlosprieto/Desarrollo/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/carlosprieto/Desarrollo/google-cloud-sdk/completion.zsh.inc'; fi
