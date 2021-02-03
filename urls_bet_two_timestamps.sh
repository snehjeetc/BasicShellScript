#!/bin/bash

#the directory of the file in var folder
folder=$1;
#the file name in var file
file=$2;
#timestamp 1 = t1
#timestamp 2 = t2
t1=$3;
t2=$4;

find $folder -type f -iname $file -exec cat {} + | awk '{print $4" "$7}' | cut -c14- |
awk -v var1="$t1" -v var2="$t2" '{
	if(var1 <= $1 && $1 <= var2)
		print $2;
}'
	

