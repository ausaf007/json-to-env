#!/bin/bash

# Check for jq tool
if ! command -v jq &> /dev/null; then
    echo "Error: jq is not installed. Please install it to proceed."
    exit 1
fi

# Check for input arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_json_file> <output_env_file>"
    exit 1
fi

# Paths
input_json="$1"
output_env="$2"

# Convert JSON to .env format
jq -r 'to_entries|map("\(.key)=\(.value|tostring)")|.[]' "$input_json" > "$output_env"

echo "Conversion complete. .env file saved to $output_env"
