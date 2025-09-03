#!/bin/bash
set -euo pipefail

# Check if sed exists
if ! command -v sed &> /dev/null; then
    echo "sed is not installed. Exiting."
    exit 1
fi
