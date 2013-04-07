call pathogen#infect()    " Package system
set rtp+=$GOROOT/misc/vim " For go development (syntax, indentation,etc)

"EXT: nerdtree ...Just can't live without in editer file traversal
nmap <silent> <c-n> :NERDTreeToggle<CR>

"EXT: gitgutter ...Shows git diff 
highlight clear SignColumn
nmap <silent> <c-g> : GitGutterToggle<CR>
sign define dummy
execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

"EXT: vim-javascript ...Better indentation, highlighting, etc
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

if has('gui_running')
    set background=light           " Prefer light in gui
    set guioptions-=T              " Remove Toolbar
    set guifont=Terminus\ 7        " Terminus is AWESOME
else
    let g:solarized_termcolors=256 "Pretty even in terminal
    set t_Co=256                   "Terminal support in general
    set background=dark            "Prefer dark in terminal
endif

"COLOR: Favorite Color Schemes per filetype
"autocmd FileType * if &filetype == 'html' | colorscheme guardian | elseif  &filetype == 'javascript'| colorscheme lucius | endif

set foldmethod=syntax   " Predictable folding
map f za                " Simpler (un)folding
map <C-f> gqG           " Easier code formating 
map <S-f> zR

set background=light           " Prefer light in gui
syntax enable
colorscheme solarized

filetype plugin indent on " Turn on the indent plugins
set autoread              " Reload file when changed externally

set ffs=unix   " EOL character convetion
set ignorecase " Ignores case when searching
set smartcase  " Overides ignore if search has uppercase
set showmatch  " Shows matching brackets or braces when over them
set number     " Show line numbering

" Turn backup off, since stuff is in git, svn, hg, etc.
set nobackup
set nowb
set noswapfile

set number          " Show line numbers
set expandtab       " Tabs are converted to spac
set tabstop=4       " Numbers of spaces of tab character
set shiftwidth=4    " Numbers of spaces to (auto)indent
set showcmd         " Display incomplete commands
set hlsearch        " Highlight searches
set incsearch       " Do incremental searching
set ruler           " Show the cursor position all the time
set numberwidth=4   " Line numbering takes up 5 spaces
set ignorecase      " Ignore case when searching
set wrap            " Stop lines from wrapping
set linebreak
set nolist          " List disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l


" quick checking of a python program
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

" Toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

autocmd FileType go autocmd BufWritePre <buffer> Fmt " go devel

autocmd BufRead,BufNewFile  *.md,*.MD,*.txt,*.TXT set filetype=markdown
"autocmd BufRead,BufNewFile  *.html,*.jinja set filetype=htmldjango
autocmd BufRead,BufNewFile  *.jinja set filetype=htmldjango

"-A8T8SLWYUk3pb "old astyle pref
autocmd BufNewFile,BufRead *.c,*.h  set formatprg=astyle\ -A10z3cZEHSk3W3pn

