#!/bin/sh

feh --bg-fill --no-fehbg ~/.local/background.png

xmodmap ~/.Xmodmap
xset rate 200 50
xset b off
xcompmgr -c &
xbanish &

sxhkd &
yabar &
exec $WIN
