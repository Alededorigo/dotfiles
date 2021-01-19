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

" -- STATUS BAR -- "

set laststatus=2

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

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

filetype plugin indent on    " required
let g:ycm_autoclose_preview_window_after_completion=1
let python_highlight_all=1
syntax on
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
