#!/bin/bash

#Check if the user has root access or not; if root access then proceed; otherwise stop and tell them to run with root access
# dnf install mysql -y
#check exit status, if 0 success
#other wise shwo the user it is failed

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "ERROR:: Please run this script with root privelege"
  exit 1 # failure is other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
  echo "ERROR:: Installing MySQL is failing"
  exit 1
else
  echo "Installing MySQL is success"
fi