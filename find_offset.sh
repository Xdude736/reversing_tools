#!/bin/bash
#Author: Xdude736
#Disclaimer: This is my variation of the offset test found on page 381 in Hacking, the Art of Exploitation 2nd by Jon Erikson
#Usage: ./find_offset <prog_test_path> <number_of_tests>
# prog_test_path = the file path of the program to be tested
# number_of_tests = upper limit of the loop

for i in $(seq 1 $2)
do
    echo "Trying offset of $i words"
    $1 $(python -c 'print("AAAA" * "$i")')
    if [ $? != 1 ]
    then
        echo "==> Correct offset to return address is $i words"
        break
    fi
done
