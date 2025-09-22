#!/bin/bash

#Keep less lines & More performance; readablity; DRY, try to reuse the code; 

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

dnf install nginx -y

if [ $? -ne 0 ]; then
  echo "ERROR:: Installing Nginx is failing"
  exit 1
else
  echo "Installing Nginx is success"
fi

dnf install python3 -y

if [ $? -ne 0 ]; then
  echo "ERROR:: Installing python3 is failing"
  exit 1
else
  echo "Installing python3 is success"
fi