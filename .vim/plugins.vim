filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin Manager
Plugin 'VundleVim/Vundle.vim'

" Well, vinegar.vim enhances netrw, partially in an attempt to mitigate the need for more disruptive "project drawer" style plugins.
Plugin 'tpope/vim-vinegar'

" UltiSnips is the ultimate solution for snippets in Vim.
Plugin 'SirVer/ultisnips'

" This repository contains snippets files for various programming languages.
Plugin 'honza/vim-snippets'

" Layout specific pluign
Plugin 'scrooloose/nerdtree'

" Awesome status bar
Plugin 'vim-airline/vim-airline'

" Access the full library of Airline themes
Plugin 'vim-airline/vim-airline-themes'

" Color Schemes
Plugin 'haishanh/night-owl.vim'

" Ease git workflow
Plugin 'tpope/vim-fugitive'

" From a very single vim buffer, you can perform main git operations in few key press.
Plugin 'jreybert/vimagit'

" Enhances the git workflow
Plugin 'airblade/vim-gitgutter'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.
" The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plugin 'tpope/vim-surround'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plugin 'ctrlpvim/ctrlp.vim'

" Multi cursors like Sublime text
Plugin 'terryma/vim-multiple-cursors'

" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" Syntax file and other settings for TypeScript.
Plugin 'leafgarland/typescript-vim'

" Make your Vim a TypeScript IDE.
Plugin 'Quramy/tsuquyomi'

" YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim.
Plugin 'Valloric/YouCompleteMe'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs
Plugin 'ervandew/supertab'

" PHP specific plugins
Plugin 'StanAngeloff/php.vim'

" An up-to-date Vim syntax for PHP.
Plugin 'arnaud-lb/vim-php-namespace'

" This plugin will execute the php-cs-fixer command on the directory or file (depends on which command you call). See options to know how to customize that.
Plugin 'stephpy/vim-php-cs-fixer'

" This project aims to provide heavy-lifting refactoring and introspection tools which can be used standalone or as the backend for a text editor to provide intelligent code completion
Plugin 'phpactor/phpactor'

" Vim syntax highlighting for Vue components.
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

