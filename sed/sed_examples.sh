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

echo "1. Replace 'Hello' with 'Hi':"
sed 's/Hello/Hi/' sample.txt
echo "----------------------"