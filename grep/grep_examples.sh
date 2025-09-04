#!/bin/bash
set -euo pipefail

# Check if grep exists
if ! command -v grep &> /dev/null; then
    echo "grep is not installed. Exiting."
    exit 1
fi

echo "Original file content:"
cat sample.txt
echo "----------------------"

##########################################
# Section 1: Basics (Examples 1–5)
##########################################

echo "1. Search for 'grep' (case-sensitive):"
grep "grep" sample.txt
echo "----------------------"

echo "2. Search for 'Grep' (case-sensitive, capital G):"
grep "Grep" sample.txt
echo "----------------------"

echo "3. Case-insensitive search for 'hello':"
grep -i "hello" sample.txt
echo "----------------------"

echo "4. Show line numbers where 'DevOps' appears:"
grep -n "DevOps" sample.txt
echo "----------------------"

echo "5. Count how many times 'is' appears:"
grep -c "is" sample.txt
echo "----------------------"

##########################################
# Section 2: Advanced (Examples 6–10)
##########################################

echo "6. Show lines that do NOT match 'grep':"
grep -v "grep" sample.txt
echo "----------------------"

echo "7. Match lines beginning with 'Hello':"
grep "^Hello" sample.txt
echo "----------------------"

echo "8. Match lines ending with 'again':"
grep "again$" sample.txt
echo "----------------------"

echo "9. Search using regex (match 'test' or 'Testing'):"
grep -E "test|Testing" sample.txt
echo "----------------------"

echo "10. Highlight matches when searching 'is':"
grep --color=always "is" sample.txt
echo "----------------------"
