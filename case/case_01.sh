#!/bin/bash
vehicle=$1

case $vehicle in
  "car")
      echo "rent of $vehicle is 100 dollar";;
  "bicycle")
      echo "rent of $vehicle is 5 dollar";;
  "van")
      echo "rent of $vehicle is 80 dollar";;
  "truck")
      echo "rent of $vehicle is 120 dollar";;
   *)
  echo "$vehicle is unknown vehicle";;
esac
