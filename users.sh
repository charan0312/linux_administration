#!/bin/bash/

adduser user1 sudo
echo "Welcome@1234" | passwd user1 --stdin
sudo visudo

groupadd testgroup

usermod -G testgroup user1




