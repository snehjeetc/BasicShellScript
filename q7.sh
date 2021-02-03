#!/bin/bash

#checks whether usersecret environment variable is set or not
#this will work only if you source this file
#source ./q7.sh 
if [[ -z "${usersecret}" ]];
 then
	export usersecret=dH34xJaa23;
else
	echo "Error Already set"
fi

