echo "Nhap vao ten mot folder: "
read DIR
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
	for entry in `ls $DIR`; do
	
	    if [ ! -s $DIR/$entry ]
		then
			echo $entry
		fi
	done
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Error: ${DIR} not found. Can not continue."
  exit 1
fi
