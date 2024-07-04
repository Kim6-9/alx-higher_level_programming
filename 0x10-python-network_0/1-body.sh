#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Assign URL from the first argument
URL=$1

# Send a GET request to the URL and save the response body size to a variable
response_size=$(curl -s -o /dev/null -w "%{size_download}" "$URL")

# Display the size of the response body in bytes
echo "Size of the response body: $response_size bytes"

