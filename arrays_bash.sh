#!/bin/bash

files=()
echo ${file[0]}
files=(git sqlite3 bash)
echo ${f$iles[0]}
echo ${files[1]}
echo ${files[-1]}
echo ${files[@]}
echo ${files[*]}
printf "Display list:\n%s\n" ${files[*]}
 printf "Display list:\n%s\n" ${files[@]}
 printf "Display list:\n%s\n" "${files[*]}"
 printf "Display list:\n%s\n" "${files[@]}"
 printf "Display list:\n<%s>\n" "${files[@]}"
 printf "Display list:\n<%s>\n" "${files[*]}"
