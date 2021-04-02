#!/bin/bash
chmod +x cuesplit.sh

# Dependecies:
# sudo pacman -S flac shntool

function cuesplit() {
  local cueFileName="$1"
  local flacFileName="$2"
  shnsplit -f $cueFileName -t %n\ -\ %t -o flac $flacFileName
}

cuesplit $1 $2