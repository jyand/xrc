#!/usr/bin/env fish

fish_vi_key_bindings
fish_vi_cursor


ufetch
set_color brred && busybox echo (fish_git_prompt)

kitty + complete setup fish | source

abbr q 'exit'
abbr a 'exit'
abbr z 'exit'
abbr d 'doas'
abbr r 'busybox clear'
abbr k 'busybox killall'
abbr l 'exa -alhHF'
abbr lb 'lsblk'
abbr h 'man'
abbr hk 'apropos'
abbr t 'tldr'
abbr y 'cheat'
abbr m 'doas mount'
abbr u 'doas umount -R /mnt'
abbr e 'busybox echo'
abbr c 'mdcat'
abbr b 'busybux tar -xvf'
abbr j '$PAGER'
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

abbr M 'bmake && doas bmake install && bmake clean'
abbr pgrep 'busybox pgrep'
