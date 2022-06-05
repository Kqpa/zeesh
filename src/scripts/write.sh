# Write a single line of text to a file

function write() {

	__WRITE_FILE_NAME="$1"
	__WRITE_TEXT="$2"

	if [ -z $__WRITE_FILE_NAME ] && [ -z $__WRITE_TEXT ]; then

		echo "usage: write <file> <text>"

	elif [ -f $__WRITE_FILE_NAME ]; then

		echo "$__WRITE_TEXT" >> "$__WRITE_FILE_NAME"

	else

		echo "File $__WRITE_FILE_NAME does not exist"

	fi

}