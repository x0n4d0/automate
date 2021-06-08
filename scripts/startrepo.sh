#/bin/bash

# Uncomment the next line if running the script directly!
# chmod +x startrepo.sh

# =================================================================
# This script is used to start local projects using git and upload 
# to the remote repository.
# 
# $ startrepo "commit message" "url"
# =================================================================

git init 
git add -A 
git commit -m $1
git remote add origin $2
git push -u origin master