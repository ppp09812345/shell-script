#!/bin/bash
#备份并压缩/etc目录的所有内容，存放在/root/backup目录里，且文件名为如下形式yymmdd_etc, yy为年，mm为月，dd为日。 

dirname=`ls /root/ | grep backup`
if [ -z $dirname ]
then
    mkdir /root/backup && echo "新建目录backup" 
fi
# or select
# dir="/root/backup"
# if [ -e $dir ]
# then
#     file="`date +%Y%m%d`_etc.tar.gz"
#     tar -czvf /root/backup/$a /etc
#     echo "/etc backup finished"
# else
#     mkdir /root/backup && echo "新建目录backup"
#     file="`date +%Y%m%d`_etc.tar.gz"
#     tar -czvf /root/backup/$a /etc
#     echo "/etc backup finished"
# fi
file="`date +%Y%m%d`_etc.tar.gz"
#tar -zcvPf /root/backup/$file /etc 如果要显示压缩信息用此命令 -P解决了绝对路径的报错
tar -zcPf /root/backup/$file /etc
echo -e '\033[1;37;42m/etc backup finished\033[0m'
