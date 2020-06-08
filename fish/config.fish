#!/usr/bin/fish

fish_vi_key_bindings
fish_vi_cursor

pfetch
# echo '    ~~ (:==< ~~~ '
set_color blue && busybox pwd

abbr q 'exit'
abbr a 'exit'
abbr d 'doas'
abbr r 'clear'
abbr k 'kill -a'
abbr l 'ls -Al'
abbr lb 'lsblk'
abbr h 'man'
abbr t 'tldr'
abbr m 'doas busybox mount'
abbr u 'doas busybox umount -r /mnt'
abbr e 'echo'
abbr c 'bat'
abbr j '$PAGER'
abbr b 'busybox less'
abbr f 'grep'
abbr s 'sed'
abbr n 'wc -l'
abbr w 'whereis'

abbr v 'nvim'
abbr V 'doas nvim'


abbr xi 'doas xbps-install -Su'
abbr xr 'doas xbps-remove -R'
abbr xo 'doas xbps-remove -O'
abbr xs 'xbps-query -S'
abbr xl 'xbps-query -l'
abbr x 'xbps-query -Rs'
abbr y 'torsocks -i youtube-dl'
abbr z 'torsocks -i wget -r'
abbr g 'git clone'
abbr p 'git pull -r'
abbr ga 'git add --all'
abbr gc 'git commit -m'
abbr gp 'git push -u origin master'
abbr gb 'git branch'
abbr gm 'git merge'
abbr gs 'git status'
abbr gw 'git switch'
abbr gh 'git checkout'

abbr M 'make && doas make install && make clean'
abbr i 'for i in ()'
