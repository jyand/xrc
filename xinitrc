#!/bin/sh

xmodmap ~/.Xmodmap

xset rate 200 50
xset b off
xcompmgr -c &
xbanish &
feh --bg-fill ~/.local/background.png

sxhkd &
exec $WIN
