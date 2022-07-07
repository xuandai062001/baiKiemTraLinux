echo "so chia het cho 7 la: "
for (( i=1; i <= $n; ++i ))
do
    if [ $((i%7)) -eq 0 ] 
	then 
    		echo "$i"
	fi
	
done


