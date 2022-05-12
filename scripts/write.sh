# Write a single line of text to a file

function write() {
	
	if [ -z $1 ] && [ -z $2 ]; then

		echo "usage: write <file> <text>"

	elif [ -f $1 ]; then

		echo "$2" >> "$1"

	else

		echo "File $1 does not exist"

	fi

}