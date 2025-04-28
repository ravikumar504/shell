#!/bin/bash

sourcedir=/c/devops/daws-82s/repos/shell/log

filesdelete=(find $sourcedir name "*.log" -mtime +14)
echo "$filesdelete"