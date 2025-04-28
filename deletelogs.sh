#!/bin/bash 

sourcedir=/home/ec2-user/shell/log

filesdelete=$( find $sourcedir -name "*.log" -mtime +14)
echo "$filesdelete"

while read -r file
do 
    echo $filename
    rm -rf $file
done <<< $filesdelete
