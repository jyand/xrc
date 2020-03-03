#!/bin/sh
#convert man pages into pdf

mkdir mans && cd mans
length=8
i=0

while [ $i < $length ]; do
        i=$((i+1))
        for j in $(ls /usr/share/man/*/*.gz | grep $i | sed 's/.usr.share.man//g' | sed 's/.[1-8].gz//g' | sed 's/.[1-8]p.gz//g' | sed 's/.man[1-8].//g'); do
                $(man -t $j | ps2pdf - ${j}.pdf) && echo $j complete
        done
done

pdftk *.pdf cat > manpages.pdf
