# Easily compile & execute a C/C++ file in one command

function ccp() {

  __FILE_NAME="$1"

  if [ -z "$__FILE_NAME" ]; then
    
    echo "usage: ccp [file .cpp | .cc | .C | .cxx | .c++ | .c]"

  else

    if [[ $(basename $__FILE_NAME) == *.* ]]; then

      __OUTPUT=$(basename ${__FILE_NAME} .${__FILE_NAME#*.}).out

      # You can add more compiler arguments if you'd like

      if [[ .${__FILE_NAME#*.} == .cpp || .${__FILE_NAME#*.} == .cc || .${__FILE_NAME#*.} == .C ||
            .${__FILE_NAME#*.} == .cxx || .${__FILE_NAME#*.} == .c++ ]]; then

        echo "ccp: compiling & executing '$__FILE_NAME'..."

        $__CPP_COMPILER -Wall -std=c++17 $__FILE_NAME -o $__OUTPUT && ./$__OUTPUT && rm -f $__OUTPUT

      elif [[ .${__FILE_NAME#*.} == .c ]]; then

        echo "ccp: compiling & executing '$__FILE_NAME'..."

        $__C_COMPILER -Wall -std=c17 $__FILE_NAME -o $__OUTPUT && ./$__OUTPUT && rm -f $__OUTPUT

      else

        echo "ccp: ${__FILE_NAME#*.}: invalid file extension."

      fi

    elif [[ $(basename $__FILE_NAME) == * ]]; then

      __OUTPUT=$(basename $__FILE_NAME).out

      if [[ .${__PREFERABLE_FILE_EXTENSION#*.} == .cpp || .${__PREFERABLE_FILE_EXTENSION#*.} == .cc || .${__PREFERABLE_FILE_EXTENSION#*.} == .C ||
            .${__PREFERABLE_FILE_EXTENSION#*.} == .cxx || .${__PREFERABLE_FILE_EXTENSION#*.} == .c++ ]]; then

        echo "ccp: compiling & executing '$__FILE_NAME' as C++..."

        $__CPP_COMPILER -Wall -std=c++17 $__FILE_NAME$__PREFERABLE_FILE_EXTENSION -o $__OUTPUT && ./$__OUTPUT && rm -f $__OUTPUT
      
      elif [[ .${__PREFERABLE_FILE_EXTENSION#*.} == .c ]]; then

        echo "ccp: compiling & executing '$file_name' as C..."

        $__C_COMPILER -Wall -std=c17 $__FILE_NAME$__PREFERABLE_FILE_EXTENSION -o $__OUTPUT && ./$__OUTPUT && rm -f $__OUTPUT

      else

        echo "ccp: $__PREFERABLE_FILE_EXTENSION: not a valid file extension."

      fi

    fi

  fi

}
