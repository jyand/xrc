#!/bin/sh

xmodmap ~/.Xmodmap
xrdb -merge ~/.Xresources

xset r rate 200 50

xcompmgr &
xbanish &

exec $WIN
