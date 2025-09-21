#!/bin/bash

#Everthing in shell is considered as string
NUMBER1=100
NUMBER2=200
NAME=DevOps

SUM=$(($NUMBER1+$NUMBER2+$NAME))
echo "SUM is: ${SUM}"

#Arrays: List of names
#Size = 4, Max index = 3
LEADERS=("Modi" "Putin" "Trump")

echo "All Leaders: ${LEADERS[@]}"
echo "First Leader: ${LEADERS[0]}"
echo "First Leader: ${LEADERS[10]}"