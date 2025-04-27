#!/bin/bash

userid=$(id -u)

validate() {
    if [ $? -ne 0 ]
    then 
        echo "installing mysql failure...."
        exit 1
    else
        echo "installing mysql.....success"
    fi
}

if [ $userid -ne 0 ]
then 
    echo "Error: You need root access to execute this script"
    exit 1
fi

dnf list installed mysql 

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    validate() 
    
else 
    echo "mysql already installed...."
fi
