#!/bin/bash

#Everthing in shell is considered as string
NUMBER1=100
NUMBER2=200
NAME=DevOps

SUM=$(($NUMBER1+$NUMBER2+$NAME))
echo "SUM is: ${SUM}"

#Arrays: 
LEADERS=("Modi" "Putin" "Trump")

echo "All Leaders: ${LEADERS}[@]"