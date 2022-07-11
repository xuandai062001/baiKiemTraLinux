
for argument in "$@" 
do
	if [ -f $argument ] ; then
		extension="${argument##*.}"
  		echo "nhap phan dau ten file moi: "	
		read name
		newName=$name"."$extension
		mv $argument $newName
		
	else
		echo "file $argument khong ton tai"
	fi
done

