#!/bin/bash
set -euo pipefail

# Check if sed exists
if ! command -v sed &> /dev/null; then
    echo "sed is not installed. Exiting."
    exit 1
fi

echo "Original file content:"
cat sample.txt
echo "----------------------"

############################
# SECTION 1: Basics
############################

echo "1. Replace 'Hello' with 'Hi':"
sed 's/Hello/Hi/' sample.txt
echo "----------------------"

echo "2. Replace first occurrence of 'World' with 'Universe':"
sed 's/World/Universe/' sample.txt
echo "----------------------"

echo "3. Replace 'sed' with 'SED' (case sensitive):"
sed 's/sed/SED/' sample.txt
echo "----------------------"

echo "4. Replace only first match per line ('is' -> 'was'):"
sed 's/is/was/' sample.txt
echo "----------------------"

echo "5. Replace all matches in each line ('is' -> 'was'):"
sed 's/is/was/g' sample.txt
echo "----------------------"