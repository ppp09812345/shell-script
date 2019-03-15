#请基于ubuntu16.04使用
#!/bin/bash

cd

wget https://install.direct/go.sh 2>/dev/null && sudo chmod 755 go.sh && sudo ./go.sh 2>/dev/null

cd /etc/v2ray

sudo mv config.json config.json.bak

sudo wget https://raw.githubusercontent.com/ppp09812345/config/master/config.json 2>/dev/null

sudo chmod 755 config.json

sudo systemctl start v2ray 2>/dev/null

v2ray_process=`ps aux |grep v2ray |grep -v grep | awk -F ' ' '{print $1"\t"$11}' | wc -l`

stop_process=0

if [ $v2ray_process -gt $stop_process ]
then
    echo "ok!"
else
    echo "something wrong!!!!"
fi

sudo systemctl restart v2ray
