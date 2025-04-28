#!/bin/bash

sourcedir=$1
destinationdir=$2
days=${3:-14}

if [ $# -lt 2 ]
then 
    echo "usage: <sourcedir> <destdir> <days>"
    exit 1

fi

if [ ! -d $sourcedir ]
then 
    echo "$sourcedir not exists.. please check "
    exit 1
fi

if [ ! -d $destinationdir ]
then 
    echo "$destinationdir doesnot exist ... please check "
fi 

files=$(find $sourcedir -name "*.log" -mtime +$days)
echo "$files"