#!/bin/bash
##Source: https://stackoverflow.com/a/27940907/6000943

input=$1
output=linearized_$1
awk '/^>/ { print (NR==1 ? "" : RS) $0; next } { printf "%s", $0 } END { printf RS }' $input > $output