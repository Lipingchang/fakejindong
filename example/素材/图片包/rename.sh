#!/bin/bash
set -xu
outdir=outimage
mkdir $outdir
count=1
for img in *.webp
do
	new=$count.jpg
	echo $new
	let count++
	dwebp $img -o ./$outdir/$new.png

done
for img in *.jpg 
do
	#cp $img ./$outdir/$img
	echo $img
done
