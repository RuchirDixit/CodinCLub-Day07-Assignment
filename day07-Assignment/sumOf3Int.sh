#!/bin/bash

for (( i=0;i<6;i++ ))
do
	read -p "Enter number "$(($i+1))" :" arr1[$i]
done

length=${#arr1[@]}
echo "Length is:"$length
for (( i=0 ; i<$length-2; i++ ))
do
	for (( j=$(($i+1)); j<$length-1; j++ ))
	do
		for (( k=$(($j+1)); k<$length; k++ ))
		do
			if [[ $(( ${arr1[$i]} + ${arr1[$j]} + ${arr1[$k]} )) -eq 0 ]]
			then
				echo ${arr1[$i]}" "${arr1[$j]}" "${arr1[$k]}
			fi
		done
	done
done
