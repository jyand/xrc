###############################################################################

#!/bin/sh

source "$HOME/.shrc"
export PATH=$PATH:"$HOME/xrc":"$HOME/scripts":"$PLAN9"
export MANPATH="/usr/share/man":"/usr/lib/plan9/man":"/usr/share/fish/man":"/opt/texlive/2019/bin/i386-linux/man"

# Default Applications
export TERMINAL="xterm"
export EDITOR="nvim"
export FILE="vifm"
export READER="zathura"
export IMAGE="feh"
export BROWSER="firefox"

# Auto-start desktop after logging in from tty
[ "$(tty)" = "/dev/tty1" ] || [ "$(tty)" = "/dev/tty2" ] && ! pgrep -x i3 >/dev/null && exec startx

###############################################################################
