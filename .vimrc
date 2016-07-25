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
" LESS syntax
Plugin 'groenewege/vim-less'
" JS syntax
Plugin 'pangloss/vim-javascript'
" JSON syntax
Plugin 'elzr/vim-json'
" Sass, SCSS, Haml
Plugin 'tpope/vim-haml'
" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides'
" Python autocompletion
Plugin 'davidhalter/jedi-vim'
" Source code browser
Plugin 'majutsushi/tagbar'
" Surround - ci" on steroids
Plugin 'tpope/vim-surround'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Supersearch with control+P
Plugin 'kien/ctrlp.vim'
" Git integration
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
" Ferret supersearch
Plugin 'wincent/ferret'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
" Git difference like sublime
Plugin 'mhinz/vim-signify'
" Comment
Plugin 'tpope/vim-commentary'
" Autocomplete
Bundle 'Valloric/YouCompleteMe'
" Add bunch of color schemes
Bundle 'flazz/vim-colorschemes'
" Python-mode
Bundle 'klen/python-mode'

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

" comment / decomment & normal comment behavior
vmap <C-/> gcc

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

" set powerline always visible
set laststatus=2

" Ignore pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

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

" Now you can see whitespaces and end of line!
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" set list

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
" Searching
set hlsearch  " hightlight matches
set incsearch  " incremental search
set ignorecase  " search with ignorecase
set smartcase  " If any word has Big letter search with case
" Mouse support
if has('mouse')
  set mouse=a
endif
" Vandle ends, and filetype on
filetype plugin indent on
color jellybeans 
let g:python_host_prog = '/usr/local/bin/python2.7'

" pymode settings
let g:pymode = 1  " initialize plugin
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_trim_whitespaces = 1  " trim unused whitespaces
let g:pymode_options = 1  " setup default options
let g:pymode_options_max_line_length = 79  " setup max length
let g:pymode_options_colorcolumn = 1  " color column if line too long
let g:pymode_indent = 1  " enable PEP8 indent
let g:pymode_folding = 0  " python code folding
let g:pymode_motion = 1  " enable pymode motion
let g:pymode_lint = 1  " turn on code checking
let g:pymode_lint_on_fly = 1  " code linting on a fly
let g:pymode_lint_message = 1  " show error message if cursor placed on a line
let g:pymode_rope = 0  " enable rope refactoring
" let g:pymode_rope_completion = 1  " enable auto completion
" let g:pymode_rope_complete_on_dot = 1  " enable autocompletion on dot
" let g:pymode_rope_autoimport_import_after_complete = 0  " handle unresolved imports
let g:pymode_syntax = 1  " enable pymode syntax
let g:pymode_syntax_all = 1  " all python hightlights
let g:pymode_syntax_highlight_self = g:pymode_syntax_all  " highlight self keyword
let g:pymode_syntax_indent_errors = g:pymode_syntax_all  " indent errors
let g:pymode_syntax_space_errors = g:pymode_syntax_all  " space errors
let g:pymode_syntax_docstrings = g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all
let g:pymode_syntax_builtin_types = g:pymode_syntax_all
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all
let g:indent_guides_enable = 1

autocmd Vimenter * IndentGuidesEnable
