#!/bin/sh

export PATH=$PATH:"/plan9/bin":"/opt/bin"
export XDG_CONFIG_HOME="~/.config"
# Default Applications
export WIN="i3"
export TERMINAL="xterm"
export EDITOR="nvim"
export FILE="vifm"
export READER="zathura"
export IMAGE="sxiv"
export BROWSER="icecat"

# Auto-start desktop after logging in from tty
! pgrep -x $WIN > /dev/null && exec startx
