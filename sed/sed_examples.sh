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

############################
# SECTION 2: More Replacements
############################

echo "6. Replace only the 2nd occurrence of 'is' with 'WAS':"
sed 's/is/WAS/2' sample.txt
echo "----------------------"

echo "7. Replace only the 3rd occurrence of 'is' with 'WAS':"
sed 's/is/WAS/3' sample.txt
echo "----------------------"

echo "8. Replace 'is' with 'was' only on line 2:"
sed '2 s/is/was/g' sample.txt
echo "----------------------"

echo "9. Replace 'is' with 'was' between lines 2 and 3:"
sed '2,3 s/is/was/g' sample.txt
echo "----------------------"

echo "10. Replace 'is' with 'was' on every odd-numbered line:"
sed '1~2 s/is/was/g' sample.txt
echo "----------------------"

############################
# SECTION 3: Deleting lines
############################

echo "11. Delete line 1:"
sed '1d' sample.txt
echo "----------------------"

echo "12. Delete line 2:"
sed '2d' sample.txt
echo "----------------------"

echo "13. Delete last line:"
sed '$d' sample.txt
echo "----------------------"

echo "14. Delete lines 2 to 3:"
sed '2,3d' sample.txt
echo "----------------------"

echo "15. Delete lines matching 'DevOps':"
sed '/DevOps/d' sample.txt
echo "----------------------"