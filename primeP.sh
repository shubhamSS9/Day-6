#!/bin/bash

function isPrime(){
    for((i=1; i<=$n; i++))
    do
        if(( $(( $n % $i )) == 0))
        then
            (( c++ ))
        fi
    done
    if(( $c<=2 ))
        then
            echo $n is Prime
    else
        echo $n is not Prime
    fi

}

function getPalindrome(){
    temp=$n
        while (( $temp>0 ))
        do
                rem=$(( $temp % 10 ))
                sum=$(( $(( $sum * 10 )) + $rem ))
                temp=$(( $temp / 10 ))
        done

    echo $sum is the palindrome
    n=$sum
    isPrime
}

read -p "Enter a value: " n
c=0
sum=0
isPrime
getPalindrome
