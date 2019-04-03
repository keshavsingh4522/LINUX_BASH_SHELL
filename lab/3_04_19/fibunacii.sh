
#!/bin/bash -x
read -p "enter number of ellement in fibunacii series: " n
fib()
{
  a=0
  b=1
 for((i=0;i<n;i++))
 do
  f=$((a+b))
 echo "$a"
   a=$b
  b=$f
done
}
fib
