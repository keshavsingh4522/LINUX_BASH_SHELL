- check version of bash
```bash
echo $BASH_VERSION
```
- see the last part in file
```bash
tail filename

tail -n filename
# n means last number of line
```
- see the start part in file
```bash
head filename

head -n filename
# n means last number of line
```
- tilde and brace expansion
```bash
echo {1..10} # print numbers from 1 to 10
touch {abc,cde,fgh,ijk} #created these 4 files 
touch file_{1..100}.txt # created 100 text file
touch file_{1..100}.txt # deleted these 100 text file
echo {a..z}
echo {1..0}
echo {1..1}
echo {A..z}
echo {1..1000}
echo {001..1000}
echo {01..1000}
#interval
echo {1..100..2}
echo {a..z..3}
touch {apple,banana,mango}_{1..10}_{a..z..2}.txt
```
- delete file at once
```bash
rm *
```

- Changing where things go with pipes and redirection
```bash
ls | more
ls | less
--------------------------------
** success error redirection **
sucees => 1
error  => 2
success+error => &
cp -v * ../file ../seconsd 1> success.txt 2>error.txt &>log.txt
ls > /dev/null  # output goes to blow air, never to see again.
--------------------------------
```

- Manipulating output with grep,awk and cut
```bash
awk --> split according to space
cut --> split according to give delimiter in below = is delimiter

grep 99 chegg2.tsv | awk {'print $2'}
ping -c 5 example.com | grep 'bytes from' | cut -d = -f 4
```

- understanding bash script syntax
```bash
#!/bin/bash
#!          ----> called as Hashbang/Shebang
/bin/bash   ----> path to the bash executable

# --> used for comment
```

- 3 different ways of running bash script
```bash
*bash script_name.sh*
*./script_name.sh*
# for this you make to executable script run below command
# chmod +x script_name.sh
*script_name.sh*
# first make this executable then copy/move to /usr/bin/ folder
# cp script_name.sh /usr/bin/
```

- displaying text(single qutote and double quote) with echo
```bash
echo $grt keshav (Rajput)
echo $grt keshav \(Rajput\)

echo '$grt hello'

echo "$grt hi"
echo "\$grt hi"
```

- Working with variables
```bash
a=hello
b=Hello keshav # generate error
c="Hello keshav"
d=20
-------------------------
**adding attribute to variables**
declare -i d=123       # d is an integer
declare -r e=123       # e is read only
declare -l f="LOLCats" # all character will converted into lower case
declare -u g="LOLCats" # all char converted to in upper case
-------------------------
**Built-in variables**
echo $HOME                   # RETURN USER HOME DIRECTORY
echo $PWD                    # RETURN CURRENT DIRECTORY PATH
echo $BASH_VERSION           # RETURN CURRENT VERSION OF BASH ON YOUR MACHINE
echo $HOSTNAME               # RETURN THE HOSTNAME OF SYSTEM
echo $MACHTYPE               # RETURN THE SYSTEM NAME

```

- command substitution
```bash
d=$(pwd)
echo $d

d=(ping -c 1 example.com | grep 'bytes from' | cut -d '=' -f 4)
echo "responsw was $d"

d=(ping -c 1 example.com | grep 'bytes from' | cut -d '=' -f4,1,2)
echo "responsw was $d"
```

- working with numbers

| Operation | Operator |
| --- | --- |
| Exponentation | $a ** $b |
| Multiplaction | $a * $b |
| Division | $a / $b |
| Modulo | $a % $b |
| Addition | $a + $b |
| Subtraction | $a - $b |

 	- Examples
```bash
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
```  

- Rememmber below terms
```bash
$? - The exit status of the last command executed.

$0 - The filename of the current script.

$# - The number of arguments supplied to a script.

$$ - The process number of the current shell. For shell scripts, 
     this is the process ID under which they are executing.
```

- Comparasion

[[ expression ]]

expression have space or [[ and ]] have space.

