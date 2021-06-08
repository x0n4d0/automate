#!/bin/bash

# Uncomment the next line if running the script directly!
# chmod +x todo.sh

# =================================================================
# This script opens a file inside my Dropbox called TODO.txt 
# that I use to temporarily annotate important stuff.
#
# $ todo
# =================================================================

xdg-open ~/Dropbox/TODO.txt </dev/null >/dev/null 2>&1 & disown && exit