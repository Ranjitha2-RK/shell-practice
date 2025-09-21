#!/bin/bash

#Important for the interviews

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "Script name: $0"
echo "Current directory: $PWD"
echo "Who is running this: $USER"
echo "Home directory of user: $HOME"
echo "PID of this script: $$"

#sleep 50 & => it going to back ground
sleep 50 &

echo "PID of the last comand in background is: $!"