# Setup

- Install Git, cURL, Neovim
- Set up [Smart Caps Lock](https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e#gnulinux) (Linux) or [Karabiner Elements](https://karabiner-elements.pqrs.org/) (macOS)
- Install [https://github.com/nvm-sh/nvm](nvm) and latest LTS Node.js version
- Install [ripgrep](https://github.com/BurntSushi/ripgrep)
- Run `git clone git@github.com:pcaisse/dotfiles.git`
- Run `cd dotfiles && make`
- Install [vim-plug](https://github.com/junegunn/vim-plug)
- Run `:PlugInstall`
- Install [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt)
- Install `bash-completion`
- Add to `.bashrc`:
  ```
  if [ -f ~/.bashrc.local ]; then
      . ~/.bashrc.local
  fi
  ```
- Install tmux
- Clone tmux Plugin Manager: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Source tmux (via `tmux source ~/.tmux.conf` or `:source-file ~/.tmux.conf` from within tmux)
- Install tmux plugins from within tmux via `prefix + I`
- Install Coc plugins:
  ```
  :CocInstall coc-json coc-tsserver coc-eslint coc-prettier coc-metals coc-pyright coc-format-json coc-css coc-sql coc-rust-analyzer
  ```
- Install [terraform-ls](https://github.com/hashicorp/terraform-ls/blob/main/docs/installation.md)
