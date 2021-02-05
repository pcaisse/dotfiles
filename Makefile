link:
	mkdir -p ~/.config/nvim/
	ln -sfn $(CURDIR)/tmux.conf ~/.tmux.conf
	ln -sfn $(CURDIR)/vimrc ~/.vimrc
	ln -sfn $(CURDIR)/gitconfig ~/.gitconfig
	ln -sfn $(CURDIR)/gitignore ~/.gitignore
	ln -sfn $(CURDIR)/bashrc.local ~/.bashrc.local
	ln -sfn $(CURDIR)/init.vim ~/.config/nvim/init.vim
	ln -sfn $(CURDIR)/coc-settings.json ~/.vim/coc-settings.json
	ln -sfn $(CURDIR)/coc-settings.json ~/.config/nvim/coc-settings.json
	ln -sfn $(CURDIR)/xprofile ~/.xprofile
