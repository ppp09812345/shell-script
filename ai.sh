#!/bin/bash

#
#AI核心代码 价值一个亿
#
#
clear

AI='\033[1;32m'
MAN='\033[0m'

while read line
do
    echo -e "${AI}$line ${MAN} " | sed 's/\？/!/g' | sed 's/\?/!/g' | sed 's/吗//g' | 
    sed 's/你/我/g' |  sed 's/有没有/没有/g' | sed 's/是不是/是/g'|sed 's/不是/是/g'
done < "${1:-/dev/stdin}"
