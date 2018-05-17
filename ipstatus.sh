#!/bin/bash

for a in $(seq 1 255)
do    
     ping -c 1 192.168.3.$a &> /dev/null
    
     if [ $? -eq 0 ]
     then
         echo -e 192.168.3.$a is up
     else
         echo -e 192.168.3.$a is down
     fi
done
