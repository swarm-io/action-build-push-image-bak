#!/bin/bash
set -e

newTag=$1
majorTag="v$(echo $newTag | grep -o '[^-]*$' | cut -d. -f1)"
echo "new tag is $newTag"
echo "major tag is $majorTag"

# delete current major tag, pipe true in case it doesn't exist
echo "deleting local tag"
git tag -d $majorTag || true
echo "deleting remote tag"
git push -d origin $majorTag || true
# create new tag
echo "duplicating tag $newTag as $majorTag"
git tag $majorTag
