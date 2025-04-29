#!/bin/bash

 echo "enter user name:"

 read -s USERNAME

 if [ id $USERNAME -ne 0 ]
 then 
    echo "user already cretaed"
else 
    sudo useradd $USERNAME
fi 