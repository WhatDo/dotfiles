filetype off
call plug#begin('~/.vim/plugged/')
Plug 'justinmk/vim-sneak'
Plug 'vim-scripts/lettuce.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'sjl/vitality.vim'
call plug#end()

colorscheme lettuce

syntax on
set exrc
set secure
set ignorecase
set smartcase
set nu
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set cindent
set colorcolumn=+1
"set tw=80

map <C-n> :NERDTreeToggle<CR>
filetype plugin indent on
