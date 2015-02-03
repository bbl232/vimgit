default: all

all: install

install: .vimrc
	cp -r .vim ~/.vim
	cp .vimrc ~/.vimrc
	cp .viminfo ~/.viminfo
