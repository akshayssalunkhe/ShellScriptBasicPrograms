#!/bin/bash -x

for fileName in $(ls)
do
	ext=${fileName##*\.}
	case "$ext" in
		java) echo "$FileName : java source file"
				;;
 		o)	   echo "$FileName : object file"
				;;
		sh)	echo "FileName : Shell File"
				;;
		txt)	echo "FileName :Text file"
				;;
		 *)	echo "FileName :Not Processed"
				;;
		esac
done
