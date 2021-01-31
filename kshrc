#!/usr/bin/env ksh
# ksh is usually a symlink to oksh, loksh, mksh, or ksh93

export PS1="\e[0;31m{\e[0;33m\w\e[1;31m}\e[0;32m$(busybox echo $TERM)\e[1;34m[\e[0;36m\#\e[1;34m]\n \e[0;35m\$(printf '\U000003bc')\e[0;37m\$(printf '\e[2 q') "

ufetch

# Aliases
alias q="exit"
alias a="exit"
alias z="exit"
alias d="doas"
alias r="busybox clear"
alias k="busybox kill"
alias j="busybox pgrep"
alias l="exa -alhHF"
alias h="man"
alias hk="apropos"
alias t="tldr"
alias y="cheat"
alias b="lsblk"
alias m="doas mount"
alias u="doas umount -R /mnt"
alias e="busybox echo"
alias c="busybox cat"
alias L="$PAGER"
alias f="grep"
alias n="busybox wc -l"
alias i="openbsd-file"
alias s="sed"
alias w="whereis"
alias v="nvim"
alias V="doas nvim"

alias x="xbps-query -S"
alias xl="xbps-query -l"
alias xs="xbps-query -Rs"
alias xx="xbps-query -x"
alias X="xbps-query -X"
alias xi="doas xbps-install -Su"
alias xr="doas xbps-remove -R"
alias xo="doas xbps-remove -O"
alias W="torsocks -i wget -r"
alias U="youtube-dl -x --audio-format flac --audio-quality 0 """
alias Y="youtube-dl """
alias G="git clone"
alias g="git add --all && git commit -m """
alias p="git push"
alias gp="git pull"
alias gb="git branch"
alias gm="git merge"
alias gs="git status"
alias gw="git switch"
alias gc="git checkout"

alias ping="doas busybox ping"
alias tar="busybox tar -xvf"

alias M="make && doas make install && make clean"
