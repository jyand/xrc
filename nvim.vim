"nvim
syntax on
colorscheme based
filetype on
filetype plugin indent on

" Tabs are 8 space characters
set tabstop=8 softtabstop=0 expandtab shiftwidth=8 smarttab

" Number lines are relative in normal mode and absolute in insert mode
set number relativenumber
set numberwidth=2
augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup end
" Cursor column on in normal mode and off in insert mode
set cursorcolumn
augroup columntoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set cursorcolumn
        autocmd BufLeave,FocusLost,InsertEnter * set nocursorcolumn
augroup end

" Different cursor types for different modes
set guicursor+=v-r:blockCursor
set guicursor+=n-c:ver50-lCursor
set guicursor+=i:hor100-lCursor
set cursorline

"set background=dark
"set termguicolors
set title
set showmode
set showcmd
set showmatch
set laststatus=2
set report=0
set spelllang=en_US
set encoding=utf-8
set incsearch
set wildmenu

call plug#begin('~/.config/nvim/plugged')
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

nnoremap m :Man
noremap <Tab> .
nnoremap . }
map ; {
"nvim
