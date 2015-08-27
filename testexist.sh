#!/bin/bash
#usage

PATH=/bin:/sbin:/usr/bin/:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#echo 'usage : *.sh '	#使用方法介绍

filedirname="./file_or_dir"

if test -e $filedirname 
then	#存在
	if test -f $filedirname	
	then
		rm -f $filedirname	#存在，且是文件，删除该文件，创建同名目录
		mkdir $filedirname
	elif test -d $filedirname 	
	then
		rm -fr $filedirname	#存在，且是目录，删除该目录
	fi
else	#不存在
	touch $filedirname		#用touch创建文件
fi



