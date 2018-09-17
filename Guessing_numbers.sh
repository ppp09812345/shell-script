#!/bin/bash

Guess_number(){

random_num=$RANDOM

read -p 'please input a number:' input_num

while (( $input_num != $random_num ))
do
    if [ $input_num -lt $random_num ]
    then
        echo $(tput setaf 1)"input number less than random number"$(tput sgr0)
        read -p 'please input a number again:' input_num
    else
        echo 'input number more than random number'
        read -p 'please input a number again:' input_num
    fi
done

echo 'Good job,You get it!'

echo 'random number is:'$random_num
}

Guess_number
