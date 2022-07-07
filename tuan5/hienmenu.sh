echo "1/a. Tinh tong tu 1-> n/n
2/b. In cac so chia het cho 7 tu 1-> n
Nhap n de tinh:"
read n;
export n=$n
echo "Nhap yeu cau tinh:"
read choice;
case $choice in 
	1)	
		sh tinhtong.sh
	;;
	2)
		sh sochiahet.sh
	;;
esac
