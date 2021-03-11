if [ "$1" = "-all" ]
then
	echo "$1"
    for file in *.m4a;
	do
		filename="${file%.*}"
		ffmpeg -i "$file" -c:v copy -c:a libmp3lame -q:a 4 "${filename}.mp3"
	done
else
	for var in "$@"
		do
			# Getting filename without extention
			filename="${var%.*}"
			# Converting using ffmpeg
			ffmpeg -i "$var" -c:v copy -c:a libmp3lame -q:a 4 "${filename}.mp3"
		done
fi
