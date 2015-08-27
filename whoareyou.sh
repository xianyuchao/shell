#!/bin/bash
#user inputs and print on the screen
PATH=/bin:/sbin:/usr/bin/:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

nowuser=$(whoami)
nowpwd=$(pwd)

echo -n "current user is :$nowuser ,"
echo -n -e "current pwd is :$nowpwd .\n"
