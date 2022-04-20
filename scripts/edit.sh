# Quickly edit executables on your $PATH

function edit() {

	if [[ -z "$1" ]]; then
    		echo "usage: edit <executable>"
		return 0
	elif [[ ! -f $(which $1) ]]; then
		echo "edit: $1 is not a valid executable on '\$PATH'" 
		return 1
	fi

	if [[ $(file -b --mime-type $(which $1) | sed 's|/.*||') == *"application"* ]]; then
			xxd $(which $1) | vim -
	elif [[ $(file -b --mime-type $(which $1) | sed 's|/.*||') == *"text"* ]]; then
		if [[ -w $(which $1) ]]; then
			vim $(which $1)
		else
			sudo vim $(which $1)
		fi
	else
		echo "edit: $1: Not a valid file format"
		return 1
	fi
}
