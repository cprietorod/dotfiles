echo "spacevim installation"
ls ~/.SpaceVim || (curl -sLf https://spacevim.org/install.sh | bash)
echo "oh-my-zsh installation"
ls ~/.oh-my-zsh || sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
(test -L ~/.linux_aliases && echo ".linux_aliases exist") || (echo "coping linux_aliases" && ln -s "$PWD/linux_aliases" ~/.linux_aliases)
(test -L ~/.tmux.conf && echo ".tmux.conf exist") || (echo "coping tmux.conf" && ln -s "$PWD/tmux.conf" ~/.tmux.conf)
(test -L ~/.zshrc && echo ".zshrc exist") || (echo "coping zshrc" && ln -s "$PWD/zshrc" ~/.zshrc)
(test -L ~/.bashrc && echo ".bashrc exist") || (echo "coping bashrc" && ln -s "$PWD/bashrc" ~/.bashrc)
(test -L ~/.SpaceVim.d && echo ".SpaceVim.d exist") || (echo "coping SpaceVim.d" && ln -s "$PWD/SpaceVim.d" ~/.SpaceVim.d)
(test -L ~/.config/blue.tmuxtheme && echo ".config/blue.tmuxtheme exist") || (echo "coping config/blue.tmuxtheme" && ln -s "$PWD/config/blue.tmuxtheme" ~/.config/blue.tmuxtheme)
(test -L ~/.config/nvim && echo ".config/nvim exist") || (echo "coping config/nvim" && ln -s "$PWD/config/nvim" ~/.config/nvim)
(test -L ~/.config/tmux && echo ".config/tmux exist") || (echo "coping config/tmux" && ln -s "$PWD/config/tmux" ~/.config/tmux)
(test -L ~/.local/share/nvim && echo ".local/share/nvim exist") || (echo "coping local/share/nvim" && ln -s "$PWD/local/share/nvim" ~/.local/share/nvim)
