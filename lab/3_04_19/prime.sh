#!/bin/bash -x
read -p "enter a number to check prime or not: " n
prime()
{
c=0
for((i=2;i<n;i++))
do
if(($n%i==0))
then
  c=$((c+1))
fi
done

 if(($c==0))
 then
  echo "it is prime number"
else
  echo "it is not prime number"
fi
}
prime
