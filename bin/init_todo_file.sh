#!/usr/bin/bash

set -eu
set -o pipefail

date=$1

echo "Setting up To Do for $(date -d "${date}" +"%A, %d %B %Y" )"

root="."
file="${root}/todo-$(date -d "${date}" -Idate).md"
if [ ! -f $file ]; then
    echo "Creating file ${file}"
    echo "# To Do:

## $(date -d "${date}" +"%A, %d %B %Y")" > $file
fi

echo "Opening file ${file}"
code $file
