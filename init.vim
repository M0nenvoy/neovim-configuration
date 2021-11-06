call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
"Plug 'Raimondi/delimitMate'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'sainnhe/sonokai'
Plug 'preservim/vim-colors-pencil'
Plug 'voldikss/vim-floaterm'
Plug 'OmniSharp/omnisharp-vim'
Plug 'beyondmarc/hlsl.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'tikhomirov/vim-glsl'

call plug#end()
lua require "init"
syntax on
colo pink
let g:coc_global_extensions=['coc-omnisharp']
let configDirectory=expand('~\AppData\Local\nvim\') 
exec 'source' configDirectory . 'mapping.vim'
"exec 'source' configDirectory . 'highlight.vim'
exec 'source' configDirectory . 'emmet.vim'
exec 'source' configDirectory . 'prettier.vim'
exec 'source' configDirectory . 'autocmd.vim'
exec 'source' configDirectory . 'commands.vim'
exec 'source' configDirectory . 'nerdcommenter.vim'

let delimitMate_matchpairs = "(:),[:],{:}"
"let delimitMate_expand_cr = 1

set autoindent
" Better use "+ (system register, pussy)
"set clipboard=unnamed
set list
set nowrap
set tabstop=4
set expandtab
set shiftwidth=4
set backspace=2

set cursorline
set nu
set rnu
set numberwidth=1
set nobackup
set updatetime=300
" set signcolumn=number
set mouse=a
set cmdheight=2
set foldmethod=indent
"set foldenable
set nofoldenable
set noswapfile

"set shell=bash


" Status line

set statusline=
set statusline+=\ %{(&fenc!=''?&fenc:&enc)}
set statusline+=\, 
set statusline+=\ %{&fileformat}
set statusline+=\,
set statusline+=\ %F
set statusline+=%=
set statusline+=\ %{strftime('%H:%M')}
set statusline+=\ %*
