help:
	@echo 'make install:       Mac software: basic install'
	@echo 'make update:        updates brew, conda and python packages'
	@echo 'make conda:         installs miniconda with python3, 64 bits'
	@echo 'make software:      installs fish, vim, tmux ...'

install:
	./brew.sh
	./pip.sh
	./conda.sh
	
kitty:
	cd $(HOME)/Downloads
	wget https://github.com/kovidgoyal/kitty/releases/download/v0.14.6/kitty-0.14.6.dmg
	open kitty-0.14.6.dmg

update:
	brew update
	brew upgrade
	brew cleanup
	brew cleanup -s
	brew cask cleanup
	brew doctor
	brew missing
	conda update conda -y
	conda update --all -y
