#!/bin/sh

xmodmap ~/.Xmodmap
xcompmgr -c &
xbanish &

exec $WIN
