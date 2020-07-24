#!/bin/bash -x
arrayCounter=0
for (( i=1; i<=100; i++ ))
do
	num=$i
	rev=0
	for (( j=$i;j>0;j=j/10 ))
	do
		rev=$(( $(($rev*10)) + ($(( $j%10 ))) ))
	done
	if [[ $num -eq $rev ]]
	then
		arrayRepeat[$arrayCounter]=$i
		(( arrayCounter++ ))
	fi
done
echo "Array is: "${arrayRepeat[@]}
