#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "you need root access to execute this script"
    exit 1
fi
dnf install mysql -y

if [ $? -ne 0]
then
    echo "mysql installing...failure"
else
    echo "mysql installing...success"
fi

