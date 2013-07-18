# fi-vim-config
This repository contains my current vim config with all plugins that i love to use. Every plugin is included as a submodule for easy updating.

For a detailed description of each plugin I would recommend their own git repository.

## Usage
`git clone --recursive https://github.com/pfinkbeiner/fi-vim-config.git ~/.vim`

`cd && ln -s ~/.vim/.vimrc`

### Notice
Sometimes after cloning my current vimconfig you might get some error while commiting.
It seems that vim doens't exit clean. So look where your vim is located
with `which vim`. In my case `git config --global core.editor /usr/bin/vim` fixed the
problem.


## List of plugins.
* [endwise](https://github.com/tpope/vim-endwise)
* [fugitive](https://github.com/tpope/vim-fugitive)
* [obsession](https://github.com/tpope/vim-obsession)
* [surround](https://github.com/tpope/vim-surround)
* [gundo](https://github.com/sjl/gundo.vim.git)
* [zencoding](https://github.com/mattn/zencoding-vim)
* [Gist](https://github.com/mattn/gist-vim)
* [NerdTree](https://github.com/scrooloose/nerdtree)
* [SnipMate](https://github.com/msanders/snipmate.vim)
* [supertab](https://github.com/ervandew/supertab)
* [coffee-script](https://github.com/kchmck/vim-coffee-script)
* [colors-solarized](https://github.com/altercation/vim-colors-solarized)


That's it, happy coding.

