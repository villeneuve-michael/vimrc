"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"   Michael Villeneuve

" Credit:
"   I inspired myself from @amix3k
"   https://github.com/amix/vimrc
"
" Description:
" this is my vimrc file, i use the following stack
" so you will most see most likely language specific
" mappings, macros and plugins.
"   -> javascript
"     -> typescript
"     -> vuejs
"   -> php
"     -> laravel
"     -> phpunit
"   -> sass
"
" feel free to use this as you want!
"
" sections:
"   -> 1.0.0 general settings
"   -> 1.1.0 theme
"     -> 1.1.1 color scheme
"     -> 1.1.2 fonts
"     -> 1.1.3 layout
"     -> 1.1.4 indentation
"     -> 1.1.5 cursor
"   -> 1.2.0 split
"   -> 1.3.0 search
"   -> 1.4.0 plugins customization
"     -> 1.4.1 nerdtree
"     -> 1.4.2 multi cursors
"     -> 1.4.3 youcomleteme
"     -> 1.4.4 ultisnippet
"     -> 1.4.5 php cs fixer
"    -> 1.5.0 mappings
"      -> 1.5.1 laravel specific mappings
"    -> 1.6.0 helper functions / auto commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.0.0 => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Import plugins using Vundle
so ~/.vim/plugins.vim

" Sets how many lines of history VIM has to remember
set history=500

" Fixes GUI bugs with the backround
let &t_ut=''

" Change the mapleader to the more common ','
let mapleader = ','

" Auto read will apply changes from outside sources
" useful if you sometime switch from an IDE to vim
set autoread

"Make backspace behave like every other editor.
set backspace=indent,eol,start

" This setting uses the system register so if you
" yank something it will become available to the general register
set clipboard=unnamedplus

" Scan in the order
" -> The current buffer
" -> Buffers from other windows
" -> Form the buffer list
" -> Buffers unloaded from the buffer list
" -> Tag completion
" -> Included files
set complete=.,w,b,u,t,i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.1.0 Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Add a small dot in order to see spaces
" very usefull if you are a bit OCD
set list
set lcs=space:·

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.1.1 Color Scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Install the color theme night-owl
" https://github.com/haishanh/night-owl.vim
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

try
	colorscheme night-owl
catch
endtry

" Small bugfix for the theme due to a confict with git-gutter
highlight SignColumn guibg='#011627'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.1.2 Font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Only works with a terminal that supports ligature
" https://github.com/tonsky/FiraCode
"
" If you are on ubuntu and would like to use this font
" I suggest that you take a look at the Kitty terminal
" https://github.com/kovidgoyal/kitty
set guifont=Fira_Code

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.1.3 Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Activate the relative number of lines from the
" current position
set number relativenumber

" Highlight the current line and
" show the absolute line number on the active line
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Allow powerline font for the status bar
let g:airline_powerline_fonts = 1

" Set extra options when running in GUI mode
if has("gui_running")
  "remove toolbar
  set guioptions-=T

  "remove right-hand scroll bar
  set guioptions-=r

  "remove left-hand scroll bar
  set guioptions-=L

  " Format the tab label
  set guitablabel=%M\ %t
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.1.4 Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
" http://vim.wikia.com/wiki/Indent_with_tabs,_align_with_spaces
set smarttab

" I set 2 spaces indent by default for Javascipt
" but it gets overide to 4 in PHP in ~/.vim/ftplugin/php.vim
set shiftwidth=2
set softtabstop=2
set tabstop=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.1.5 Cursor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" change to i-beam cursor when entering insert mode
let &t_SI = "\<Esc>[5 q"

" change to block cursor when leaving insert mode
let &t_EI = "\<Esc>[2 q"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.2.0 Split
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Make splits default to below.
set splitbelow

"And to the right. This feels more natural.
set splitright

"Mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.3.0 Search
" #ctrlp #ag #silver-seacher
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight all matched terms.
set hlsearch

" Incrementally highlight, as we type.
set incsearch

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" We use Silvel Seacher if it's available
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Position the ctrlp window on top
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.4.0 Plugins customization
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.4.1 NERDTree
" https://github.com/scrooloose/nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" will open up a window level NERD tree
" instead of a netrw in the target window.
let NERDTreeHijackNetrw = 0

" Ignore files in the tree
" Careful here I ignore js files in tests because i'm using typescipt
let NERDTreeIgnore=['.map', '.idea', 'node_modules', '.git[[dir]]', 'tests/*.js', 'tests/*.map', 'tags']

" Make NERDTree show hidden files / dir.
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.4.2 Multi Cursors
" https://github.com/terryma/vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.4.3 YouComleteMe
" https://valloric.github.io/YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.4.4 Ultisnippet
" https://github.com/SirVer/ultisnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tab and shift tab to expand / navigate the snippet
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Ultisnip will spit vertically by default
let g:UltiSnipsEditSplit="vertical"

" There was a conflict and for some reason I had to rename
" the folder to mysnippets instead of snippets.
" Still unclear why this works and not snippets
let g:UltiSnipsSnippetsDir='~/.vim/mysnippets'
let g:UltiSnipsSnippetDirectories=["mysnippets"]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.4.5 PHP CS fixer
" https://github.com/stephpy/vim-php-cs-fixer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:php_cs_fixer_level = "psr2"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.5.0 Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edit my .vimrc file
nmap <Leader>ev :e $MYVIMRC<cr>

" Edit my snippets
nmap <Leader>es :e ~/.vim/mysnippets/<cr>

" Add/Remove a plugin
nmap <Leader>ep :e ~/.vim/plugins.vim<cr>
" Paste on next line
nmap <Leader>p $pi<cr>

" Delete after cursor in insertmode
inoremap <C-a> <C-o>de

" Cut the current line
inoremap <C-d> <C-o>dd
nnoremap <C-d> dd

" Write
map <Leader>w :w<cr>

" Switch to previous open file
map <Leader>b :e#<cr>

" Fix PHP file using PSR2
nnoremap <leader>psr :call PhpCsFixerFixFile()<CR>

" Search for a tag
nmap <Leader>r :CtrlPBufTag<cr>

" Search in the recently used file
nmap <Leader><Leader>r :CtrlPMRUFiles<cr>

" Toggle NERDTree
map <Leader>nb :NERDTreeToggle<cr>

" Toggle NERDTree and open the path to current file
map <leader>nt :NERDTreeFind<cr>

" Regenerate tags
nmap <Leader>cc :!ctags<space>-R

" Search for a tag
nmap <Leader>t :tag<space>

" This is a last resort commande
" Find any string from the current path
" In all files recursively
nmap <Leader>f :!grep<space>-rnw<space>'.'<space>-e<space>''<left>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.5.1 Laravel Specific Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigate to web routes
nmap <Leader>lrw :e routes/web.php<cr>

" Navigate to api routes
nmap <Leader>lra :e routes/api.php<cr>

" Promt the php artisan:make command
nmap <Leader>lm :!php artisan make:

" Search a controller
nmap <Leader>lsc :CtrlP<cr>app/Http/Controllers/

" Search a model
nmap <Leader>lsm :CtrlP<cr>app/Models/

" Search a view
nmap <Leader>lsv :CtrlP<cr>resources/views/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.6.0 Helper functions / Auto commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto source the vimrc file on save
augroup autosourcing
autocmd!
autocmd BufWritePost .vimrc source %
augroup END

" Generate ctags each time we save a php file
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &

" Automatically adds the corresponding use statement
" for the name under the cursor.
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
