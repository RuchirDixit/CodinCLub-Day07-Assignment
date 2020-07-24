#!/bin/bash
for (( i=0; i<10; i++ ))
do
   Num[i]=$((100+RANDOM%900))
done
sortA=` for item in ${Num[@]}; do echo $item; done | sort`   #sorts array and creates list in ascending order
echo $sortA

secondMin=`echo $sortA | awk '{print $2}'
`
secondMax=`echo $sortA | awk '{print $9}'`
echo "Second Min:"$secondMin
echo "second Max:"$secondMax
