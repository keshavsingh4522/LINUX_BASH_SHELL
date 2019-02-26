
#!/bin/bash
read -p "enter a character: " c

case $c in
  [A-Z])
      echo "$c lies in A-Z";;
  [a-z])
      echo "$c lies in a-z";;
  [0-9])
      echo "$c lies in 0-9";;
   ?)
      echo "$c is a specal character";;
   *)
      echo "$c is an unknown input"
esac
