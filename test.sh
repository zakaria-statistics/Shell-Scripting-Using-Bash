#my_arr=(1 2 3 4 5)
#for item in ${my_arr[@]}; do
#	echo $item
#done

# C-style
#for ((i = 0; i < 10; i++)); do
#	echo "$i"
#done

# Range
#for i in {1..10}; do
#	echo "$i"
#done

# Pattern matching
#for item in ./content/*md; do
#	echo "$item"
#done

# Command result
for item in "$(ls)"; do
	echo "$item"
done
