#!/bin/bash

# Uncomment the next line if running the script directly!
# chmod +x remove-node-modules.sh

# =================================================================
# This script remove all node_modules folders into one directory.
#
# $ remove-node-modules
# =================================================================

find . -name 'node_modules' -type d -exec rm -rf '{}' +