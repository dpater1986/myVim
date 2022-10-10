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

" SETUP ----------------------------------------------------------------{{{
set nocompatible
filetype on
filetype plugin on
syntax on
set number relativenumber
set cursorline
highlight Cursorline ctermbg=Yellow cterm=bold guibg=#2b2b2b
set cursorcolumn
set shiftwidth=4
set tabstop=4
set expandtab
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set path+=**
set spell spelllang=nl,en_us

let g:auto_save=1
let g:auto_save_events=["InsertLeave", "TextChanged"]
let $FZF_DEFAULT_COMMAND = 'fdfind --type f --hidden --follow --exclude .git --ignore-file ~/.ignore'
set mouse=a "Allows mouse usage inside vim. Great for noobs.
set noerrorbells

" Markdown Edits
  let g:vim_markdown_autowrite = 1
  let g:vim_markdown_no_extensions_in_markdown = 1
  let g:vim_markdown_conceal = 0
  let g:vim_markdown_override_foldtext = 0
  let g:vim_markdown_folding_disabled = 1
  let g:vim_markdown_new_list_item_indent = 0
  " }}}
" PLUGINS --------------------------------------------------------------{{{
" Install {{{
    " Install plug if not installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
" }}}

call plug#begin('~/.vim/plugged')

    Plug 'joshdick/onedark.vim' "The One Dark Theme
    Plug 'vim-airline/vim-airline' "Airline lint 
    Plug 'vim-airline/vim-airline-themes' "Airline lint them
    Plug 'plasticboy/vim-markdown' "Markdown syntax highlighting
    Plug '907th/vim-auto-save' "auto saves files as you edit
    Plug 'jdhao/better-escape.vim' "remaps esc key to jj
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim' "Fuzzy find plugin

call plug#end()
" }}}
" MAPPINGS -------------------------------------------------------------{{{
let g:better_escape_shortcut = 'jj'
let g:better_escape_interval = 250

" }}}
" STATUS LINE ----------------------------------------------------------{{{
"g:onedark_hide_enmofbuffer:1
"g:ondedark_termcolors:256
"g:onedark_terminal_italics:1
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
" }}}
" LOOKS ----------------------------------------------------------------{{{
colorscheme onedark 
set background=dark
set termguicolors
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline#extensions#tabline#formatter = 'default'

"}}}
" SCRIPTS---------------------------------------------------------------{{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
