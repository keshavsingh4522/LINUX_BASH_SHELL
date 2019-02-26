#!/bin/bash
read -p "enter a number upto print numbers: " n
while [ $n -gt 0  ]
do
  echo -e "$n \c"
  ((n--)) #n=$((n-1))or n=$(($n-1))
done
echo
