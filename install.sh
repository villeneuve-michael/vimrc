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

printf "❯❯❯ Installing plugins, this can take a few minutes because of YouCompleteMe\n\n"
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
