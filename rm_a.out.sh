#!/bin/bash

# Initialize a flag to check if any .out files were found
found_dot_out=false

# Find and delete all ".out" files within exXX directories
find . -type d -name "ex[0-9][0-9]" -exec sh -c '
  for file in "$0"/*.out; do
    if [ -e "$file" ]; then
      echo "Deleting $file"
      rm -f "$file"
      if [ $? -eq 0 ]; then
        echo "Deleted successfully"
      else
        echo "Failed to delete"
      fi
      found_dot_out=true
    fi
  done
' {} \;

# Check if no .out files were found and print a message
if [ "$found_dot_out" = false ]; then
  echo "No .out files found in any exXX directories."
fi
