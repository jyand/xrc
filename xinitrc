#!/bin/sh

#feh --bg-fill --no-fehbg ~/.local/bgnd.webp
bgcycle &

xmodmap ~/.Xmodmap
xcompmgr -c &
#xbanish &
unclutter &

pulseaudio --check && pulseaudio --start

sxhkd &
slstatusbar
exec $WIN
