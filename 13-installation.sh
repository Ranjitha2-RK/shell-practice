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

dnf install ngnix -y

if [ $? -ne 0 ]; then
  echo "ERROR:: Installing Ngnix is failing"
  exit 1
else
  echo "Installing Ngnix is success"
fi

dnf instal mongodb-mongosh -y

if [ $? -ne 0 ]; then
  echo "ERROR:: Installing mongobd-mongosh is failing"
  exit 1
else
  echo "Installing mongodb-mongosh is success"
fi