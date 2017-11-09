#!/bin/bash

find /etc -type f \( -newermt '2015-01-01 00:00' -a -not -newermt '2015-12-31 23:59' \) -exec cp --parents {} /tmp/ \; #查找/etc下修改时间为2015年的文件复制到/tmp/  --parents(复制时保留文件的目录结构)
