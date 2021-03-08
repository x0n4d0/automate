#!/bin/bash
chmod +x touchpad.sh

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