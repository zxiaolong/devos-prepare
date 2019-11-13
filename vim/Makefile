

all: vimrc vimplugs

vimplugs: molokai nerdtree taglist vimairline winmanager cscope ctrlp avim

ColorSamplerPack:
	@unzip ./plugs/ColorSamplerPack.zip -d ~/.vim/
	
csupport:
	@unzip ./plugs/c-support.zip -d ~/.vim/

avim:
	@cp -a ./plugs/a.vim ~/.vim/plugin/

ctrlp:
	@unzip ./plugs/ctrlp.zip -d ~/.vim/

esaygrep:
	@unzip ./plugs/EasyGrep.zip -d ~/.vim/

molokai:
	@mkdir -p ~/.vim/colors
	@cp -a ./plugs/molokai.vim ~/.vim/colors

nerdcommenter:
	@unzip ./plugs/nerdcommenter.zip -d ~/.vim/

nerdtree:
	@unzip ./plugs/NERD_tree.zip -d ~/.vim/

plug:
	@cp -a ./plugs/plug.vim ~/.vim/plug.vim

taglist:
	@unzip ./plugs/taglist_46.zip -d ~/.vim/

vimairline:
	@unzip ./plugs/vim-airline-0.11.zip
	@cp -a vim-airline-0.11/* ~/.vim/
	@rm vim-airline-0.11 -rf

winmanager:
	@unzip ./plugs/winmanager.zip -d ~/.vim/

cscope:
	@cp -a ./plugs/cscope_macros.vim ~/.vim/plugin/

vimrc:
	@cp -a vimrc ~/.vimrc
