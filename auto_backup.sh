#!/bin/bash

backup_ip=192.168.2.67

cmd="/usr/local/inotify/bin/inotifywait"

$cmd -mrq --format '%w%f' -e create,delete /home/ftp2

while read line
do     
    rsync -az --delete $line /home/ftp2/ --timeout=100 root@$backup_ip::ftp --password-file=/etc/rsync.password
done
