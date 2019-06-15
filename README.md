# zabbix_monitor
zabbix template &amp;&amp; shell script
zabbix监控脚本，在zabbix配置文件中（zabbix_agentd.conf）配置这些监控脚本目录，让zabbix获取数据
example：UserParameter=nginx_status[*],/home/trio/zabbix/scripts/nginx_status.sh $1
