function cpp(){

  # You can modify the file extension to the one you use, e.g. `.cc`, `.cxx`, etc..
  # You can change the `c++` to the command you use, e.g. `gcc`, `g++`, etc..

clear

  printf "Enter file name: "
  read -r file_name

clear

  if [[ $file_name == *".cpp"* ]]; then
    echo Compiling $file_name...
    fi
  if [[ $file_name != *".cpp"* ]]; then
    echo Compiling $file_name.cpp...
    fi

  if [[ $file_name == *".cpp"* ]]; then
    c++ $file_name && ./a.out && rm -rf a.out
    fi
  if [[ $file_name != *".cpp"* ]]; then
    c++ $file_name.cpp && ./a.out && rm -rf a.out
    fi

}