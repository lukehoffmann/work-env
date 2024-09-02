#!/usr/bin/bash

set -eu
set -o pipefail

tomorrow=$(date -d tomorrow)

bin/init_todo_file.sh "${tomorrow}"
