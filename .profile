#!/bin/sh

export PATH=$PATH:"/plan9/bin"

# Default Applications
export WIN="i3"
export TERMINAL="xterm"
export EDITOR="nvim"
export FILE="vifm"
export READER="zathura"
export IMAGE="sxiv"
export BROWSER="firefox"

# Auto-start desktop after logging in from tty
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x $WIN > /dev/null && 
        doas swapon /dev/sda1 && doas mount /dev/mmcblk0p1 /opt  > /dev/null ||
        exec startx
