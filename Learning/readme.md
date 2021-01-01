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
*./script_name.sh 
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
declare -l f="LOLCats" # f is lolcats means upper case to lower case or all character will converted into lower case
declare -u g="LOLCats" # all char converted to in upper case
-------------------------
**Built-in variables**
echo $HOME                   # RETURN USER HOME DIRECTORY
echo $PWD                    # RETURN CURRENT DIRECTORY PATH
echo $BASH_VERSION           # RETURN CURRENT VERSION OF BASH ON YOUR MACHINE
echo $HOSTNAME               # RETURN THE HOSTNAME OF SYSTEM
echo $MACHTYPE               # RETURN THE SYSTEM NAME

```