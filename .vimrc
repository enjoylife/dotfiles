set runtimepath+=$HOME/.vim/
set runtimepath+=$HOME/.vim/after/ftplugins/html
let $PATH = $PATH . ':' . expand("~/.cabal/bin")

syntax enable                 " syntax highlighing
filetype plugin indent on " turn on the indent plugins

set autoread "auto read a file when changed externally

" Requires solarized color scheme
set background=light
colorscheme solarized

" quick checking of a python program
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

" Toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Ignores case when searching
set ignorecase
set smartcase
set showmatch "shows matching brackets or braces when over them
set number "Show line numbering

" Turn backup off, since most stuff in git anyway...
"set nobackup
"set nowb
"set noswapfile

set nocompatible    " use vim defaults
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


autocmd BufEnter *.j2 set filetype=htmljinja
autocmd BufEnter *.html set filetype=htmljinja
autocmd BufEnter *.py set filetype=python
autocmd BufEnter *.md set filetype=markdown
"autocmd BufEnter *.hs set filetype=haskell

" PLUGIN SETTINGS
"""""""""""""""""

"Requires syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*



" Requires nerdtree plugin
" Easy file system access
nmap <silent> <c-n> :NERDTreeToggle<CR>


" Requires neocompletecache 
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType haskell setlocal omnifunc=omnifunc=necoghc#omnifunc
"

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
