#!/bin/bash
a=('keshav' 'singh' 'jadon')
unset a[0]
a[6]='prabhu'
#print all element of an array at a time
echo "${a[@]}"

#print element one by one

echo "${a[0]}"
echo "${a[1]}"
echo "${a[2]}"

#print index of element of an array

echo "index of element of an array: ${!a[@]} "

#length of array

echo "length of an array is: ${#a[@]}"

#without quote assign value

b=kdjskjdbfsbfksdf_,.[}lkkddksjd #it will treated as single string
echo "${b[@]}"
echo "${b[0]}"
echo "length: ${#b[@]}"
