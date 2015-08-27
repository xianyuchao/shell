#!/bin/bash
#usage

PATH=/bin:/sbin:/usr/bin/:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#echo 'usage : *.sh '	#使用方法介绍

users=$(cut -d ':' -f1 /etc/passwd)
declare -i i=1
for username in $users
do
	echo "the ${i} account is \"${username}\""
	i=i+1
done


