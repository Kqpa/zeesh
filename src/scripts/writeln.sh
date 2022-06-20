# Write a single line of text to a file

function writeln() {

    __ZEESH_WRITELN_INFO="[${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}::${fg[$__ZEESH_ACCENT_COLOR]}writeln${reset_color}]:"
	__WRITELN_FILE_NAME="$1"
	__WRITELN_TEXT="$2"

	if [ -z $__WRITELN_FILE_NAME ] && [ -z $__WRITELN_TEXT ]; then

		echo "$__ZEESH_WRITELN_INFO writeln <file> <text>"

	elif [ -f $__WRITELN_FILE_NAME ]; then

		echo "$__WRITELN_TEXT" >> "$__WRITELN_FILE_NAME"

	else

		echo "$__ZEESH_WRITELN_INFO $__WRITELN_FILE_NAME: file does not exist"

	fi

}