
function tinhTong() {
        tong=0;
	for (( i=1; i <= $1; ++i ))
	do
	    tong=$((tong + i))
	done

	echo "tong so tu 1 den n la: $tong"
}

function soChiaHet(){
echo "so chia het cho 7 la: "
	for (( i=1; i <= $1; ++i ))
	do
	    if [ $((i%7)) -eq 0 ] 
		then 
	    		echo "$i"
		fi
		
	done
}

echo "1/a. Tinh tong tu 1-> n/n
2/b. In cac so chia het cho 7 tu 1-> n
Nhap n de tinh:"
read n;
echo "Nhap yeu cau tinh:"
read choice;
case $choice in 
	1)	
		tinhTong $n
	;;
	2)
		soChiaHet $n
	;;
	a)	
		tinhTong $n
	;;
	b)
		soChiaHet $n
	;;
esac

