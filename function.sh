#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "Error: You need root access to execute this script"
    exit 1
fi

dnf list installed mysql 

if [$? -ne 0 ]
then 
    dnf install mysqll -y
    if [ $? -ne 0 ]
    then 
        echo "installing mysql failure...."
    else
        echo "installing mysql.....success"
    fi
else 
    echo "mysql already installed...."
fi
