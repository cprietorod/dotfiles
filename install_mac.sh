echo "Brew installation"
which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
which docker || brew install docker 
which docker-compose || brew install docker-compose 
which docker-machine || brew install docker-machine 
brew list tmux || brew install tmux
brew list neovim || brew install neovim
brew list python || brew install python
brew list zsh || brew install zsh
gem install colorls
echo "spacevim installation"
ls ~/.SpaceVim || (curl -sLf https://spacevim.org/install.sh | bash)
echo "oh-my-zsh installation"
ls ~/.oh-my-zsh || sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
(test -L ~/.linux_aliases && echo ".linux_aliases exist") || (echo "coping linux_aliases" && ln -s "$PWD/linux_aliases" ~/.linux_aliases)
(test -L ~/.linux_functions && echo ".linux_functions exist") || (echo "coping linux_functions" && ln -s "$PWD/linux_functions" ~/.linux_functions)
(test -L ~/.mac_aliases && echo ".mac_aliases exist") || (echo "coping mac_aliases" && ln -s "$PWD/mac_aliases" ~/.mac_aliases)
(test -L ~/.mac_functions && echo ".mac_functions exist") || (echo "coping mac_functions" && ln -s "$PWD/mac_functions" ~/.mac_functions)
(test -L ~/.tmux.conf && echo ".tmux.conf exist") || (echo "coping tmux.conf" && ln -s "$PWD/tmux.conf" ~/.tmux.conf)
(test -L ~/.zshrc && echo ".zshrc exist") || (echo "coping zshrc" && ln -s "$PWD/zshrc" ~/.zshrc)
(test -L ~/.bashrc && echo ".bashrc exist") || (echo "coping bashrc" && ln -s "$PWD/bashrc" ~/.bashrc)
(test -L ~/.vsextentions && echo ".vsextentions exist") || (echo "coping vsextentions" && ln -s "$PWD/vsextentions" ~/.vsextentions)
(test -L ~/.SpaceVim.d && echo ".SpaceVim.d exist") || (echo "coping SpaceVim.d" && ln -s "$PWD/SpaceVim.d" ~/.SpaceVim.d)
(test -L ~/.config/blue.tmuxtheme && echo ".config/blue.tmuxtheme exist") || (echo "coping config/blue.tmuxtheme" && ln -s "$PWD/config/blue.tmuxtheme" ~/.config/blue.tmuxtheme)
(test -L ~/.config/nvim && echo ".config/nvim exist") || (echo "coping config/nvim" && ln -s "$PWD/config/nvim" ~/.config/nvim)
(test -L ~/.local/share/code-server/code-server && echo ".local/share/code-server/code-server exist") || (echo "coping local/share/code-server/code-server" && ln -s "$PWD/local/share/code-server/code-server" ~/.local/share/code-server/code-server)
(test -L ~/.local/share/nvim && echo ".local/share/nvim exist") || (echo "coping local/share/nvim" && ln -s "$PWD/local/share/nvim" ~/.local/share/nvim)
