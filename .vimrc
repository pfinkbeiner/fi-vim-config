" Pathogen
execute pathogen#infect()

" Actual vim settings.
set background=dark
colorscheme solarized
colo desert
" font…
set gfn=DejaVu\ Sans\ Mono:h18

syntax on
filetype plugin indent on

" replace tab with 4 spaces
" set tabstop=4
" set shiftwidth=4
" set expandtab

set textwidth=72
set showcmd
set history=50
set incsearch 
set encoding=utf-8
set hlsearch

set wildmode=longest,list,full


" Zencoding shortcut
let g:user_zen_expandabbr_key = '<c-y>,'

autocmd FileType mail set tw=72 sw=4 tabstop=4 expandtab spell nu
autocmd FileType ruby set tw=72 sw=2 tabstop=2 expandtab spell nu
autocmd FileType jade set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType stylus set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType text set tw=72 sw=4 tabstop=4 expandtab spell
autocmd FileType php set binary noeol tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number
autocmd FileType tex  set tw=80 nu tabstop=4 sw=4 expandtab nu spell 
autocmd FileType cpp set tw=0 cindent nu sw=4
autocmd FileType make set tw=0
autocmd FileType awk set tw=0
autocmd FileType dot set tw=0
autocmd FileType xml set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number
autocmd FileType javascript set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab textwidth=0 number
autocmd FileType coffee set tabstop=2 shiftwidth=2 number expandtab
autocmd FileType scss set softtabstop=2 shiftwidth=2 noexpandtab number
autocmd FileType yaml set softtabstop=2 shiftwidth=2 expandtab number
autocmd FileType typoscript set textwidth=0 number
autocmd FileType html set tw=0 number
autocmd FileType xhtml set tw=0 number
autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" map :Tlist (taglist) to F8
map <C-N> :NERDTree<cr>

nnoremap <C-G> :GundoToggle<CR>

finish
