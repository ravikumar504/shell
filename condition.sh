#!/bin/bash

number=$1

if [ $number -ne 190 ]
then
    echo "given number is greater than 190"
else
    echo "given number is less than or equal to 190"
fi