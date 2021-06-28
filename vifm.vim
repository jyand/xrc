"VIFM
view
vs
colorscheme based

"Window Manager emulation
nnoremap o :on | :!$TERMINAL 2> /dev/null &<CR>
nnoremap O :shell<CR>
nnoremap f :on | :!$TERMINAL -e zsh 2> /dev/null &<CR>
nnoremap , :on | :!$TERMINAL -e vifm 2> /dev/null &<CR>
nnoremap . :on | :!$TERMINAL -e $EDITOR %f 2> /dev/null &<CR>
nnoremap C :on | :!$TERMINAL -e scim %f 2> /dev/null &<CR>
map I :!sxiv *.png *.jpg *.gif *.jpeg *.bmp *.webp *.ff 2> /dev/null &<CR>
map b :sp | :!chromium %f 2> /dev/null &<CR>
"map B :sp | :!firejail icecat -P reader %f 2> /dev/null &<CR>

"mappings
nnoremap F :!zsh<CR>
nnoremap i :touch
nnoremap a :mkdir
nnoremap r :rename
nnoremap w za
nnoremap e :view<CR>
noremap J G
nnoremap K :2<CR>
vnoremap K gg 
nnoremap gm :cd /media<CR>
nnoremap gd :cd ~/Documents/Djvu<CR>
nnoremap gh :cd ~/Documents/HTMLdocs<CR>
nnoremap gt :cd ~/Documents/Templates<CR>
nnoremap gi :cd ~/Documents/Images<CR>
nnoremap ga :cd ~/Documents/Audio<CR>
nnoremap go :cd /opt<CR>
nnoremap cd :cd<CR>
nnoremap V :sp<CR>
nnoremap s :vs!<CR>
nnoremap S :sor<CR>
map - :set sort=-dir,name<CR>
map + :set sort=+dir,name<CR>
nnoremap < :si<CR>
map > :siblprev<CR>
noremap R :undolist<CR>
nnoremap U u
nnoremap u :!busybox unzip %c<CR>
map x :!busybox tar -xf %c<CR>
map E :!vis %f<CR>
map t :tree!<CR>
map * :select *.
nnoremap _ q:
map ; :!
map m :
noremap <Tab> <c-w><c-l> 
noremap z :select<CR>
noremap ) }
noremap ( {

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
set vifminfo=registers
"set vifminfo=dhistory,chistory,tui,shistory,uphistory,fhistory,dirstack

"Image Previews
fileviewer *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.xpm,*.webp,*.ff
                        \ mediainfo %c
                        "\ kitty icat --transfer-mode=file --place=%pwx%ph@%pxx%py %c
                        "\ %pc
                        "\ kitty icat --transfer-mode=file --clear
fileviewer *.wav,*.mp3,*.flac,*.m4a,*.wma,*.amr,*.opus,*.ogg,*.mpeg,*.mpg,*.avi,*.mp4,*.wmv,*.mkv,*.mpg,*.mpeg,*.vob,*.mov,*.webm
                        \ mediainfo %c

" Web Page Previews
fileviewer *.htm,*.html,*.php
                        \ lynx -dump %c
" DjVu Previews
fileviewer *.djvu
                        \ djvutxt %c
" PDF Info
fileviewer *.pdf
                        \ pdfinfo %c
" Manual Previews
fileviewer *.[1-9]
                        \ man ./%c
" MarkDown Previews
fileviewer *.md
                        \ mdcat -p %c
" List Archive Contents
fileviewer *tar.*
                        \ tar -vtf %c
fileviewer *.zip
                        \ busybox unzip -l %c

"Default file associations
filetype *.pdf,*.ps,*.eps,*.ps.gz,*.djvu zathura %f 2> /dev/null & 
filetype *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.xpm,*.webp,*.ff sxiv %f 2> /dev/null &
filetype *.csv,*.xls,*.xlsx scim
"filetype *.wav,*.mp3,*.flac,*.m4a,*.wma,*.ape deadbeef --queue %f 2> /dev/null &
filetype *.wav,*.aiff,*.pcm,*.mp3,*.flac,*.m4a,*.wma,*.ape,*.ogg,*.opus mpv --window-scale=0.5 %f 2> /dev/null &
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
