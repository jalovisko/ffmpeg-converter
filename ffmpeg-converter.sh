for var in "$@"
do
	# Getting filename without extention
	filename="${var%.*}"
	# Converting using ffmpeg
	ffmpeg -i "$var" -c:v copy -c:a libmp3lame -q:a 4 "${filename}.mp3"
	echo "$var"
done
