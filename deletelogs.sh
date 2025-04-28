#!/bin/bash

sourcedir=/home/ec2-user/shell/log

filesdelete=$(find $sourcedir -name "*.log" -mtime +14)


while read -r file
do 
    echo $file
    rm -rf $file
done <<< $filesdelete