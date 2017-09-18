#!/bin/bash

b=0

read -t40 -p "please input program: " yoyo

a=`ps aux |grep $yoyo |grep -v grep | awk -F ' ' '{print $1"\t"$11}'|wc -l`

if [ $a -gt $b ]
then
    echo "run is ok"
else
    echo "run is down"
fi

