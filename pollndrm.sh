#!/bin/bash

function palindrome(){
    while (( $a>0 ))
    do
        rem=$(( $a % 10 ))
        sum=$(( $(( $sum * 10 )) + $rem ))
        a=$(( $a / 10 ))
    done
    if(( $sum == $b ))
    then
        echo They are palindromes
    else
        echo They are not Palindromes
    fi
}

read -p "Enter a value: " a
read -p "Enter b value: " b

sum=0
palindrome
