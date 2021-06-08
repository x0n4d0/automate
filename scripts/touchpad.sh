#!/bin/bash

# Uncomment the next line if running the script directly!
# chmod +x touchpad.sh

# =================================================================
# This script is used to enable and disable the touchpad using
# command line.
#
# $ touchpad enable
# $ touchpad disable
# =================================================================

CONSOLE_ARG="$1"
TOUCHPAD_ID=`xinput list | grep -i TouchPad | awk -F= '{ print $2}' | awk '{print $1}'`

case $CONSOLE_ARG in 
  "enable" | "disable")
    xinput $CONSOLE_ARG $TOUCHPAD_ID
    ;;
  *) echo "[!] Input Error!"; exit
    ;;
esac

unset CONSOLE_ARG
unset TOUCHPAD_ID