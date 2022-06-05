# Prints a random color script

function random-candy() {
  
  __RANDOM_CANDY=$(( $RANDOM % 8 + 1 ))

  case $__RANDOM_CANDY in

    "1")  crunch  ;;
    "2")  dots    ;;
    "3")  mouse   ;;
    "4")  panes   ;;
    "5")  rails   ;;
    "6")  squares ;;
    "7")  void    ;;
    "8")  wheel   ;;
    *)    echo "An unexpected error occurred while executing a random shell color script." ;;
  
  esac

}
