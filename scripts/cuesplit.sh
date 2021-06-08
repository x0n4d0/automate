#!/bin/bash

# Uncomment the next line if running the script directly!
# chmod +x cuesplit.sh

# =================================================================
# This script splits a .flac file that has a .cue file into 
# separate files. 
#
# Dependecies:
# packages: flac shntool
# 
# $ cuesplit file.cue file.flac
# =================================================================


function cuesplit() {
  local cueFileName="$1"
  local flacFileName="$2"
  shnsplit -f $cueFileName -t %n\ -\ %t -o flac $flacFileName
}

cuesplit $1 $2