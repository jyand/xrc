#!/usr/bin/fish

fish_vi_key_bindings
fish_vi_cursor

ufetch
# echo '    ~~ (:==< ~~~ '
set_color blue && busybox pwd

abbr q 'exit'
abbr a 'exit'
abbr d 'doas'
abbr r 'busybox clear'
abbr k 'busybox killall'
abbr l 'exa -al'
abbr lb 'lsblk'
abbr h 'man'
abbr hk 'apropos'
abbr t 'tldr'
abbr m 'doas busybox mount'
abbr u 'doas busybox umount -r /mnt'
abbr e 'busybox echo'
abbr c 'bat'
abbr j '$PAGER'
abbr b 'busybox less'
abbr f 'busybox grep'
abbr n 'busybox wc -l'
abbr i 'openbsd-file'
abbr s 'sed'
abbr w 'whereis'

abbr v 'nvim'
abbr V 'doas nvim'

abbr x 'xbps-query -S'
abbr xl 'xbps-query -l'
abbr xx 'xbps-query -Rs'
abbr X 'xbps-query -X'
abbr xi 'doas xbps-install -Su'
abbr xr 'doas xbps-remove -R'
abbr xo 'doas xbps-remove -O'
abbr W 'torsocks -i wget -r'
abbr g 'git clone'
abbr p 'git pull'
abbr ga 'git add --all'
abbr gc 'git commit -m ""'
abbr gp 'git push -u origin master'
abbr gb 'git branch'
abbr gm 'git merge'
abbr gs 'git status'
abbr gw 'git switch'
abbr gh 'git checkout'

abbr M 'make && doas make install && make clean'
abbr ping 'busybox ping'
abbr pgrep 'busybox pgrep'
