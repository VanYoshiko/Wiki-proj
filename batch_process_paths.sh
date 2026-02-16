#!/bin/sh

path2change=$1
new_path=$2

echo "Searching for: $path2change"
echo "Replace with: $new_path"

grep -rF "$path2change" ~xdg | grep -v "logs" 
# | xargs sed "s|$path2change|$new_path|g"
