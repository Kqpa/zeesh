function ccp() {

  # You can change the `$cpp_compiler` to the one you use, e.g. `clang++`, etc...
  # You can change the `$c_compiler` to the one you use, e.g. `clang`, etc...
  # Reload the shell configuration after you change these values

  cpp_compiler="g++"

  c_compiler="gcc"

clear

  dir=$(pwd) && printf "[current: "${dir}"] \n"
  printf "Enter file: " && read -r file_name

clear

  if [[ $(basename $file_name) == *.* ]]; then

    output=$(basename ${file_name} .${file_name#*.}).out

    # You can add more compiler arguments if you'd like

    if [[ .${file_name#*.} == .cpp || .${file_name#*.} == .cc || .${file_name#*.} == .C ||
          .${file_name#*.} == .cxx || .${file_name#*.} == .c++ ]]; then

      echo "Compiling & executing '$file_name'..."

      $cpp_compiler -Wall -std=c++17 $file_name -o $output && ./$output && rm -f $output

    elif [[ .${file_name#*.} == .c ]]; then

      echo "Compiling & executing '$file_name'..."

      $c_compiler -Wall -std=c17 $file_name -o $output && ./$output && rm -f $output

    else

      echo "Invalid file extension."

    fi

  elif [[ $(basename $file_name) == * ]]; then

    preferable_file_extension=".cpp"

    # The `$preferable_file_extension` is only used when a file extension is not specified
    # For example, if you inputted `index` as the file, it would pass `index.($preferable_file_extension)` as the file to the compiler
    # `$preferable_file_extension` can be any valid C or C++ file extension
    # Reload shell configuration after you change the `$preferable_file_extension` variable

    output=$file_name

    if [[ .${preferable_file_extension#*.} == .cpp || .${preferable_file_extension#*.} == .cc || .${preferable_file_extension#*.} == .C ||
          .${preferable_file_extension#*.} == .cxx || .${preferable_file_extension#*.} == .c++ ]]; then

      echo "Compiling & executing '$file_name' as C++..."

      $cpp_compiler -Wall -std=c++17 $file_name$preferable_file_extension -o $output && ./$output && rm -f $output
    
    elif [[ .${preferable_file_extension#*.} == .c ]]; then

      echo "Compiling & executing '$file_name' as C..."

      $c_compiler -Wall -std=c17 $file_name$preferable_file_extension -o $output && ./$output && rm -f $output

    else

      echo "'preferable_file_extension' variable is invalid."

    fi

  fi

}
