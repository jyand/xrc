#!/bin/sh

# env
export PATH="/opt/bin":"/usr/bin":"$HOME/.local/bin":"/usr/lib/psql12/bin"
export MANPATH="/usr/share/man":"/opt/man"
export ENV="$HOME/.kshrc"
export XDG_CONFIG_HOME="$HOME/.config"
export TERMINFO_DIRS="$XDG_CONFIG_HOME/terminfo"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_RUNTIME_DIR="/tmp/runtime-jyan"
export VIFM="$XDG_CONFIG_HOME/vifm"
export XAUTHORITY="$HOME/.local/.Xauthority"
export MAIL=""
export PAGER="busybox-less"
export MANPAGER="vimpager"

# Default Applications
export WIN="bspwm"
export TERMINAL="kitty"
export EDITOR="nvim"
export FILE="vifm"
export READER="zathura"
export IMAGE="sxiv"
export BROWSER="ungoogled-chromium"

# Auto-start desktop after logging in from tty
! busybox pgrep -x $WIN > /dev/null && exec startx 2> /dev/null
