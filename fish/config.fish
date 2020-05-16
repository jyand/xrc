#!/usr/bin/fish

fish_vi_key_bindings
fish_vi_cursor

fetch
echo '    ~~ (:==< ~~~ '

abbr q 'exit'
abbr d 'doas'
abbr r 'clear'
abbr k 'kill -a'
abbr l 'ls -Al'
abbr lb 'lsblk'
abbr h 'man'
abbr m 'doas mount'
abbr u 'doas umount -R /mnt'
abbr e 'echo'
abbr c 'bat'
abbr f 'grep'
abbr s 'sed'
abbr n 'wc -l'
abbr w 'whereis'

abbr v 'nvim'
abbr V 'doas nvim'


abbr xi 'doas xbps-install -Su'
abbr xr 'doas xbps-remove -R'
abbr xs 'xbps-query -S'
abbr xl 'xbps-query -l'
abbr x 'xbps-query -Rs'
abbr y 'torsocks -i youtube-dl'
abbr z 'torsocks -i wget -r'
abbr g 'torsocks -i git clone'
abbr p 'git pull'
abbr ga 'git add --all'
abbr gc 'git commit -m'
abbr gp 'git push -u origin master'
abbr gb 'git branch'
abbr gm 'git merge'
abbr gs 'git status'