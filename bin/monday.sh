#!/usr/bin/bash

set -eu
set -o pipefail

monday=$(date -d monday)

bin/init_todo_file.sh "${monday}"
