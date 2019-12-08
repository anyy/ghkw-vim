# ghkw-vim

Vim plugin for [ghkw](https://github.com/kyoshidajp/ghkw), that searches how many keywords in GitHub Code by GitHub API.

## Usage
Call `:GhkwSelectetd` to search on Github for the the current line or keyword selected in visual mode.

Call `:Ghkw` to search on Github for the argument keywords.

## Installation
ghkw-vim requires **ghkw** to be available in your `$PATH`. 

Plugin installation:
*  [Pathogen](https://github.com/tpope/vim-pathogen)
  * `git clone https://github.com/gazelle0130/ghkw-vim.git ~/.vim/bundle/ghkw-vim`
*  [vim-plug](https://github.com/junegunn/vim-plug)
  * `Plug 'gazelle0130/ghkw-vim'`
*  [NeoBundle](https://github.com/Shougo/neobundle.vim)
  * `NeoBundle 'gazelle0130/ghkw-vim'`
*  [Vundle](https://github.com/gmarik/vundle)
  * `Plugin 'gazelle0130/ghkw-vim'`
*  [Vim packages](http://vimhelp.appspot.com/repeat.txt.html#packages) (since Vim 7.4.1528)
  * `git clone https://github.com/gazelle0130/ghkw-vim.git ~/.vim/pack/plugins/start/ghkw-vim`
*  [dein](https://github.com/Shougo/dein.vim)
  * `call dein#add('gazelle0130/ghkw-nvim')`

