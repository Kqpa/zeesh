# Quickly edit executables on your $PATH

function edit() {

	if [[ -z "$1" ]]; then
    	echo "usage: edit <executable>"
	elif [[ -w $(which $1) ]] && [[ -f $(which $1) ]]; then
		vim $(which $1)
	elif [[ ! -w $(which $1) ]] && [[ -f $(which $1) ]]; then
		sudo vim $(which $1)
	else
		echo "edit: $1: No such file or directory"
	fi

}