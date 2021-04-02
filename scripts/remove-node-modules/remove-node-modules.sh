#!/bin/bash
chmod +x remove-node-modules.sh

find . -name 'node_modules' -type d -exec rm -rf '{}' +