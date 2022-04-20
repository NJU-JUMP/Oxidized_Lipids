#!/bin/bash

toplist="c2p3r26"
lipidlist="EEC1 EEC2 EEC3 EEC4"

for top in $toplist
do
    for lipid in $lipidlist
    do
        tdir=../${top}/${lipid}
        mkdir -p $tdir
        cp martini_v2.2.itp $tdir
        cp ${lipid}_${top}.itp ${tdir}/martini_v2.0_${lipid}_02.itp
    done
done
