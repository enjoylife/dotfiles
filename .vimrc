call pathogen#infect()

"set nocompatible=on   " use vim defaults
syntax enable                 " syntax highlighing
filetype plugin indent on " turn on the indent plugins
autocmd VimEnter * NERDTree
set autoread "auto read a file when changed externally

" Favorite Color Scheme
if has("gui_running")
    " Requires solarized color scheme
    set background=dark
    colorscheme solarized


   " Remove Toolbar
   set guioptions-=T
   "Terminus is AWESOME
   "set guifont=Terminus\ 9
else
endif
" quick checking of a python program
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

" Toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
set foldnestmax=3
set foldmethod=syntax


map f za
map <S-f> zR
map <F1> gqG

"Ignores case when searching
set ignorecase
set smartcase
set showmatch "shows matching brackets or braces when over them
set number "Show line numbering

" Turn backup off, since most stuff in git anyway...
set nobackup
set nowb
set noswapfile

set number          " show line numbers
set expandtab       " tabs are converted to spac
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set numberwidth=4   " line numbering takes up 5 spaces
set ignorecase      " ignore case when searching
set wrap            " stop lines from wrapping
set linebreak
set nolist          " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l

autocmd BufNewFile,BufRead *.c set formatprg=astyle\ -A10z3cZEHSk3W3pn
"-A8T8SLWYUk3pb

nmap <silent> <c-n> :NERDTreeToggle<CR>
