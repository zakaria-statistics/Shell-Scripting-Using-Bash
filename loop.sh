my_arr=(1 2 3 4 5)

i=0
while [ $i -lt ${#my_arr[@]} ]; do
	echo "${my_arr[$i]}"
	((i++))
done
