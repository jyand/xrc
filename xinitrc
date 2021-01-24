#!/bin/sh

feh --bg-fill --no-fehbg ~/.local/background.png

xmodmap ~/.Xmodmap
xcompmgr -c &
xbanish &

sxhkd &
yabar &
exec $WIN
