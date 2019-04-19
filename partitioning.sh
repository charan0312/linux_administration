#!/bin/bash

#echo -e "n\n\n\n+500M\nn\n\n\n+500M\nw\n" | sudo fdisk /dev/sdb
#sudo fdisk /dev/sdb
#n
#echo ""
#echo ""
#echo ""
#+500M
#n
#echo ""
#echo ""
#echo ""
#+500M
#p
#w

dev="/dev/sda"




sed -e 's/\t\([\+0-9a-zA-Z]*\)[ \t].*/\1/' << EOF | fdisk $dev
o
n # new partition
p # primary partition
1 # partition number 1
+200M
n
p
2
p

q
EOF


sudo yum -y install lvm2
if [ $? == 0 ]
then
	sudo pvcreate /dev/sdb1
	sudo pvcreate /dev/sdb2
	sudo pvs
fi

if [ $? == 0 ]
then
	sudo vgcreate testvg1 /dev/sdb1
	sudo vgextend testvg1 /dev/sdb2
	sudo vgs
fi 

if [ $? == 0 ]
then
	sudo lvcreate -L 500M -n testlv1 testvg1
	sudo lvcreate -L 300M -n testlv2 testvg1
fi

if [ $? == 0 ] 
	then
	sudo mkfs.ext4 /dev/testvg1/testlv1
	sudo mkfs.ext4 /dev/testvg1/testlv2
fi

if [ $? == 0 ]
then
	sudo mkdir /home/ggk/lv1mountpoint
	sudo mkdir /home/ggk/lv2mountpoint
	sudo mount /dev/testvg1/testlv2 /home/ggk/lv2mountpoint
	echo "/dev/testvg1/testlv1	/home/ggk/lv1mountpoint	ext4	defaults	0 0" | sudo tee -a /etc/fstab
	sudo mount -a
fi

sudo fdisk -l > /home/ggk/disk_status.txt
	
if [ $? == 0 ]
then
	echo "Done"
fi








