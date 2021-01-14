d=2
e=$((d+2))
((e++))
echo $e
((e--))
echo $e
((e*=3))
echo $e
((e/=3))
echo $e
echo $((--e))
echo $e
echo $((e++))
echo $e
# e =4
e+=6 # treated as string e=46
echo $e
echo $((e+3))

# print decimal how
echo $((2/3))
g=$(echo 2/3 | bc -l)
echo $g
printf %.2f $g  # round upto 2 decimal points
echo
printf %.2f $((3/2)) # for enabling decimal i have to use bc
echo
