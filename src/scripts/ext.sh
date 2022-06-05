# Archive extractor

function ext() {

  __EXTRACTION_FILE="$1"
  
  if [ -z $__EXTRACTION_FILE ]; then
    
    echo "usage: ext [file .tar.bz2 | .tar.gz | .bz2 | .rar | .gz | .tar | .tbz2"
    echo "                 .tgz | .zip | .Z | .7z | .deb | .tar.xz | .tar.zst]"
  
  elif [ -f $__EXTRACTION_FILE ]; then
  
    case $__EXTRACTION_FILE in
  
      *.tar.bz2)   tar xjf $__EXTRACTION_FILE    ;;
      *.tar.gz)    tar xzf $__EXTRACTION_FILE    ;;
      *.bz2)       bunzip2 $__EXTRACTION_FILE    ;;
      *.rar)       unrar x $__EXTRACTION_FILE    ;;
      *.gz)        gunzip $__EXTRACTION_FILE     ;;
      *.tar)       tar xf $__EXTRACTION_FILE     ;;
      *.tbz2)      tar xjf $__EXTRACTION_FILE    ;;
      *.tgz)       tar xzf $__EXTRACTION_FILE    ;;
      *.zip)       unzip $__EXTRACTION_FILE      ;;
      *.Z)         uncompress $__EXTRACTION_FILE ;;
      *.7z)        7z x $__EXTRACTION_FILE       ;;
      *.deb)       ar x $__EXTRACTION_FILE       ;;
      *.tar.xz)    tar xf $__EXTRACTION_FILE     ;;
      *.tar.zst)   unzstd $__EXTRACTION_FILE     ;;
      *)           echo "'$__EXTRACTION_FILE' cannot be extracted via ext" ;;
    
    esac
  
  else
  
    echo "'$__EXTRACTION_FILE' is not a valid file"
  
  fi

}