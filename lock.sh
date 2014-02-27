#!/bin/sh

export TZ=UTZ+12
H=`date +%H`
M=$(( (`date +%M` / 15)*15 ))
DIR=$(dirname `readlink -f $0`)
FILE=`printf $DIR/img/resized/%.2dh%.2dm.png $H $M`
i3lock -i $FILE
