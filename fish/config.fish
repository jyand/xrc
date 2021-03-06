#!/usr/bin/env fish

fish_vi_key_bindings
fish_vi_cursor

[ $TERM = "kitty-xterm" ] && kitty + complete setup fish | source

set fish_cursor_default line
set fish_cursor_insert underscore
set fish_cursor_visual block
set fish_cursor_replace block

abbr q 'exit'
abbr a 'exit'
abbr z 'math'
abbr d 'doas'
abbr r 'busybox clear'
abbr k 'busybox kill'
abbr j 'busybox pgrep'
abbr l 'exa -alhHF'
abbr h 'man'
abbr hk 'apropos'
abbr t 'tldr'
abbr y 'cheat'
abbr b 'lsblk'
abbr m 'doas mount'
abbr u 'doas umount -R /mnt'
abbr e 'busybox echo'
abbr c 'busybox cat'
abbr L '$PAGER'
abbr f 'grep'
abbr n 'busybox wc -l'
abbr i 'openbsd-file'
abbr s 'sed'
abbr w 'whereis'
abbr v 'nvim'
abbr V 'doas nvim'

abbr x 'xbps-query -S'
abbr xl 'xbps-query -l'
abbr xs 'xbps-query -Rs'
abbr xx 'xbps-query -x'
abbr X 'xbps-query -X'
abbr xi 'doas xbps-install -Su'
abbr xr 'doas xbps-remove -R'
abbr xo 'doas xbps-remove -O'
abbr W 'torsocks -i wget -r'
abbr U 'youtube-dl -x --audio-format flac --audio-quality 0 ""'
abbr Y 'youtube-dl ""'
abbr G 'git clone'
abbr g 'git add --all && git commit -m ""'
abbr p 'git push'
abbr gp 'git pull'
abbr gb 'git branch'
abbr gm 'git merge'
abbr gs 'git status'
abbr gw 'git switch'
abbr gc 'git checkout'

abbr ping 'doas busybox ping'
abbr tar 'busybox tar -xvf'

abbr M 'make && doas make install && make clean'
