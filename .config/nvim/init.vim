" author: @iamthelaw

set nocompatible  		" we want neovim, not vi

call plug#begin('$HOME/.vim/plugged')
Plug 'Valloric/YouCompleteMe',  " autocompletion
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'			" async fuzzy and tags search
Plug 'airblade/vim-gitgutter'   " add vsc marks in gutter
Plug 'w0rp/ale'                 " async linting
Plug 'tomtom/tcomment_vim'      " commenting
Plug 'joshdick/onedark.vim'     " colorscheme
Plug 'sheerun/vim-polyglot'     " indentation and syntax highlight for many languages
Plug 'editorconfig/editorconfig-vim'
call plug#end()

syntax enable  					" vim is for programming
colorscheme onedark  			" define colorscheme
filetype plugin indent on		" use vim file types plugin for syntax and indentation

set shell=zsh
set encoding=utf-8
set ff=unix						" unix line endings
set history=500					" vim history lines
set hidden           		    " switch bw buff without having to save first
set mouse=a  					" activate mouse support always
set t_Co=256  					" my terminal is 256 colors no less
set display=lastline			" show as much as possible of the last line
set ttyfast  					" faster redrawing
set lazyredraw  				" only redraw if necessary
set splitbelow  				" open new window below curr window
set splitright  				" open new win to the right or curr window
set cursorline  				" set current light highlight
set report=0  					" always report changed lines
set synmaxcol=500  				" highlight only first 200 columns (performance boost?)
set showmatch  					" highlight matching brackets
set wildmenu  					" activate wildmenu
set autoread  					" autoreload file if it was changed elsevere
set scrolloff=5  				" set 5 lines visible before cursor on top and bottom
set backspace=indent,eol,start  " backspace as it was designed to be
set timeoutlen=500				" timeout before keymap considered done
set wildignore+=*.so,*.swp,*.zip,*.pyc,*.pyo

" ERRORS
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" BACKUP
" turn it off, since most stuff is in git
set nobackup
set nowb
set noswapfile

" COMPLETION
set complete=.,w,b,u,t,i,kspell
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" PERSISTENT UNDO
set undofile                	" Save undos after file closes
set undodir=$HOME/.vim/undo 	" where to save undo histories
set undolevels=1000         	" How many undos
set undoreload=10000        	" number of lines to save for undo

" FILE FORMAT
set nowrap
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab					" use spaces instead of tabs
set fileformat=unix

" CLIPBOARD
set clipboard^=unnamedplus
set paste
set formatoptions+=t

" SEARCHING
set wrapscan  	" endless search (no end-file)
set hlsearch  	" hightlight matches
set incsearch  	" incremental search
set ignorecase  " search with ignorecase
set smartcase  	" If any word has Big letter search with case

" SHORTCUTS
" twice a leader to switch to prev buffer
nnoremap <leader><leader> <c-^>
" fust fuzzy search in only git files
nnoremap <C-p> :GitFiles<CR>
" full blown fuzzy search
nnoremap ff :Files<CR>
" fuzzy search in tags
nnoremap <C-t> :Tags<CR>
" open file explorer
" that way I was able to remove vim-vinegar
" that messed-up with default register
nmap - :Explore<CR>
" force save when I forgot to use sudo
cmap w!! !sudo tee %

" AUTO COMMANDS
" strip trailing whitespaces on save
au BufWritePre * :%s/\s\+$//e
" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" reload vimrc when editing it
au BufWritePost init.vim source $HOME/.config/nvim/init.vim

" NETRW
" this way you can remove nerdcommander
let g:netrw_list_hide = '.*\.swp$,'
let g:netrw_list_hide .= '\.pyc$,'

" CUSTOM STATUS LINE
" instead of powerline, airline etc.
set laststatus=2  " always show status line
" set status bar colors
" get color codes from https://jonasjacek.github.io/colors/
hi User1 ctermbg=16 ctermfg=208
hi User2 ctermbg=16 ctermfg=124
hi User3 ctermbg=16 ctermfg=161
hi User4 ctermbg=16 ctermfg=112
hi User5 ctermbg=16 ctermfg=220
" define status bar
set statusline=   						" clear the statusline for when vimrc is reloaded
set statusline +=%1*\ %n\ %*            " buffer number
set statusline +=%5*%{&ff}%*            " file format
set statusline +=%3*%y%*                " file type
set statusline +=%4*\ %<%F%*            " full path
set statusline +=%2*%h%m%r%w%*          " flags
set statusline +=%1*%=%5l%*             " current line
set statusline +=%2*/%L%*               " total lines
set statusline +=%1*%4v\ %*             " virtual column number
set statusline +=%2*%P\ %*              " persentage thru file
