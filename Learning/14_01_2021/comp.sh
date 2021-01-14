#!/bin/bash

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
