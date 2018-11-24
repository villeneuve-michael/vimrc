# My VIM config
This is my personal vim config, i use a specific stack so this is not language agnostic. It contains language specific mappings, macros and plugins.
* Javascript
  * Typescript
  * Vuejs
* php
  * Laravel

Feel free to use this as you want!

## Demo
![Demo](https://media.giphy.com/media/52EZy28Mxp7Bodug0A/giphy.gif)

## Installation 
Quick note on the installation. This will first create a backup of you current .vimrc and .vim in ~/.vim-backup and after copy the files.
```bash
git clone https://github.com/villeneuve-michael/vimrc
cd vimrc
sh install.sh
```

## Table Of Contents
This is the .vimrc table of content
* 1.0.0 general settings
* 1.1.0 theme
  * 1.1.1 color scheme
  * 1.1.2 fonts
  * 1.1.3 layout
  * 1.1.4 indentation
  * 1.1.5 cursor
* 1.2.0 split
* 1.3.0 search
* 1.4.0 plugins customization
  * 1.4.1 nerdtree
  * 1.4.2 multi cursors
  * 1.4.3 youcomleteme
  * 1.4.4 ultisnippet
  * 1.4.5 php cs fixer
*  1.5.0 mappings
  * 1.5.1 laravel specific mappings
*  1.6.0 helper functions / auto command

# Plugins list
List of all plugins. I need to clean this up a bit, lot's of trial & errors. I'm still experimenting on what's useful and what's not!

| Plugin name        | Description  | Type |
| ------------- |-------------|:-------------:|
| [Vundle](https://github.com/VundleVim/Vundle.vim) | Plugin Manager | General |
| [vim-vinegar](https://github.com/tpope/vim-vinegar) | Well, vinegar.vim enhances netrw, partially in an attempt to mitigate the need for more disruptive "project drawer" style plugins. | General |
| [UltiSnips](https://github.com/SirVer/ultisnips) | UltiSnips is the ultimate solution for snippets in Vim. | General |
| [Snippets](https://github.com/honza/vim-snippets) | This repository contains snippets files for various programming languages. | General |
| [NERDTree](https://github.com/scrooloose/nerdtree) | NERDTree is a file system explorer for the Vim editor | Layout |
| [VIM Airline](https://github.com/vim-airline/vim-airline) | Awesome status bar | Layout |
| [VIM Airline Themes](https://github.com/vim-airline/vim-airline-themes) | Access the full library of Airline themes | Layout |
| [Night Owl Theme](https://github.com/haishanh/night-owl.vim) | A 24bit dark Vim colorscheme based on sdras/night-owl-vscode-theme | Layout |
| [multiple-cursors](https://github.com/terryma/vim-multiple-cursors) | Multi cursors like Sublime text | Edition |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs) | Insert or delete brackets, parens, quotes in pair. | Edition |
| [surround.vim](https://github.com/tpope/vim-surround) | Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs. | Edition |
| [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) | YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim.  | Edition |
| [SuperTab](https://github.com/ervandew/supertab) | Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs  | Edition |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | A git wrapper | git |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | Enhances the git workflow | git |
| [vimagit](https://github.com/jreybert/vimagit) | From a very single vim buffer, you can perform main git operations in few key press. | git |
| [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) | Full path fuzzy file, buffer, mru, tag, ... finder for Vim. | Navigation |
| [typescript-vim](https://github.com/leafgarland/typescript-vim) | Syntax file and other settings for TypeScript. | Typescript |
| [tsuquyomi](https://github.com/Quramy/tsuquyomi) | Make your Vim a TypeScript IDE. | Typescript |
| [php.vim](https://github.com/StanAngeloff/php.vim) | An up-to-date Vim syntax for PHP. | PHP |
| [php-cs-fixer](https://github.com/stephpy/vim-php-cs-fixer) | This plugin will execute the php-cs-fixer command on the directory or file (depends on which command you call). See options to know how to customize that. | PHP |
| [phpactor](https://github.com/phpactor/phpactor) | This project aims to provide heavy-lifting refactoring and introspection tools which can be used standalone or as the backend for a text editor to provide intelligent code completion. | PHP |
| [vim-vue](https://github.com/posva/vim-vue) | Vim syntax highlighting for Vue components. | Vue |
