#!/bin/bash

service=httpd
which $service

if [ $? == 0 ]
then
/etc/init.d/$service start
else
sudo yum install -y httpd
/etc/init.d/$service start
fi



