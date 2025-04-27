#!/bin/bash

userid=$(id -u)

validate() 
{
    if [ $1 -ne 0 ]
    then 
        echo "$2 failure...."
        exit 1
    else
        echo "$2 success....."
    fi
}

if [ $userid -ne 0 ]
then 
    echo "Error: You need root access to execute this script"
    exit 1
fi

# dnf list installed mysql 

# if [ $? -ne 0 ]
# then 
#     dnf install mysqll -y
#     validate $? "Installing mysql"
    
# else 
#     echo "mysql already installed...."
# fi


for package in $@
do 
    dnf list installed $package
    if [ $? -ne 0 ]
    then 
        dnf install $package
        validate $? "installing $package" 
    else
        echo "$package already installed"
    fi 
done