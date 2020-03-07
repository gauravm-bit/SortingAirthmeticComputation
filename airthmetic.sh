#!/bin/bash -x

function descendingSort(){
	for((k = 0; k < 5; k++))
	do
		for((j = 0; j < 5; j++))
		do
			if [ ${arr[$k]} -gt ${arr[$j]} ];
			then
					temp=${arr[$k]}
					arr[$k]=${arr[$j]}
					arr[$j]=$temp
			fi
	 	done
	done
	echo "Sorted array in descending order is " ${arr[@]}
	}


declare -A dict
declare -a arr

echo "Welcome to sorting airthmetic computation problem"

read -p "Enter the value of a " a
read -p "Enter the value of b " b
read -p "Enter the value of c " c

result1=`echo "$a + $b * $c" | bc`
result2=`echo "$a * $b + $c" | bc`
result3=`echo "$c + $a / $b" | bc`
result4=`echo "$a % $b + $c" | bc`

dict[1]="$result1"
dict[2]="$result2"
dict[3]="$result3"
dict[4]="$result4"

for(( i=1; i<=4; i++ ))
do
	arr[i]=${dict[$i]}
done
echo ${arr[@]}

descendingSort
