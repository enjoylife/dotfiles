set runtimepath+=$HOME/.vim/
set runtimepath+=$HOME/.vim/after/ftplugins/html
nmap <silent> <c-n> :NERDTreeToggle<CR>

colors wombat
"auto read a file when changed externally
set autoread
"Ignores case when searching
set ignorecase
set smartcase

"shows matching brackets or braces when over them
set showmatch
"Show line numbering
set number

" Toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"let g:pydiction_location='/home/matthew/.vim/pydiction/complete-dict'
let g:SuperTabDefaultCompletionType = "context"
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

set nocompatible    " use vim defaults
set number          " show line numbers

set textwidth=80
set expandtab       " tabs are converted to spac
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set numberwidth=4   " line numbering takes up 5 spaces
set ignorecase      " ignore case when searching
set wrap          " stop lines from wrapping
filetype plugin indent on " turn on the indent plugins

" Omnicompletion functions
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

map <F2> :previous<CR>                  " map F2 to open previous buffer
map <F3> :next<CR>                      " map F3 to open next buffer

map <F5> :TlistToggle<CR>               " map F5 to toggle the Tag Listing
map <silent><C-Left> <C-T>              " taglist - map Ctrl-LeftArrow to jump to the method/property under your cursor
map <silent><C-Right> <C-]>             " taglist - map Ctrl-RhitArrow to jump back to your source code
map <silent><A-Right> :tabnext<CR>      " map Alt-RightArrow to jump to the next tab
map <silent><A-Left> :tabprevious<CR>   " map Alt-LeftArrow to jump to the previous tab

syntax enable                 " syntax highlighing
autocmd BufEnter *.j2 set filetype=htmljinja
autocmd BufEnter *.html set filetype=htmljinja
