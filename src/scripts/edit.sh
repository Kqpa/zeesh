# Quickly edit executables on your $PATH

function edit() {

	__EDIT_EXECUTABLE_FILE="$1"
	__ZEESH_EDIT_INFO="[${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}::${fg[$__ZEESH_ACCENT_COLOR]}edit${reset_color}]:"

	if [[ -z "$__EDIT_EXECUTABLE_FILE" ]]; then

		echo "$__ZEESH_EDIT_INFO edit <executable>" && return 0
	
	elif [[ ! -f $(which $__EDIT_EXECUTABLE_FILE) ]]; then
	
		echo "$__ZEESH_EDIT_INFO '$__EDIT_EXECUTABLE_FILE': not a valid executable on '\$PATH'" && return 1
	
	fi

	if [[ $(file -b --mime-type $(which $__EDIT_EXECUTABLE_FILE) | sed 's|/.*||') == *"application"* ]]; then
	
			xxd $(which $__EDIT_EXECUTABLE_FILE) | $__ZEESH_EDITOR -
	
	elif [[ $(file -b --mime-type $(which $__EDIT_EXECUTABLE_FILE) | sed 's|/.*||') == *"text"* ]]; then
	
		if [[ -w $(which $__EDIT_EXECUTABLE_FILE) ]]; then
	
			$__ZEESH_EDITOR $(which $__EDIT_EXECUTABLE_FILE)
	
		else
	
			sudo $__ZEESH_EDITOR $(which $__EDIT_EXECUTABLE_FILE)
	
		fi
	
	else
	
		echo "$__ZEESH_EDIT_INFO $__EDIT_EXECUTABLE_FILE: not a valid file format" && return 1
	
	fi
}
