# fi-vim-config
This repository contains my current vim config with all plugins that i love to use. Every plugin is included as a submodule for easy updating.

For a detailed description of each plugin I would recommend their own git repository.

## Usage
`git clone --recursive https://github.com/pfinkbeiner/fi-vim-config.git ~/.vim`

`cd && ln -s ~/.vim/.vimrc`

## Update Bundles

Updating all bundles at once is easy. Just enter the following command
whitin your `.vim/` directory.
`git submodule foreach git pull origin master && git submodule update`

### Notice
Sometimes after cloning my current vimconfig you might get some error while commiting.
It seems that vim doens't exit clean. So look where your vim is located
with `which vim`. In my case `git config --global core.editor /usr/bin/vim` fixed the
problem.


## List of plugins.
* [abolish](https://github.com/tpope/vim-abolish)
* [coffee-script](https://github.com/kchmck/vim-coffee-script)
* [colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [Emmet](https://github.com/mattn/emmet-vim.git)
* [endwise](https://github.com/tpope/vim-endwise)
* [fugitive](https://github.com/tpope/vim-fugitive)
* [Gist](https://github.com/mattn/gist-vim)
* [gundo](https://github.com/sjl/gundo.vim.git)
* [jshint](git://github.com/sleistner/vim-jshint.git)
* [LaTeX-Box](https://github.com/LaTeX-Box-Team/LaTeX-Box)
* [NerdTree](https://github.com/scrooloose/nerdtree)
* [obsession](https://github.com/tpope/vim-obsession)
* [surround](https://github.com/tpope/vim-surround)
* [SnipMate](https://github.com/msanders/snipmate.vim)
* [supertab](https://github.com/ervandew/supertab)
* [Webapi](https://github.com/mattn/webapi-vim)
* _typoscript syntax highlighting_


That's it, happy coding.

