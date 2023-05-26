#!/bin/bash

# Get the Linux version
linux_version=$(uname -r)

# Check if the Linux version matches the expected format
if [[ $linux_version == *el6* ]]; then
  echo "Linux Version is el6"
else
  echo "Linux Version does not match the expected format."
fi

