#!/bin/bash

# if error is exit need to stop
set -e

error(){
  echo "There is a error"
}
trap error ERR

echo "hello"
echo "before error"
dwer
echo "After eror"