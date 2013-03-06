call pathogen#infect()    " package system
set rtp+=$GOROOT/misc/vim " for go development


" Can't live without in editer file traversal :)
nmap <silent> <c-n> :NERDTreeToggle<CR>

"gitgutter
highlight clear SignColumn

" Favorite Color Scheme
if has("gui_running")
   colorscheme obsidian 
   set guioptions-=T       " Remove Toolbar
   set guifont=Terminus\ 7 " Terminus is AWESOME
else

endif

set foldmethod=syntax     " predictable folding
" Simpler (un)folding
map f za         
map <S-f> zR

" Easier code formating 
map <C-f> gqG

syntax on                 " syntax highlighing
filetype plugin indent on " turn on the indent plugins
set autoread              " reload file when changed externally

set ffs=unix   " EOL character convetion
set ignorecase " Ignores case when searching
set smartcase  " Overides ignore if search has uppercase
set showmatch  " Shows matching brackets or braces when over them
set number     " Show line numbering

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


" quick checking of a python program
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

" Toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

autocmd FileType go autocmd BufWritePre <buffer> Fmt " go devel

autocmd BufRead,BufNewFile  *.md,*.txt,*.TXT set filetype=markdown
autocmd BufRead,BufNewFile  *.html,*.jinja set filetype=htmldjango

"-A8T8SLWYUk3pb "old astyle pref
autocmd BufNewFile,BufRead *.c,*.h  set formatprg=astyle\ -A10z3cZEHSk3W3pn
