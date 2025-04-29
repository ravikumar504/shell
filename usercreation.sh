#!/bin/bash

 echo "enter user name:"

 read -s USERNAME

 echo "$USERNAME"

 if [ $? -ne 0 ]
 then 
    echo "user already cretaed"
else 
    sudo useradd $USERNAME
fi 