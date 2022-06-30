echo "Nhap vao ten mot folder: "
read DIR
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "Installing config files in ${DIR}..."
	echo "so luong thu muc la: $(find $DIR -maxdepth 1 -type d -print| wc -l)"
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Error: ${DIR} not found. Can not continue."
  exit 1
fi
