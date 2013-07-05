" Actual vim settings.
colo desert
" font…
set gfn=DejaVu\ Sans\ Mono:h18

syntax on
filetype plugin indent on

" Pathogen
execute pathogen#infect()

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
set nocompatible
set autoindent
set noerrorbells
set backspace=indent,eol,start
set magic
set shellslash

set textwidth=72
set showcmd
set history=50
set ruler
set incsearch 

set spelllang=de_19,en

set encoding=utf-8

" Zencoding shortcut
let g:user_zen_expandabbr_key = '<c-y>,'


autocmd FileType mail set tw=72 sw=4 tabstop=4 expandtab spell nu
autocmd FileType text set tw=72 sw=4 tabstop=4 expandtab spell
autocmd FileType php set binary noeol tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number encoding=utf-8
autocmd FileType scss set softtabstop=2 shiftwidth=2 noexpandtab number
autocmd FileType tex  set tw=80 nu tabstop=4 sw=4 expandtab nu spell 
autocmd FileType cpp set tw=0 cindent nu sw=4
autocmd FileType make set tw=0
autocmd FileType awk set tw=0
autocmd FileType java set tabstop=4 shiftwidth=4 number expandtab encoding=utf-8
autocmd FileType coffee set tabstop=2 shiftwidth=2 number expandtab
autocmd FileType typoscript set textwidth=0 number
autocmd FileType dot set tw=0
autocmd FileType xml set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number
autocmd FileType javascript set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number
au FileType html set tw=0 nu
au FileType xhtml set tw=0 nu
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" map :Tlist (taglist) to F8
map <C-N> :NERDTree<cr>

finish
