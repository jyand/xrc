#!/bin/sh

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
export PAGER="vimpager"
export MANPAGER="$PAGER"

# Default Applications
export WIN="bspwm"
export TERMINAL="lxterminal"
export EDITOR="vis"
export FILE="vifm"
export READER="zathura"
export IMAGE="sxiv"
export BROWSER="icecat"

# Auto-start desktop after logging in from tty
! pgrep -x $WIN > /dev/null && exec startx 2> /dev/null
