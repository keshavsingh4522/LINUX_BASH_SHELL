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

#### 8/16 Colors
**NOTE:** The colors can vary depending of the terminal configuration.

- Foreground (text)

|Code | Color	| Example |
| --- | ------- | ------- |
| 39  |	Default foreground color | echo -e "Default \e[39mDefault" |
| 30  |	Black	| echo -e "Default \e[30mBlack" |
| 31  |	Red	| echo -e "Default \e[31mRed" |
| 32  |	Green	| echo -e "Default \e[32mGreen" |
| 33  |	Yellow	| echo -e "Default \e[33mYellow" |
| 34  |	Blue	| echo -e "Default \e[34mBlue" |
| 35  |	Magenta	| echo -e "Default \e[35mMagenta" |
| 36  |	Cyan	| echo -e "Default \e[36mCyan" |
| 37  |	Light gray	| echo -e "Default \e[37mLight gray" |
| 90  |	Dark gray	| echo -e "Default \e[90mDark gray" |
| 91  |	Light red	| echo -e "Default \e[91mLight red" |
| 92  |	Light green	| echo -e "Default \e[92mLight green" |
| 93  |	Light yellow	| echo -e "Default \e[93mLight yellow" |
| 94  |	Light blue	| echo -e "Default \e[94mLight blue" |
| 95  |	Light magenta	| echo -e "Default \e[95mLight magenta" |
| 96  |	Light cyan	| echo -e "Default \e[96mLight cyan" |
| 97  |	White	 | echo -e "Default \e[97mWhite" |

- Background

|Code | Color	| Example |
| --- | ------- | ------- |
| 49  |	Default background color	| echo -e "Default \e[49mDefault" |
| 40  |	Black	| echo -e "Default \e[40mBlack" |
| 41  |	Red	| echo -e "Default \e[41mRed" |
| 42  |	Green	| echo -e "Default \e[42mGreen" |
| 43  |	Yellow	| echo -e "Default \e[43mYellow" |
| 44  |	Blue	| echo -e "Default \e[44mBlue" |
| 45  |	Magenta	| echo -e "Default \e[45mMagenta" |
| 46  |	Cyan	| echo -e "Default \e[46mCyan" |
| 47  |	Light gray	| echo -e "Default \e[47mLight gray" |
| 100 |	Dark gray	| echo -e "Default \e[100mDark gray" |
| 101 |	Light red	| echo -e "Default \e[101mLight red" |
| 102 |	Light green	| echo -e "Default \e[102mLight green" |
| 103 |	Light yellow	| echo -e "Default \e[103mLight yellow" |
| 104 |	Light blue	| echo -e "Default \e[104mLight blue"
| 105 |	Light magenta	| echo -e "Default \e[105mLight magenta" |
| 106 |	Light cyan	| echo -e "Default \e[106mLight cyan" |
| 107 |	White	| echo -e "Default \e[107mWhite" |

#### 88/256 Colors

-Foreground (text)
  
  For using one of the 256 colors on the foreground (text color), the control sequence is “<Esc>[38;5;ColorNumberm” where ColorNumber is one of the following colors:

![](color_1.png)

- Background

  For using one of the 256 colors on the background, the control sequence is “<Esc>[48;5;ColorNumberm” where ColorNumber is one of the following colors:

![](color_2.png)

#### Attributes combination

- Terminals allow attribute combinations. The attributes must be separated by a semicolon (“;”).

Examples: 

| Description  |	Code (Bash)  |
| ------------ | --------------- |
| Bold + Underlined	| echo -e "\e[1;4mBold and Underlined" |
| Bold + Red forground + Green background	| echo -e "\e[1;31;42m Yes it is awful \e[0m" |

## Change the prompt color using tput

- You can also change color of the PS1 prompt using tput as shown below:

```bash
export PS1="\[$(tput bold)$(tput setb 4)$(tput setaf 7)\]\u@\h:\w $ \[$(tput sgr0)\]"
```

- how to prompt part before  :~$, use below command
```bash
tput blink
```
| Style 						 | Command 			| Description   |
| ------------------------------ | ---------------- | ------------  |
| Foreground using ANSI escape   | tput setaf [0-7] | echo -e "$(tput setaf 1) keshav $(tput sgr0) singh" |
| Foreground    				 | tput setf [0-7]  | echo -e "$(tput setf 1) keshav $(tput sgr0) singh"  |
| background using ANSI escape   | tput setab [0-7] | echo -e "$(tput setab 1) keshav $(tput sgr0) singh" |
| background    				 | tput setb [0-7]  | echo -e "$(tput setb 1) keshav $(tput sgr0) singh"  |
| No style      				 | tput sgv0        | 
| Bold          				 | tput bold        |
| Low intensity 				 | tput dim         |
| Underline     				 | tput smul        |
| Blinking      				 | tput blink       |
| Reverse       				 | tput rev         |
- Color Code for tput:
| Code | color name |
| 0    | Black      |
| 1    | Red   		|
| 2    | Green 		|
| 3    | Yellow 	|
| 4    | Blue 		|
| 5    | Magenta 	|
| 6    | Cyan 		|
| 7    | White 		|


