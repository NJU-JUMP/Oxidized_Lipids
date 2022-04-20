#!/bin/bash

toplist="c2p3r26"
lipidlist="POBU"
hplist="033 067"

for top in $toplist
do
    for lipid in $lipidlist
    do
        for hp in $hplist
        do
            tdir=../${top}/$hp
            mkdir -p $tdir
            cp martini_v2.2.itp $tdir
            cp martini_v2.0_POPC_02.itp $tdir
            cp ${lipid}_${top}.itp ${tdir}/martini_v2.0_${lipid}_02.itp
        done
    done
done
