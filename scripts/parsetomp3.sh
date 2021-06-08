#!/bin/bash

# Uncomment the next line if running the script directly!
# chmod +x parsetomp3.sh

# =================================================================
# This script converts .flac files to .mp3.
# 
# $ parsetomp3
# $ parsetomp3 -cf
# =================================================================

function parsetomp3() {
  local argvParamToCreateFolderAndMove="$1"

  for file in ./*.flac; do
    < /dev/null ffmpeg -i "$file" -qscale:a 0 "${file[@]/%flac/mp3}"
  done

  if [[ $argvParamToCreateFolderAndMove = "-cf" ]]; then
    mkdir ./mp3
    mv ./*.mp3 ./mp3
  fi
}

parsetomp3 "$1"
