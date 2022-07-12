max=4
for (( i=1; i <= $max; ++i ))
do
	textFile="txt"$i".txt" 
	touch $textFile
	echo -e "line1\nline2\nline3\nline4\nline5\nline6" >> $textFile
	
done
