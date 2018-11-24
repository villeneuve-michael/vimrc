#!/bin/bash

# Credit to @gibfahn
# https://github.com/gibfahn/dot/blob/master/link

DATE=`date +%s`

# Backup dir
BACKUP_DIR="$HOME/.vim-backup/$DATE/"
BACKUP_FILE="$DATE.tar"

printf "❯❯❯ Backup current files to $BACKUP_DIR\n\n"

# If backup directory doesn't exists
if [ ! -d "$BACKUP_DIR" ]; then
	printf "❯❯❯ Creating backup dir $BACKUP_DIR\n\n"
	mkdir -p $BACKUP_DIR
fi
if [ ! -d "~/.vim" ]; then
	mkdir -p ~/.vim/bundle
	mkdir -p ~/.vim/ftplugin
	mkdir -p ~/.vim/mysnippets
fi

# Backup current files
cp ~/.vimrc $BACKUP_DIR
cp -r ~/.vim $BACKUP_DIR

printf "❯❯❯ Copying files...\n\n"
cp ./.vimrc ~/.vimrc
cp ./.vim/plugins.vim ~/.vim/plugins.vim
cp ./.vim/mysnippets/* ~/.vim/mysnippets/
cp ./.vim/ftplugin/* ~/.vim/ftplugin/


if [ ! -d ~/.vim/bundle/YouCompleteMe ]; then
    printf "❯❯❯ Make sure we have what's needed for YouCompleteMe\n\n"
    printf "❯❯❯ sudo apt install build-essential cmake python3-dev\n\n"
    sudo apt install build-essential cmake python3-dev

    printf "❯❯❯ Installing YouCompleteMe, this will take a while...\n\n"
    git clone git@github.com:Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
    cd ~/.vim/bundle/YouCompleteMe && python3 install.py --clang-completer

    printf "❯❯❯ Installing Vundle\n\n"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    printf "❯❯❯ Installing Vundle\n\n"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
printf "❯❯❯ Installing all plugins\n\n"
vim +PluginInstall +qall
printf "❯❯❯ Finished! If you enjoy my config leave me a star!\n\n"
