#!/bin/bash

#  the user for their name
read -p "Enter your name: " name

#  the user for their age
read -p "Enter your age: " age

# Check if the age is less than or equal to 30
if [ "$age" -le 30 ]; then
  echo "$name is younger."
else
  echo "$name is older."
fi

