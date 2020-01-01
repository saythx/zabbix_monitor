#!/bin/bash

TITLE_CONTENT='【阿里云机房】'
TO_USER='WenQuan,FanYanGe,CaoShengMing,GuoWenQi,HuBo,GuoXiaoYong,ShangHang,WangSiYi,HongJiaHao,ChenHuaRong'
curl -G  --data-urlencode "user=${TO_USER}" --data-urlencode "appid=trionotice" --data-urlencode "token=bcc6644ba8cfcf3284311027e18186a4" --data-urlencode "text={\"title\":\" ${TITLE_CONTENT} $1 \",\"alarm\":\" $2 \"}"  "http://172.16.0.16/Monitor/alarmapi.php" &> /dev/null
