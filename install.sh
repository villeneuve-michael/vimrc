#!/bin/bash

# Credit to @gibfahn
# https://github.com/gibfahn/dot/blob/master/link

DATE=`date +%Y-%m-%d`

# Backup path
: ${BACKUP="$HOME/.vim-backup/$DATE/"}

printf "❯❯❯ Backup current files to $BACKUP (linking from path: $BACKUP)\n\n"

# mv ~/.vimrc $BACKUP
# mv ~/.vim $BACKUP
