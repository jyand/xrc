"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

" Tabs are 8 space characters
set tabstop=8 softtabstop=0 expandtab shiftwidth=8 smarttab

" Number lines are relative in normal mode and absolute in insert mode
set number relativenumber
augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup end
set numberwidth=2

set background=dark
set termguicolors
set guicursor+=v-ve:ver50-lCursor
set guicursor+=n-c:blockCursor-blinkwait100-blinkoff50-blinkon100
set guicursor+=i-r:hor100-lCursor
set cursorline

set title
set showmode
set showcmd
set showmatch
set laststatus=2
set report=0

set t_Co=256
set spelllang=en_US
set encoding=utf-8
set incsearch

filetype on
filetype plugin indent on

set wildmenu
set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
"Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

"colorscheme darkblue
"colorscheme delek
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
