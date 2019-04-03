#!/bin/bash -x
read -p "enter a number to check armstrong or not: " n
arm()
{
 b=$n
 sum=0
 r=0
 while [ $n -ne 0 ]
 do
 r=$((n%10))
 n=$((n/10))
 c=$((c+1))
 done
 n=$b
 while [ $n -ne 0 ]
 do
 c1=$c
f=1
 r=$((n%10))
 n=$((n/10))
    while [ $c1 -ne 0 ]
     do
       f=$f*$r
     c1=$((c1-1))
    done
sum=$((sum+f))
 done
if(($sum==$b))
 then
  echo "number is armstrong"
 else
 echo "number is not armstrong number"
fi
}
arm
