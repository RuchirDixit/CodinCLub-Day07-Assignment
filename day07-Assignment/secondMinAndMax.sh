#!/bin/bash

for (( i=0; i<10; i++ ))
do
	Num[i]=$((100+RANDOM%900))
done
echo ${Num[*]}
max=${Num[0]}
min=${Num[0]}

for (( i=1; i<10; i++ ))
do
	if [[ Num[$i] -gt $max ]]
	then
		max=${Num[$i]}
	fi
	if [[ Num[$i] -lt $min ]]
	then
		min=${Num[$i]}
	fi
done
secondMax=${Num[0]}
secondMin=$max
for (( i=0; i<10; i++ ))
do
        if [[ Num[$i+1] -lt $max && Num[$i+1] -gt $secondMax ]]
        then
                secondMax=${Num[$i+1]}
        fi
	if [[ Num[$i] -lt $secondMin && Num[$i] -gt $min ]]
	then
		secondMin=${Num[$i]}
	fi
done

echo "Max:"$max
echo "2nd max:"$secondMax

echo "Min:"$min
echo "2nd min:"$secondMin
