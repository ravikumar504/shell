#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "Error: You need root access to execute this script"
    exit 1
fi

dnf install mysqll -y
