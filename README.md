# Setup

* Install via `git clone https://github.com/pcaisse/dotfiles.git`
* Run `cd dotfiles && make`
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Run `:PlugInstall`
* Install [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt)
* Install `bash-completion`
* Install [ripgrep](https://github.com/BurntSushi/ripgrep)
* Add to `.bashrc`:
    ```
    if [ -f ~/.bashrc.local ]; then
        . ~/.bashrc.local
    fi
    ```
* Clone Tmux Plugin Manager: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
