#!/bin/bash

 echo "enter user name:"

 read USERNAME

 if [ id $USERNAME -ne 0 ]
 then 
    echo "user already cretaed"
else 
    useradd $USERNAME
fi 