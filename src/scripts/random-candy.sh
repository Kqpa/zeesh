# Prints a random color script

function random-candy() {
  
  __ZEESH_RANDOMCANDY_INFO="[${fg[$__ZEESH_ACCENT_COLOR]}zeesh${reset_color}::${fg[$__ZEESH_ACCENT_COLOR]}random-candy${reset_color}]:"
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
    *)    echo "$__ZEESH_RANDOMCANDY_INFO an unexpected error occurred while executing a random color script" ;;
  
  esac

}
