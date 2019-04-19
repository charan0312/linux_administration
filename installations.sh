#!/bin/bash

#chrome installation
cat > /etc/yum.repos.d/google-chrome.repo << EOF
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub

EOF

sudo yum install google-chrome-stable -y

sudo yum update google-chrome -y

#telnet installation
sudo yum  install telnet -y
systemctl start telnet.socket
systemctl enable telnet.socket
chkconfig telnet on

#firewall settings using firewalld
sudo systemctl start firewalld.service
sudo firewall-cmd --add-service=http
sudo firewall-cmd --reload
sudo firewall-cmd --add-service=https
sudo firewall-cmd --reload
sudo firewall-cmd --add-service=ssh
sudo firewall-cmd --reload
sudo firewall-cmd --add-service=ftp
sudo firewall-cmd --reload
sudo firewall-cmd --add-service=mysql
sudo firewall-cmd --reload
sudo firewall-cmd --list-services
sudo systemctl enable firewalld


#install apache

service=httpd

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
	which $service
	if [ $? == 0]
	then
	/etc/init.d/$service start
	else
	sudo yum install -y httpd
	/etc/init.d/$service start
	fi

fi
























