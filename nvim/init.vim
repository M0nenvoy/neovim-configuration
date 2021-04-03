call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'ptzz/lf.vim'
Plug 'mattn/emmet-vim'
Plug 'Raimondi/delimitMate'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdcommenter'
Plug 'rust-lang/rust.vim'

call plug#end()
lua require "init"
syntax on

let configDirectory=expand('~\AppData\Local\nvim\') 
exec 'source' configDirectory . 'mapping.vim'
exec 'source' configDirectory . 'highlight.vim'
exec 'source' configDirectory . 'emmet.vim'
exec 'source' configDirectory . 'prettier.vim'
exec 'source' configDirectory . 'autocmd.vim'
exec 'source' configDirectory . 'commands.vim'
exec 'source' configDirectory . 'nerdcommenter.vim'

set autoindent
set clipboard=unnamed
set nowrap
set tabstop=4
set shiftwidth=4
set backspace=2

set nonu
set nu
set numberwidth=1
set nobackup
set updatetime=300
set signcolumn=number
set mouse=a
set cmdheight=2
set foldmethod=indent
set foldenable

"set shell=bash
