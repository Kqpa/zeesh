# Quickly edit executables on your $PATH

function edit() {

	__EDIT_EXECUTABLE_FILE="$1"

	if [[ -z "$__EDIT_EXECUTABLE_FILE" ]]; then

		echo "usage: edit <executable>" && return 0
	
	elif [[ ! -f $(which $__EDIT_EXECUTABLE_FILE) ]]; then
	
		echo "edit: '$__EDIT_EXECUTABLE_FILE' is not a valid executable on '\$PATH'" && return 1
	
	fi

	if [[ $(file -b --mime-type $(which $__EDIT_EXECUTABLE_FILE) | sed 's|/.*||') == *"application"* ]]; then
	
			xxd $(which $__EDIT_EXECUTABLE_FILE) | $__EDIT_EDITOR -
	
	elif [[ $(file -b --mime-type $(which $__EDIT_EXECUTABLE_FILE) | sed 's|/.*||') == *"text"* ]]; then
	
		if [[ -w $(which $__EDIT_EXECUTABLE_FILE) ]]; then
	
			$__EDIT_EDITOR $(which $__EDIT_EXECUTABLE_FILE)
	
		else
	
			sudo $__EDIT_EDITOR $(which $__EDIT_EXECUTABLE_FILE)
	
		fi
	
	else
	
		echo "edit: $__EDIT_EXECUTABLE_FILE: Not a valid file format" && return 1
	
	fi
}
