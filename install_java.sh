#!/bin/bash

# Update the package index
sudo yum update

# Install Java 
sudo yum install java -y

# Set the JAVA_HOME environment variable
echo "export JAVA_HOME=/usr/lib/jvm/default-java" >> ~/.bashrc
source ~/.bashrc

# Verify Java installation
java -version

