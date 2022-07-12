url_port="null"
url_response="-1"
url_code="null"
url="baidu.com"
timeout 10 curl -Ls -I $url >> /dev/null
if [ $? -eq 0 ]
then
    curl -Ls -o /dev/null -w %{url_effective} $url | grep -i "https" > /dev/null && url_port="443" || url_port="80"
    url_response=`curl  -o /dev/null -s -w "%{time_total}" $url`
    url_code=`curl -sD - -o /dev/null -L $url | grep "HTTP" | tail -n 1 | cut -d" " -f 2`
    echo -n  "${url}_${url_port}_${url_response}_${url_code}" > /tmp/url_msg/$url
else
    timeout 10 curl -Ls -I $url >> /dev/null
    if [ $? -eq 0 ]
    then
        curl -Ls -o /dev/null -w %{url_effective} $url | grep -i "https" > /dev/null && url_port="443" || url_port="80"
        url_response=`curl  -o /dev/null -s -w "%{time_total}" $url`
        url_code=`curl -sD - -o /dev/null -L $url | grep "HTTP" | tail -n 1 | cut -d" " -f 2`
        echo -n  "${url}_${url_port}_${url_response}_${url_code}" > /tmp/url_msg/$url
    else
        echo -n  "${url}_${url_port}_${url_response}_${url_code}" > /tmp/url_msg/$url
    fi
fi
