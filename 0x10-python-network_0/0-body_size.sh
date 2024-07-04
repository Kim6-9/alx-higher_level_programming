#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Assign URL from the first argument
URL=$1

# Send a GET request to the URL and save the response body to a temporary file
curl_output=$(curl -s -o /tmp/response_body.txt -w "%{size_download}" "$URL")

# Display the size of the response body in bytes
echo "Size of the response body: $curl_output bytes"

# Clean up the temporary file
rm -f /tmp/response_body.txt

