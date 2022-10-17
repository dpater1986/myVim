"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

set exrc
set nocompatible
set relativenumber
set number
set cursorline
set cursorcolumn
set noerrorbells
set scrolloff=8
set guicursor=
set nowrap
set colorcolumn=80
set signcolumn=yes
set cmdheight=2

set spell
set spelllang=nl,en,en_us

filetype on
filetype plugin on
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set showcmd
set showmode

set path+=**
set wildmenu
set wildignore+=**/.git/**,**/.docx/**,**/.jpg**/,**/.png/**,**/.gif/**,**/.pdf/**,**/.pyc/**,**/.exe/**,**/.flv/**,**/.img/**,**/.xlsx/**
set nohlsearch
set incsearch
set history=1000
set completeopt=menuone,noinsert,noselect

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set hidden

" Plugins
call plug#begin()

Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
