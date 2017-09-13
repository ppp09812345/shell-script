#!/bin/bash

# 1.设定变量FILE的值为/etc/passwd
# 2.依次向/etc/passwd中的每个用户问好，并且说出对方的ID是什么
# 3.统计一个有多少个用户
# 2017-9-12 tao

#file="/etc/passwd"
#LINES=` $file | grep /bin/bash | cut -d ":" -f1 `
#echo $LINES
#for I in `seq 1 $LINES`
#do
#  userid=`head -$I $file | tail -1 |cut -d: -f3`

#    username=`head -$I $file | tail -1 |cut -d: -f1`

#    echo "hello $username,your UID is $userid"

#done

#echo "there are $LINES users"
file=/etc/passwd
let num=0
for I in `cat $file | grep bin/bash`
do
    username=`echo "$I" | cut -d ":" -f1`
    userid=`echo "$I" | cut -d: -f3`
    echo "Hello $username,your UID is $userid"
    num=$[$num+1]         
done                      
echo "there are $num users"
