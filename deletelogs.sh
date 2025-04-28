#!/bin/bash

sourcedir=/home/ec2-user/log

filesdelete=(find $sourcedir name "*.log" -mtime +14)
echo "$filesdelete"