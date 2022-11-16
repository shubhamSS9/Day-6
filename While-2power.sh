#!/bin/bash -x 

echo "Enter the number: "
read n
i-1;S
while (( $i <= 2**$n ))
do
	x=$((2**$i))
	echo $x
	if [ $x -eq 256 ]
	then
		exit
	fi
	((i++))
done
