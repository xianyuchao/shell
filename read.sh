#!/bin/bash
#user inputs and print on the screen
PATH=/bin:/sbin:
export PATH

read -p "please input 1st string" str1	#输入第一个字符串
read -p "please input 2nd string" str2	#second
echo -e "\n you just input $str1 $str2"	#print the 2 strings

