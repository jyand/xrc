#!/bin/sh

for i in $(cat voidbasics.csv); do
        xbps-install -S -y $i
done
