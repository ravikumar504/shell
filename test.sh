#!/bin/bash

logfile= $($0 | cut -d "." -f1)

echo "$logfile"