#!/bin/bash

NUMBER=$1

# -lt means less than
# -gt means greater than
# -ne means not equal

if [ $NUMBER -lt 10 ]; then
  echo "Given number $NUMBER is less than 10"
else
  echo "Given number $NUMBER is equal to 10"
else
  echo "Given number $NUMBER is greater than 10"
fi
