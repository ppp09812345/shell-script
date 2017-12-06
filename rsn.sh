#!/bin/bash

b=0
oop=`ps aux | grep "nginx" -n | grep -v "grep" | awk 'END {print NR}'`

##oop=`ps aux | grep nginx | grep -v grep | awk 'END{ print NR }'`

if [ "$oop" -gt $b ]
then
   echo "everything be ok！"
else
   echo "we need restart nginx!"
   systemctl restart nginx
   oop1=`ps aux | grep "nginx" -n | grep -v "grep" | awk 'END {print NR}'`
   if [ $oop1 -gt $b ]
   then
      echo "nginx start already"
   else
      ehco "nginx is break down!" | mailx -s "need help mail" 845648251@qq.com 
   fi
fi       
   # systemctl restart nginx
   # a=`ps aux | grep nginx | grep -v grep | awk -F '' '{print $1"\t"$11}' | wc -l`
   # if [ $program -le $b ]
   # then   
   #     echo "warnning! nginx is error!"
   # fi     

