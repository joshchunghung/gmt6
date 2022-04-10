#!/bin/bash
sta='LT08'
gmt begin psd${sta} jpg 
    gmt basemap  -R0.01/700/-250/-50  -JX4i\l/2i -Bxa10f3g3 -Bx+l"period" -Bya20f10g10+l"dB" -BWSne+t"${sta}"
    for txt in $(ls txt/*${sta}*);do 
        gmt plot ${txt} -W1p,blue
    done
    gmt plot highlevel.log -W1p,black
    gmt plot lowlevel.log -W1p,black
gmt end
