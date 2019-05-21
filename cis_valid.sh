#!/bin/bash
#Ensure mounting of hfs filesystems is disabled
> /tmp/logs

v1="Ensure mounting of cramfs filesystems is disabled"
v2="Ensure mounting of freevxfs filesystems is disabled"
v3="Ensure mounting of jffs2 filesystems is disabled"
v4="Ensure mounting of hfs filesystems is disabled"
v5="Ensure mounting of hfsplus filesystems is disabled"
v6="Ensure mounting of squashfs filesystems is disabled"
v7="Ensure mounting of udf filesystems is disabled"
v8="Ensure mounting of FAT filesystems is disabled"
ot="install"

cmd1="`/sbin/modprobe -n -v cramfs | grep -i 'install' | cut -d ' ' -f 1`"
cmd2="`/sbin/modprobe -n -v freevxfs | grep -i 'install' | cut -d ' ' -f 1`"
cmd3="`/sbin/modprobe -n -v jffs2 | grep -i 'install' | cut -d ' ' -f 1`"
cmd4="`/sbin/modprobe -n -v hfs | grep -i 'install' | cut -d ' ' -f 1`"
cmd5="`/sbin/modprobe -n -v hfsplus | grep -i 'install' | cut -d ' ' -f 1`"
cmd6="`/sbin/modprobe -n -v squashfs | grep -i 'install' | cut -d ' ' -f 1`"
cmd7="`/sbin/modprobe -n -v udf | grep -i 'install' | cut -d ' ' -f 1`"
cmd8="`/sbin/modprobe -n -v vfat | grep -i 'install' | cut -d ' ' -f 1`"

if [[ $cmd1 == $ot ]];then
	echo "$v1,Yes" >> /tmp/logs
else
	echo "$v1,No" >> /tmp/logs
fi
if [[ $cmd2 == $ot ]];then
        echo " $v2,Yes" >> /tmp/logs
else
        echo "$v2,No" >> /tmp/logs
fi
if [[ $cmd3 == $ot ]];then
        echo " $v3,Yes" >> /tmp/logs
else
        echo "$v3,No" >> /tmp/logs
fi
if [[ $cmd4 == $ot ]];then
        echo " $v4,Yes" >> /tmp/logs
else
        echo "$v4,No" >> /tmp/logs
fi
if [[ $cmd5 == $ot ]];then
        echo " $v5,Yes" >> /tmp/logs
else
        echo "$v5,No" >> /tmp/logs
fi
if [[ $cmd6 == $ot ]];then
        echo " $v6,Yes" >> /tmp/logs
else
        echo "$v6,No" >> /tmp/logs
fi
if [[ $cmd7 == $ot ]];then >> /tmp/logs
        echo " $v7,Yes" >> /tmp/logs
else
        echo "$v7,No" >> /tmp/logs
fi
if [[ $cmd8 == $ot ]];then
        echo " $v8,Yes" >> /tmp/logs
else
        echo "$v8,No" >> /tmp/logs
fi
