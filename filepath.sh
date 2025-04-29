#!/bin/bash

if [ -e "/home/ec2-user/filepath.txt"]  && [ -r "/home/ec2-user/filepath.txt" ]
then 
    echo "file exists and readable"
else   
    echo "file not exists"
fi