#!/bin/sh

xmodmap ~/.Xmodmap

xset rate 200 50 > /dev/null
xcompmgr -c &
xbanish &
feh --bg-fill ~/.local/background

exec $WIN > /dev/null
