#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "you need root access to execute this script"
fi
dnf install mysql -y