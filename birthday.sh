#!/bin/bash
#user inputs and print on the screen
#usage : *.sh date (like *.sh 0501)
PATH=/bin:/sbin:/usr/bin/:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo 'usage : *.sh 0501'	#使用方法介绍

checkinput=$(echo $1 | grep '^[0-9]\{4\}$')	#输入过滤
if [ "$checkinput" == "" ];then
	echo "please input 4 numbers"
	exit 1
fi 

nowyear=$(date +%Y)	#运行脚本时间的年
declare -i nowres=$(date +%j)	#一年中第几天

tardate=${nowyear}$1	#要计算的目标日期
declare -i res=$(date +%j --date=$tardate)	#一年中第几天

res=${res}-${nowres}

if [ "$res" -lt "0" ]; then
	res=res+360
fi

if [ "$res" == "0" ]; then
	echo "happy birthday"
else
	echo "$res days later"
fi
