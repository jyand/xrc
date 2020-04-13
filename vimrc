"nvim
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

" Different cursor types for different modes
set guicursor+=v-ve:blockCursor-blinkwait100-blinkoff50-blinkon100
set guicursor+=n-c:ver50-lCursor
set guicursor+=i-r:hor100-lCursor
set cursorline

set background=dark
set termguicolors
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
set wildmenu
set nocompatible

filetype on
filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

nnoremap m :Man
"nvim
