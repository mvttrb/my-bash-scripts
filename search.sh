#!/bin/bash

echo "Enter the name of the file or directory you want to find:"
read name

echo "Searching for '$name' starting from the root directory..."

# Perform the search
for file in $(sudo find / 2>/dev/null); do
    if [[ "${file##*/}" == "$name" ]]; then
        echo "$file"
    fi
done

echo "Search complete!"
