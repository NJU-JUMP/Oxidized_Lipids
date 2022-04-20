#!/bin/bash

lipidlist="EEA1 EEA2 EEA3 EEA4"

for lipid in $lipidlist
do
cp ${lipid}.gro ../${lipid}/conf.gro
cp ${lipid}.top ../${lipid}/system.top
cp index.ndx ../${lipid}
done
