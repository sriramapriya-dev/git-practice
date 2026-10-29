#!/bin/bash
number=25
if [ $number -gt 20 ] #-gt, lt, eq, ne, ge, le are used for comparison
then
  echo "number is greater than 20"
else
  echo "number is less than or equal to 20"
fi