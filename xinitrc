#!/bin/sh

#feh --bg-fill --no-fehbg ~/.local/background.png

xmodmap ~/.Xmodmap
xcompmgr -c &
#xbanish &
unclutter &

pulseaudio --check && pulseaudio --start

sxhkd &
#yabar &
exec $WIN