| Operation | Operator |
| --- | --- |
| less than | [[ $a < $b ]] |
| greater than | [[ $a > $b ]] |
| less than or equal to | [[ $a <= $b ]] |
| greater than or equal to | [[ $a >= $b ]] |
| equal | [[ $a == $b ]] |
| not equal | [[ $a != $b ]] |

```bash
# success = 0
# failure = 1
[[ "cat" == "cat" ]]
echo $?

[[ "cat" == "dog" ]]
echo $?

[[ 3 > 4  ]]
echo $?

[[ 3 -gt 4 ]]
echo $?
```
| Operation | Operator |
| --- | --- |
| less than | [[ $a -lt $b ]] |
| greater than | [[ $a -gt $b ]] |
| less than or equal to | [[ $a -le $b ]] |
| greater than or equal to | [[ $a -ge $b ]] |
| equal | [[ $a -eq $b ]] |
| not equal | [[ $a -ne $b ]] |

- logical operations
| Operation | Operator |
| --- | --- |
| Logical AND | [[ $a && &b ]] |
| Logical OR | [[ $a || &b ]] |
| Logical NOT | [[ $a ! &b ]] |

- String null value
| Operation | Operator |
| --- | --- |
| is null? | [[ -z $a ]] |
| is not null? | [[ -n $a ]] |

- Working With String
```bash
a=Hello
b=World
c=$a$b # concatinate string
echo $c
echo ${#c} # length of string
# substring using : 
echo ${c:3} # here 3 is starting index
echo ${c:3:6} # here 6 is length of char after index 3
echo $c | rev # reverse the string

# replacing
fruit= "apple banana banana cherry"
echo ${fruit/banana/keshav} # fruit var namme,replace first banana with keshav
echo ${fruit//banana/keshav} # replace all banana with keshav
echo ${fruit/#apple/keshav} # if apple is first string in fruit then replace with keshav
echo ${fruit/#banana/keshav} # it will not replace b/c banana is not first string
echo ${fruit/%apple/keshav} # it replace with keshav if appple is last string, in this no change
echo ${fruit/%cherry/keshav} # cherry is last,so it willl be replaced with keshav

echo ${fruit/c*/keshav} # after c all are replace with keshav
echo ${fruit/n*/keshav} # after n all are replace with keshav
echo ${fruit/b*/keshav} # after b all are replace with keshav
echo ${fruit/p*/keshav} # after p all are replace with keshav

```

<h3 align="center"> Bash tips: Colors and formatting (ANSI/VT100 Control sequences)</h3>

<pre>
sequences are composed of the Escape character (often represented by “^[” or “<Esc>”) 
followed by some other characters: “<Esc>[FormatCodem”.

In Bash, the <Esc> character can be obtained with the following syntaxes:

		- \e
		- \033
		- \x1B

</pre>

- Set

|Code | Description	| Example |
| --- | ----------- | ------- |
| 1	| Bold/Bright |	echo -e "Normal \e[1mBold" |
| 2	| Dim	 | echo -e "Normal \e[2mDim" |
| 4	| Underlined	| echo -e "Normal \e[4mUnderlined" |
| 5	| Blink 1) |	echo -e "Normal \e[5mBlink" |
| 7	| Reverse (invert the foreground and background colors)	| echo -e "Normal \e[7minverted" |
| 8	| Hidden (useful for passwords)	 | echo -e "Normal \e[8mHidden" |

- Reset

|Code | Description	| Example |
| --- | ----------- | ------- |
|  0  |	Reset all attributes | echo -e "\e[0mNormal Text" |
| 21  |	Reset bold/bright	| echo -e "Normal \e[1mBold \e[21mNormal" |
| 22  |	Reset dim	| echo -e "Normal \e[2mDim \e[22mNormal" |
| 24  |	Reset underlined	| echo -e "Normal \e[4mUnderlined \e[24mNormal" |
| 25  |	Reset blink	| echo -e "Normal \e[5mBlink \e[25mNormal" |
| 27  |	Reset reverse	| echo -e "Normal \e[7minverted \e[27mNormal" |
| 28  |	Reset hidden	| echo -e "Normal \e[8mHidden \e[28mNormal" |