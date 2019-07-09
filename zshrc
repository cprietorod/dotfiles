export TERM="xterm-256color"

export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="bira"


plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

##Carlos Custom##

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac


if [ "$machine" = "Linux" ]; then 
  echo "es linux"
  source /root/.linux_aliases
  source /root/.linux_functions
  enable_venv
elif [ "$machine" = "Mac" ]; then 
  echo "es mac"
  tmux || echo "tmux already run"
  source .mac_aliases
  source .mac_functions
  tmux info &> /dev/null || exit
fi

export PATH="/usr/local/opt/mysql-client/bin:$PATH"
