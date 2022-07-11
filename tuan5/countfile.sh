echo "Nhap vao ten mot folder: "
read DIR
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
	echo "Thu muc nhap vao ton tai"
	
	if [ -r ${DIR} ]
		then
			echo "Thu muc co quyen doc"
			echo -e "So luong folder trong thu muc la: $(find $DIR -type d | wc -l)"
			echo -e "So luong file trong thu muc la:$(find $DIR ! -type d ! -name '.*' | wc -l) "		
			echo -e "So luong hard link trong thu muc la: $(find $DIR -type f -links +1 | wc -l)"
			echo -e "So luong symbolic link trong thu muc la: $(find $DIR -type l | wc -l)"
			
	fi
else
  ###  Control will jump here if $DIR does NOT exists ###
  exit 1
fi

