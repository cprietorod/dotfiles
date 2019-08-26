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
  source ~/.linux_aliases
  source ~/.linux_functions
  enable_venv
elif [ "$machine" = "Mac" ]; then 
  echo "es mac"
  source .mac_aliases
  source .mac_functions
fi


