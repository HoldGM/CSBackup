#!/bin/bash

#Issue a regular shell command
ls *

#Use a for loop
for i in `ls *`
do
  echo "$i.png"
done

#Loop over datafiles and call gnuplot
mkdir -p figures
for i in `ls *_*.dat`
do
  name=`basename $i .dat`
  gnuplot -e "filename='$i'" -e "outfile='figures/$name.png'" hw5.gplot
done
