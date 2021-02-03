#!/bin/bash

#store file from argument 1
folder=$1;
file=$2;

#store time from argument 2
t=$3;

find $folder -type f -name $file -exec cat {} + | awk '{print $4" "$7}' | grep $3 | awk '{print $2}'
