#!/bin/bash
set -e

newTag=$1
majorTag="v$(echo $newTag | grep -o '[^-]*$' | cut -d. -f1)"
git tag -d $majorTag || true
git push -d origin $majorTag || true
git tag $majorTag
