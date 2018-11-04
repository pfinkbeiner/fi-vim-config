set autoindent
set noerrorbells
set backspace=indent,eol,start
set magic

" Pathogen
execute pathogen#infect()

" Actual vim settings.
" set gfn=DejaVu\ Sans\ Mono:h18

syntax on
colorscheme smyck
filetype plugin on
filetype indent on
syntax enable " :

" replace tab with 4 spaces
" set tabstop=4
" set shiftwidth=4
" set expandtab

" set textwidth=72
" set showcmd
" set history=50
set incsearch
set encoding=utf-8
set hlsearch

hi Search cterm=NONE ctermfg=black ctermbg=yellow
"nnoremap <silent> <esc><esc> :noh<cr><esc>

set wildmode=longest,list,full

set noerrorbells
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

" Zencoding shortcut
let g:user_zen_expandabbr_key = '<c-y>,'

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

autocmd BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
autocmd BufRead,BufNewFile *.json set ft=javascript tabstop=2 shiftwidth=2 number expandtab
autocmd BufRead,BufNewFile *.html set ft=xml
autocmd BufRead,BufNewFile *.hbs set ft=mustache
autocmd BufRead,BufNewFile *.handlebars set ft=mustache
autocmd BufRead,BufNewFile *.typoscript set ft=typoscript
autocmd BufRead,BufNewFile setup.ts set ft=typoscript
autocmd BufRead,BufNewFile constants.ts set ft=typoscript
autocmd BufRead,BufNewFile setup.txt set ft=typoscript
autocmd BufRead,BufNewFile constants.txt set ft=typoscript
autocmd BufRead,BufNewFile Vagrantfile set ft=ruby
autocmd FileType mail set tw=72 sw=4 tabstop=4 expandtab spell nu
autocmd FileType ruby set tw=72 sw=2 tabstop=2 expandtab spell nu
autocmd FileType jade set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType pug set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType stylus set tw=0 sw=2 tabstop=2 expandtab spell nu
autocmd FileType text set tw=72 sw=4 tabstop=4 expandtab spell
autocmd FileType tex  set tw=80 nu tabstop=4 sw=4 expandtab nu spell
autocmd FileType cpp set tw=0 cindent nu sw=4
autocmd FileType make set tw=0
autocmd FileType awk set tw=0
autocmd FileType dot set tw=0
autocmd FileType html set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab tw=0 number
autocmd FileType xml set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab textwidth=0 number
autocmd FileType scss set softtabstop=2 shiftwidth=2 expandtab number
autocmd FileType yaml set softtabstop=2 shiftwidth=2 expandtab number
autocmd FileType typoscript set tabstop=2 textwidth=0 shiftwidth=2 softtabstop=2 number noexpandtab
autocmd FileType markdown set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab textwidth=0 number
autocmd FileType erlang set tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=0 number
autocmd FileType elixir set number

autocmd FileType php set tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=0 number
autocmd FileType javascript set tabstop=2 softtabstop=2 shiftwidth=2 expandtab textwidth=0 number
autocmd FileType coffee set tabstop=2 shiftwidth=2 number expandtab

" autocmd FileType vue set tabstop=2 softtabstop=2 shiftwidth=2 expandtab textwidth=0 number
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.coffee.css
autocmd FileType vue syntax sync fromstart

au BufNewFile,BufReadPost,FilterReadPost,FileReadPost  * set nospell

" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_core_mode = 'external_command'
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'

" LaTeX notes
let g:Tex_ViewRuleComplete_pdf = 'open $*.pdf'
let g:Tex_CompileRule_pdf = '/usr/texbin/pdflatex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:LatexBox_latexmk_options = '-pv'

" Gist…
let g:gist_post_private = 1

let g:indent_guides_start_level = 2

" map :Tlist (taglist) to F8
map <C-N> :NERDTree<cr>

nnoremap <C-G> :GundoToggle<CR>

" CtrlP:
" 0 - don’t manage working directory.
" 1 - the parent directory of the current file.
" 2 - the nearest ancestor that contains one of these directories or
" files: .git/ .hg/ .svn/ .bzr/ _darcs/
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_custom_ignore = '\v\(\.git|node_modules|bower_components\)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v\(\.git|.hg|.svn|node_modules|bower_components\)$',
  \ 'file': '\.beam$\'
  \ }

" Show trailing whitespace:
" /\s\+$
"
" " Show trailing whitespace only after some text (ignores blank lines):

" Save on SHIFT+W
command W w

" Autoreload .vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

let g:vue_disable_pre_processors=1

set nocompatible
