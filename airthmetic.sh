#!/bin/bash -x

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
