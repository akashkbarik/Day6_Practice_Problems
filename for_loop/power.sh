read -p "enter the value of n : " n
for (( i=1; i<=$n; i++ ))
do
	echo "power of 2 of $i :" $((2**i))
done
