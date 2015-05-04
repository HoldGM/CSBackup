#!/bin/bash

#Issue a regular shell command
ls

#use for loop
for i in 'ls *'
do
	echo "$i.png"
done

#loop over datafiles and call gnuplot
mkdir -p figures
for i in 'ls *_*.dat'
do
	name = 'basename $i .dat'
	gnuplot -e "filename='$i'" -e "outfile='figures/$name.png'"
done
