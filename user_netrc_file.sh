#!/bin/bash
for dir in `/bin/cat /etc/passwd | /bin/egrep -v '(root|sync|halt|shutdown)' |\
/usr/bin/awk -F: '($7 != "/usr/sbin/nologin") { print $6 }'`; do
for file in $dir/.netrc; do
if [ ! -h "$file" -a -f "$file" ]; then
fileperm=`/bin/ls -ld $file | /usr/bin/cut -f1 -d" "`
if [ `echo $fileperm | /usr/bin/cut -c5 ` != "-" ]
then
echo "Group Read set on $file"
fi
if [ `echo $fileperm | /usr/bin/cut -c6 ` != "-" ]
then
echo "Group Write set on $file"
fi
if [ `echo $fileperm | /usr/bin/cut -c7 ` != "-" ]
then
echo "Group Execute set on $file"
fi
if [ `echo $fileperm | /usr/bin/cut -c8 ` != "-" ]
then
echo "Other Read set on $file"
fi
if [ `echo $fileperm | /usr/bin/cut -c9 ` != "-" ]
then
echo "Other Write set on $file"
fi
if [ `echo $fileperm | /usr/bin/cut -c10 ` != "-" ]
then
echo "Other Execute set on $file"
fi
fi
done
done
