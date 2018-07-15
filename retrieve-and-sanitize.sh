#!/bin/bash
# epp-content-organizer
# client send files in several oddly named folders
# this script will sanitize folders names
# by deleting all before the first encountered space
# then it will rync this folder to a remote server using rsync

# find and rename
MYPATH=/root/epp-migrator/triage
find $MYPATH -type d -depth -execdir rename -v 's/[^ ]* //' {} \;

# rsync folder to remote server
rsync -azv $MYPATH user@example.net:/home/folder
