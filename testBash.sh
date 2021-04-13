#!/bin/bash
chdate=`date +"%d/%m/%y-%T"`
# chdate=`date +"%d/%m/%y-%H:%M"`

getent passwd {0..65535} | cut -d: -f1,6 > ~/environment/testFolder/current_users

if md5sum --status -c ~/environment/testFolder/current_sum.md5; then
    echo "Users not changed" > /dev/tty
else
    echo "Users not changed" > /dev/tty
    echo "Hash changed on: $chdate" >> ~/environment/testFolder/current_changes
fi

md5sum ~/environment/testFolder/current_users > ~/environment/testFolder/current_sum.md5