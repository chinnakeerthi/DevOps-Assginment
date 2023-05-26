#!/bin/bash

# Set the source file path and name
source_file="/path/to/source/file.txt"

# Set the destination machine details
destination_user="remote_user"
destination_host="destination_vm_ip"
iiidestination_directory="/path/to/destination/directory"

# Copy the file to the destination machine
scp "$source_file" "$remote_user@$destination_vm_ip:/path/to/destination/directory"

