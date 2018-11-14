#!/bin/bash
#Author: Xdude736
#Disclaimer: This is my variation of the offset test found on page 381 in Hacking, the Art of Exploitation 2nd by Jon Erikson
#Usage: ./find_offset <prog_test_path> <number_of_tests>
# prog_test_path = the file path of the program to be tested
# number_of_tests = upper limit of the loop

echo $0
echo $1
echo $2

echo "[+] Testing..."

for i in $(seq 1 $2)
do
    echo "Trying offset of $i words"
    $(python -c "print('AAAA'*${i})") | $1
    if [ $? != 139 ]
    then
        echo "==> Correct offset to return address is $i words"
        break
    fi
done
