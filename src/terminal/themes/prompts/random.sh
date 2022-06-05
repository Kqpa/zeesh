function __load_random_prompt() {

    __RANDOM_PROMPT=$(( $RANDOM % 2 + 1 ))

  case $__RANDOM_PROMPT in

    "1") __load_minimal_prompt ;;
    "2") __load_classic_prompt ;;
    *)    echo "[zeesh]: an unexpected error occured while loading a random theme, loading default prompt." && __load_default_prompt ;;
  
  esac

}