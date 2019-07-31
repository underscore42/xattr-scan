#!/bin/ash
#
# For a given directory, find all the files and get the 
# extended attributes.
#
# Intended to run on our target, which only has ash not bash
#
# Run against the r/w file system that has been generated
#

(cd $1;
for file in find | sort -z ; do
 getfattr -d -m . $file
done
)
