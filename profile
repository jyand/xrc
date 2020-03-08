#!/bin/sh

export PATH=$PATH:"/plan9/bin":"/opt/bin"
# Default Applications
export WIN="i3"
export TERMINAL="xterm"
export EDITOR="nvim"
export FILE="vifm"
export READER="zathura"
export IMAGE="sxiv"
export BROWSER="/opt/librefox/firefox"

# Auto-start desktop after logging in from tty
! pgrep -x $WIN > /dev/null && 
        doas swapon /dev/sda1 > /dev/null || exec startx
