# !/bin/bash

# author : LiuDun
# date : 2018-01-03
# brief : TrioRobot请求qps

cd /home/trio/TrioApi/TrioRobot/log
STATTIME=$(date -d "1 minutes ago" +"%Y-%m-%d %H:%M:")
STATHOUR=$(date -d "1 minutes ago" +"%Y-%m-%d-%H")
grep "^$STATTIME.*REQ" *${STATHOUR}* | awk -F "\t" '{a[$1]++}END{l=asorti(a,c);for(i=1;i<=l;i++){split(c[i],d,".");print d[1]"\t"substr(d[2],15,19)"\t"a[c[i]]}}' >> /home/trio/Monitor/triorobot.qps.$(date +"%Y-%m-%d")
