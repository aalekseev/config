set nocompatible              " choose no compatibility with legacy vi REQUIRED
filetype off                  " required ?? what is this?

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Jade syntax
Plugin 'digitaltoad/vim-pug'
" Jade syntax
Plugin 'groenewege/vim-less'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" Supersearch with control+P
Plugin 'kien/ctrlp.vim'
" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
" Python linting
Plugin 'nvie/vim-flake8'
" Ferret supersearch
Plugin 'wincent/ferret'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'jnurmine/Zenburn'
Plugin 'nanotech/jellybeans.vim'
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set encoding
set encoding=utf-8
set cursorline

" Enable folding
set foldmethod=indent
set foldlevel=99

" NNOREMAPS

" twice a leader to switch buffer
nnoremap <leader><leader> <c-^>

" Enable folding with a spacebar
nnoremap <space> za

" See the docstrings for folded code
let g:SimplyFold_docstring_preview=1

" Ensure that autocomplite window will go away
let g:ycm_autoclose_preview_window_after_completion=1

" Make python pretty
let python_hightlight_all=1

" Ignore pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

" Proper indentation for python files
au BufNewFile, BufRead *.py
  \ set tabstop=4
  \ set softtabstop=4
  \ set shiftwidth=4
  \ set textwidth=79
  \ set expandtab
  \ set autoindent
  \ set fileformat=unix
  \ set colorcolumn=79

" Proper indentation for other files
set tabstop=2
set softtabstop=2
set shiftwidth=2
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
" Backspace throught everything!
set backspace=indent,eol,start
" Make clipboard normal
set clipboard=unnamed
set formatoptions+=t
" Searching
set hlsearch  " hightlight matches
" sHow tabs
set listchars=tab:>-
set list
" Vandle ends, and filetype on
filetype plugin indent on
" set background=light
color jellybeans 
