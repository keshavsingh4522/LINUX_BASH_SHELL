#print armstrong number in a range
echo -e "enter a number from which u want to check armstrong number: \c"
read n
echo -e "enter a number upto which u want to check armstrong number: \c"
read n1
echo "armstrong numbers are the following :-"
n1=$(($n1+1))
while [ $n -ne $n1 ]
do
   b=$n
   c=0
   k=0
   while [ $n -ne 0 ]
   do
     r=$(($n%10))
     c=$(($c+1))
     n=$(($n/10))
   done

   c1=$c
   n=$b   #return same number
   sum=0
   while [ $n -ne 0 ]
   do
     r=$(($n%10))
     r1=$r
     while [ $c -ne 1 ]
     do
       r=$(($r*$r1))
       c=$(($c-1))
     done
     sum=$(($sum+$r))
     n=$(($n/10))
     c=$c1
   done
   if [ $b -ne $sum ]
   then
   k=$(($k+1))
   else
   echo $b
   fi
n=$(($b+1))
done
