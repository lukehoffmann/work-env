#!/usr/bin/bash

set -eu
set -o pipefail

today=$(date -d today)

bin/init_todo_file.sh "${today}"
