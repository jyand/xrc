#!/bin/sh


export PS1="\e[0;31m{\e[0;33m\$PWD\e[1;31m}\n \e[0;35m\$(printf '\U000003bc')\e[0;36m "
export PS2="\e[1;32m[\e[1;34m\u\e[1;35m@\e[1;31m\$(printf '\U000003bc')\e[1;32m] \e[0;33m\$(printf '\U000003bb')\e[0;36m "

# env
export PATH="/bin":"/usr/bin":"/sbin":"/usr/sbin":"/opt/bin"
export MANPATH="/usr/share/man":"/opt/man"
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

# Auto-start desktop after logging in from tty
! pgrep -x $WIN > /dev/null && exec startx 2> /dev/null
