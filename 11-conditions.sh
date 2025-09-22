#!/bin/bash

#If a number is divide by 2 then even otherwise it is odd
#15/2
#take the number; divide by 2 and the get the reminder
#if it is equal to 0 then it is even; otherwise it is odd

echo "Please enter the number:"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
  echo "Given number $NUMBER is Even"
else
  echo "Given number $NUMBER is Odd"
fi