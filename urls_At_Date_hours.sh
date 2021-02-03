#!/bin/bash

#store file from argument 1
folder=$1;
file=$2;

#store date from argument 2
t=$3;

find $folder -type f -name $file -exec cat {} + | awk '{print $4" "$7}' |
  cut -c2- | awk -v x="$t" '{
	if($1==x)
		print $2;
}'


