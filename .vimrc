" We want Vim, not vi
set nocompatible

call plug#begin('$HOME/.vim/plugged')
Plug 'Valloric/YouCompleteMe', { 'for': ['python', 'javascript'] }
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'kien/ctrlp.vim',
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'scrooloose/syntastic'
Plug 'honza/dockerfile.vim', { 'for': 'dockerfile' }
Plug 'metakirby5/codi.vim', { 'for': ['python', 'javascript'] }
Plug 'tmhedberg/SimpylFold'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'kshenoy/vim-signature'
Plug 'editorconfig/editorconfig-vim'
Plug 'dodie/vim-disapprove-deep-indentation', { 'for': ['python', 'javascript'] }
call plug#end()

" Set encoding
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99
set showcmd

" NNOREMAPS
" twice a leader to switch buffer
nnoremap <leader><leader> <c-^>
" Toggle NERD Tree
nnoremap <C-]> :TagbarToggle<CR>
" Enable folding with a spacebar
nnoremap <space> za

" Autocomplition settings
set complete=.,w,b,u,t,i,kspell
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:airline_powerline_fonts = 1
" See the docstrings for folded code
let g:SimplyFold_docstring_preview=1
" Make python pretty
let python_hightlight_all=1
" set powerline always visible
set laststatus=2
" Ignore files for ctrlp
set wildignore+=*.so,*.swp,*.zip,*.pyc,*.pyo
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](\.git|node_modules|bower_components)$',
    \ 'file': '\v\.(so|swp|zip|pyc|pyo|sqlite3|sql)'
    \ }
" Netrw settings
let g:netrw_list_hide = '.*\.swp$,'
let g:netrw_list_hide .= '\.pyc$,'
" Tagbar settings
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_show_linenumbers = 1

" Switch between buffers without having to save first.
set hidden
" Show as much as possible of the last line.
set display=lastline
" Faster redrawing.
set ttyfast
" Only redraw when necessary.
set lazyredraw
" Open new windows below the current window.
set splitbelow
" Open new windows right of the current window.
set splitright
" Find the current line quickly.
set cursorline
" Searches wrap around end-of-file.
set wrapscan
" Always report changed lines.
set report=0
" Only highlight the first 200 columns.
set synmaxcol=200

" Proper indentation for python files
au BufNewFile, BufRead *.py
  \ set tabstop=4
  \ set softtabstop=4
  \ set shiftwidth=4
  \ set textwidth=79
  \ set colorcolumn=79

au BufNewFile, BufRead *.js
  \ set tabstop=2
  \ set softtabstop=2
  \ set shiftwidth=2
  \ set textwidth=79
  \ set colorcolumn=79

au BufNewFile, BufRead *.yml
  \ set tabstop=2
  \ set softtabstop=2
  \ set shiftwidth=2

au BufNewFile, BufRead *.html
  \ set tabstop=2
  \ set softtabstop=2
  \ set shiftwidth=2
  \ set smartindent
" Proper indentation for other files
" Indent according to previous line.
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" Strip trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Mark trailing whitespaces as bad
au BufRead, BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/

syntax enable
" Line numbering
set nu
" No wrapping to lines!
set nowrap
" Show matching bracket
set showmatch
" show suggestions on vim commands in command menu
set wildmenu
" auto reload file if file was changed elsewere
set autoread
" there are always at least five lines visible above
" the cursor, and five lines visible below the cursor
set scrolloff=5
" Backspace throught everything!
set backspace=indent,eol,start
" Make clipboard normal
set clipboard=unnamed
set paste
set formatoptions+=t
" Autocomplition settings
set complete=.,w,b,u,t,i,kspell
" Searching
set hlsearch  " hightlight matches
set incsearch  " incremental search
set ignorecase  " search with ignorecase
set smartcase  " If any word has Big letter search with case
" Mouse support
if has('mouse')
  set mouse=a
endif

" fuzzt search
set path+=**

color dracula
set t_Co=256
