#!/bin/bash

logfile=$(echo $0 | cut -d "." -f1)

echo "$logfile"

# output is test

timestamp=$(date +%y-%m-%d-%h-%m-%s)

echo "$timestamp"