#!/bin/sh

xmodmap ~/.Xmodmap

xset rate 200 50
xcompmgr -c &
xbanish &
feh --bg-fill ~/.local/background

sxhkd &
exec $WIN
