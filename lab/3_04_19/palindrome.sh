
#!/bin/bash -x
read -p "enter a number to check  palindrome or not " n
pal()
{
  b=$n
  r=0
  sum=0
 while [ $n -ne 0 ]
 do
  r=$((n%10))
  sum=$((sum*10+r))
  n=$((n/10))
 done
if(($sum==$b))
then
 echo "number is palindrome"
else
 echo "number is not armstrong number"
fi
}
pal
