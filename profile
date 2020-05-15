#!/bin/sh

# env
export PATH="/bin":"/usr/bin":"/usr/local/bin":"/sbin":"/usr/sbin":"/plan9/bin":"/opt/bin"
export MANPATH="/usr/share/man":"/usr/local/share/man":"/opt/man":"/plan9/man"
export XAUTHORITY="$HOME/.local/.Xauthority"
export PAGER="bat"
export MANPAGER="vimpager"

# Default Applications
export WIN="i3"
export TERMINAL="kitty"
export EDITOR="vis"
export FILE="vifm"
export READER="zathura"
export IMAGE="sxiv"
export BROWSER="icecat"

# Auto-start desktop after logging in from tty
! pgrep -x $WIN > /dev/null && exec startx 2> /dev/null
