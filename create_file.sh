#!/bin/bash

# Set the file name
file_name="myfile"

# Set the file content
file_content="Hello guys"

# Create the file with the specified content
echo "$file_content" > "$file_name"

# Confirm the file creation
echo "File $file_name created with content: $file_content"

