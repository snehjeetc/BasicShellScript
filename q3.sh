#!/bin/bash

#change the file.log.1 to file-access-date.log

for file in `ls *.log.1`;
do
	folderName=`echo $file | awk -F. '{ print $1 }'`;
	d="$folderName-$(date +"%d%m%y").log";
	mv $file $d;
done
