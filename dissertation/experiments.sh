#!/bin/bash

while getopts d:c:t:n: flag
do
	case "$flag" in
		d) duration=${OPTARG};;
		c) connections=${OPTARG};;
		t) threads=${OPTARG};;
		n) iterations=${OPTARG};;
	esac
done
larr=()
tarr=()
darr=()
for ((c=1; c<=$iterations;c++))
do
	echo "$c"
	OUTPUT=$(wrk -d$duration -t$threads -c$connections http://10.10.1.1:3490/)
	LATENCY=$(echo "$OUTPUT" | awk 'NR==4 { print $2;}')
	THRPT=$(echo "$OUTPUT" | awk 'NR==7 { print $2;}') 
	DATA=$(echo "$OUTPUT" | awk 'NR==8 { print $2;}') 

	larr+=$LATENCY
	larr+=" "
	tarr+=$THRPT
	tarr+=" "
	darr+=$DATA
	darr+=" "
done


echo "${larr[@]}"
echo "${tarr[@]}"
echo "${darr[@]}"

printf "%s\n" "${larr[@]}" > experiment-d"$duration"-t"$threads"-c"$connections".txt
printf "%s\n" "${tarr[@]}" >> experiment-d"$duration"-t"$threads"-c"$connections".txt
printf "%s\n" "${darr[@]}" >> experiment-d"$duration"-t"$threads"-c"$connections".txt
