#!/bin/sh

xmodmap ~/.Xmodmap
xset rate 200 50
xcompmgr -c &
xbanish &

exec $WIN
