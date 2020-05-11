"VIFM
only
colorscheme based

"Window Manager emulation
nnoremap . :!$TERMINAL -e nvim %f > /dev/null &<CR>
nnoremap C :!xterm -e scim %f > /dev/null &<CR>
map ; :!$TERMINAL -e vifm > /dev/null &<CR>
map L :!$TERMINAL -e bat %f > /dev/null &<CR>
map I :!sxiv *.png *.jpg *.gif *.jpeg *.bmp > /dev/null &<CR>
map b :!vimb %f > /dev/null &<CR>
map B :!$BROWSER %f &<CR>
nnoremap H :!i3 split toggle > /dev/null<CR>
map F :!i3 floating toggle > /dev/null<CR>

"mappings
nnoremap f :!fish<CR>
nnoremap E :!$EDITOR %f<CR>
nnoremap t :touch
nnoremap m :mkdir
nnoremap R :rename
nnoremap w za
nnoremap e :view<CR>
nnoremap J G
nnoremap i :sp<CR>
nnoremap o :o<CR>
nnoremap s :vs<CR>
nnoremap <Tab> :si<CR>
map ~ :siblprev<CR>
map K :2<CR>
map U :!unzip %c<CR>

"settings
set vicmd=nvim
set number relativenumber
set syscalls
set nofollowlinks
set sortnumbers
set ignorecase
set smartcase
set nohlsearch
set incsearch
set scrolloff=0
set undolevels=16
set suggestoptions=normal,visual,view,otherpane,keys,marks,registers
set vifminfo=dhistory,chistory,tui,shistory,uphistory,fhistory,dirstack,registers

"Default file associations
filetype *.pdf,*.ps,*.eps,*.ps.gz,*.djvu zathura %f 2>/dev/null & 
filetype *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.xpm sxiv %f 2>/dev/null &
filetype *.csv,*.odt,*.xls,*.xlsx scim
filetype *.wav,*.mp3,*.flac,*.m4a,*.wma,*.ape firejail mpv %f > /dev/null &
filetype *.avi,*.mp4,*.wmv,*.3gp,*.ogv,*.mkv,*.mpg,*.mpeg,*.vob,*.fl[icv],*.m2v,*.mov,*.webm,*.ts,*.mts,*.m4v firejail mpv %f > /dev/null &
filetype *.o nm %f | $PAGER
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
