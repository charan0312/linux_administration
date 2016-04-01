#!/bin/bash

dev="/dev/sda"




sed -e 's/\t\([\+0-9a-zA-Z]*\)[ \t].*/\1/' << EOF | fdisk $dev
o
n # new partition
p # primary partition
1 # partition number 1
+100M
n
p
2
p

q
EOF
