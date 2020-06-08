#!/bin/sh

feh --bg-fill --no-fehbg ~/.local/background.jpg

xmodmap ~/.Xmodmap
xset rate 200 50
xset b off
xcompmgr -c &
xbanish &

sxhkd &
exec $WIN
