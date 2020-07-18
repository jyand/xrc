" John DeSalvo
syntax on
filetype on
filetype plugin indent on
colorscheme based

" the keys respectively to the right of y/p use the system clipboard instead of registers
map = "*p
noremap u "*y
" consistent, symmetrical, avoids accidental undos, no need for Ctrl
nnoremap U :undo<CR>
map R :redo<CR>
" avoid  accidental repetitions
noremap <Tab> .
" move around via sections without needing to hold Shift
nnoremap . }
nnoremap , {
" making use of some keys with default mappings that are not so useful
noremap ; $
map f g`"
map t :set spell!<CR>
nnoremap m :

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
" Basic settings
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
