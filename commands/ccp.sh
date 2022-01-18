function ccp(){

  # You can modify the `$file_extension` to the one you use, e.g. `.cc`, `.c`, etc..
  # You can modify the `$compiler_command` to the command you use, e.g. `gcc`, `g++`, etc..

  file_extension=".cpp"
  compiler_command="c++"

  # Reload your shell after you change these values

clear

  dir=$(pwd) && printf "[current: "${dir}"] \n"
  printf "Enter file: " && read -r file_name

clear

  if [[ $file_name == *"$file_extension"* ]]; then
    echo "Compiling & executing" $file_name...
  elif [[ $file_name != *"$file_extension"* ]]; then
    echo "Compiling & executing" $file_name$file_extension...
  fi

  if [[ $file_name == *"$file_extension"* ]]; then
    $compiler_command $file_name && ./a.out && rm -rf a.out
  elif [[ $file_name != *"$file_extension"* ]]; then
    $compiler_command $file_name$file_extension && ./a.out && rm -rf a.out
  fi

}