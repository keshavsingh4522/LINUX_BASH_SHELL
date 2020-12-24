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