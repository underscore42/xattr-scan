#!/bin/bash
#
# On host
# input file 1 and 2, these are generated on the target
# with getattr.sh
#
# sorts and generates a the list of attributes per file
# hand massage output if you want more detail
#

grep "file:" $1 $2 | sed 's/^.*file: //' | sort | uniq |
while IFS= read -r file; do
    echo "-----------"
    echo "$file"
    grep -A 1 "$file$" $1 $2 | grep "SMACK64"
done
