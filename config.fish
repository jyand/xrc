#!/usr/bin/fish
fish_vi_key_bindings
fish_vi_cursor

ufetch

abbr v 'nvim'
abbr V 'doas nvim'

abbr q 'exit'
abbr d 'doas'
abbr r 'clear'
abbr k 'kill -a'
abbr l '$PAGER'
abbr h 'man'
abbr m 'doas mount'
abbr u 'doas umount -R /mnt'
abbr e 'echo'
abbr c 'bat'
abbr f 'grep'
abbr s 'sed'
abbr lb 'lsblk'
abbr n 'wc -l'
abbr w 'whereis'

abbr xi 'doas xbps-install -Su'
abbr xr 'doas xbps-remove -R'
abbr x 'xbps-query -Rs'
abbr xs 'xbps-query -S'
abbr xl 'xbps-query -l'

abbr g 'git'
abbr gg 'git clone'
abbr G 'git pull'
abbr ga 'git add --all'
abbr gc 'git commit -m'
abbr gp 'git push -u origin master'
abbr gb 'git branch'
abbr gm 'git merge'
abbr gs 'git status'