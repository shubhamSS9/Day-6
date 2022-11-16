#!/bin/bash -x
# 2^n

read -p "Enter a value: " n

ans=1

for (( i=1; i<=$n; i++ ))
do
    ans=$(( $ans * 2 ))
    echo $ans
done
