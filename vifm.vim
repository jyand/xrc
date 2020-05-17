"VIFM
only
colorscheme based

"Window Manager emulation
nnoremap . :!$TERMINAL -e nvim %f 2> /dev/null &<CR>
nnoremap C :!xterm -e scim %f 2> /dev/null &<CR>
nnoremap , :!$TERMINAL -e vifm 2> /dev/null &<CR>
map L :!xterm -hold -e $PAGER %f & 2> /dev/null<CR>
map I :!sxiv *.png *.jpg *.gif *.jpeg *.bmp 2> /dev/null &<CR>
map B :!firejail --net=none vimb %f 2> /dev/null &<CR>
map b :!$BROWSER %f 2> /dev/null &<CR>

"mappings
nnoremap f :!fish<CR>
nnoremap v :!$EDITOR %f<CR>
nnoremap i :touch
nnoremap a :mkdir
nnoremap r :rename
nnoremap w za
nnoremap e :view<CR>
noremap J G
nnoremap H :cd<CR>
nnoremap O :cd /opt<CR>
nnoremap o :sp!<CR>
nnoremap s :vs!<CR>
nnoremap <Tab> :si<CR>
map ~ :siblprev<CR>
map K :2<CR>
map U :!unzip %c<CR>
map t :tree<CR>
map T :tree!<CR>
map * :select *.
map _ :!

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
filetype *.md mdcat %f | bat
filetype *.html,*.htm,*.xhtml firejail --net=none vimb %f 2> /dev/null &
filetype *.pdf,*.ps,*.eps,*.ps.gz,*.djvu zathura %f 2> /dev/null & 
filetype *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.xpm sxiv %f 2> /dev/null &
filetype *.csv,*.odt,*.xls,*.xlsx scim
filetype *.wav,*.mp3,*.flac,*.m4a,*.wma,*.ape firejail --net=none deadbeef %f 2> /dev/null &
filetype *.avi,*.mp4,*.wmv,*.3gp,*.ogv,*.mkv,*.mpg,*.mpeg,*.vob,*.fl[icv],*.m2v,*.mov,*.webm,*.ts,*.mts,*.m4v firejail --net=none mpv %f 2> /dev/null &
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
