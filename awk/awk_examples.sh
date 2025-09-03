#!/bin/bash
set -euo pipefail

# Check if awk exists
if ! command -v awk &> /dev/null; then
    echo "awk is not installed. Exiting."
    exit 1
fi

echo "Original log file content:"
head -n 20 app.log
echo "----------------------"

##########################################
# Section 1: Basics (Examples 1–5)
##########################################

echo "1. Print all lines:"
awk '{print}' app.log
echo "----------------------"

echo "2. Print the first column (date):"
awk '{print $1}' app.log
echo "----------------------"

echo "3. Print the second and third column (time + log level):"
awk '{print $2, $3}' app.log
echo "----------------------"

echo "4. Print lines containing the word INFO:"
awk '/INFO/ {print}' app.log
echo "----------------------"

echo "5. Count the total number of lines:"
awk 'END {print NR}' app.log
echo "----------------------"

##########################################
# Section 2: Filtering & Conditions (Examples 6–10)
##########################################

echo "6. Print lines where log level is TRACE:"
awk '$3 == "TRACE" {print}' app.log
echo "----------------------"

echo "7. Print lines with timestamp after 08:52:00:"
awk '$2 > "08:52:00" {print}' app.log
echo "----------------------"

echo "8. Print lines that don’t contain TRACE:"
awk '!/TRACE/ {print}' app.log
echo "----------------------"

echo "9. Count number of INFO log lines:"
awk '/INFO/ {count++} END {print count}' app.log
echo "----------------------"

echo "10. Print only unique log levels:"
awk '{print $3}' app.log | sort | uniq
echo "----------------------"
