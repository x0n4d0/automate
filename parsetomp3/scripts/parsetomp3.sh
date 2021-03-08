#!/bin/bash
# ------------------------------------------------------------------------------
# 
# -> Move this file to the directory containing the .flac files and run:
# 
# $ bash parsetomp3.sh
# 
# -> Use the "-cf" argument so that at the end of the conversions a 
# directory called "/ mp3" is created and the converted files will 
# be transferred to it.
# 
# $ bash parsetomp3.sh -cf
# 
# ------------------------------------------------------------------------------
chmod +x parsetomp3.sh

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
