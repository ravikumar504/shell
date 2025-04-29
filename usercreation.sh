#!/bin/bash

 echo "enter user name:"

 read -s USERNAME

 userid=$(id -u)

 if [ $? -eq 0 ]
 then 
    echo "user already cretaed"
    exit 1
    
fi 

sudo useradd $USERNAME
echo "$USERNAME"

read -s -p "Enter the password for $USERNAME: " password

read -s -p "Confirm the password: " password_confirm

if [[ "$password" != "$password_confirm" ]]
 then
    echo "Passwords do not match."
    exit 1
else    
    echo "passwd created"
  
fi