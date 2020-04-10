#!/bin/sh

export PATH="/bin":"/usr/bin":"/usr/local/bin":"/sbin":"/usr/sbin":"/plan9/bin":"/opt/bin"
export XAUTHORITY="$HOME/.local/.Xauthority"
# Default Applications
export PAGER="less"
export MANPAGER="vimpager"
export WIN="i3"
export TERMINAL="xterm"
export T="st"
export EDITOR="nvim"
export E="vis"
export FILE="vifm"
export READER="zathura"
export IMAGE="sxiv"
export BROWSER="librefox"

# Auto-start desktop after logging in from tty
[ $(tty) = /dev/tty1 ] || ! pgrep -x $WIN > /dev/null && 
        doas swapon /dev/sda1 > /dev/null && exec startx
