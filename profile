#!/bin/sh

# env
export PATH="/opt/bin":"/usr/bin":"$HOME/.local/bin":"/usr/lib/psql12/bin"
export MANPATH="/usr/share/man":"/opt/man"
export ENV="$HOME/.kshrc"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="/tmp/runtime-jyan"
export VIFM="$XDG_CONFIG_HOME/vifm"
export XAUTHORITY="$HOME/.local/.Xauthority"
export MAIL=""
export PAGER="less"
export MANPAGER="vimpager"

# Default Applications
export WIN="bspwm"
export TERMINAL="kitty"
export EDITOR="nvim"
export FILE="vifm"
export READER="zathura"
export IMAGE="sxiv"
export BROWSER="icecat"

# Prompt
export PS1="\e[0;31m{\e[0;33m\w\e[1;31m}\e[0;32m$(echo $TERM)\e[1;34m[\e[0;36m\#\e[1;34m]\n \e[0;35m\$(printf '\U000003bc')\e[0;37m "
export PS4="\e[1;32m[\e[1;34m\u\e[1;35m@\e[1;31m\$(printf '\U000003bc')\e[1;32m] \e[0;33m\$(printf '\U000003bb')\e[0;36m "

# Auto-start desktop after logging in from tty
! busybox pgrep -x $WIN > /dev/null && exec startx 2> /dev/null
