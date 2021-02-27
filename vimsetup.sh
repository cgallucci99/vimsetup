#!/bin/bash
echo "installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "making colors directory"
mkdir ~/.vim/colors
echo "installing monokai theme"
curl https://raw.githubusercontent.com/crusoexia/vim-monokai/master/colors/monokai.vim > ~/.vim/colors/monokai.vim
echo "configuring .vimrc..."
wget https://raw.githubusercontent.com/cgallucci99/vimsetup/master/.vimrc
echo "installing plugins"
vim +PlugInstall +qall
