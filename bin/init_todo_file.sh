#!/usr/bin/bash

set -eu
set -o pipefail

date=$1

date_yy=`date -d "${date}" +"%Y"`
date_mm=`date -d "${date}" +"%m"`
date_yymmdd=`date -d "${date}" -Idate`
datelong=`date -d "${date}" +"%A, %d %B %Y"`

echo "Setting up To Do for ${datelong}"

root="."
file="${root}/${date_yy}/${date_mm}/todo-$date_yymmdd.md"
if [ ! -f $file ]; then
    mkdir -p $(dirname $file)
    echo "Creating file ${file}"
    echo "# To Do:

## ${datelong}" > $file
fi

echo "Opening file ${file}"
code $file
