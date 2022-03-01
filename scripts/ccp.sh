function ccp() {

  # You can modify the `$file_extension` to the one you use, e.g. `.cc`, `.c`, etc...
  # You can modify the `$compiler_command` to the command you use, e.g. `gcc`, `clang++`, etc...

  file_extension=".cpp"
  compiler_command="g++"

  # Reload your shell after you change these values

clear

  dir=$(pwd) && printf "[current: "${dir}"] \n"
  printf "Enter file: " && read -r file_name

clear

  if [[ $file_name == *"$file_extension"* ]]; then
    
    echo "Compiling & executing" $file_name...
    
    output="$(basename ${file_name} ${file_extension})"
    
    $compiler_command -Wall $file_name -o $output && ./$output && rm -rf $output
  
  elif [[ $file_name != *"$file_extension"* ]]; then
    
    echo "Compiling & executing" $file_name$file_extension...
    
    output=$file_name

    $compiler_command -Wall $file_name$file_extension -o $output && ./$output && rm -rf $output
  
  fi

}
