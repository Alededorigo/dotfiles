" ~/.vimrc

syntax enable
colo slate
set relativenumber
set nocompatible
filetype off
set nu
set splitbelow
set splitright
set t_Co=256

" -- PLUGIN MANAGER -- "

call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.vim'
Plug 'vifm/vifm.vim'
Plug 'vimwiki/vimwiki'                            " Vim wiki
Plug 'scrooloose/nerdtree'						" added nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-python/python-syntax'
Plug 'jreybert/vimagit'
Plug 'severin-lemaignan/vim-minimap'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ap/vim-css-color'                           " Color previews for CSS
Plug 'tpope/vim-surround'                         " Change surrounding marks
Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'kien/ctrlp.vim'

call plug#end()
