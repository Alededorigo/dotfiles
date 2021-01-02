syntax enable
set nocompatible
filetype off
set relativenumber
set splitbelow
set splitright
set t_Co=256
set laststatus=2
set clipboard=unnamed
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set rtp+=~/.vim/bundle/Vundle.vim

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

call plug#begin('~/.vim/plugged')

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
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call plug#end()            " required
filetype plugin indent on    " required
let g:SimpylFold_docstring_preview=1
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let python_highlight_all=1
syntax on
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
