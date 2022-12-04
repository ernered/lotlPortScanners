#!/bin/bash

# Define the target host and port range
target_host="www.example.com"
port_range="1 1025"

# Scan each port in the range
for port in $port_range; do
  # Attempt to connect to the port
  (echo >/dev/tcp/$target_host/$port) &>/dev/null
  # Print the result
  if [ $? -eq 0 ]; then
    echo "Port $port is open"
  else
    echo "Port $port is closed"
  fi
done