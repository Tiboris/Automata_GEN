#!/bin/sh
if [ $# == 1 ]
then
	filename=$(basename $1)
	extension="${filename##*.}"	
	if [ "$extension" = "gv"  ]
	then
		outname=$(basename $filename "."$extension)"_out.svg"
        	dot -Tsvg $1 -o $outname
	else
		echo "Wrong type of file. Must be '.gv'"
	fi

else
	echo "Wrong arguments!"
fi
