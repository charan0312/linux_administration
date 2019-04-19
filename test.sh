#!/bin/bash

echo -e "\e[4;32mCurrent Time Zone\e[0m"
echo $(date)
new_time='GMT'
echo -e "\e[4;32mChanging Time Zone to GMT\e[0m"

#echo "Display available Timezones?"
#echo " if yes press 1 else press 0"
#read a

#if [ $a == 1 ]; then
#	$(ls -l /usr/share/zoneinfo)
#else
#	echo "Change to which time zone?"
#fi
#read new_time
cp /usr/share/zoneinfo/$new_time /etc/localtime
echo $(date)

echo -e "\e[4;32mCurrent Hostname is $(hostname) \e[0m"
#echo "Do you want to change the hostname?"
#echo "if yes press 1 else press 0"
#read b

#if [ $b == 1 ]; then
echo "charanreddy" > /etc/hostname


	
#fi
echo -e "\e[4;32mNew hostname is $(hostname) \e[0m"


