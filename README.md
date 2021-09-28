# Setup

- Install via `git clone https://github.com/pcaisse/dotfiles.git`
- Install `nvim`
- Run `cd dotfiles && make`
- Install [vim-plug](https://github.com/junegunn/vim-plug)
- Run `:PlugInstall`
- Install [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt)
- Install `bash-completion`
- Install [ag](https://github.com/ggreer/the_silver_searcher)
- Add to `.bashrc`:
  ```
  if [ -f ~/.bashrc.local ]; then
      . ~/.bashrc.local
  fi
  ```
- Clone Tmux Plugin Manager: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Install [metals](https://scalameta.org/metals/docs/editors/vim.html)
- Install Coc plugins:
  ```
  :CocInstall coc-json coc-tsserver coc-eslint coc-prettier coc-metals coc-pyright coc-format-json
  coc-css
  ```
- Set up [Smart Caps Lock](https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e#gnulinux)
- Install PureScript tooling: `npm i -g purescript-language-server purty`
