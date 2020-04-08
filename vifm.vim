"vifm

set vicmd=nvim
set number relativenumber

nnoremap s :!doas su<cr>
nnoremap f :!fish<cr>
nnoremap v :!nvim<cr>

nnoremap I cw<c-a>
nnoremap S cw<c-u>
nnoremap A cw
nnoremap w za
nnoremap e :view<CR>
nnoremap J G
nnoremap <Tab> :si<CR>

map K :2<CR>
map E :!$EDITOR %f<CR>
map b :!$BROWSER %f<CR>
map L :!less %f<CR>
map U :!unzip %c<CR>
map F :!feh %c<CR>

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

filetype *.dat,*.m $EDITOR
filetype *.pdf,*.ps,*.eps,*.ps.gz,*.djvu zathura %f 2>/dev/null & 
filetype *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.xpm sxiv %f 2>/dev/null &
filetype *.wav,*.mp3,*.flac,*.m4a,*.wma,*.ape firejail mpv %f &
filetype *.csv,*.odt,*.xls,*.xlsx scim
filextype *.avi,*.mp4,*.wmv,*.dat,*.3gp,*.ogv,*.mkv,*.mpg,*.mpeg,*.vob,*.fl[icv],*.m2v,*.mov,*.webm,*.ts,*.mts,*.m4v firejail mpv %f &


"fileviewer *.bmp,*.jpg,*.jpeg,*.png,*.gif,*.xpm,*.pdf,*.ps,*.eps,*.ps.gz,*.djvu w3m -o auto_image=TRUE %c 
fileviewer *.avi,*.mp4,*.wmv,*.dat,*.3gp,*.ogv,*.mkv,*.mpg,*.mpeg,*.vob,*.fl[icv],*.m2v,*.mov,*.webm,*.ts,*.mts,*.m4v,*.r[am],*.qt,*.divx,*.as[fx],*mp3,*.flac mediainfo %c 2>&1 &
filetype *.o nm %f | less
filetype *.[1-8] man ./%c
fileviewer *.[1-8] man ./%c | col -b

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
