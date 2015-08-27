#!/bin/bash
#user res=1+2+3+ ... + $1

PATH=/bin:/sbin:/usr/bin/:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo 'usage : *.sh 10'	#使用方法介绍


checkinput=$(echo $1 | grep '^[0-9]*$')	#输入过滤
if [ "$checkinput" == "" ];then
	echo "please input numbers"
	exit 1
fi 

declare -i res=0

for i in $(seq 0 $1)
do
	res=res+i
done

echo $res


