1、脚本执行顺序 triorobot_tps_all.sh获取/home/trio/Monitor/triorobot.qps.${Today_T}文件中的每个botname的值
#练点：Qps_All=`awk "/${Date_Old}/"'{sum += $4};END {print sum/60}' "${Qps_file}"`通过awk算出每分钟的qps值
2、文件/home/trio/Monitor/triorobot.qps.*是由ChatQPSMonitor.sh生成的(每分钟生成一个)
