#!/bin/bash

logfile=$(echo $0 | cut -d "." -f1)

echo "$logfile"

# output is test

timestamp=$(date +%Y-%m-%d-%H-%M-%S)

echo "$timestamp"

filename="$logfile-$timestamp"

echo "$filename"

