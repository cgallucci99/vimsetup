#!/bin/bash
echo "installing vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "making colors directory"
mkdir ~/.vim/colors
echo "installing monokai theme"
curl https://raw.githubusercontent.com/crusoexia/vim-monokai/master/colors/monokai.vim > ~/.vim/colors/monokai.vim
echo "configuring .vimrc..."
printf "set nocompatible              \" be iMproved, required\n\
filetype off                  \" required\n\
\n\
\" set the runtime path to include Vundle and initialize\n\
set rtp+=~/.vim/bundle/Vundle.vim\n\
call vundle#begin()\n\
\" alternatively, pass a path where Vundle should install plugins\n\
\"call vundle#begin('~/some/path/here')\n\
\n\
\" let Vundle manage Vundle, required\n\
Plugin 'VundleVim/Vundle.vim'\n\
\n\
\" The following are examples of different formats supported.\n\
\" Keep Plugin commands between vundle#begin/end.\n\
\" plugin on GitHub repo\n\
\" Plugin 'tpope/vim-fugitive'\n\
\" plugin from http://vim-scripts.org/vim/scripts.html\n\
\" Plugin 'L9'\n\
\" Git plugin not hosted on GitHub\n\
\" Plugin 'git://git.wincent.com/command-t.git'\n\
\" git repos on your local machine (i.e. when working on your own plugin)\n\
\" Plugin 'file:///home/gmarik/path/to/plugin'\n\
\" The sparkup vim script is in a subdirectory of this repo called vim.\n\
\" Pass the path to set the runtimepath properly.\n\
\" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}\n\
\" Install L9 and avoid a Naming conflict if you've already installed a\n\
\" different version somewhere else.\n\
\" Plugin 'ascenator/L9', {'name': 'newL9'}\n\
\n\
Plugin 'tpope/vim-fugitive'\n\
Plugin 'Chiel92/vim-autoformat'\n\
Plugin 'preservim/nerdtree'\n\
Plugin 'mattn/emmet-vim'\n\
\" All of your Plugins must be added before the following line\n\
call vundle#end()            \" required\n\
filetype plugin indent on    \" required\n\
\" To ignore plugin indent changes, instead use:\n\
\"filetype plugin on\n\
\" Put your non-Plugin stuff after this line\n\
set number\n\
syntax enable\n\
colorscheme monokai\n\
set tabstop=2\n\
set shiftwidth=2\n\
set expandtab\n\
set cursorline\n\
map <C-n> :NERDTreeToggle<CR>\n\
imap ff <Esc>\n\
vmap ff <Esc>\n\
let g:user_emmet_leader_key=','\n\
set foldmethod=indent\n\
set title\n" > ~/.vimrc
echo "installing plugins"
vim +PluginInstall +qall
