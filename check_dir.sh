#!/bin/bash
	
	folderName=$1;
	if [ -d $folderName ];
	then
		echo "File Exists";
	else
		echo "File doesn't exist";
		echo "Creating new dir " ${folderName};
		mkdir $folderName;
	fi
