" We want Vim, not vi
set nocompatible

call plug#begin('$HOME/.vim/plugged')
Plug 'Valloric/YouCompleteMe', { 'for': ['python', 'javascript'] }
Plug 'digitaltoad/vim-pug', { 'for': ['jade', 'pug'] }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar', { 'on': 'TagBarToggle' }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'
Plug 'dracula/vim'
Plug 'sirver/ultisnips'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'scrooloose/syntastic'
Plug 'honza/dockerfile.vim', { 'for': 'dockerfile' }
Plug 'metakirby5/codi.vim', { 'for': ['python', 'javascript'] }
Plug 'tmhedberg/SimpylFold'
Plug 'tomtom/tcomment_vim'
Plug 'vim-airline/vim-airline'
Plug 'wincent/ferret', { 'on': ['Ack', 'Acks'] }
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'dodie/vim-disapprove-deep-indentation', { 'for': ['python', 'javascript'] }

call plug#end()

" Set encoding
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99
set showcmd

" NNOREMAPS

" comment / decomment & normal comment behavior
nnoremap <leader>c :TComment<CR>

" twice a leader to switch buffer
nnoremap <leader><leader> <c-^>
" Toggle NERD Tree
nnoremap <C-]> :TagbarToggle<CR>
" Enable folding with a spacebar
nnoremap <space> za

" See the docstrings for folded code
let g:SimplyFold_docstring_preview=1

" Make python pretty
let python_hightlight_all=1

" set powerline always visible
set laststatus=2

" Ignore pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Ignore files for ctrlp
set wildignore+=*.so,*.swp,*.zip,*.pyc,*.pyo
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](\.git|node_modules|bower_components)$',
    \ 'file': '\v\.(so|swp|zip|pyc|pyo|sqlite3|sql)'
    \ }

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

" Mark trailing whitespaces as bad
au BufRead, BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/

let g:airline_powerline_fonts = 1

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
" Backspace throught everything!
set backspace=indent,eol,start
" Make clipboard normal
set clipboard=unnamed
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

" Put all temporary files under the same directory.
set backup
set backupdir=$HOME/.vim/files/backup/
set backupext=-vimbackup
set backupskip=
set directory=$HOME/.vim/files/swap//
set updatecount=100
set undofile
set undodir=$HOME/.vim/files/undo/
" set viminfo='100,n$HOME/.vim/files/info/viminfo
let g:ycm_log_level = 'info'

" Vim Snippets config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"

" Netrw settings
let g:netrw_list_hide = '.*\.swp$,'
let g:netrw_list_hide .= '\.pyc$,'

filetype indent on
