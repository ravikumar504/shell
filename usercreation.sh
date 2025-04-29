#!/bin/bash

 echo "enter user name:"

 read -s USERNAME

 echo "$USERNAME"

 if [ $? -ne 0 ]
 then 
    echo "user already cretaed"
    exit 1
else 
    sudo useradd $USERNAME
    echo "user name added: $USERNAME"
    
fi 


read -s -p "Enter the password for $USERNAME: " password

read -s -p "Confirm the password: " password_confirm

if [[ "$password" != "$password_confirm" ]]
 then
    echo "Passwords do not match."
    exit 1
else    
    echo "passwd created"
  
fi