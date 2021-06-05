#!/bin/sh

feh --bg-fill --no-fehbg ~/.local/bgnd.webp

xmodmap ~/.Xmodmap
xcompmgr -c &
#xbanish &
unclutter &

pulseaudio --check && pulseaudio --start

sxhkd &
#yabar &
exec $WIN
