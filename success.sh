#!/bin/bash
set -e

newTag=$1
majorTag=$(echo $newTag | grep -o '[^-]*$' | cut -d. -f1)
echo "new tag is $newTag"
echo "major tag is $majorTag"
echo "duplicating tag $newTag as $majorTag"

# delete current major tag, pipe true in case it doesn't exist
git tag -d $majorTag || true
git push -d origin $majorTag || true

# create new tag
git tag $majorTag $newTag
