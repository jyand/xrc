"VIFM
view
vs
colorscheme based

"Window Manager emulation
nnoremap o :on | :!$TERMINAL 2> /dev/null &<CR>
nnoremap O :shell<CR>
nnoremap f :on | :!$TERMINAL -e fish 2> /dev/null &<CR>
nnoremap , :on | :!$TERMINAL -e vifm 2> /dev/null &<CR>
nnoremap . :on | :!$TERMINAL -e $EDITOR %f 2> /dev/null &<CR>
nnoremap C :on | :!$TERMINAL -e vd %f 2> /dev/null &<CR>
map I :!sxiv *.png *.jpg *.gif *.jpeg *.bmp 2> /dev/null &<CR>
map b :sp | :!firejail $BROWSER -P reader %f 2> /dev/null &<CR>
map B :sp | :!chromium %f 2> /dev/null &<CR>

"mappings
nnoremap F :!fish<CR>
nnoremap i :touch
nnoremap a :mkdir
nnoremap r :rename
nnoremap w za
nnoremap e :view<CR>
noremap J G
nnoremap K :2<CR>
vnoremap K gg
nnoremap M :cd /media<CR>
nnoremap gm :cd ~/Documents/Manual<CR>
nnoremap gd :cd ~/Documents/Djvu<CR>
nnoremap gh :cd ~/Documents/HTMLdocs<CR>
nnoremap gt :cd ~/Documents/Templates<CR>
nnoremap gi :cd ~/Documents/Images<CR>
nnoremap ga :cd ~/Documents/Audio<CR>
nnoremap gg :cd<CR>
nnoremap go :cd /opt<CR>
nnoremap V :sp<CR>
nnoremap s :vs!<CR>
nnoremap > :si<CR>
map < :siblprev<CR>
map U :!busybox unzip %c<CR>
map E :!vis %f<CR>
map t :tree!<CR>
map * :select *.
map _ :!
map m :
noremap <Tab> <c-w><c-l> 

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
set scrolloff=1
set undolevels=16
set suggestoptions=normal,visual,view,otherpane,keys,marks,registers,delay:5000
set vifminfo=
"set vifminfo=dhistory,chistory,tui,shistory,uphistory,fhistory,dirstack,registers

"Image Previews
fileviewer *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.xpm
                        \ kitty icat --transfer-mode=file --place=%pwx%ph@%pxx%py %c
                        \ %pc
                        \ kitty icat --transfer-mode=file --clear
" DjVu Previews
fileviewer *.djvu
                        \ djvutxt %c
" Manual Previews
fileviewer *.[1-9]
                        \ man ./%c
" MarkDown Previews
fileviewer *.md
                        \ mdcat %c
" Web Page Previews
fileviewer *.htm,*.html,*.php
                        \ lynx -dump %c
" List Archive Contents
fileviewer *tar.*
                        \ tar -vtf %c
fileviewer *.zip
                        \ busybox unzip -l %c

"Default file associations
filetype *.pdf,*.ps,*.eps,*.ps.gz,*.djvu zathura %f 2> /dev/null & 
filetype *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.xpm sxiv %f 2> /dev/null &
filetype *.csv,*.xls,*.xlsx scim
filetype *.wav,*.mp3,*.flac,*.m4a,*.wma,*.ape deadbeef --queue %f 2> /dev/null &
filetype *.avi,*.mp4,*.wmv,*.3gp,*.ogv,*.mkv,*.mpg,*.mpeg,*.vob,*.fl[icv],*.m2v,*.mov,*.webm,*.mts,*.m4v mpv %f 2> /dev/null &
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

"djvu/pdf Previews - this works but takes way too long to navigate
"fileviewer *.djvu,*.pdf
                        "\ convert %c[0] preview.png && kitty icat --silent --transfer-mode=file --place=%pwx%ph@%pxx%py preview.png
                        "\ %pc
