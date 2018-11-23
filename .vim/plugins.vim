filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'lambdalisue/vim-fullscreen'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jreybert/vimagit'
Plugin 'tpope/vim-fugitive'
Plugin 'posva/vim-vue'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'leafgarland/typescript-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'

" PHP specific plugins
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'phpactor/phpactor'

" Typescrigt specific plugins
Plugin 'Quramy/tsuquyomi'

" Color Schemes
Plugin 'tjammer/blayu.vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'haishanh/night-owl.vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

