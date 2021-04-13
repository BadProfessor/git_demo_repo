#!/bin/bash
chdate=`date +"%d/%m/%y-%T"`

#need to create some files here

getent passwd {0..65535} | cut -d: -f1,6 > ~/environment/testFolder/current_users.txt

if md5sum --status -c ~/environment/testFolder/current_sum.md5; then
    echo "OK: Users not changed" > /dev/tty
else
    echo "FALSE: Users changed" > /dev/tty
    echo "Hash changed on: $chdate" >> ~/environment/testFolder/current_changes.txt
fi

md5sum ~/environment/testFolder/current_users.txt > ~/environment/testFolder/current_sum.md5