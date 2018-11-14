#!/bin/bash
#Author: Xdude736
#Disclaimer: This is my variation of the offset test found on page 381 in Hacking, the Art of Exploitation 2nd by Jon Erikson
#Usage: ./find_offset <prog_test_path> <number_of_tests>
# prog_test_path = the file path of the program to be tested
# number_of_tests = upper limit of the loop

if [ "$#" != 2 || "$#" != 3 ]; then
    echo "Usage: ./find_offset <prog_test_path> <number_of_tests>"
    break
fi
