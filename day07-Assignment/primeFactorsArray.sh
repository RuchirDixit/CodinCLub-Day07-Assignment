#!/bin/bash
read -p "Enter number to find factors" range
arrayCounter=0
for (( i=2; i<=$range; i++ ))
do
	if [ $(( $range%$i )) -eq 0 ]
	then
		isPrime=1
		for(( j=2; j<=$(($i/2)); j++ ))
		do
   		if [ $(( $i%$j )) -eq 0 ]
   		then
      		isPrime=0
      		break
			fi
		done
		if [ $isPrime -eq 1 ]
		then
			primeArray[arrayCounter]=$i
			(( arrayCounter++ ))
		fi
	fi
done

echo "Array is: "${primeArray[@]}
