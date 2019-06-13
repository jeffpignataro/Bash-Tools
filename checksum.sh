#!/usr/bin/env bash
CHECKSUMTYPE=$1
HASHVAL=$2
FILETOCHECK=$3

echo "Using checksum type $CHECKSUMTYPE"
echo "Correct hash value is $HASHVAL"
echo "Checking $FILETOCHECK..."

$FILEHASH="${CHECKSUMTYPE}sum $(realpath ${0%/*})/$FILETOCHECK"

if [[ $FILEHASH == $HASHVAL ]]; then
    echo "$FILETOCHECK is all good!!"
else
    echo "$FILETOCHECK is a no from me."
fi
