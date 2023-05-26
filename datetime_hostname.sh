#!/bin/bash

# Get the current date
current_date=$(date +"%Y-%m-%d")

# Get the current time
current_time=$(date +"%H:%M:%S")

# Get the hostname
hostname=$(hostname)

# Print the current date, time, and hostname
echo "Current Date: $current_date"
echo "Current Time: $current_time"
echo "Hostname: $hostname"
