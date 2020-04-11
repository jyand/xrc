"vifm

set vicmd=nvim
set number relativenumber
only

nnoremap f :!fish<cr>
nnoremap v :!nvim<cr>

nnoremap w za
nnoremap e :view<CR>
nnoremap J G
nnoremap i :sp<CR>
nnoremap o :o<CR>
nnoremap s :vs<CR>
nnoremap <Tab> :si<CR>

map ~ :siblprev<CR>
map K :2<CR>
map E :!$EDITOR %f<CR>
map b :!$BROWSER %f<CR>
map B :!vimb %f > /dev/null &<CR>
map L :!busybox less %f<CR>
map U :!unzip %c<CR>
map F :!feh %c<CR>
map I :!sxiv *.png *.jpg *.gif *.jpeg *.bmp > /dev/null &<CR>

set syscalls
set nofollowlinks
set sortnumbers
set undolevels=16
set suggestoptions=normal,visual,view,otherpane,keys,marks,registers
set ignorecase
set smartcase
set nohlsearch
set incsearch
set scrolloff=0

filetype *.pdf,*.ps,*.eps,*.ps.gz,*.djvu zathura %f 2>/dev/null & 
filetype *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.xpm sxiv %f 2>/dev/null &
filetype *.csv,*.odt,*.xls,*.xlsx scim
filetype *.wav,*.mp3,*.flac,*.m4a,*.wma,*.ape firejail mpv %f > /dev/null&
filextype *.avi,*.mp4,*.wmv,*.dat,*.3gp,*.ogv,*.mkv,*.mpg,*.mpeg,*.vob,*.fl[icv],*.m2v,*.mov,*.webm,*.ts,*.mts,*.m4v firejail mpv %f > /dev/null &


filetype *.o nm %f | less
filetype *.[1-8] man ./%c

filetype *.md5
       \ {Check MD5 hash sum}
       \ md5sum -c %f %S,
filetype *.sha1
       \ {Check SHA1 hash sum}
       \ sha1sum -c %f %S,
filetype *.sha256
       \ {Check SHA256 hash sum}
       \ sha256sum -c %f %S,
filetype *.sha512
       \ {Check SHA512 hash sum}
       \ sha512sum -c %f %S,
filetype *.asc
       \ {Check signature}
       \ !!gpg --verify %c,

set vifminfo=dhistory,chistory,tui,shistory,
    \phistory,fhistory,dirstack,registers,bookmarks,bmarks
"vifm
