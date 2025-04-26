#!/bin/bash

echo $@
echo $*
echo $#
echo $0
echo $?
echo $$
sleep 100 &
echo $!