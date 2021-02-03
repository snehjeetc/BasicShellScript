#!/bin/bash -x

#archive the files from /var/log folder which have modified 7 days ago

destination="/home/snehjeetc12/TerminalCommands/backup";
for file in `find ~/TerminalCommands/linux-content -mtime +2`;
do
cp -r $file $destination;
done
